from telegram import InlineKeyboardButton, InlineKeyboardMarkup, Update, ParseMode
from telegram.ext import Updater, CommandHandler, CallbackQueryHandler, MessageHandler, Filters, CallbackContext
import mysql.connector
import requests
import io
import logging
import base64
import time

# ================= KONFIGURASI UTAMA =================
BOT_TOKEN = "8566066170:AAGN5LeeC5idFsfU5Jz6gDPXj0r3tyw5UGA"
PREMIUMKU_API_KEY = "1f13f8025d169844dd959599ce4d9daf"
ADMIN_ID = 8431237875
ADMIN_WA = "6283125648754"
DEFAULT_MIN_DEPOSIT = 1000

DB_CONFIG = {
    "host": "localhost",
    "user": "isi_user_dbmu",
    "password": "isi_password_sqlmu",
    "database": "isi_user_dbmu"
}

HEADERS = {
    "Content-Type": "application/json",
    "Accept": "application/json",
    "User-Agent": "PremiumStoreBot"
}

logging.basicConfig(format='%(asctime)s - %(levelname)s - %(message)s', level=logging.INFO)
logger = logging.getLogger(__name__)

# ================= DATABASE HELPER =================
def get_db():
    global db
    try:
        db.ping(reconnect=True, attempts=3, delay=5)
    except:
        db = mysql.connector.connect(**DB_CONFIG, autocommit=True)
    return db

db = mysql.connector.connect(**DB_CONFIG, autocommit=True)
user_state = {}
processing = set()

# ================= UI & TEXT HELPER =================
def format_rp(amount):
    return f"Rp{amount:,}".replace(",", ".")

def menu_main(uid):
    btn = [
        [InlineKeyboardButton("🛒 BELANJA PRODUK", callback_data="order")],
        [InlineKeyboardButton("📦 CEK STATUS MANUAL", callback_data="cek_status")], 
        [InlineKeyboardButton("📜 RIWAYAT", callback_data="history"), InlineKeyboardButton("👤 AKUN", callback_data="profile")],
        [InlineKeyboardButton("💳 ISI SALDO (QRIS)", callback_data="deposit")]
    ]
    if uid == ADMIN_ID:
        btn.append([InlineKeyboardButton("🛠 AKSES ADMIN", callback_data="admin_panel")])
    return InlineKeyboardMarkup(btn)

def back_btn(to="home"):
    label = "🏠 KEMBALI KE MENU" if to == "home" else "🔙 KEMBALI"
    return InlineKeyboardMarkup([[InlineKeyboardButton(label, callback_data=to)]])

# ================= API FUNCTIONS =================
def api_products():
    try:
        r = requests.post("https://premiumku.store/api/products", json={"api_key": PREMIUMKU_API_KEY}, headers=HEADERS, timeout=15)
        d = r.json()
        return d.get("products", [])
    except Exception as e:
        logger.error(f"API Error: {e}")
        return []

def api_order(pid):
    try:
        payload = {"api_key": PREMIUMKU_API_KEY, "product_id": pid, "qty": 1, "whatsapp": ADMIN_WA}
        r = requests.post("https://premiumku.store/api/order", json=payload, headers=HEADERS, timeout=30)
        return r.json()
    except Exception as e:
        logger.error(f"Order Error: {e}")
        return {"success": False}

def api_status(inv):
    try:
        r = requests.post("https://premiumku.store/api/status", json={"api_key": PREMIUMKU_API_KEY, "invoice": inv}, headers=HEADERS, timeout=15)
        return r.json()
    except:
        return {"success": False}

def api_deposit_create(amount):
    try:
        payload = {"api_key": PREMIUMKU_API_KEY, "amount": amount}
        r = requests.post("https://premiumku.store/api/pay", json=payload, headers=HEADERS, timeout=30)
        return r.json()
    except Exception as e:
        logger.error(f"Deposit API Error: {e}")
        return {"success": False, "msg": str(e)}

def api_deposit_check_status(invoice):
    try:
        payload = {"api_key": PREMIUMKU_API_KEY, "invoice": invoice}
        r = requests.post("https://premiumku.store/api/pay_status", json=payload, headers=HEADERS, timeout=30)
        return r.json()
    except Exception as e:
        logger.error(f"Check Pay Error: {e}")
        return {}

