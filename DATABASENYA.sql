-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 02, 2025 at 03:47 AM
-- Server version: 8.0.42-cll-lve
-- PHP Version: 8.3.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sakurupi_demo`
--

-- --------------------------------------------------------

--
-- Table structure for table `api_provider`
--

CREATE TABLE `api_provider` (
  `id` int NOT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `kode` varchar(255) DEFAULT NULL,
  `api_id` varchar(255) DEFAULT NULL,
  `api_key` varchar(255) DEFAULT NULL,
  `private_key` varchar(255) DEFAULT NULL,
  `profit` varchar(50) DEFAULT NULL,
  `profit_basic` varchar(50) DEFAULT NULL,
  `profit_gold` varchar(50) DEFAULT NULL,
  `profit_platinum` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `api_provider`
--

INSERT INTO `api_provider` (`id`, `provider`, `kode`, `api_id`, `api_key`, `private_key`, `profit`, `profit_basic`, `profit_gold`, `profit_platinum`) VALUES
(1, 'Vip Reseller', 'Vip', 'CyJoMXR3', '2In3WClRTExjmeZAoqXGETzxLZRTMKGOult6XM1YHAX4jX0Bzj99LcDsnEDiO8KO', NULL, '1', '1', '0', '0'),
(2, 'DigiFlazz', 'DF', 'username', 'bc605222-b25f-5d41-a38d-productionkey', NULL, '2', '2', '0', '0'),
(3, 'Fonnte', 'Ft', 'MB5mmTHPxFZ4J8J3hB7W9NiLRmqjz3UtXpNjBEFogAYhu2P', 'MB5mmTHPxFZ4J8J3hB7W9NiLRmqjz3UtXpNjBEFogAYhu2P', '-', NULL, NULL, NULL, NULL),
(4, 'Sakurupiah', 'Sp', 'ID-922519586625', 'KEY-TekogFWaQCcySe9CBEZOJHLYIjWm', 'https://www.mascarli.shop.biz.id', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `id` int NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `tipe` varchar(50) NOT NULL,
  `pesan` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`id`, `gambar`, `tipe`, `pesan`) VALUES
(98, 'Screenshot (210).png', 'slide', 'coding kebumen'),
(99, 'Pubg_Mobile_Banner_0623952f01.avif', 'slide', 'pubg mobile'),
(100, 'Telkomsel-Bonus-Kuota-Banner.jpg', 'slide', 'telkomsel topup');

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE `berita` (
  `id` int NOT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `judul` varchar(255) DEFAULT NULL,
  `deskripsi` text,
  `slug` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `berita`
--

INSERT INTO `berita` (`id`, `gambar`, `judul`, `deskripsi`, `slug`, `created_at`, `updated_at`) VALUES
(14, '1aaeb0816417fa26d1e927825fd44052.jpg', 'KUOTA-DATA-TELKOMSEL-UNLIMITED-MAX-25GB', '<p><i>Unlimited MAX&nbsp;25?GB</i> adalah paket kuota Telkomsel yang memadukan <strong>25?GB kuota utama</strong> + <strong>unlimited apps</strong> (dengan FUP) untuk aplikasi populer—ideal bagi pengguna yang gemar streaming, media sosial, dan meeting daring tanpa takut cepat kehabisan kuota.</p><p>&nbsp;</p><p><strong>Kuota Besar &amp; Serbaguna</strong> – 25?GB cukup untuk browsing ±?600?jam&nbsp;atau streaming video HD ±?25?jam.</p><p><strong>Unlimited Aplikasi Favorit</strong> – Cocok bagi konten kreator, gamer kasual, atau pekerja remote.</p><p><strong>Tidak Ada Pembagian Zona</strong> – Kuota utama berlaku nasional (kecuali area non?signal).</p><p><strong>Mendukung 5G</strong> – Kecepatan maksimal di kota yang sudah ter?deploy 5G Telkomsel.</p>', 'rw-by-rgmoba', '2025-01-25 14:46:57', '2025-07-01 20:16:25'),
(16, '2edc79ec87d1df025e1ac485d0cadc6c.jpg', 'MAU TOPUP GAMES PALING LENGKAP DISINI AJA', '<p>Sedang cari tempat top up game yang lengkap, cepat, dan terpercaya?<br>???? <strong>Kamu di tempat yang tepat!</strong></p><p>Kami hadir sebagai solusi untuk semua kebutuhan top up game kamu—tanpa ribet, tanpa mahal, tanpa tipu-tipu.</p><h3>???? Kenapa Top Up di Sini?</h3><p>? <strong>Game Lengkap</strong><br>Dari game populer hingga game yang jarang ditemukan, semuanya ada:</p><p>Mobile Legends</p><p>Free Fire</p><p>PUBG Mobile</p><p>Genshin Impact</p><p>Valorant</p><p>Call of Duty</p><p>Ragnarok Origin</p><p>Honkai: Star Rail<br>... dan <strong>ratusan game lainnya!</strong></p><p>? <strong>Proses Cepat &amp; Otomatis</strong><br>Transaksi langsung masuk dalam hitungan detik. Gak perlu nunggu admin, gak pakai ribet.</p><p>? <strong>Banyak Metode Pembayaran</strong><br>Bayar pakai:</p><p>E-wallet (DANA, OVO, GoPay, ShopeePay)</p><p>Virtual Account Bank</p><p>Pulsa Telkomsel, XL, Indosat, dll</p><p>QRIS<br>Semua bisa!</p><p>? <strong>Harga Termurah &amp; Transparan</strong><br>Tanpa biaya tersembunyi. Apa yang kamu lihat, itu yang kamu bayar.</p><p>? <strong>24 Jam Nonstop</strong><br>Top up kapan pun kamu mau. Sistem otomatis kami aktif sepanjang waktu.</p>', 'mau-topup-games-paling-lengkap-disini-aja', '2025-07-01 20:18:50', '2025-07-01 20:18:50'),
(17, 'top-banner-kesamber-12.12-3.webp', 'BANYAK PROMO UNTUK KAMU DI SINI', '<p>Kabar gembira buat kamu yang suka <strong>hemat saat top up dan belanja digital</strong>!<br>Kini, <strong>promo menarik dan diskon spesial</strong> hadir setiap hari hanya di sini!</p><h3>? APA SAJA PROMONYA?</h3><p>???? <strong>Diskon Top Up Game</strong><br>Dapatkan harga spesial untuk top up game favoritmu:</p><p>Mobile Legends</p><p>Free Fire</p><p>Genshin Impact</p><p>PUBG Mobile</p><p>Roblox</p><p>Valorant<br>... dan masih banyak lagi!</p><p>???? <strong>Cashback Saldo</strong><br>Top up saldo dompet digital dan dapatkan cashback langsung ke akunmu!</p><p>???? <strong>Kode Voucher Khusus Member</strong><br>Gabung jadi member dan nikmati voucher potongan hingga <strong>30%</strong>.</p><p>? <strong>Flash Sale Harian</strong><br>Jangan sampai kelewatan! Produk pilihan turun harga secara terbatas setiap hari.</p><h3>???? PROMO UNTUK SEMUA PENGGUNA</h3><p>???? <strong>Tanpa syarat ribet</strong><br>? Tidak perlu install aplikasi tambahan<br>? Tidak perlu isi survey<br>? Cukup login &amp; bayar, langsung dapat promo!</p>', 'banyak-promo-untuk-kamu-di-sini', '2025-07-01 20:22:48', '2025-07-01 20:22:48');

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(128) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int UNSIGNED NOT NULL DEFAULT '0',
  `data` blob
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `games`
--

CREATE TABLE `games` (
  `id` int NOT NULL,
  `nama` varchar(255) NOT NULL,
  `sub_nama` varchar(250) DEFAULT NULL,
  `brand` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `kategori` varchar(255) NOT NULL,
  `tipe` varchar(250) DEFAULT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `banner` varchar(255) DEFAULT NULL,
  `deskripsi` text,
  `informasi` text,
  `panduan` text,
  `tipe_target` varchar(255) DEFAULT NULL,
  `validasi_status` varchar(255) DEFAULT NULL,
  `validasi_kode` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `games`
--

INSERT INTO `games` (`id`, `nama`, `sub_nama`, `brand`, `slug`, `kategori`, `tipe`, `gambar`, `banner`, `deskripsi`, `informasi`, `panduan`, `tipe_target`, `validasi_status`, `validasi_kode`, `created_at`, `updated_at`) VALUES
(244, 'Mobile Legends', 'Mobile Legends MLBB', 'Mobile Legends', 'mobile-legends', 'Mobile Legends', 'Tidak', 'logo-mlbb.jpg', 'bg-mlbb.png', NULL, 'Informasi BLABLA BLA BLA', 'PANDUAN BLABLA BLA BLA', 'Id_number-server', 'NO', 'Mobile Legends', '2025-06-29 10:24:54', '2025-06-29 10:24:54'),
(245, 'Free Fire', 'Free Fire', 'free fire', 'free-fire', 'Free Fire', 'Populer', 'unnamed.png', 'y4gfgfr4.jpg', NULL, 'bla bla bla bla informasi', 'bla bla bla bla panduan', 'Id', 'NO', 'free fire', '2025-07-01 20:27:08', '2025-07-01 20:27:08');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id` int NOT NULL,
  `nama` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id`, `nama`) VALUES
(145, 'Mobile Legends'),
(146, 'Free Fire'),
(147, 'Pulsa'),
(148, 'Data');

-- --------------------------------------------------------

--
-- Table structure for table `kontak`
--

CREATE TABLE `kontak` (
  `id` int NOT NULL,
  `informasi` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `kontak`
--

INSERT INTO `kontak` (`id`, `informasi`) VALUES
(1, '<p>Informasi kontak</p>');

-- --------------------------------------------------------

--
-- Table structure for table `metode`
--

CREATE TABLE `metode` (
  `id` int NOT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `nama` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `keterangan` text,
  `kode` varchar(50) DEFAULT NULL,
  `kategori` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `metode`
--

INSERT INTO `metode` (`id`, `gambar`, `nama`, `keterangan`, `kode`, `kategori`) VALUES
(1, 'Logo_QRIS.svg.png', 'QRIS\r\nFee:0.7%+350', 'Di Cek Otomatis', 'QRIS', 'ewallet'),
(3, 'bri (1).png', 'BRIVA\r\nFee:Rp 4.500', 'Di cek otomatis', 'BRIVA', 'virtual-account'),
(13, '6a184c38-626d-4e42-b134-a46ce60c1715.webp', 'BSI VA\r\nFee:Rp 4.500', 'Di cek otomatis', 'saldo', 'virtual-account'),
(9, '1b81fdd5-c37a-4c00-b9ab-3bbe3ef67138.webp', 'BCA VA\r\nFee:Rp 5.000', 'Di cek otomatis', 'BCAVA', 'virtual-account'),
(10, '6240ff70-8819-47ba-87dd-8a481dc5426f.webp', 'CIMB VA\r\nFee:Rp 4.500', 'Di cek otomatis', 'CIMBNIAGA', 'virtual-account'),
(11, '7e064360-0b28-4ab7-ba4a-070e5b44910c.webp', 'BNI VA\r\nFee:Rp 4.500', 'Di cek otomatis', 'BNIVA', 'virtual-account'),
(12, 'b2e45d21-006b-428d-b1bd-aa26987139b2.webp', 'Mandiri VA\r\nFee:Rp 4.500', 'Di cek otomatis', 'MANDIRIVA', 'virtual-account'),
(14, '19d31b63-5a76-4747-b54a-60bbb697bf8b.webp', 'Permata VA\r\nFee:Rp 4.500', 'Di cek otomatis', 'PERMATAVA', 'virtual-account'),
(15, '83877852-a4d5-4e4a-a979-482ea04d2f7f.webp', 'Danamon VA\r\nFee:Rp 4.500', 'Di cek otomatis', 'DANAMON', 'virtual-account'),
(16, '869067.png', 'Saldo Akun', 'Di cek otomatis', 'saldo', 'saldo'),
(2, 'Logo_QRIS.svg.png', 'QRIS2\r\nFee:0.9%', 'Di Cek Otomatis', 'QRIS2', 'ewallet'),
(4, 'Logo_QRIS.svg.png', 'QRISMU\r\nFee:3% Fast', 'Di Cek Otomatis', 'QRISMU', 'ewallet'),
(34, 'DANAMON (1).png', 'DANAMON\r\nFee:Rp 4.500', 'Di cek otomatis', 'DANAMON', 'virtual-account'),
(35, 'MUAMALAT (1).png', 'MUAMALAT\r\nFee:Rp 4.500', 'Di cek otomatis', 'MUAMALAT', 'virtual-account'),
(36, 'BAG.png', 'BAG\r\nFee:Rp 4.500', 'Di cek otomatis', 'BAG', 'virtual-account'),
(37, 'SHOPPEPAY (1).png', 'ShopeePay\r\nFee:3%', 'Di cek otomatis', 'ShopeePay', 'ewallet'),
(38, 'INDOMARET (1).png', 'INDOMARET\r\nFee:5000', 'Di cek otomatis', 'INDOMARET', 'retail'),
(39, 'ALFAMART (1).png', 'ALFAMART\r\nFee:5000', 'Di cek otomatis', 'ALFAMART', 'retail');

-- --------------------------------------------------------

--
-- Table structure for table `mlbb_kategori`
--

CREATE TABLE `mlbb_kategori` (
  `id` int NOT NULL,
  `provider_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `kode` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `games` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `serial` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Dumping data for table `mlbb_kategori`
