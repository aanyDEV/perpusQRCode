-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 19 Jan 2024 pada 11.04
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bukuqt`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku`
--

CREATE TABLE `buku` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(255) NOT NULL,
  `pengarang` varchar(255) NOT NULL,
  `penerbit` varchar(255) NOT NULL,
  `tahun_terbit` varchar(255) NOT NULL,
  `isbn` varchar(255) DEFAULT NULL,
  `jumlah` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `buku`
--

INSERT INTO `buku` (`id`, `judul`, `pengarang`, `penerbit`, `tahun_terbit`, `isbn`, `jumlah`, `created_at`, `updated_at`) VALUES
(2, 'Akuntansi Pengantar 1', 'Supardi', 'Gava Media', '2009', '978-979-107-882-5', 10, '2024-01-19 02:48:12', '2024-01-19 02:48:12'),
(3, 'Aplikasi Klinis Induk Ovulasi & Stimulasi Ovariu', 'Samsulhadi', 'Sagung Seto', '2013', '978-979-328-876-5', 10, '2024-01-19 02:48:41', '2024-01-19 02:48:41'),
(4, 'Aplikasi Praktis Asuhan Keperawatan Keluarga', 'Komang Ayu Heni', 'Sagung Seto', '2012', '978-602-867-404-1', 10, '2024-01-19 02:49:14', '2024-01-19 02:49:14'),
(5, 'A-Z Psikologi : Berbagai kumpulan topik Psikologi', 'Zainul Anwar', 'Andi Offset', '2012', '978-979-293-215-7', 5, '2024-01-19 02:49:42', '2024-01-19 02:49:42'),
(6, 'Bangsa gagal ; Mencari identitas kebangsaan', 'Nasruddin Anshoriy', 'LKiS', '2008', '978-979-128-365-6', 9, '2024-01-19 02:50:09', '2024-01-19 02:50:09'),
(7, 'Biografi Gus Dur ; The Authorized Biography of KH. Abdurrahman Wahid (Soft Cover)', 'Greg Barton', 'LKiS', '2014', '978-979-338-125-1', 10, '2024-01-19 02:50:39', '2024-01-19 02:50:39'),
(8, 'Buku Ajar Tumbuh Kembang Remaja & Permasalahanya', 'Soetjiningsih', 'Sagung Seto', '2015', '979-328-808-6', 10, '2024-01-19 02:51:03', '2024-01-19 02:51:03'),
(9, 'Cedera Kepala', 'M. Z. Arifin', 'Sagung Seto', '2015', '978-602-867-497-3', 15, '2024-01-19 02:51:31', '2024-01-19 02:51:31'),
(10, 'Dasar Dasar Uroginekologi', 'Pribakti B', 'Sagung', '2011', '978-602-867-451-5', 15, '2024-01-19 02:52:02', '2024-01-19 02:52:02'),
(11, 'Etnografi Pengobatan; Praktik Budaya peramuan & sugesti komunitas adat Tau Taa Vana', 'Humaedi', 'LKiS', '2016', '978-602-728-136-3', 17, '2024-01-19 02:52:36', '2024-01-19 02:52:36'),
(12, 'Hantu Digoel; Politik Pengamanan Politik Zaman Kolonial', 'Takashi Shiraishi', 'LKiS', '2001', '979-896-678-3', 17, '2024-01-19 02:53:02', '2024-01-19 02:53:02'),
(13, 'Islam Agama ramah perempuan; Pembelaan kiai pesantren', 'Husein Muhammad', 'LKiS', '2013', '979-338-171-X', 12, '2024-01-19 02:53:29', '2024-01-19 02:53:29'),
(14, 'Islam Jawa; Kesalehan Normatif Versus Kebatinan', 'Mark R. Woodward', 'LKiS', '2004', '979-896-636-8', 6, '2024-01-19 02:54:06', '2024-01-19 02:54:06'),
(15, 'Hantu Digoel; Politik Pengamanan Politik Zaman Kolonial', 'Takashi Shiraishi', 'LKiS', '2001', '979-896-678-3', 5, '2024-01-19 02:54:43', '2024-01-19 02:54:43'),
(16, 'Islam Sasak ; Wetu telu versus waktu lima', 'Erni Budiwanti', 'LKiS', '2012', '979-896-651-1', 6, '2024-01-19 02:55:51', '2024-01-19 02:55:51'),
(17, 'Keanekaragaman klinik peny. Trofoblas gestasional', 'Djamhoer M', 'Sagung Seto', '2012', '978-602-867-468-3', 9, '2024-01-19 02:56:47', '2024-01-19 02:56:47'),
(18, 'Kesadaran Nasional ; dari kolonialisme sampai kemerdekaan (jilid 1)', 'Slamet Muljana', 'LKiS', '2008', '978-979-128-355-7', 9, '2024-01-19 02:57:15', '2024-01-19 02:57:15'),
(19, 'Kesadaran Nasional ; dari kolonialisme sampai kemerdekaan (jilid 2)', 'Slamet Muljana', 'LKiS', '2008', '978-979-128-357-1', 19, '2024-01-19 02:57:59', '2024-01-19 02:57:59');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_01_19_085259_buku_q_t', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `buku`
--
ALTER TABLE `buku`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