def send_success_file(bot, uid, invoice, content):
    try:
        f = io.BytesIO(content.encode())
        f.name = f"Order_{invoice}.txt"
        bot.send_document(uid, f, caption=f"📂 *File Pesanan: {invoice}*\n_Simpan file ini sebagai backup!_", parse_mode=ParseMode.MARKDOWN)
    except Exception as e:
        logger.error(f"Failed send file: {e}")

# ================= BACKGROUND JOBS (OTOMATIS) =================

def job_auto_deposit(context: CallbackContext):
    """Cek Deposit Pending & Hapus QRIS jika sukses"""
    conn = None
    cursor = None
    try:
        conn = mysql.connector.connect(**DB_CONFIG, autocommit=True)
        cursor = conn.cursor(dictionary=True)
        
        cursor.execute("SELECT * FROM deposits WHERE status='pending' AND method='QRIS Premiumku'")
        pendings = cursor.fetchall()
        
        if not pendings: return

        logger.info(f"[AUTO-DEPO] Cek {len(pendings)} transaksi...")

        for d in pendings:
            inv_id = d['proof']
            res = api_deposit_check_status(inv_id)
            
            data_api = res.get('data', {})
            status_api = data_api.get('status')
            if not status_api and 'status' in res: status_api = res['status']

            if status_api == 'success':
                real_amount = int(data_api.get('total_bayar', d['amount']))
                
                # 1. Update DB
                cursor.execute("UPDATE deposits SET status='success', amount=%s WHERE id=%s", (real_amount, d['id']))
                # 2. Tambah Saldo
                cursor.execute("UPDATE users SET saldo=saldo+%s WHERE id=%s", (real_amount, d['user_id']))
                
                # 3. Notif User
                try:
                    context.bot.send_message(
                        chat_id=d['user_id'],
                        text=f"✅ *DEPOSIT SUKSES!* 💰\n━━━━━━━━━━━━━━━━━━\nSaldo masuk: `{format_rp(real_amount)}`\n(Inc. kode unik)",
                        parse_mode=ParseMode.MARKDOWN
                    )
                    
                    # 4. HAPUS GAMBAR QRIS (Biar ga dibayar lagi)
                    if d.get('qris_message_id'):
                        try:
                            context.bot.delete_message(chat_id=d['user_id'], message_id=d['qris_message_id'])
                        except Exception as e:
                            logger.warning(f"Gagal hapus QRIS: {e}")
                            
                except: pass

            elif status_api in ['canceled', 'expired']:
                cursor.execute("UPDATE deposits SET status=%s WHERE id=%s", (status_api, d['id']))
                try:
                    context.bot.send_message(d['user_id'], f"❌ *DEPOSIT GAGAL/EXPIRED*\nInv: `{inv_id}`", parse_mode=ParseMode.MARKDOWN)
                    # Hapus QRIS juga kalau expired
                    if d.get('qris_message_id'):
                        context.bot.delete_message(chat_id=d['user_id'], message_id=d['qris_message_id'])
                except: pass

    except Exception as e:
        logger.error(f"[AUTO-DEPO ERROR] {e}")
    finally:
        if cursor: cursor.close()
        if conn: conn.close()