--

INSERT INTO `mlbb_kategori` (`id`, `provider_id`, `kode`, `games`, `serial`, `status`) VALUES
(2, '15', 'MLBB', 'Mobile Legends', 'No', 'Safe');

-- --------------------------------------------------------

--
-- Table structure for table `mlbb_layanan`
--

CREATE TABLE `mlbb_layanan` (
  `id` int NOT NULL,
  `kategori_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `layanan_id` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `kode` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `durasi` varchar(50) NOT NULL,
  `tipe` varchar(50) NOT NULL,
  `harga_provider` varchar(50) NOT NULL,
  `harga_jual` varchar(50) NOT NULL,
  `harga_basic` varchar(50) NOT NULL,
  `harga_gold` varchar(50) NOT NULL,
  `harga_platinum` varchar(50) NOT NULL,
  `keuntungan` varchar(50) NOT NULL,
  `keuntungan_basic` varchar(50) NOT NULL,
  `keuntungan_gold` varchar(50) NOT NULL,
  `keuntungan_platinum` varchar(50) NOT NULL,
  `status` varchar(250) NOT NULL,
  `provider` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `pembelian`
--

CREATE TABLE `pembelian` (
  `id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `order_id` int NOT NULL,
  `trx_id` varchar(250) NOT NULL,
  `games` varchar(250) NOT NULL,
  `produk` varchar(255) NOT NULL,
  `kode_produk` varchar(255) NOT NULL,
  `uid` varchar(50) NOT NULL,
  `server` varchar(50) NOT NULL,
  `nama_target` varchar(255) DEFAULT NULL,
  `harga_provider` bigint NOT NULL,
  `harga_jual` bigint NOT NULL,
  `keuntungan` bigint NOT NULL,
  `fee` varchar(250) NOT NULL,
  `total_pembayaran` varchar(250) NOT NULL,
  `provider` varchar(255) NOT NULL,
  `metode_pembayaran` varchar(255) NOT NULL,
  `kode_pembayaran` varchar(255) NOT NULL,
  `status_pembayaran` varchar(255) NOT NULL,
  `batas_pembayaran` varchar(250) NOT NULL,
  `cara_bayar` text NOT NULL,
  `status_pembelian` varchar(255) NOT NULL,
  `status_refund` enum('gagal','berhasil') NOT NULL DEFAULT 'gagal',
  `note` text,
  `nomor_whatsapp` varchar(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id` int NOT NULL,
  `nama` varchar(255) NOT NULL,
  `brand` varchar(250) NOT NULL,
  `kategori` varchar(250) NOT NULL,
  `tipe` varchar(250) NOT NULL,
  `harga_provider` bigint NOT NULL,
  `harga_jual` bigint NOT NULL,
  `harga_basic` bigint NOT NULL,
  `harga_gold` bigint NOT NULL,
  `harga_platinum` bigint NOT NULL,
  `keuntungan` bigint NOT NULL,
  `keuntungan_basic` bigint NOT NULL,
  `keuntungan_gold` bigint NOT NULL,
  `keuntungan_platinum` bigint NOT NULL,
  `kode_produk` varchar(255) NOT NULL,
  `status` varchar(250) NOT NULL,
  `sts_flash_sale` enum('Tidak','Ya') NOT NULL,
  `persen_diskon` bigint NOT NULL,
  `harga_fs` bigint NOT NULL,
  `harga_fs_basic` bigint NOT NULL,
  `harga_fs_gold` bigint NOT NULL,
  `harga_fs_platinum` bigint NOT NULL,
  `waktu_akhir_fs` date DEFAULT NULL,
  `provider` varchar(255) NOT NULL,
  `logo` varchar(250) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id`, `nama`, `brand`, `kategori`, `tipe`, `harga_provider`, `harga_jual`, `harga_basic`, `harga_gold`, `harga_platinum`, `keuntungan`, `keuntungan_basic`, `keuntungan_gold`, `keuntungan_platinum`, `kode_produk`, `status`, `sts_flash_sale`, `persen_diskon`, `harga_fs`, `harga_fs_basic`, `harga_fs_gold`, `harga_fs_platinum`, `waktu_akhir_fs`, `provider`, `logo`, `created_at`, `updated_at`) VALUES
(306, 'Indosat 100 MB 30 Hari', 'INDOSAT', 'Data', '', 880, 898, 898, 880, 880, 18, 18, 0, 0, '1', 'tidak aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-07-01 20:43:10', '2025-07-01 20:43:10'),
(2, 'Indosat 4 GB 30 Hari', 'INDOSAT', 'Data', '', 21585, 22017, 22017, 21585, 21585, 432, 432, 0, 0, '10', 'aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:10'),
(3, 'Indosat 5 GB 30 Hari', 'INDOSAT', 'Data', '', 30175, 30779, 30779, 30175, 30175, 604, 604, 0, 0, '11', 'aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:10'),
(4, 'Indosat 8 GB 30 Hari', 'INDOSAT', 'Data', '', 41725, 42560, 42560, 41725, 41725, 835, 835, 0, 0, '13', 'aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:10'),
(5, 'Indosat 10 GB 30 Hari', 'INDOSAT', 'Data', '', 42000, 42840, 42840, 42000, 42000, 840, 840, 0, 0, '14', 'aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:10'),
(6, 'Indosat 200 MB 30 Hari', 'INDOSAT', 'Data', '', 1640, 1673, 1673, 1640, 1640, 33, 33, 0, 0, '2', 'tidak aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:10'),
(7, 'Indosat 300 MB 30 Hari', 'INDOSAT', 'Data', '', 3405, 3473, 3473, 3405, 3405, 68, 68, 0, 0, '3', 'tidak aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:10'),
(8, 'Indosat 400 MB 30 Hari', 'INDOSAT', 'Data', '', 2716, 2770, 2770, 2716, 2716, 54, 54, 0, 0, '4', 'tidak aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:10'),
(9, 'Indosat 500 MB 30 Hari', 'INDOSAT', 'Data', '', 4605, 4697, 4697, 4605, 4605, 92, 92, 0, 0, '5', 'tidak aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:10'),
(10, 'Indosat 750 MB 30 Hari', 'INDOSAT', 'Data', '', 6005, 6125, 6125, 6005, 6005, 120, 120, 0, 0, '6', 'tidak aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:10'),
(11, 'Indosat 1 GB 30 Hari', 'INDOSAT', 'Data', '', 8950, 9129, 9129, 8950, 8950, 179, 179, 0, 0, '7', 'aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:10'),
(12, 'Indosat 2 GB 30 Hari', 'INDOSAT', 'Data', '', 17875, 18233, 18233, 17875, 17875, 358, 358, 0, 0, '8', 'aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:10'),
(13, 'Indosat 3 GB 30 Hari', 'INDOSAT', 'Data', '', 16950, 17289, 17289, 16950, 16950, 339, 339, 0, 0, '9', 'aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:10'),
(14, 'Call of Duty Mobile 26 CP', 'Call of Duty MOBILE', 'Games', '', 4850, 4947, 4947, 4850, 4850, 97, 97, 0, 0, 'ACD', 'aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:10'),
(15, 'Aktivasi Perdana Axis Bronet 3 GB 60 Hari', 'AXIS', 'Aktivasi Perdana', '', 22410, 22858, 22858, 22410, 22410, 448, 448, 0, 0, 'Aktivasi-axis3gb', 'tidak aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:10'),
(16, 'Aktivasi Perdana Axis Bronet 1.5 GB / 60 Hari', 'AXIS', 'Aktivasi Perdana', '', 15205, 15509, 15509, 15205, 15205, 304, 304, 0, 0, 'Aktivasi-perdanaaxis60hr', 'tidak aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:10'),
(17, 'Aktivasi Perdana Telkomsel Jawa Tengah - DIY InternetMAX Lite 3 GB 30 Hari', 'TELKOMSEL', 'Aktivasi Perdana', '', 20010, 20410, 20410, 20010, 20010, 400, 400, 0, 0, 'Aktivasi-perdanatlkm30hre', 'aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:10'),
(18, 'Aktivasi Perdana Smartfren Unlimited Nonstop 2 GB 10 Hari', 'SMARTFREN', 'Aktivasi Perdana', '', 12843, 13100, 13100, 12843, 12843, 257, 257, 0, 0, 'Aktivasi-Smartfren2gb', 'aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:10'),
(19, 'AOV 7 Vouchers', 'ARENA OF VALOR', 'Games', '', 1900, 1938, 1938, 1900, 1900, 38, 38, 0, 0, 'aov', 'aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:10'),
(20, 'AU2 72 Diamonds', 'AU2 MOBILE', 'Games', '', 14350, 14637, 14637, 14350, 14350, 287, 287, 0, 0, 'AU', 'aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:10'),
(21, 'Axis 10.000', 'AXIS', 'Pulsa', '', 10820, 11036, 11036, 10820, 10820, 216, 216, 0, 0, 'Axis-10', 'aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(22, 'Axis 15.000', 'AXIS', 'Pulsa', '', 14980, 15280, 15280, 14980, 14980, 300, 300, 0, 0, 'Axis-15', 'aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(23, 'Axis 5.000', 'AXIS', 'Pulsa', '', 5825, 5942, 5942, 5825, 5825, 117, 117, 0, 0, 'Axis-5', 'aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(24, 'Axis 100.000', 'AXIS', 'Pulsa', '', 99195, 101179, 101179, 99195, 99195, 1984, 1984, 0, 0, 'Axis100', 'aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(25, 'Honor of Kings 8 Tokens', 'Honor of Kings', 'Games', '', 1375, 1403, 1403, 1375, 1375, 28, 28, 0, 0, 'BAKULAN-ELEKTRIK', 'tidak aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(26, 'Astral Guardians 90 Diamonds', 'Astral Guardians', 'Games', '', 15754, 16069, 16069, 15754, 15754, 315, 315, 0, 0, 'BANGJEFF', 'aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(27, 'BRIZZI 20.000', 'BRI BRIZZI', 'E-Money', '', 20125, 20528, 20528, 20125, 20125, 403, 403, 0, 0, 'BRIZZ1', 'aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(28, 'BRIZZI 50.000', 'BRI BRIZZI', 'E-Money', '', 50150, 51153, 51153, 50150, 50150, 1003, 1003, 0, 0, 'BRIZZ2', 'aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(29, 'BRIZZI 100.000', 'BRI BRIZZI', 'E-Money', '', 100150, 102153, 102153, 100150, 100150, 2003, 2003, 0, 0, 'BRIZZ3', 'aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(30, 'BRIZZI 150.000', 'BRI BRIZZI', 'E-Money', '', 150300, 153306, 153306, 150300, 150300, 3006, 3006, 0, 0, 'BRIZZ4', 'tidak aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(31, 'Axis Data BRONET 3 GB 30 Hari', 'AXIS', 'Data', '', 16060, 16381, 16381, 16060, 16060, 321, 321, 0, 0, 'BRONET3gb', 'tidak aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(32, 'Axis Data BRONET 8 GB 30 Hari', 'AXIS', 'Data', '', 35075, 35777, 35777, 35075, 35075, 702, 702, 0, 0, 'BRONET8gb', 'tidak aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(33, 'Be The King AS 60 Gold', 'Be The King', 'Games', '', 13660, 13933, 13933, 13660, 13660, 273, 273, 0, 0, 'BTKAS60', 'aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(34, 'Bukalapak 20.000', 'BUKALAPAK', 'E-Money', '', 21250, 21675, 21675, 21250, 21250, 425, 425, 0, 0, 'Bukalapak20', 'tidak aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(35, 'by.U 15.000', 'by.U', 'Pulsa', '', 15035, 15336, 15336, 15035, 15035, 301, 301, 0, 0, 'byu15', 'tidak aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(36, 'by.U 5.000', 'by.U', 'Pulsa', '', 5090, 5192, 5192, 5090, 5090, 102, 102, 0, 0, 'byu5', 'tidak aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(37, 'DANA 10.000', 'DANA', 'E-Money', '', 10105, 10307, 10307, 10105, 10105, 202, 202, 0, 0, 'DANA1', 'tidak aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(38, 'DANA 40.000', 'DANA', 'E-Money', '', 40175, 40979, 40979, 40175, 40175, 804, 804, 0, 0, 'DANA10', 'tidak aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(39, 'DANA 50.000', 'DANA', 'E-Money', '', 50250, 51255, 51255, 50250, 50250, 1005, 1005, 0, 0, 'DANA11', 'tidak aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(40, 'DANA 70.000', 'DANA', 'E-Money', '', 70175, 71579, 71579, 70175, 70175, 1404, 1404, 0, 0, 'DANA12', 'tidak aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(41, 'DANA 75.000', 'DANA', 'E-Money', '', 75175, 76679, 76679, 75175, 75175, 1504, 1504, 0, 0, 'DANA13', 'tidak aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(42, 'DANA 100.000', 'DANA', 'E-Money', '', 100100, 102102, 102102, 100100, 100100, 2002, 2002, 0, 0, 'DANA14', 'aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(43, 'DANA 11.000', 'DANA', 'E-Money', '', 11225, 11450, 11450, 11225, 11225, 225, 225, 0, 0, 'DANA2', 'tidak aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(44, 'DANA 12.000', 'DANA', 'E-Money', '', 12225, 12470, 12470, 12225, 12225, 245, 245, 0, 0, 'DANA3', 'tidak aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(45, 'DANA 15.000', 'DANA', 'E-Money', '', 15260, 15565, 15565, 15260, 15260, 305, 305, 0, 0, 'DANA5', 'tidak aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(46, 'DANA 20.000', 'DANA', 'E-Money', '', 20110, 20512, 20512, 20110, 20110, 402, 402, 0, 0, 'DANA6', 'tidak aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(47, 'DANA 25.000', 'DANA', 'E-Money', '', 25110, 25612, 25612, 25110, 25110, 502, 502, 0, 0, 'DANA7', 'tidak aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(48, 'DANA 30.000', 'DANA', 'E-Money', '', 30125, 30728, 30728, 30125, 30125, 603, 603, 0, 0, 'DANA8', 'tidak aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(49, 'DANA 35.000', 'DANA', 'E-Money', '', 35235, 35940, 35940, 35235, 35235, 705, 705, 0, 0, 'DANA9', 'tidak aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(50, 'DANA 13.000', 'DANA', 'E-Money', '', 13225, 13490, 13490, 13225, 13225, 265, 265, 0, 0, 'DANAv4', 'tidak aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(51, 'Mandiri E-Toll 20.000', 'MANDIRI E-TOLL', 'E-Money', '', 20360, 20767, 20767, 20360, 20360, 407, 407, 0, 0, 'E-Toll1', 'tidak aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(52, 'Mandiri E-Toll 400.000', 'MANDIRI E-TOLL', 'E-Money', '', 400990, 409010, 409010, 400990, 400990, 8020, 8020, 0, 0, 'E-Toll10', 'aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(53, 'Mandiri E-Toll 25.000', 'MANDIRI E-TOLL', 'E-Money', '', 26260, 26785, 26785, 26260, 26260, 525, 525, 0, 0, 'E-Toll2', 'tidak aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(54, 'Mandiri E-Toll 30.000', 'MANDIRI E-TOLL', 'E-Money', '', 31275, 31901, 31901, 31275, 31275, 626, 626, 0, 0, 'E-Toll3', 'tidak aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(55, 'Mandiri E-Toll 40.000', 'MANDIRI E-TOLL', 'E-Money', '', 41275, 42101, 42101, 41275, 41275, 826, 826, 0, 0, 'E-Toll4', 'tidak aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(56, 'Mandiri E-Toll 50.000', 'MANDIRI E-TOLL', 'E-Money', '', 50375, 51383, 51383, 50375, 50375, 1008, 1008, 0, 0, 'E-Toll5', 'tidak aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(57, 'Mandiri E-Toll 75.000', 'MANDIRI E-TOLL', 'E-Money', '', 75525, 77036, 77036, 75525, 75525, 1511, 1511, 0, 0, 'E-Toll6', 'aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(58, 'Mandiri E-Toll 100.000', 'MANDIRI E-TOLL', 'E-Money', '', 100375, 102383, 102383, 100375, 100375, 2008, 2008, 0, 0, 'E-Toll7', 'tidak aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(59, 'Mandiri E-Toll 200.000', 'MANDIRI E-TOLL', 'E-Money', '', 202025, 206066, 206066, 202025, 202025, 4041, 4041, 0, 0, 'E-Toll8', 'aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(60, 'Mandiri E-Toll 300.000', 'MANDIRI E-TOLL', 'E-Money', '', 302025, 308066, 308066, 302025, 302025, 6041, 6041, 0, 0, 'E-Toll9', 'aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(61, 'Free Fire 5 Diamond', 'FREE FIRE', 'Games', '', 826, 843, 843, 826, 826, 17, 17, 0, 0, 'Fire1', 'tidak aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(62, 'Free Fire 55 Diamond', 'FREE FIRE', 'Games', '', 7584, 7736, 7736, 7584, 7584, 152, 152, 0, 0, 'Fire10', 'aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(63, 'Free Fire 70 Diamond', 'FREE FIRE', 'Games', '', 8570, 8741, 8741, 8570, 8570, 171, 171, 0, 0, 'Fire12', 'tidak aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(64, 'Free Fire 75 Diamond', 'FREE FIRE', 'Games', '', 9332, 9519, 9519, 9332, 9332, 187, 187, 0, 0, 'Fire13', 'aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(65, 'Free Fire 90 Diamond', 'FREE FIRE', 'Games', '', 11669, 11902, 11902, 11669, 11669, 233, 233, 0, 0, 'Fire15', 'aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(66, 'Free Fire 95 Diamond', 'FREE FIRE', 'Games', '', 12606, 12858, 12858, 12606, 12606, 252, 252, 0, 0, 'Fire16', 'tidak aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(67, 'Free Fire 100 Diamond', 'FREE FIRE', 'Games', '', 13346, 13613, 13613, 13346, 13346, 267, 267, 0, 0, 'Fire17', 'aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(68, 'Free Fire 120 Diamond', 'FREE FIRE', 'Games', '', 14778, 15074, 15074, 14778, 14778, 296, 296, 0, 0, 'Fire18', 'aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(69, 'Free Fire 130 Diamond', 'FREE FIRE', 'Games', '', 17108, 17450, 17450, 17108, 17108, 342, 342, 0, 0, 'Fire19', 'tidak aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(70, 'Free Fire 140 Diamond', 'FREE FIRE', 'Games', '', 17135, 17478, 17478, 17135, 17135, 343, 343, 0, 0, 'Fire20', 'tidak aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(71, 'Free Fire 180 Diamond', 'FREE FIRE', 'Games', '', 22829, 23286, 23286, 22829, 22829, 457, 457, 0, 0, 'Fire33', 'tidak aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(72, 'Free Fire 190 Diamond', 'FREE FIRE', 'Games', '', 24105, 24587, 24587, 24105, 24105, 482, 482, 0, 0, 'Fire34', 'aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(73, 'Free Fire 405 Diamond', 'FREE FIRE', 'Games', '', 49518, 50508, 50508, 49518, 49518, 990, 990, 0, 0, 'Fire36', 'tidak aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(74, 'Free Fire 500 Diamond', 'FREE FIRE', 'Games', '', 64752, 66047, 66047, 64752, 64752, 1295, 1295, 0, 0, 'Fire37', 'tidak aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(75, 'Free Fire 545 Diamond', 'FREE FIRE', 'Games', '', 75600, 77112, 77112, 75600, 75600, 1512, 1512, 0, 0, 'Fire38', 'tidak aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(76, 'Free Fire 565 Diamond', 'FREE FIRE', 'Games', '', 69218, 70602, 70602, 69218, 69218, 1384, 1384, 0, 0, 'Fire39', 'tidak aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(77, 'Free Fire 80 Diamond', 'FREE FIRE', 'Games', '', 10110, 10312, 10312, 10110, 10110, 202, 202, 0, 0, 'Fire41', 'aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(78, 'Free Fire 25 Diamond', 'FREE FIRE', 'Games', '', 4505, 4595, 4595, 4505, 4505, 90, 90, 0, 0, 'Fire6', 'aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(79, 'Free Fire 30 Diamond', 'FREE FIRE', 'Games', '', 4691, 4785, 4785, 4691, 4691, 94, 94, 0, 0, 'Fire7', 'tidak aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(80, 'Free Fire 40 Diamond', 'FREE FIRE', 'Games', '', 6805, 6941, 6941, 6805, 6805, 136, 136, 0, 0, 'Fire8', 'aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(81, 'Free Fire 50 Diamond', 'FREE FIRE', 'Games', '', 6254, 6379, 6379, 6254, 6254, 125, 125, 0, 0, 'Fire9', 'tidak aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(82, 'Football Master 2 18 FMP', 'Football Master 2', 'Games', '', 3064, 3125, 3125, 3064, 3064, 61, 61, 0, 0, 'FOOTB18FMP', 'aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(83, 'Free Fire 12 Diamond', 'FREE FIRE', 'Games', '', 1880, 1918, 1918, 1880, 1880, 38, 38, 0, 0, 'Free-Fire12', 'tidak aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(84, 'Free Fire 140 Diamond', 'FREE FIRE', 'Games', '', 18081, 18443, 18443, 18081, 18081, 362, 362, 0, 0, 'Free-Fire140', 'tidak aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(85, 'Free Fire 20 Diamond', 'FREE FIRE', 'Games', '', 3129, 3192, 3192, 3129, 3129, 63, 63, 0, 0, 'Free-Fire20', 'tidak aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(86, 'Free Fire 5 Diamond', 'FREE FIRE', 'Games', '', 842, 859, 859, 842, 842, 17, 17, 0, 0, 'Free-Fire5', 'tidak aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(87, 'Garena 33 Shell', 'GARENA', 'Games', '', 9155, 9338, 9338, 9155, 9155, 183, 183, 0, 0, 'Garena1', 'aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(88, 'Garena 66 Shell', 'GARENA', 'Games', '', 18210, 18574, 18574, 18210, 18210, 364, 364, 0, 0, 'Garena2', 'aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(89, 'Garena 165 Shell', 'GARENA', 'Games', '', 45325, 46232, 46232, 45325, 45325, 907, 907, 0, 0, 'Garena3', 'aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(90, 'Garena 330 Shell', 'GARENA', 'Games', '', 92025, 93866, 93866, 92025, 92025, 1841, 1841, 0, 0, 'Garena4', 'tidak aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(91, 'Grab penumpang 20.000', 'GRAB', 'E-Money', '', 20985, 21405, 21405, 20985, 20985, 420, 420, 0, 0, 'Grab1', 'tidak aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(92, 'Grab penumpang 25.000', 'GRAB', 'E-Money', '', 25985, 26505, 26505, 25985, 25985, 520, 520, 0, 0, 'Grab2', 'tidak aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(93, 'Grab penumpang 40.000', 'GRAB', 'E-Money', '', 41050, 41871, 41871, 41050, 41050, 821, 821, 0, 0, 'Grab3', 'tidak aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(94, 'Grab penumpang 50.000', 'GRAB', 'E-Money', '', 51050, 52071, 52071, 51050, 51050, 1021, 1021, 0, 0, 'Grab4', 'tidak aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(95, 'Grab penumpang 75.000', 'GRAB', 'E-Money', '', 76050, 77571, 77571, 76050, 76050, 1521, 1521, 0, 0, 'Grab5', 'tidak aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(96, 'Grab penumpang 100.000', 'GRAB', 'E-Money', '', 101050, 103071, 103071, 101050, 101050, 2021, 2021, 0, 0, 'Grab6', 'tidak aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(97, 'Grab penumpang 150.000', 'GRAB', 'E-Money', '', 151050, 154071, 154071, 151050, 151050, 3021, 3021, 0, 0, 'Grab7', 'tidak aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(98, 'Grab penumpang 200.000', 'GRAB', 'E-Money', '', 201125, 205148, 205148, 201125, 201125, 4023, 4023, 0, 0, 'Grab8', 'tidak aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(99, 'Grab penumpang 500.000', 'GRAB', 'E-Money', '', 500825, 510842, 510842, 500825, 500825, 10017, 10017, 0, 0, 'Grab9', 'tidak aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(100, 'Hago 5 Diamonds', 'HAGO', 'Games', '', 1726, 1761, 1761, 1726, 1726, 35, 35, 0, 0, 'Hago1', 'aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(101, 'Indosat 100.000', 'INDOSAT', 'Pulsa', '', 98098, 100060, 100060, 98098, 98098, 1962, 1962, 0, 0, 'Indosa-100', 'aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(102, 'Indosat 20.000', 'INDOSAT', 'Pulsa', '', 20500, 20910, 20910, 20500, 20500, 410, 410, 0, 0, 'Indosa-20', 'aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(103, 'Indosat 25.000', 'INDOSAT', 'Pulsa', '', 25350, 25857, 25857, 25350, 25350, 507, 507, 0, 0, 'Indosa-25', 'aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(104, 'Indosat 5.000', 'INDOSAT', 'Pulsa', '', 5875, 5993, 5993, 5875, 5875, 118, 118, 0, 0, 'Indosa-5', 'aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(105, 'Indosat 50.000', 'INDOSAT', 'Pulsa', '', 49119, 50101, 50101, 49119, 49119, 982, 982, 0, 0, 'Indosa-50', 'aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(106, 'K-Vision & GOL Paket CLING (CL01)  30 Hari', 'K-VISION dan GOL', 'TV', '', 19794, 20190, 20190, 19794, 19794, 396, 396, 0, 0, 'K-Vision', 'aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(107, 'Laplace M 60 Spirals', 'Laplace M', 'Games', '', 14105, 14387, 14387, 14105, 14105, 282, 282, 0, 0, 'Laplace', 'aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(108, 'LinkAja Rp 40.000', 'LinkAja', 'E-Money', '', 40210, 41014, 41014, 40210, 40210, 804, 804, 0, 0, 'LinkAja4', 'aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(109, 'LinkAja Rp 50.000', 'LinkAja', 'E-Money', '', 50210, 51214, 51214, 50210, 50210, 1004, 1004, 0, 0, 'LinkAja5', 'aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(110, 'LinkAja Rp 60.000', 'LinkAja', 'E-Money', '', 60210, 61414, 61414, 60210, 60210, 1204, 1204, 0, 0, 'LinkAja6', 'aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(111, 'LinkAja Rp 65.000', 'LinkAja', 'E-Money', '', 65350, 66657, 66657, 65350, 65350, 1307, 1307, 0, 0, 'LinkAja7', 'tidak aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(112, 'LinkAja Rp 80.000', 'LinkAja', 'E-Money', '', 80210, 81814, 81814, 80210, 80210, 1604, 1604, 0, 0, 'LinkAja8', 'aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(113, 'Lords Mobile 67 Diamonds', 'Lords Mobile', 'Games', '', 9905, 10103, 10103, 9905, 9905, 198, 198, 0, 0, 'Lord', 'aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(114, 'MangaToon 100 Coins', 'MangaToon', 'Games', '', 16500, 16830, 16830, 16500, 16500, 330, 330, 0, 0, 'MangaToon', 'aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(115, 'Telkomsel Tambah Masa Aktif Kartu 5 Hari', 'TELKOMSEL', 'Masa Aktif', '', 2363, 2410, 2410, 2363, 2363, 47, 47, 0, 0, 'masaktif-Telkomsel5hri', 'aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(116, 'MOBILELEGEND - 3 Diamond', 'Mobile Legends', 'Games', 'instant', 1200, 1224, 1224, 1200, 1200, 24, 24, 0, 0, 'MOBILELEGEND1', 'aktif', 'Ya', 3, 1187, 1187, 1164, 1164, '2025-12-18', 'DF', 'logo-mlbb.jpg', '2025-06-29 10:18:43', '2025-07-01 20:45:04'),
(117, 'MOBILELEGEND - 36 Diamond', 'MOBILE LEGENDS', 'Games', '', 9621, 9813, 9813, 9621, 9621, 192, 192, 0, 0, 'MOBILELEGEND10', 'aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(118, 'MOBILELEGEND - 6050 Diamond', 'MOBILE LEGENDS', 'Games', '', 1484400, 1514088, 1514088, 1484400, 1484400, 29688, 29688, 0, 0, 'MOBILELEGEND100', 'tidak aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(119, 'MOBILELEGEND - 42 Diamond', 'MOBILE LEGENDS', 'Games', '', 9629, 9822, 9822, 9629, 9629, 193, 193, 0, 0, 'MOBILELEGEND11', 'tidak aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(120, 'MOBILELEGEND - 5532 Diamond', 'MOBILE LEGENDS', 'Games', '', 1351000, 1378020, 1378020, 1351000, 1351000, 27020, 27020, 0, 0, 'MOBILELEGEND111', 'tidak aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(121, 'MOBILELEGEND - 44 Diamond', 'MOBILE LEGENDS', 'Games', '', 11005, 11225, 11225, 11005, 11005, 220, 220, 0, 0, 'MOBILELEGEND12', 'tidak aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(122, 'MOBILELEGEND - 45 Diamond', 'MOBILE LEGENDS', 'Games', '', 12565, 12816, 12816, 12565, 12565, 251, 251, 0, 0, 'MOBILELEGEND13', 'aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(123, 'MOBILELEGEND - 56 Diamond', 'MOBILE LEGENDS', 'Games', '', 13000, 13260, 13260, 13000, 13000, 260, 260, 0, 0, 'MOBILELEGEND14', 'tidak aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(124, 'MOBILELEGEND - 59 Diamond', 'MOBILE LEGENDS', 'Games', '', 15370, 15677, 15677, 15370, 15370, 307, 307, 0, 0, 'MOBILELEGEND15', 'aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(125, 'MOBILELEGEND - 60 Diamond', 'MOBILE LEGENDS', 'Games', '', 16211, 16535, 16535, 16211, 16211, 324, 324, 0, 0, 'MOBILELEGEND16', 'aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(126, 'MOBILELEGEND - 70 Diamond', 'MOBILE LEGENDS', 'Games', '', 16090, 16412, 16412, 16090, 16090, 322, 322, 0, 0, 'MOBILELEGEND17', 'tidak aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(127, 'MOBILELEGEND - 74 Diamond', 'MOBILE LEGENDS', 'Games', '', 20500, 20910, 20910, 20500, 20500, 410, 410, 0, 0, 'MOBILELEGEND18', 'tidak aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(128, 'MOBILELEGEND - 85 Diamond', 'MOBILE LEGENDS', 'Games', '', 22090, 22532, 22532, 22090, 22090, 442, 442, 0, 0, 'MOBILELEGEND19', 'aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(129, 'MOBILELEGEND - 86 Diamond', 'MOBILE LEGENDS', 'Games', '', 18915, 19293, 19293, 18915, 18915, 378, 378, 0, 0, 'MOBILELEGEND20', 'tidak aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(130, 'MOBILELEGEND - 100 Diamond', 'MOBILE LEGENDS', 'Games', '', 26212, 26736, 26736, 26212, 26212, 524, 524, 0, 0, 'MOBILELEGEND21', 'aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(131, 'MOBILELEGEND - 112 Diamond', 'MOBILE LEGENDS', 'Games', '', 25149, 25652, 25652, 25149, 25149, 503, 503, 0, 0, 'MOBILELEGEND22', 'tidak aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(132, 'MOBILELEGEND - 170 Diamond', 'MOBILE LEGENDS', 'Games', '', 44179, 45063, 45063, 44179, 44179, 884, 884, 0, 0, 'MOBILELEGEND25', 'aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(133, 'MOBILELEGEND - 172 Diamond', 'MOBILE LEGENDS', 'Games', '', 37515, 38265, 38265, 37515, 37515, 750, 750, 0, 0, 'MOBILELEGEND26', 'tidak aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(134, 'MOBILELEGEND - 185 Diamond', 'MOBILE LEGENDS', 'Games', '', 40952, 41771, 41771, 40952, 40952, 819, 819, 0, 0, 'MOBILELEGEND27', 'tidak aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(135, 'MOBILELEGEND - 222 Diamond', 'MOBILE LEGENDS', 'Games', '', 50692, 51706, 51706, 50692, 50692, 1014, 1014, 0, 0, 'MOBILELEGEND28', 'tidak aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(136, 'MOBILELEGEND - 240 Diamond', 'MOBILE LEGENDS', 'Games', '', 53700, 54774, 54774, 53700, 53700, 1074, 1074, 0, 0, 'MOBILELEGEND29', 'tidak aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(137, 'MOBILELEGEND - 5 Diamond', 'MOBILE LEGENDS', 'Games', '', 1785, 1821, 1821, 1785, 1785, 36, 36, 0, 0, 'MOBILELEGEND3', 'tidak aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(138, 'MOBILELEGEND - 257 Diamond', 'MOBILE LEGENDS', 'Games', '', 56395, 57523, 57523, 56395, 56395, 1128, 1128, 0, 0, 'MOBILELEGEND30', 'tidak aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(139, 'MOBILELEGEND - 284 Diamond', 'MOBILE LEGENDS', 'Games', '', 62400, 63648, 63648, 62400, 62400, 1248, 1248, 0, 0, 'MOBILELEGEND31', 'tidak aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(140, 'MOBILELEGEND - 296 Diamond', 'MOBILE LEGENDS', 'Games', '', 66198, 67522, 67522, 66198, 66198, 1324, 1324, 0, 0, 'MOBILELEGEND32', 'tidak aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(141, 'MOBILELEGEND - 344 Diamond', 'MOBILE LEGENDS', 'Games', '', 74980, 76480, 76480, 74980, 74980, 1500, 1500, 0, 0, 'MOBILELEGEND33', 'tidak aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(142, 'MOBILELEGEND - 4830 Diamond', 'MOBILE LEGENDS', 'Games', '', 1132614, 1155266, 1155266, 1132614, 1132614, 22652, 22652, 0, 0, 'MOBILELEGEND333', 'aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(143, 'MOBILELEGEND - 355 Diamond', 'MOBILE LEGENDS', 'Games', '', 90874, 92691, 92691, 90874, 90874, 1817, 1817, 0, 0, 'MOBILELEGEND34', 'aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(144, 'MOBILELEGEND - 370 Diamond', 'MOBILE LEGENDS', 'Games', '', 94385, 96273, 96273, 94385, 94385, 1888, 1888, 0, 0, 'MOBILELEGEND35', 'aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(145, 'MOBILELEGEND - 408 Diamond', 'MOBILE LEGENDS', 'Games', '', 99795, 101791, 101791, 99795, 99795, 1996, 1996, 0, 0, 'MOBILELEGEND36', 'tidak aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(146, 'MOBILELEGEND - 429 Diamond', 'MOBILE LEGENDS', 'Games', '', 93860, 95737, 95737, 93860, 93860, 1877, 1877, 0, 0, 'MOBILELEGEND37', 'tidak aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(147, 'MOBILELEGEND - 514 Diamond', 'MOBILE LEGENDS', 'Games', '', 134360, 137047, 137047, 134360, 134360, 2687, 2687, 0, 0, 'MOBILELEGEND38', 'aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(148, 'MOBILELEGEND - 568 Diamond', 'MOBILE LEGENDS', 'Games', '', 120625, 123038, 123038, 120625, 120625, 2413, 2413, 0, 0, 'MOBILELEGEND39', 'tidak aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(149, 'MOBILELEGEND - 12 Diamond', 'MOBILE LEGENDS', 'Games', '', 3775, 3851, 3851, 3775, 3775, 76, 76, 0, 0, 'MOBILELEGEND4', 'aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(150, 'MOBILELEGEND - 600 Diamond', 'MOBILE LEGENDS', 'Games', '', 152300, 155346, 155346, 152300, 152300, 3046, 3046, 0, 0, 'MOBILELEGEND40', 'tidak aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(151, 'MOBILELEGEND - 14 Diamond', 'MOBILE LEGENDS', 'Games', '', 3220, 3284, 3284, 3220, 3220, 64, 64, 0, 0, 'MOBILELEGEND5', 'tidak aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(152, 'MOBILELEGEND - 1412 Diamond', 'MOBILE LEGENDS', 'Games', '', 300950, 306969, 306969, 300950, 300950, 6019, 6019, 0, 0, 'MOBILELEGEND55', 'tidak aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(153, 'MOBILELEGEND - 19 Diamond', 'MOBILE LEGENDS', 'Games', '', 5281, 5387, 5387, 5281, 5281, 106, 106, 0, 0, 'MOBILELEGEND6', 'aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(154, 'MOBILELEGEND - 1220 Diamond', 'MOBILE LEGENDS', 'Games', '', 264070, 269351, 269351, 264070, 264070, 5281, 5281, 0, 0, 'MOBILELEGEND66', 'tidak aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(155, 'MOBILELEGEND - 28 Diamond', 'MOBILE LEGENDS', 'Games', '', 6410, 6538, 6538, 6410, 6410, 128, 128, 0, 0, 'MOBILELEGEND7', 'tidak aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(156, 'MOBILELEGEND - 706 Diamond', 'MOBILE LEGENDS', 'Games', '', 179290, 182876, 182876, 179290, 179290, 3586, 3586, 0, 0, 'MOBILELEGEND706', 'tidak aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(157, 'MOBILELEGEND - 1000 Diamond', 'MOBILE LEGENDS', 'Games', '', 253475, 258545, 258545, 253475, 253475, 5070, 5070, 0, 0, 'MOBILELEGEND777', 'aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(158, 'MOBILELEGEND - 30 Diamond', 'MOBILE LEGENDS', 'Games', '', 8189, 8353, 8353, 8189, 8189, 164, 164, 0, 0, 'MOBILELEGEND8', 'aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(159, 'MOBILELEGEND - 33 Diamond', 'MOBILE LEGENDS', 'Games', '', 9066, 9247, 9247, 9066, 9066, 181, 181, 0, 0, 'MOBILELEGEND9', 'aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(160, 'Maxis 5', 'MAXIS', 'Malaysia TOPUP', '', 21435, 21864, 21864, 21435, 21435, 429, 429, 0, 0, 'mytyy', 'aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(161, 'XL Nelpon Sesama 350 Menit + Operator Lain 50 Menit - 7 Hari', 'XL', 'Paket SMS & Telpon', '', 11250, 11475, 11475, 11250, 11250, 225, 225, 0, 0, 'Nelponxl50Menit', 'aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(162, 'OVO 10.000', 'OVO', 'E-Money', '', 9224, 9408, 9408, 9224, 9224, 184, 184, 0, 0, 'OVO1', 'tidak aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(163, 'OVO 60.000', 'OVO', 'E-Money', '', 60750, 61965, 61965, 60750, 60750, 1215, 1215, 0, 0, 'OVO10', 'aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(164, 'OVO 70.000', 'OVO', 'E-Money', '', 70750, 72165, 72165, 70750, 70750, 1415, 1415, 0, 0, 'OVO11', 'tidak aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(165, 'OVO 80.000', 'OVO', 'E-Money', '', 80750, 82365, 82365, 80750, 80750, 1615, 1615, 0, 0, 'OVO12', 'aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(166, 'OVO 90.000', 'OVO', 'E-Money', '', 90750, 92565, 92565, 90750, 90750, 1815, 1815, 0, 0, 'OVO13', 'tidak aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(167, 'OVO 100.000', 'OVO', 'E-Money', '', 100750, 102765, 102765, 100750, 100750, 2015, 2015, 0, 0, 'OVO14', 'tidak aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(168, 'OVO 150.000', 'OVO', 'E-Money', '', 157500, 160650, 160650, 157500, 157500, 3150, 3150, 0, 0, 'OVO15', 'tidak aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(169, 'OVO 15.000', 'OVO', 'E-Money', '', 15750, 16065, 16065, 15750, 15750, 315, 315, 0, 0, 'OVO2', 'tidak aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(170, 'OVO 20.000', 'OVO', 'E-Money', '', 20750, 21165, 21165, 20750, 20750, 415, 415, 0, 0, 'OVO3', 'tidak aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(171, 'OVO 25.000', 'OVO', 'E-Money', '', 25750, 26265, 26265, 25750, 25750, 515, 515, 0, 0, 'OVO4', 'tidak aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(172, 'OVO 30.000', 'OVO', 'E-Money', '', 30750, 31365, 31365, 30750, 30750, 615, 615, 0, 0, 'OVO5', 'tidak aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(173, 'OVO 35.000', 'OVO', 'E-Money', '', 35750, 36465, 36465, 35750, 35750, 715, 715, 0, 0, 'OVO6', 'tidak aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(174, 'OVO 40.000', 'OVO', 'E-Money', '', 40750, 41565, 41565, 40750, 40750, 815, 815, 0, 0, 'OVO7', 'aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(175, 'OVO 45.000', 'OVO', 'E-Money', '', 45750, 46665, 46665, 45750, 45750, 915, 915, 0, 0, 'OVO8', 'tidak aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(176, 'OVO 50.000', 'OVO', 'E-Money', '', 50750, 51765, 51765, 50750, 50750, 1015, 1015, 0, 0, 'OVO9', 'tidak aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(177, 'Nex Parabola Paket Premium Sports 30 Hari (3501)', 'Nex Parabola', 'TV', '', 203810, 207886, 207886, 203810, 203810, 4076, 4076, 0, 0, 'Parabola3501', 'tidak aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(178, 'Go Pay 10.000', 'GO PAY', 'E-Money', '', 10655, 10868, 10868, 10655, 10655, 213, 213, 0, 0, 'Pay1', 'tidak aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(179, 'Go Pay 55.000', 'GO PAY', 'E-Money', '', 55695, 56809, 56809, 55695, 55695, 1114, 1114, 0, 0, 'Pay10', 'aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(180, 'Go Pay 60.000', 'GO PAY', 'E-Money', '', 60695, 61909, 61909, 60695, 60695, 1214, 1214, 0, 0, 'Pay11', 'aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(181, 'Go Pay 65.000', 'GO PAY', 'E-Money', '', 65695, 67009, 67009, 65695, 65695, 1314, 1314, 0, 0, 'Pay12', 'aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(182, 'Go Pay 70.000', 'GO PAY', 'E-Money', '', 70775, 72191, 72191, 70775, 70775, 1416, 1416, 0, 0, 'Pay13', 'tidak aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(183, 'Go Pay 75.000', 'GO PAY', 'E-Money', '', 75825, 77342, 77342, 75825, 75825, 1517, 1517, 0, 0, 'Pay14', 'tidak aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(184, 'Go Pay 80.000', 'GO PAY', 'E-Money', '', 80825, 82442, 82442, 80825, 80825, 1617, 1617, 0, 0, 'Pay15', 'tidak aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(185, 'Go Pay 85.000', 'GO PAY', 'E-Money', '', 85825, 87542, 87542, 85825, 85825, 1717, 1717, 0, 0, 'Pay16', 'tidak aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(186, 'Go Pay 90.000', 'GO PAY', 'E-Money', '', 90825, 92642, 92642, 90825, 90825, 1817, 1817, 0, 0, 'Pay17', 'tidak aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(187, 'Go Pay 95.000', 'GO PAY', 'E-Money', '', 95825, 97742, 97742, 95825, 95825, 1917, 1917, 0, 0, 'Pay18', 'tidak aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(188, 'Go Pay 100.000', 'GO PAY', 'E-Money', '', 100825, 102842, 102842, 100825, 100825, 2017, 2017, 0, 0, 'Pay19', 'tidak aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(189, 'Go Pay 15.000', 'GO PAY', 'E-Money', '', 15775, 16091, 16091, 15775, 15775, 316, 316, 0, 0, 'Pay2', 'tidak aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(190, 'Go Pay 20.000', 'GO PAY', 'E-Money', '', 20660, 21073, 21073, 20660, 20660, 413, 413, 0, 0, 'Pay3', 'tidak aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(191, 'Go Pay 25.000', 'GO PAY', 'E-Money', '', 25825, 26342, 26342, 25825, 25825, 517, 517, 0, 0, 'Pay4', 'tidak aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(192, 'Go Pay 30.000', 'GO PAY', 'E-Money', '', 30825, 31442, 31442, 30825, 30825, 617, 617, 0, 0, 'Pay5', 'tidak aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(193, 'Go Pay 35.000', 'GO PAY', 'E-Money', '', 35825, 36542, 36542, 35825, 35825, 717, 717, 0, 0, 'Pay6', 'tidak aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(194, 'Go Pay 40.000', 'GO PAY', 'E-Money', '', 40675, 41489, 41489, 40675, 40675, 814, 814, 0, 0, 'Pay7', 'tidak aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(195, 'Go Pay 50.000', 'GO PAY', 'E-Money', '', 50825, 51842, 51842, 50825, 50825, 1017, 1017, 0, 0, 'Pay9', 'tidak aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(196, '1.200 PB Cash', 'POINT BLANK', 'Games', '', 9700, 9894, 9894, 9700, 9700, 194, 194, 0, 0, 'pb', 'aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(197, 'Pertagas 20.000', 'Pertamina Gas', 'Gas', '', 21710, 22144, 22144, 21710, 21710, 434, 434, 0, 0, 'Pertagas20K', 'aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(198, 'Pertagas 50.000', 'Pertamina Gas', 'Gas', '', 51725, 52760, 52760, 51725, 51725, 1035, 1035, 0, 0, 'Pertagas50K', 'aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(199, 'PLN 5.000', 'PLN', 'PLN', '', 6705, 6839, 6839, 6705, 6705, 134, 134, 0, 0, 'PLN', 'aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(200, 'PLN 10.000', 'PLN', 'PLN', '', 11655, 11888, 11888, 11655, 11655, 233, 233, 0, 0, 'PLN10', 'aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(201, 'PLN 15.000', 'PLN', 'PLN', '', 16570, 16901, 16901, 16570, 16570, 331, 331, 0, 0, 'PLN1015', 'aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(202, 'PLN 20.000', 'PLN', 'PLN', '', 20565, 20976, 20976, 20565, 20565, 411, 411, 0, 0, 'PLN1020', 'aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(203, 'PUBG MOBILE 16 UC', 'PUBG MOBILE', 'Games', '', 7995, 8155, 8155, 7995, 7995, 160, 160, 0, 0, 'PUBG1', 'tidak aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(204, 'PUBG MOBILE 131 UC', 'PUBG MOBILE', 'Games', '', 40613, 41425, 41425, 40613, 40613, 812, 812, 0, 0, 'PUBG10', 'aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(205, 'PUBG MOBILE 150 UC', 'PUBG MOBILE', 'Games', '', 36043, 36764, 36764, 36043, 36043, 721, 721, 0, 0, 'PUBG11', 'tidak aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(206, 'PUBG MOBILE 156 UC', 'PUBG MOBILE', 'Games', '', 40628, 41441, 41441, 40628, 40628, 813, 813, 0, 0, 'PUBG12', 'aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(207, 'PUBG MOBILE 210 UC', 'PUBG MOBILE', 'Games', '', 47470, 48419, 48419, 47470, 47470, 949, 949, 0, 0, 'PUBG13', 'tidak aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(208, 'PUBG MOBILE 263 UC', 'PUBG MOBILE', 'Games', '', 67697, 69051, 69051, 67697, 67697, 1354, 1354, 0, 0, 'PUBG15', 'aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(209, 'PUBG MOBILE 500 UC', 'PUBG MOBILE', 'Games', '', 113425, 115694, 115694, 113425, 113425, 2269, 2269, 0, 0, 'PUBG16', 'tidak aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(210, 'PUBG MOBILE 700 UC', 'PUBG MOBILE', 'Games', '', 153625, 156698, 156698, 153625, 153625, 3073, 3073, 0, 0, 'PUBG17', 'aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(211, 'PUBG MOBILE 750 UC', 'PUBG MOBILE', 'Games', '', 163515, 166785, 166785, 163515, 163515, 3270, 3270, 0, 0, 'PUBG18', 'aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(212, 'PUBG MOBILE 825 UC', 'PUBG MOBILE', 'Games', '', 177050, 180591, 180591, 177050, 177050, 3541, 3541, 0, 0, 'PUBG19', 'aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(213, 'PUBG MOBILE 26 UC', 'PUBG MOBILE', 'Games', '', 11995, 12235, 12235, 11995, 11995, 240, 240, 0, 0, 'PUBG2', 'tidak aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(214, 'PUBG MOBILE 1100 UC', 'PUBG MOBILE', 'Games', '', 231656, 236289, 236289, 231656, 231656, 4633, 4633, 0, 0, 'PUBG20', 'aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(215, 'PUBG MOBILE 1250 UC', 'PUBG MOBILE', 'Games', '', 247025, 251966, 251966, 247025, 247025, 4941, 4941, 0, 0, 'PUBG21', 'tidak aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(216, 'PUBG MOBILE 1750 UC', 'PUBG MOBILE', 'Games', '', 342114, 348956, 348956, 342114, 342114, 6842, 6842, 0, 0, 'PUBG22', 'aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(217, 'PUBG MOBILE 2500 UC', 'PUBG MOBILE', 'Games', '', 452500, 461550, 461550, 452500, 452500, 9050, 9050, 0, 0, 'PUBG23', 'tidak aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(218, 'PUBG MOBILE 3500 UC', 'PUBG MOBILE', 'Games', '', 684342, 698029, 698029, 684342, 684342, 13687, 13687, 0, 0, 'PUBG24', 'aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(219, 'PUBG MOBILE 5000 UC', 'PUBG MOBILE', 'Games', '', 929507, 948097, 948097, 929507, 929507, 18590, 18590, 0, 0, 'PUBG25', 'aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(220, 'PUBG MOBILE 35 UC', 'PUBG MOBILE', 'Games', '', 14010, 14290, 14290, 14010, 14010, 280, 280, 0, 0, 'PUBG3', 'aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(221, 'PUBG MOBILE 50 UC', 'PUBG MOBILE', 'Games', '', 13760, 14035, 14035, 13760, 13760, 275, 275, 0, 0, 'PUBG4', 'tidak aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(222, 'PUBG MOBILE 70 UC', 'PUBG MOBILE', 'Games', '', 12670, 12923, 12923, 12670, 12670, 253, 253, 0, 0, 'PUBG5', 'tidak aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(223, 'PUBG MOBILE 100 UC', 'PUBG MOBILE', 'Games', '', 24670, 25163, 25163, 24670, 24670, 493, 493, 0, 0, 'PUBG6', 'tidak aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(224, 'PUBG MOBILE 105 UC', 'PUBG MOBILE', 'Games', '', 27079, 27621, 27621, 27079, 27079, 542, 542, 0, 0, 'PUBG7', 'aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(225, 'PUBG MOBILE 125 UC', 'PUBG MOBILE', 'Games', '', 31626, 32259, 32259, 31626, 31626, 633, 633, 0, 0, 'PUBG9', 'tidak aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(226, 'SHOPEE PAY 10.000', 'SHOPEE PAY', 'E-Money', '', 10155, 10358, 10358, 10155, 10155, 203, 203, 0, 0, 'SHOPEE1', 'aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(227, 'SHOPEE PAY 15.000', 'SHOPEE PAY', 'E-Money', '', 15165, 15468, 15468, 15165, 15165, 303, 303, 0, 0, 'SHOPEE2', 'aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(228, 'SHOPEE PAY 20.000', 'SHOPEE PAY', 'E-Money', '', 20185, 20589, 20589, 20185, 20185, 404, 404, 0, 0, 'SHOPEE3', 'aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(229, 'SHOPEE PAY 25.000', 'SHOPEE PAY', 'E-Money', '', 25175, 25679, 25679, 25175, 25175, 504, 504, 0, 0, 'SHOPEE4', 'aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11');
INSERT INTO `produk` (`id`, `nama`, `brand`, `kategori`, `tipe`, `harga_provider`, `harga_jual`, `harga_basic`, `harga_gold`, `harga_platinum`, `keuntungan`, `keuntungan_basic`, `keuntungan_gold`, `keuntungan_platinum`, `kode_produk`, `status`, `sts_flash_sale`, `persen_diskon`, `harga_fs`, `harga_fs_basic`, `harga_fs_gold`, `harga_fs_platinum`, `waktu_akhir_fs`, `provider`, `logo`, `created_at`, `updated_at`) VALUES
(230, 'SHOPEE PAY 50.000', 'SHOPEE PAY', 'E-Money', '', 50235, 51240, 51240, 50235, 50235, 1005, 1005, 0, 0, 'SHOPEE5', 'aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(231, 'SHOPEE PAY 75.000', 'SHOPEE PAY', 'E-Money', '', 75275, 76781, 76781, 75275, 75275, 1506, 1506, 0, 0, 'SHOPEE6', 'aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(232, 'SHOPEE PAY 100.000', 'SHOPEE PAY', 'E-Money', '', 100295, 102301, 102301, 100295, 100295, 2006, 2006, 0, 0, 'SHOPEE7', 'aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(233, 'Smartfren 10.000', 'SMARTFREN', 'Pulsa', '', 9705, 9899, 9899, 9705, 9705, 194, 194, 0, 0, 'Smartfren-10', 'tidak aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(234, 'Smartfren 100.000', 'SMARTFREN', 'Pulsa', '', 95770, 97685, 97685, 95770, 95770, 1915, 1915, 0, 0, 'Smartfren-100', 'aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(235, 'Smartfren 15.000', 'SMARTFREN', 'Pulsa', '', 14588, 14880, 14880, 14588, 14588, 292, 292, 0, 0, 'Smartfren-15', 'tidak aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(236, 'Smartfren 20.000', 'SMARTFREN', 'Pulsa', '', 19620, 20012, 20012, 19620, 19620, 392, 392, 0, 0, 'Smartfren-20', 'aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(237, 'Smartfren 25.000', 'SMARTFREN', 'Pulsa', '', 24485, 24975, 24975, 24485, 24485, 490, 490, 0, 0, 'Smartfren-25', 'tidak aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(238, 'Smartfren 5.000', 'SMARTFREN', 'Pulsa', '', 4860, 4957, 4957, 4860, 4860, 97, 97, 0, 0, 'Smartfren-5', 'tidak aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(239, 'Smartfren 50.000', 'SMARTFREN', 'Pulsa', '', 48060, 49021, 49021, 48060, 48060, 961, 961, 0, 0, 'Smartfren-50', 'aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(240, 'Smartfren 500.000', 'SMARTFREN', 'Pulsa', '', 488775, 498551, 498551, 488775, 488775, 9776, 9776, 0, 0, 'Smartfren-500', 'aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(241, 'Smartfren 60.000', 'SMARTFREN', 'Pulsa', '', 58610, 59782, 59782, 58610, 58610, 1172, 1172, 0, 0, 'Smartfren-60', 'tidak aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(242, 'Smartfren Internet 10.000', 'SMARTFREN', 'Data', '', 10993, 11213, 11213, 10993, 10993, 220, 220, 0, 0, 'Smartfren1', 'tidak aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(243, 'Smartfren Data 3 GB 5 Hari', 'SMARTFREN', 'Data', '', 11710, 11944, 11944, 11710, 11710, 234, 234, 0, 0, 'Smartfren10', 'aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(244, 'Smartfren Data 2 GB 7 Hari', 'SMARTFREN', 'Data', '', 9870, 10067, 10067, 9870, 9870, 197, 197, 0, 0, 'Smartfren11', 'aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(245, 'Smartfren Data 4 GB 14 Hari', 'SMARTFREN', 'Data', '', 16655, 16988, 16988, 16655, 16655, 333, 333, 0, 0, 'Smartfren13', 'tidak aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(246, 'Smartfren Data 8 GB 14 Hari', 'SMARTFREN', 'Data', '', 38000, 38760, 38760, 38000, 38000, 760, 760, 0, 0, 'Smartfren14', 'aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(247, 'Smartfren Data 16 GB 30 Hari', 'SMARTFREN', 'Data', '', 51225, 52250, 52250, 51225, 51225, 1025, 1025, 0, 0, 'Smartfren16', 'tidak aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(248, 'Smartfren Internet 20.000', 'SMARTFREN', 'Data', '', 18610, 18982, 18982, 18610, 18610, 372, 372, 0, 0, 'Smartfren2', 'tidak aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(249, 'Smartfren Internet 30.000', 'SMARTFREN', 'Data', '', 26625, 27158, 27158, 26625, 26625, 533, 533, 0, 0, 'Smartfren3', 'tidak aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(250, 'Smartfren Internet 100.000', 'SMARTFREN', 'Data', '', 100025, 102026, 102026, 100025, 100025, 2001, 2001, 0, 0, 'Smartfren4', 'tidak aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(251, 'Smartfren Internet 150.000', 'SMARTFREN', 'Data', '', 149025, 152006, 152006, 149025, 149025, 2981, 2981, 0, 0, 'Smartfren5', 'tidak aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(252, 'Smartfren Internet 200.000', 'SMARTFREN', 'Data', '', 199025, 203006, 203006, 199025, 199025, 3981, 3981, 0, 0, 'Smartfren6', 'tidak aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(253, 'Smartfren Data 1 GB 3 Hari', 'SMARTFREN', 'Data', '', 5055, 5156, 5156, 5055, 5055, 101, 101, 0, 0, 'Smartfren7', 'aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(254, 'Smartfren Data 2 GB 3 Hari', 'SMARTFREN', 'Data', '', 7805, 7961, 7961, 7805, 7805, 156, 156, 0, 0, 'Smartfren9', 'aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(255, 'Vidio Platinum 30 Hari', 'Vidio', 'Streaming', '', 42400, 43248, 43248, 42400, 42400, 848, 848, 0, 0, 'streaming-vidio1', 'aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(256, 'WeTV 25 Coins', 'WeTV', 'Streaming', '', 3602, 3674, 3674, 3602, 3602, 72, 72, 0, 0, 'streaming-WeTV25Coins', 'aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(257, 'Telkomsel 10.000', 'TELKOMSEL', 'Pulsa', '', 9955, 10154, 10154, 9955, 9955, 199, 199, 0, 0, 'telkomsel-pulsa-10000', 'aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(258, 'Telkomsel 2.000', 'TELKOMSEL', 'Pulsa', '', 2330, 2377, 2377, 2330, 2330, 47, 47, 0, 0, 'telkomsel-pulsa-2000', 'aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(259, 'Telkomsel 3.000', 'TELKOMSEL', 'Pulsa', '', 3430, 3499, 3499, 3430, 3430, 69, 69, 0, 0, 'telkomsel-pulsa-3000', 'aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(260, 'Telkomsel 4.000', 'TELKOMSEL', 'Pulsa', '', 4355, 4442, 4442, 4355, 4355, 87, 87, 0, 0, 'telkomsel-pulsa-4000', 'aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(261, 'Telkomsel 5.000', 'TELKOMSEL', 'Pulsa', '', 5234, 5339, 5339, 5234, 5234, 105, 105, 0, 0, 'telkomsel-pulsa-5000', 'aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(262, 'Telkomsel Data 3 GB + 12 GB Videomax / 30 Hari', 'TELKOMSEL', 'Data', '', 56020, 57140, 57140, 56020, 56020, 1120, 1120, 0, 0, 'Telkomsel15', 'aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(263, 'Telkomsel Data 1 GB + 2 GB Game / 30 Hari', 'TELKOMSEL', 'Data', '', 23760, 24235, 24235, 23760, 23760, 475, 475, 0, 0, 'Telkomsel3', 'aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(264, 'Telkomsel Data 7 GB + 28 GB Videomax / 30 Hari', 'TELKOMSEL', 'Data', '', 103225, 105290, 105290, 103225, 103225, 2065, 2065, 0, 0, 'Telkomsel35', 'aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(265, 'Telkomsel Data 1 GB + 5 GB Ruang Guru / 30 Hari', 'TELKOMSEL', 'Data', '', 25525, 26036, 26036, 25525, 25525, 511, 511, 0, 0, 'Telkomsel5', 'aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(266, 'Telkomsel Data 1 GB + 5 GB Videomax / 30 Hari', 'TELKOMSEL', 'Data', '', 26200, 26724, 26724, 26200, 26200, 524, 524, 0, 0, 'Telkomsel6gb', 'aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(267, 'Three 15.000', 'TRI', 'Pulsa', '', 15951, 16270, 16270, 15951, 15951, 319, 319, 0, 0, 'Three15', 'aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(268, 'Three 40.000', 'TRI', 'Pulsa', '', 39436, 40225, 40225, 39436, 39436, 789, 789, 0, 0, 'Three40', 'tidak aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(269, 'Three 75.000', 'TRI', 'Pulsa', '', 73825, 75302, 75302, 73825, 73825, 1477, 1477, 0, 0, 'Three75', 'tidak aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(270, 'Telkomsel Telepon 50.000', 'TELKOMSEL', 'Paket SMS & Telpon', '', 45025, 45926, 45926, 45025, 45025, 901, 901, 0, 0, 'tlp-telkomsel50', 'aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(271, 'Telkomsel Telepon 80.000', 'TELKOMSEL', 'Paket SMS & Telpon', '', 60025, 61226, 61226, 60025, 60025, 1201, 1201, 0, 0, 'tlp-telkomsel80', 'aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(272, 'Tower of Fantasy 60 Tanium', 'Tower of Fantasy', 'Games', '', 11873, 12110, 12110, 11873, 11873, 237, 237, 0, 0, 'TOF60', 'aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(273, 'Tri Data 750 MB 14 Hari', 'TRI', 'Data', '', 5155, 5258, 5258, 5155, 5155, 103, 103, 0, 0, 'Tri1', 'aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(274, 'Tri Data 10 GB 30 Hari', 'TRI', 'Data', '', 39525, 40316, 40316, 39525, 39525, 791, 791, 0, 0, 'Tri12', 'aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(275, 'Tri Data 15 GB / 30 Hari', 'TRI', 'Data', '', 61626, 62859, 62859, 61626, 61626, 1233, 1233, 0, 0, 'Tri13', 'aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(276, 'Tri Data 20 GB / 30 Hari', 'TRI', 'Data', '', 68425, 69794, 69794, 68425, 68425, 1369, 1369, 0, 0, 'Tri14', 'tidak aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(277, 'Tri Data 33 GB 30 Hari', 'TRI', 'Data', '', 97325, 99272, 99272, 97325, 97325, 1947, 1947, 0, 0, 'Tri15', 'tidak aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(278, 'Tri Data 22 GB + Unlimited YouTube dan VIU / 30 Hari', 'TRI', 'Data', '', 76175, 77699, 77699, 76175, 76175, 1524, 1524, 0, 0, 'Tri16', 'aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(279, 'Tri Data 1 GB 14 Hari', 'TRI', 'Data', '', 10705, 10919, 10919, 10705, 10705, 214, 214, 0, 0, 'Tri2', 'aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(280, 'Tri Data 1.5 GB 14 Hari', 'TRI', 'Data', '', 10255, 10460, 10460, 10255, 10255, 205, 205, 0, 0, 'Tri3', 'aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(281, 'Tri Data 2.5 GB 14 Hari', 'TRI', 'Data', '', 13950, 14229, 14229, 13950, 13950, 279, 279, 0, 0, 'Tri4', 'tidak aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(282, 'Tri Data 100 MB 30 Hari', 'TRI', 'Data', '', 660, 673, 673, 660, 660, 13, 13, 0, 0, 'Tri6', 'tidak aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(283, 'Tri Data 200 MB 30 Hari', 'TRI', 'Data', '', 1455, 1484, 1484, 1455, 1455, 29, 29, 0, 0, 'Tri7', 'tidak aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(284, 'Tri Data 500 MB 30 Hari', 'TRI', 'Data', '', 3705, 3779, 3779, 3705, 3705, 74, 74, 0, 0, 'Tri8', 'tidak aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(285, 'Tri Data 1 GB 30 Hari', 'TRI', 'Data', '', 6540, 6671, 6671, 6540, 6540, 131, 131, 0, 0, 'Tri9', 'tidak aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(286, 'Voucher AIGO 1 GB / 30 Hari', 'AXIS', 'Voucher', '', 13360, 13627, 13627, 13360, 13360, 267, 267, 0, 0, 'Voc1', 'tidak aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(287, 'Voucher AIGO 1 GB / 30 Hari', 'AXIS', 'Voucher', '', 15999, 16319, 16319, 15999, 15999, 320, 320, 0, 0, 'Voc2', 'tidak aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(288, 'Voucher AIGO 2 GB 30 Hari', 'AXIS', 'Voucher', '', 23360, 23827, 23827, 23360, 23360, 467, 467, 0, 0, 'Voc3', 'tidak aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(289, 'Voucher Smartfren Data 2.5 GB 7 Hari', 'SMARTFREN', 'Voucher', '', 10870, 11087, 11087, 10870, 10870, 217, 217, 0, 0, 'VocSmart', 'aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(290, 'Voucher Indosat 5.000', 'INDOSAT', 'Voucher', '', 5405, 5513, 5513, 5405, 5405, 108, 108, 0, 0, 'vouchwer', 'aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(291, 'eSIM Indosat Freedom Internet 3 GB 28 Hari', 'INDOSAT', 'eSIM', '', 39010, 39790, 39790, 39010, 39010, 780, 780, 0, 0, 'wweew', 'aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(292, 'XL Data 100 MB 30 Hari', 'XL', 'Data', '', 2865, 2922, 2922, 2865, 2865, 57, 57, 0, 0, 'XL1', 'tidak aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(293, 'Xl 10.000', 'XL', 'Pulsa', '', 10855, 11072, 11072, 10855, 10855, 217, 217, 0, 0, 'Xl10', 'aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(294, 'XL Data 6 GB 30 Hari', 'XL', 'Data', '', 53500, 54570, 54570, 53500, 53500, 1070, 1070, 0, 0, 'XL101', 'tidak aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(295, 'XL Data 8 GB 30 Hari', 'XL', 'Data', '', 55000, 56100, 56100, 55000, 55000, 1100, 1100, 0, 0, 'XL11', 'aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(296, 'Xl 150.000', 'XL', 'Pulsa', '', 149525, 152516, 152516, 149525, 149525, 2991, 2991, 0, 0, 'Xl150', 'tidak aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(297, 'XL Data 500 MB 30 Hari', 'XL', 'Data', '', 3700, 3774, 3774, 3700, 3700, 74, 74, 0, 0, 'XL2', 'aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(298, 'Xl 25.000', 'XL', 'Pulsa', '', 25100, 25602, 25602, 25100, 25100, 502, 502, 0, 0, 'Xl25', 'tidak aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(299, 'XL Data 800 MB 30 Hari', 'XL', 'Data', '', 5890, 6008, 6008, 5890, 5890, 118, 118, 0, 0, 'XL3', 'tidak aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(300, 'XL Data 1 GB 30 Hari', 'XL', 'Data', '', 7510, 7660, 7660, 7510, 7510, 150, 150, 0, 0, 'XL4', 'aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(301, 'Xl 5.000', 'XL', 'Pulsa', '', 5825, 5942, 5942, 5825, 5825, 117, 117, 0, 0, 'Xl5', 'aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(302, 'XL Data 2 GB 30 Hari', 'XL', 'Data', '', 12520, 12770, 12770, 12520, 12520, 250, 250, 0, 0, 'XL51', 'aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(303, 'XL Data 3 GB 30 Hari', 'XL', 'Data', '', 22530, 22981, 22981, 22530, 22530, 451, 451, 0, 0, 'XL6', 'aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(304, 'XL Data 4 GB 30 Hari', 'XL', 'Data', '', 25725, 26240, 26240, 25725, 25725, 515, 515, 0, 0, 'XL7', 'aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11'),
(305, 'XL Data 5 GB 30 Hari', 'XL', 'Data', '', 31200, 31824, 31824, 31200, 31200, 624, 624, 0, 0, 'XL9', 'tidak aktif', 'Tidak', 0, 0, 0, 0, 0, NULL, 'DF', '', '2025-06-29 10:18:43', '2025-07-01 20:43:11');

-- --------------------------------------------------------

--
-- Table structure for table `settings_web`
--

CREATE TABLE `settings_web` (
  `id` int NOT NULL,
  `web_title` varchar(255) DEFAULT NULL,
  `web_icon` varchar(255) DEFAULT NULL,
  `web_logo` varchar(255) DEFAULT NULL,
  `web_author` varchar(255) DEFAULT NULL,
  `web_keywords` varchar(255) DEFAULT NULL,
  `web_description` text,
  `whatsapp_admin` varchar(250) DEFAULT NULL,
  `instagram` varchar(250) NOT NULL,
  `tiktok` varchar(250) NOT NULL,
  `whatsapp_cs` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `settings_web`
--

INSERT INTO `settings_web` (`id`, `web_title`, `web_icon`, `web_logo`, `web_author`, `web_keywords`, `web_description`, `whatsapp_admin`, `instagram`, `tiktok`, `whatsapp_cs`, `email`) VALUES
(1, 'MasCarli Topup', '1751398647_3733782f954fbde9a1b0.png', '1751399751_06139cb1d0254ad52d01.png', 'MasCarli Topup MENYIDIKAN SEGALA KEBUTUHAN GAME MOBA - rgmoba', '', 'MasCarli Topup Menyediakan Berbagai Macam kebutuhan game \r\n Terlengkap,Terbaik,Terpercaya', '6283191910986', 'mascarli.id', 'mascarli.id', '6283125648754', 'carliputra067@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `tema`
--

CREATE TABLE `tema` (
  `id` int NOT NULL,
  `text_color` text NOT NULL,
  `background_color` text NOT NULL,
  `border_color` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `tema`
--

INSERT INTO `tema` (`id`, `text_color`, `background_color`, `border_color`, `created_at`, `updated_at`) VALUES
(1, '#FF3131, #FF914D', '#FF3131, #FF914D', '#FF3131', '2024-05-08 10:51:26', '2024-09-14 03:01:58');

-- --------------------------------------------------------

--
-- Table structure for table `topup`
--

CREATE TABLE `topup` (
  `id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `username` varchar(250) NOT NULL,
  `topup_id` int DEFAULT NULL,
  `nominal` int DEFAULT NULL,
  `fee` int DEFAULT NULL,
  `total_pembayaran` int DEFAULT NULL,
  `metode` varchar(255) DEFAULT NULL,
  `kode_pembayaran` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `batas_pembayaran` varchar(250) DEFAULT NULL,
  `cara_bayar` text NOT NULL,
  `status` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int NOT NULL,
  `username` varchar(255) NOT NULL,
  `nama` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `whatsapp` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `balance` bigint NOT NULL,
  `role` varchar(50) NOT NULL,
  `api_id` varchar(250) NOT NULL,
  `api_key` varchar(250) NOT NULL,
  `whitelist_ip` varchar(250) NOT NULL,
  `date_create` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_reset_time` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `nama`, `email`, `whatsapp`, `password`, `balance`, `role`, `api_id`, `api_key`, `whitelist_ip`, `date_create`, `last_reset_time`) VALUES
(212, 'admin123', 'admin123', 'admin123@gmail.com', '082123254853', '$2y$10$s5WrpUYyXysV.ihblzTwqesLPL6bPMsm1IFrQRgOkypK7BRgvOVFm', 1000, 'admin', 'c1241774070d', 'e12fc4c5144dbe4dd9d590f729f4773e9ccd40e9', '', '2025-06-29 19:06:24', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `voucher`
--

CREATE TABLE `voucher` (
  `id` int NOT NULL,
  `kode` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `persen` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `stok` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `max_potongan` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `status` enum('Aktif','Tidak Aktif') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `voucher`
--

INSERT INTO `voucher` (`id`, `kode`, `persen`, `stok`, `max_potongan`, `status`) VALUES
(1, 'null', '0', '0', '0', 'Aktif');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `api_provider`
--
ALTER TABLE `api_provider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kontak`
--
ALTER TABLE `kontak`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `metode`
--
ALTER TABLE `metode`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mlbb_kategori`
--
ALTER TABLE `mlbb_kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mlbb_layanan`
--
ALTER TABLE `mlbb_layanan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pembelian`
--
ALTER TABLE `pembelian`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings_web`
--
ALTER TABLE `settings_web`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tema`
--
ALTER TABLE `tema`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `topup`
--
ALTER TABLE `topup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `voucher`
--
ALTER TABLE `voucher`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `berita`
--
ALTER TABLE `berita`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `games`
--
ALTER TABLE `games`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=246;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=149;

--
-- AUTO_INCREMENT for table `kontak`
--
ALTER TABLE `kontak`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `metode`
--
ALTER TABLE `metode`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `mlbb_kategori`
--
ALTER TABLE `mlbb_kategori`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `mlbb_layanan`
--
ALTER TABLE `mlbb_layanan`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `pembelian`
--
ALTER TABLE `pembelian`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=307;

--
-- AUTO_INCREMENT for table `settings_web`
--
ALTER TABLE `settings_web`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tema`
--
ALTER TABLE `tema`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `topup`
--
ALTER TABLE `topup`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=213;

--
-- AUTO_INCREMENT for table `voucher`
--
ALTER TABLE `voucher`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