def job_auto_order(context: CallbackContext):
    """Cek Order Produk Pending & Kirim Akun Otomatis"""
    conn = None
    cursor = None
    try:
        conn = mysql.connector.connect(**DB_CONFIG, autocommit=True)
        cursor = conn.cursor(dictionary=True)
        
        # Ambil semua order yang masih pending
        cursor.execute("SELECT * FROM orders WHERE status='pending'")
        pending_orders = cursor.fetchall()
        
        if not pending_orders: return

        logger.info(f"[AUTO-ORDER] Cek {len(pending_orders)} pesanan...")

        for o in pending_orders:
            res = api_status(o['invoice'])
            
            # Cek status dari API
            status_api = res.get('status')
            
            if status_api in ['success', 'completed']:
                # Ambil data akun
                acc_data = res.get('accounts', [])
                acc_str = ""
                if isinstance(acc_data, list):
                    acc_str = "\n".join([f"📧 {a.get('username','-')} | 🔑 {a.get('password','-')}" for a in acc_data])
                else:
                    acc_str = str(acc_data)
                
                # 1. Update DB
                cursor.execute("UPDATE orders SET status='success', accounts=%s WHERE invoice=%s", (acc_str, o['invoice']))
                
                # 2. Kirim Produk ke User
                try:
                    success_msg = (
                        f"🎉 *PESANAN SELESAI!* 🚀\n"
                        f"━━━━━━━━━━━━━━━━━━━━━━━━━━\n"
                        f"Produk: {o['product_name']}\n\n"
                        f"👇 *DATA AKUN ANDA:* 👇\n"
                        f"━━━━━━━━━━━━━━━━━━━━━━━━━━\n"
                        f"{acc_str}\n"
                        f"━━━━━━━━━━━━━━━━━━━━━━━━━━\n"
                        f"📂 _File backup telah dikirim di bawah._"
                    )
                    context.bot.send_message(o['user_id'], success_msg, parse_mode=ParseMode.MARKDOWN)
                    send_success_file(context.bot, o['user_id'], o['invoice'], acc_str)
                except: pass
            
            elif status_api == 'canceled':
                # Update DB & Refund Saldo (Opsional, disini cuma update status)
                # Jika mau refund otomatis, tambahkan query update saldo user disini
                cursor.execute("UPDATE orders SET status='canceled' WHERE invoice=%s", (o['invoice'],))
                try:
                    context.bot.send_message(
                        o['user_id'], 
                        f"❌ *PESANAN DIBATALKAN*\nProduk: {o['product_name']}\nMohon maaf stok habis/gangguan. Saldo aman.",
                        parse_mode=ParseMode.MARKDOWN
                    )
                except: pass

    except Exception as e:
        logger.error(f"[AUTO-ORDER ERROR] {e}")
    finally:
        if cursor: cursor.close()
        if conn: conn.close()

# ================= HANDLERS =================
def start(update: Update, context: CallbackContext):
    u = update.message.from_user
    conn = get_db()
    cursor = conn.cursor()
    cursor.execute("INSERT IGNORE INTO users (id,name,username,saldo) VALUES (%s,%s,%s,0)", (u.id, u.first_name, u.username))
    cursor.close()
    
    msg = (
        f"✨ *MasCarli  Store *✨"
        f"━━━━━━━━━━━━━━━━━━━━━━━━━━\n"
        f"Halo, *{u.first_name}*! 👋\n\n"
        f"Layanan produk digital otomatis 24 Jam.\n"
        f"👇 _Silakan pilih menu:_"
    )
    context.bot.send_message(u.id, msg, reply_markup=menu_main(u.id), parse_mode=ParseMode.MARKDOWN)

def handle_callback(update: Update, context: CallbackContext):
    q = update.callback_query
    uid = q.from_user.id
    conn = get_db()
    cursor = conn.cursor(dictionary=True)
    q.answer()

    if uid in processing:
        q.answer("⏳ Tunggu sebentar...", show_alert=True)
        return

    try:
        if q.data == "home":
            try: q.message.delete()
            except: pass
            msg = f"✨ *MAIN MENU* ✨\n━━━━━━━━━━━━━━━━━━━━━━━━━━\nApa yang ingin Anda lakukan? ⚡"
            context.bot.send_message(uid, msg, reply_markup=menu_main(uid), parse_mode=ParseMode.MARKDOWN)

        elif q.data == "profile":
            cursor.execute("SELECT saldo FROM users WHERE id=%s", (uid,))
            s = cursor.fetchone()
            msg = (f"👤 *PROFIL PENGGUNA*\n━━━━━━━━━━━━━━━━━━━━━━━━━━\n"
                   f"🆔 USER ID : `{uid}`\n👤 NAME : {q.from_user.first_name}\n"
                   f"💰 *SALDO : {format_rp(s['saldo'])}*")
            q.edit_message_text(msg, reply_markup=back_btn(), parse_mode=ParseMode.MARKDOWN)

        elif q.data == "order":
            q.edit_message_text("🔄 *Loading Produk...*", parse_mode=ParseMode.MARKDOWN)
            products = api_products()
            if not products:
                q.edit_message_text("❌ *Produk Kosong*", reply_markup=back_btn(), parse_mode=ParseMode.MARKDOWN)
                return

            cursor.execute("SELECT profit_percent FROM settings WHERE id=1")
            setting = cursor.fetchone()
            profit = setting["profit_percent"] if setting else 0

            kb = []
            for p in products:
                price = int(int(p["price"]) * (1 + profit / 100))
                kb.append([InlineKeyboardButton(f"🎁 {p['name']} • {format_rp(price)}", callback_data=f"buy_{p['id']}_{price}")])
            kb.append([InlineKeyboardButton("🏠 KEMBALI KE MENU", callback_data="home")])

            q.edit_message_text("🛍️ *KATALOG PRODUK*", reply_markup=InlineKeyboardMarkup(kb), parse_mode=ParseMode.MARKDOWN)

        elif q.data.startswith("buy_"):
            _, pid, price = q.data.split("_")
            price = int(price)
            processing.add(uid)

            cursor.execute("SELECT saldo FROM users WHERE id=%s", (uid,))
            if cursor.fetchone()["saldo"] < price:
                q.edit_message_text(f"⚠️ *SALDO KURANG*\nHarga: {format_rp(price)}\nSilakan isi saldo.", reply_markup=back_btn(), parse_mode=ParseMode.MARKDOWN)
                processing.discard(uid)
                return

            q.edit_message_text("⏳ *Memproses...*", parse_mode=ParseMode.MARKDOWN)
            res = api_order(pid)
            
            if not res.get("success"):
                q.edit_message_text(f"❌ *Gagal:* {res.get('message', 'Server Error')}", reply_markup=back_btn(), parse_mode=ParseMode.MARKDOWN)
                processing.discard(uid)
                return

            cursor.execute("UPDATE users SET saldo=saldo-%s WHERE id=%s", (price, uid))
            cursor.execute("INSERT INTO orders (user_id, invoice, product_name, total, status) VALUES (%s, %s, %s, %s, 'pending')", (uid, res["invoice"], res["product"], price))

            q.edit_message_text(f"✅ *ORDER SUKSES!* 🚀\nInv: `{res['invoice']}`\nMohon tunggu, produk akan dikirim otomatis.", reply_markup=back_btn(), parse_mode=ParseMode.MARKDOWN)

        elif q.data == "cek_status":
            # Manual cek tetep ada, tapi sebenernya udah dicover job otomatis
            cursor.execute("SELECT * FROM orders WHERE user_id=%s AND status='pending' ORDER BY id DESC LIMIT 1", (uid,))
            o = cursor.fetchone()
            
            if not o:
                q.edit_message_text("✅ *Tidak ada order pending.*", reply_markup=back_btn(), parse_mode=ParseMode.MARKDOWN)
                return

            q.edit_message_text(f"🔄 *Cek Server...*\nInv: `{o['invoice']}`", parse_mode=ParseMode.MARKDOWN)
            res = api_status(o["invoice"])
            
            if res.get("status") in ["success", "completed"]:
                acc_data = res.get("accounts", [])
                acc_str = "\n".join([f"📧 {a.get('username','-')} | 🔑 {a.get('password','-')}" for a in acc_data]) if isinstance(acc_data, list) else str(acc_data)
                cursor.execute("UPDATE orders SET status='success', accounts=%s WHERE invoice=%s", (acc_str, o["invoice"]))
                q.edit_message_text(f"🎉 *SELESAI!* 🚀\n\n{acc_str}", reply_markup=back_btn(), parse_mode=ParseMode.MARKDOWN)
                send_success_file(context.bot, uid, o['invoice'], acc_str)
            else:
                q.edit_message_text(f"⏳ *MASIH DIPROSES*", reply_markup=back_btn(), parse_mode=ParseMode.MARKDOWN)

        elif q.data == "history":
            cursor.execute("SELECT invoice, total, status, product_name FROM orders WHERE user_id=%s ORDER BY id DESC LIMIT 10", (uid,))
            rows = cursor.fetchall()
            text = "📜 *10 RIWAYAT TERAKHIR*\n━━━━━━━━━━━━━━━━━━━━━━━━━━\n"
            for r in rows:
                icon = "✅" if r['status']=='success' else ("⏳" if r['status']=='pending' else "❌")
                text += f"{icon} *{r['product_name']}*\n└ `{r['invoice']}` • {format_rp(r['total'])}\n\n"
            q.edit_message_text(text, reply_markup=back_btn(), parse_mode=ParseMode.MARKDOWN)

        elif q.data == "deposit":
            user_state[uid] = {"step": "amount"}
            msg = (
                f"💳 *DEPOSIT VIA QRIS (OTOMATIS)*\n"
                f"━━━━━━━━━━━━━━━━━━━━━━━━━━\n"
                f"🔻 Min Deposit: `{format_rp(DEFAULT_MIN_DEPOSIT)}`\n"
                f"⚡ Saldo masuk otomatis & Kode Unik.\n"
                f"━━━━━━━━━━━━━━━━━━━━━━━━━━\n"
                f"👇 *Ketik nominal deposit (Angka Saja):*"
            )
            q.edit_message_text(msg, reply_markup=back_btn(), parse_mode=ParseMode.MARKDOWN)

        # ================= ADMIN PANEL =================
        elif q.data == "admin_panel" and uid == ADMIN_ID:
            kb = [
                [InlineKeyboardButton("💰 ATUR PROFIT", callback_data="admin_profit")],
                [InlineKeyboardButton("👥 Statistik", callback_data="admin_users"), InlineKeyboardButton("📢 Broadcast", callback_data="admin_broadcast")],
                [InlineKeyboardButton("🔙 KELUAR", callback_data="home")]
            ]
            q.edit_message_text("🛠 *DASHBOARD ADMIN*", reply_markup=InlineKeyboardMarkup(kb), parse_mode=ParseMode.MARKDOWN)

        elif q.data == "admin_profit" and uid == ADMIN_ID:
            cursor.execute("SELECT profit_percent FROM settings WHERE id=1")
            curr = cursor.fetchone()['profit_percent']
            user_state[uid] = {"step": "edit_profit"}
            q.edit_message_text(f"💰 *ATUR PROFIT*\nSaat ini: *{curr}%*\n\n👇 *Kirim angka profit baru (persen):*", reply_markup=back_btn("admin_panel"), parse_mode=ParseMode.MARKDOWN)

        elif q.data == "admin_users" and uid == ADMIN_ID:
            cursor.execute("SELECT COUNT(*) as total_user, SUM(saldo) as total_saldo FROM users")
            stats = cursor.fetchone()
            msg = (f"👥 *STATISTIK*\nUser: `{stats['total_user']}`\nSaldo Beredar: `{format_rp(stats['total_saldo'] or 0)}`")
            q.edit_message_text(msg, reply_markup=back_btn("admin_panel"), parse_mode=ParseMode.MARKDOWN)

        elif q.data == "admin_broadcast" and uid == ADMIN_ID:
            user_state[uid] = {"step": "broadcast_input"}
            q.edit_message_text("📢 *BROADCAST*\nKirim pesan (Teks/Foto) untuk disebar.", reply_markup=back_btn("admin_panel"), parse_mode=ParseMode.MARKDOWN)

    except Exception as e:
        logger.error(f"Callback Error: {e}")
    finally:
        processing.discard(uid)
        cursor.close()

# ================= MESSAGE HANDLER =================
def message_handler(update: Update, context: CallbackContext):
    uid = update.message.from_user.id
    msg = update.message
    st = user_state.get(uid)

    if not st: return
    conn = get_db()
    cursor = conn.cursor(dictionary=True)

    try:
        # --- ADMIN PROFIT ---
        if st["step"] == "edit_profit" and uid == ADMIN_ID:
            if not msg.text.isdigit(): 
                msg.reply_text("❌ Harus angka!")
                return
            cursor.execute("UPDATE settings SET profit_percent=%s WHERE id=1", (msg.text,))
            msg.reply_text(f"✅ Profit diubah jadi *{msg.text}%*", parse_mode=ParseMode.MARKDOWN)
            user_state.pop(uid)
            return

        # --- DEPOSIT QRIS ONLY ---
        if st["step"] == "amount":
            if not msg.text.isdigit(): 
                msg.reply_text("❌ Angka saja, contoh: 20000")
                return
            
            amt = int(msg.text)
            if amt < DEFAULT_MIN_DEPOSIT:
                msg.reply_text(f"❌ Min deposit {format_rp(DEFAULT_MIN_DEPOSIT)}")
                return
            
            msg.reply_text("🔄 *Membuat QRIS...*", parse_mode=ParseMode.MARKDOWN)
            res = api_deposit_create(amt)
            
            if res.get('success') == True:
                data_pay = res.get('data', {})
                qr_base64 = data_pay.get('qr_image', '')
                if "base64," in qr_base64: qr_base64 = qr_base64.split("base64,")[1]
                
                try:
                    img_data = base64.b64decode(qr_base64)
                    f = io.BytesIO(img_data)
                    f.name = "qris.png"
                    
                    total_tagihan = int(data_pay.get('total_bayar', amt))
                    
                    caption = (
                        f"✅ *SCAN QRIS DI ATAS*\n━━━━━━━━━━━━━━━━━━━━━━━━━━\n"
                        f"🧾 Invoice: `{data_pay.get('invoice', '-')}`\n"
                        f"💰 Total Bayar: `{format_rp(total_tagihan)}`\n\n"
                        f"⚠️ *WAJIB BAYAR SESUAI NOMINAL*\n"
                        f"Termasuk 3 digit kode unik agar masuk otomatis."
                    )
                    
                    # Kirim foto dan SIMPAN ID PESAN ke variabel
                    sent_msg = context.bot.send_photo(uid, photo=f, caption=caption, parse_mode=ParseMode.MARKDOWN)
                    
                    # Simpan message_id ke DB agar bisa dihapus nanti
                    # PENTING: Kolom 'qris_message_id' harus sudah ada di DB
                    cursor.execute(
                        "INSERT INTO deposits (user_id, amount, method, status, proof, qris_message_id) VALUES (%s,%s,'QRIS Premiumku','pending',%s, %s)", 
                        (uid, total_tagihan, data_pay.get('invoice', 'API'), sent_msg.message_id)
                    )
                    
                    user_state.pop(uid)
                except Exception as e:
                    msg.reply_text("❌ Gagal generate gambar QRIS.")
                    logger.error(e)
            else:
                msg.reply_text("❌ Gagal membuat pembayaran. Coba nominal lain.")

        # --- BROADCAST ---
        elif st["step"] == "broadcast_input" and uid == ADMIN_ID:
            cursor.execute("SELECT id FROM users")
            users = cursor.fetchall()
            msg.reply_text(f"⏳ Mengirim ke {len(users)} user...")
            success = 0
            for u in users:
                try:
                    if msg.photo: context.bot.send_photo(u['id'], msg.photo[-1].file_id, caption=msg.caption)
                    else: context.bot.send_message(u['id'], msg.text)
                    success += 1
                except: pass
            msg.reply_text(f"✅ Sukses: {success} | Gagal: {len(users)-success}")
            user_state.pop(uid)

    except Exception as e:
        logger.error(f"Msg Error: {e}")
    finally:
        cursor.close()

# ================= STARTUP =================
def main():
    updater = Updater(BOT_TOKEN)
    dp = updater.dispatcher
    dp.add_handler(CommandHandler("start", start))
    dp.add_handler(CallbackQueryHandler(handle_callback))
    dp.add_handler(MessageHandler(Filters.text | Filters.photo, message_handler))
    
    # Auto Cek setiap 30 detik
    job_queue = updater.job_queue
    job_queue.run_repeating(job_auto_deposit, interval=30, first=5)
    job_queue.run_repeating(job_auto_order, interval=30, first=10) # Job baru untuk order
    
    print("Bot is running...")
    updater.start_polling()
    updater.idle()

if __name__ == "__main__":
    main()
