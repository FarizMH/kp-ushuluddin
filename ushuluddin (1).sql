-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 13 Apr 2020 pada 18.14
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.3.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ushuluddin`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_apicustom`
--

CREATE TABLE `cms_apicustom` (
  `id` int(10) UNSIGNED NOT NULL,
  `permalink` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tabel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aksi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kolom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orderby` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_query_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sql_where` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `method_type` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `responses` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_apikey`
--

CREATE TABLE `cms_apikey` (
  `id` int(10) UNSIGNED NOT NULL,
  `screetkey` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hit` int(11) DEFAULT NULL,
  `status` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_dashboard`
--

CREATE TABLE `cms_dashboard` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_email_queues`
--

CREATE TABLE `cms_email_queues` (
  `id` int(10) UNSIGNED NOT NULL,
  `send_at` datetime DEFAULT NULL,
  `email_recipient` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_cc_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_attachments` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_sent` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_email_templates`
--

CREATE TABLE `cms_email_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cc_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `cms_email_templates`
--

INSERT INTO `cms_email_templates` (`id`, `name`, `slug`, `subject`, `content`, `description`, `from_name`, `from_email`, `cc_email`, `created_at`, `updated_at`) VALUES
(1, 'Email Template Forgot Password Backend', 'forgot_password_backend', NULL, '<p>Hi,</p><p>Someone requested forgot password, here is your new password : </p><p>[password]</p><p><br></p><p>--</p><p>Regards,</p><p>Admin</p>', '[password]', 'System', 'system@crudbooster.com', NULL, '2020-02-25 00:59:38', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_logs`
--

CREATE TABLE `cms_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `ipaddress` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `useragent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_users` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `cms_logs`
--

INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES
(1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/add-save', 'Add New Data Profil Pegawai at Menu Management', '', 1, '2020-02-25 01:53:58', NULL),
(2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/5', 'Update data Profil Pegawai at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2020-02-25 01:54:25', NULL),
(3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/1', 'Update data Pegawai at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>parent_id</td><td>5</td><td></td></tr></tbody></table>', 1, '2020-02-25 01:54:38', NULL),
(4, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/2', 'Update data Profil Keluarga at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>parent_id</td><td>5</td><td></td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2020-02-25 01:54:51', NULL),
(5, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/add-save', 'Add New Data Pendidikan at Menu Management', '', 1, '2020-02-25 01:55:21', NULL),
(6, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/6', 'Update data Pendidikan at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>icon</td><td></td><td></td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2020-02-25 01:55:50', NULL),
(7, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/3', 'Update data Pendidikan at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>parent_id</td><td>6</td><td></td></tr></tbody></table>', 1, '2020-02-25 01:56:04', NULL),
(8, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/4', 'Update data Kursus / latihan at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>parent_id</td><td>6</td><td></td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2020-02-25 01:56:23', NULL),
(9, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-02-26 05:38:15', NULL),
(10, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/add-save', 'Add New Data Riwayat Pekerjaan at Menu Management', '', 1, '2020-02-26 05:42:14', NULL),
(11, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/9', 'Update data Riwayat Pekerjaan at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>icon</td><td></td><td></td></tr><tr><td>sorting</td><td>3</td><td></td></tr></tbody></table>', 1, '2020-02-26 05:42:40', NULL),
(12, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/7', 'Update data Riwayat Kepangkatan at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>parent_id</td><td>9</td><td></td></tr></tbody></table>', 1, '2020-02-26 05:42:53', NULL),
(13, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/8', 'Update data Riwayat Jabatan at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>parent_id</td><td>9</td><td></td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2020-02-26 05:43:08', NULL),
(14, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/10', 'Update data Tanda Jasa / Penghargaan at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>4</td><td></td></tr></tbody></table>', 1, '2020-02-26 06:11:03', NULL),
(15, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/11', 'Update data Kunjungan Luar Negeri at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>5</td><td></td></tr></tbody></table>', 1, '2020-02-26 06:11:32', NULL),
(16, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/11', 'Update data Kunjungan Luar Negeri at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>icon</td><td>fa fa-glass</td><td>fa fa-edit</td></tr><tr><td>sorting</td><td>5</td><td></td></tr></tbody></table>', 1, '2020-02-26 06:28:23', NULL),
(17, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/12', 'Update data Pengalaman Mengajar at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>6</td><td></td></tr></tbody></table>', 1, '2020-02-26 06:29:01', NULL),
(18, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/13', 'Update data Pengalaman Kegiatan at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Pengalaman_kegiatan</td><td>Pengalaman Kegiatan</td></tr><tr><td>color</td><td></td><td>normal</td></tr><tr><td>icon</td><td>fa fa-glass</td><td>fa fa-edit</td></tr><tr><td>sorting</td><td>7</td><td></td></tr></tbody></table>', 1, '2020-02-26 06:31:27', NULL),
(19, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/13', 'Update data Pengalaman Kegiatan at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>7</td><td></td></tr></tbody></table>', 1, '2020-02-26 06:31:43', NULL),
(20, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/14', 'Update data Pengalaman Membimbing at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>8</td><td></td></tr></tbody></table>', 1, '2020-02-26 06:37:31', NULL),
(21, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/add-save', 'Add New Data Pengalaman at Menu Management', '', 1, '2020-02-26 06:43:23', NULL),
(22, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/15', 'Update data Pengalaman at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>icon</td><td></td><td></td></tr><tr><td>sorting</td><td>5</td><td></td></tr></tbody></table>', 1, '2020-02-26 06:44:07', NULL),
(23, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/16', 'Update data Pengalaman Penelitian at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>6</td><td></td></tr></tbody></table>', 1, '2020-02-26 06:52:01', NULL),
(24, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/add-save', 'Add New Data Penelitian / Karya tulis at Menu Management', '', 1, '2020-02-26 06:56:18', NULL),
(25, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/18', 'Update data Penelitian / Karya tulis at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>icon</td><td></td><td></td></tr><tr><td>sorting</td><td>6</td><td></td></tr></tbody></table>', 1, '2020-02-26 06:58:51', NULL),
(26, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/17', 'Update data Pengalaman Karya Tulis at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>parent_id</td><td>18</td><td></td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2020-02-26 06:59:08', NULL),
(27, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/19', 'Update data Keterangan Organisasi at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>7</td><td></td></tr></tbody></table>', 1, '2020-02-26 08:38:27', NULL),
(28, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/pegawai/add-save', 'Add New Data Fariz Maulana Herman at Pegawai', '', 1, '2020-02-26 09:06:23', NULL),
(29, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/pegawai/add-save', 'Add New Data BAMBANG at Pegawai', '', 1, '2020-02-26 09:08:11', NULL),
(30, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/pegawai/add-save', 'Add New Data UDIN at Pegawai', '', 1, '2020-02-26 09:09:43', NULL),
(31, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/pegawai/add-save', 'Add New Data MAMAT at Pegawai', '', 1, '2020-02-26 09:11:18', NULL),
(32, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/keluarga/add-save', 'Add New Data Muhammad Diza Aulia at Profil Keluarga', '', 1, '2020-02-26 09:56:21', NULL),
(33, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/pendidikan/add-save', 'Add New Data asdad at Pendidikan', '', 1, '2020-02-26 09:59:46', NULL),
(34, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/kursus_latihan/add-save', 'Add New Data njkbkjb at Kursus / latihan', '', 1, '2020-02-26 10:41:36', NULL),
(35, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/riwayat_kepangkatan/add-save', 'Add New Data  at Riwayat Kepangkatan', '', 1, '2020-02-26 10:49:31', NULL),
(36, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/riwayat_jabatan/add-save', 'Add New Data  at Riwayat Jabatan', '', 1, '2020-02-26 10:53:44', NULL),
(37, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/tanda_jasa_penghargaan/add-save', 'Add New Data ;smvkln at Tanda Jasa / Penghargaan', '', 1, '2020-02-26 13:05:56', NULL),
(38, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/kunjungan_luar_negeri/add-save', 'Add New Data  at Kunjungan Luar Negeri', '', 1, '2020-02-26 13:10:21', NULL),
(39, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/pengalaman_mengajar/add-save', 'Add New Data ksndvkwjb at Pengalaman Mengajar', '', 1, '2020-02-26 13:12:45', NULL),
(40, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/pengalaman_kegiatan/add-save', 'Add New Data svbnsln at Pengalaman_kegiatan', '', 1, '2020-02-26 13:17:15', NULL),
(41, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/pengalaman_membimbing/add-save', 'Add New Data jiskjbv at Pengalaman Membimbing', '', 1, '2020-02-26 13:18:37', NULL),
(42, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/pengalaman_penelitian/add-save', 'Add New Data ksvbkjb at Pengalaman Penelitian', '', 1, '2020-02-26 13:19:54', NULL),
(43, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/pengalaman_karya_tulis/add-save', 'Add New Data balbaosandAn at Pengalaman Karya Tulis', '', 1, '2020-02-26 13:24:44', NULL),
(44, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/ket_organisasi/add-save', 'Add New Data AFA at Keterangan Organisasi', '', 1, '2020-02-26 13:27:28', NULL),
(45, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-02-27 02:44:31', NULL),
(46, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-02-27 02:46:30', NULL),
(47, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-02-27 02:46:37', NULL),
(48, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-02-27 02:47:36', NULL),
(49, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-02-27 02:47:44', NULL),
(50, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-02-27 02:48:30', NULL),
(51, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-02-27 02:48:35', NULL),
(52, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/pegawai26/add-save', 'Add New Data admin at Akun Management', '', 1, '2020-02-27 02:50:08', NULL),
(53, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-02-27 02:56:53', NULL),
(54, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-02-27 02:57:16', NULL),
(55, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/pegawai26/edit-save/6', 'Update data admin at Akun Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>password</td><td></td><td>$2y$10$q9wjB3Kd2NjMedMCYpJrF.Dz7ZhFopD1kBG5HfSlE8NS9ZHrDA5r.</td></tr><tr><td>tgl_lahir</td><td></td><td></td></tr><tr><td>tempat_lahir</td><td></td><td></td></tr><tr><td>jk</td><td></td><td></td></tr><tr><td>agama</td><td></td><td></td></tr><tr><td>s_nikah</td><td></td><td></td></tr><tr><td>s_kepegawaian</td><td></td><td></td></tr><tr><td>jenis_kepegawaian</td><td></td><td></td></tr><tr><td>satuan_kerja</td><td></td><td></td></tr><tr><td>jabatan_terakhir</td><td></td><td></td></tr><tr><td>pendidikan_terakhir</td><td></td><td></td></tr><tr><td>gol_ruang</td><td></td><td></td></tr><tr><td>satuan_organisasi</td><td></td><td></td></tr><tr><td>kgb_terakhir</td><td></td><td></td></tr><tr><td>jalan</td><td></td><td></td></tr><tr><td>kelurahan</td><td></td><td></td></tr><tr><td>kecamatan</td><td></td><td></td></tr><tr><td>kabupaten</td><td></td><td></td></tr><tr><td>provinsi</td><td></td><td></td></tr><tr><td>tinggi_badan</td><td></td><td></td></tr><tr><td>berat_badan</td><td></td><td></td></tr><tr><td>warna_rambut</td><td></td><td></td></tr><tr><td>bentuk_wajah</td><td></td><td></td></tr><tr><td>warna_kulit</td><td></td><td></td></tr><tr><td>ciri</td><td></td><td></td></tr><tr><td>cacat_tubuh</td><td></td><td></td></tr><tr><td>kegemaran</td><td></td><td></td></tr><tr><td>no_tlp</td><td></td><td></td></tr><tr><td>pangkat</td><td></td><td></td></tr><tr><td>kapreg</td><td></td><td></td></tr><tr><td>karis_su</td><td></td><td></td></tr><tr><td>kpe</td><td></td><td></td></tr><tr><td>taspem</td><td></td><td></td></tr><tr><td>npwp</td><td></td><td></td></tr><tr><td>nuptk</td><td></td><td></td></tr><tr><td>nidn</td><td></td><td></td></tr><tr><td>jurusan</td><td></td><td></td></tr><tr><td>fakultas</td><td></td><td></td></tr></tbody></table>', 1, '2020-02-27 02:57:36', NULL),
(56, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-02-27 02:57:44', NULL),
(57, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-02-27 02:58:52', NULL),
(58, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/pegawai26/edit-save/6', 'Update data admin at Akun Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>password</td><td>$2y$10$q9wjB3Kd2NjMedMCYpJrF.Dz7ZhFopD1kBG5HfSlE8NS9ZHrDA5r.</td><td>$2y$10$sJ5LeMD1BgiNa.FPpjVBH.LUI.xK8E4dojDfltzwZf/N8VD5cNC2y</td></tr><tr><td>tgl_lahir</td><td></td><td></td></tr><tr><td>tempat_lahir</td><td></td><td></td></tr><tr><td>jk</td><td></td><td></td></tr><tr><td>agama</td><td></td><td></td></tr><tr><td>s_nikah</td><td></td><td></td></tr><tr><td>s_kepegawaian</td><td></td><td></td></tr><tr><td>jenis_kepegawaian</td><td></td><td></td></tr><tr><td>satuan_kerja</td><td></td><td></td></tr><tr><td>jabatan_terakhir</td><td></td><td></td></tr><tr><td>pendidikan_terakhir</td><td></td><td></td></tr><tr><td>gol_ruang</td><td></td><td></td></tr><tr><td>satuan_organisasi</td><td></td><td></td></tr><tr><td>kgb_terakhir</td><td></td><td></td></tr><tr><td>jalan</td><td></td><td></td></tr><tr><td>kelurahan</td><td></td><td></td></tr><tr><td>kecamatan</td><td></td><td></td></tr><tr><td>kabupaten</td><td></td><td></td></tr><tr><td>provinsi</td><td></td><td></td></tr><tr><td>tinggi_badan</td><td></td><td></td></tr><tr><td>berat_badan</td><td></td><td></td></tr><tr><td>warna_rambut</td><td></td><td></td></tr><tr><td>bentuk_wajah</td><td></td><td></td></tr><tr><td>warna_kulit</td><td></td><td></td></tr><tr><td>ciri</td><td></td><td></td></tr><tr><td>cacat_tubuh</td><td></td><td></td></tr><tr><td>kegemaran</td><td></td><td></td></tr><tr><td>no_tlp</td><td></td><td></td></tr><tr><td>pangkat</td><td></td><td></td></tr><tr><td>kapreg</td><td></td><td></td></tr><tr><td>karis_su</td><td></td><td></td></tr><tr><td>kpe</td><td></td><td></td></tr><tr><td>taspem</td><td></td><td></td></tr><tr><td>npwp</td><td></td><td></td></tr><tr><td>nuptk</td><td></td><td></td></tr><tr><td>nidn</td><td></td><td></td></tr><tr><td>jurusan</td><td></td><td></td></tr><tr><td>fakultas</td><td></td><td></td></tr></tbody></table>', 1, '2020-02-27 02:59:10', NULL),
(59, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-02-27 02:59:20', NULL),
(60, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-02-27 02:59:36', NULL),
(61, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/users/add-save', 'Add New Data admin at Users Management', '', 1, '2020-02-27 03:00:36', NULL),
(62, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-02-27 03:00:44', NULL),
(63, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@fu.uinsgd.com login with IP Address 127.0.0.1', '', 2, '2020-02-27 03:01:02', NULL),
(64, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@fu.uinsgd.com logout', '', 2, '2020-02-27 03:01:23', NULL),
(65, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-02-27 03:01:26', NULL),
(66, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/pegawai26/edit-save/1', 'Update data Fariz Maulana Herman at Akun Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>password</td><td>$2y$10$xEHTtRQPchTeofv2dd/0NOfqltAqSGg1CDWv0yynEBzmT1R58om.e</td><td>$2y$10$8gwXlGBuKVbUS4bQTv3Sxu2cYozMqZQQT7hYWNIqA1RfCTu7Rzb4W</td></tr><tr><td>tgl_lahir</td><td>2020-02-24</td><td></td></tr><tr><td>tempat_lahir</td><td>B</td><td></td></tr><tr><td>jk</td><td>PRIA</td><td></td></tr><tr><td>agama</td><td>ISLAM</td><td></td></tr><tr><td>s_nikah</td><td>BELUM</td><td></td></tr><tr><td>s_kepegawaian</td><td>AKTIF</td><td></td></tr><tr><td>jenis_kepegawaian</td><td>CAPEG</td><td></td></tr><tr><td>satuan_kerja</td><td>TIDAK TAHU</td><td></td></tr><tr><td>jabatan_terakhir</td><td>ASISTEN AHLI MADYA</td><td></td></tr><tr><td>pendidikan_terakhir</td><td>S1</td><td></td></tr><tr><td>gol_ruang</td><td>IIIC</td><td></td></tr><tr><td>satuan_organisasi</td><td>tidak tahu</td><td></td></tr><tr><td>kgb_terakhir</td><td>2020-02-23</td><td></td></tr><tr><td>jalan</td><td>KBKBHV</td><td></td></tr><tr><td>kelurahan</td><td>HBJBJHB</td><td></td></tr><tr><td>kecamatan</td><td>JBJB</td><td></td></tr><tr><td>kabupaten</td><td>KKBKBH</td><td></td></tr><tr><td>provinsi</td><td></td><td></td></tr><tr><td>tinggi_badan</td><td></td><td></td></tr><tr><td>berat_badan</td><td></td><td></td></tr><tr><td>warna_rambut</td><td></td><td></td></tr><tr><td>bentuk_wajah</td><td>KBJHVGV</td><td></td></tr><tr><td>warna_kulit</td><td>KBJHVG</td><td></td></tr><tr><td>ciri</td><td>JHVJHV</td><td></td></tr><tr><td>cacat_tubuh</td><td>JVJHV</td><td></td></tr><tr><td>kegemaran</td><td>JHVJHV</td><td></td></tr><tr><td>no_tlp</td><td>HVHJV</td><td></td></tr><tr><td>pangkat</td><td>PEMBINA INGKAT I</td><td></td></tr><tr><td>kapreg</td><td>asas</td><td></td></tr><tr><td>karis_su</td><td>ASDFSA</td><td></td></tr><tr><td>kpe</td><td>SDFVDB</td><td></td></tr><tr><td>taspem</td><td>C C</td><td></td></tr><tr><td>npwp</td><td>SDFVDTB</td><td></td></tr><tr><td>nuptk</td><td>DFBDGB</td><td></td></tr><tr><td>nidn</td><td>DVD</td><td></td></tr></tbody></table>', 1, '2020-02-27 03:03:36', NULL),
(67, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-02-27 03:03:44', NULL),
(68, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-02-27 03:03:58', NULL),
(69, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/pegawai26/edit-save/6', 'Update data admin at Akun Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>email</td><td>admin@fu.uinsgd.com</td><td>admin2@fu.uinsgd.com</td></tr><tr><td>password</td><td>$2y$10$sJ5LeMD1BgiNa.FPpjVBH.LUI.xK8E4dojDfltzwZf/N8VD5cNC2y</td><td>$2y$10$6.X0Q6gfa/x5imDLc0ht/.5Bmx75UKL60SiyKG0f0Kx.6adL44qO6</td></tr><tr><td>nip</td><td>666</td><td></td></tr><tr><td>tgl_lahir</td><td></td><td></td></tr><tr><td>tempat_lahir</td><td></td><td></td></tr><tr><td>jk</td><td></td><td></td></tr><tr><td>agama</td><td></td><td></td></tr><tr><td>s_nikah</td><td></td><td></td></tr><tr><td>s_kepegawaian</td><td></td><td></td></tr><tr><td>jenis_kepegawaian</td><td></td><td></td></tr><tr><td>satuan_kerja</td><td></td><td></td></tr><tr><td>jabatan_terakhir</td><td></td><td></td></tr><tr><td>pendidikan_terakhir</td><td></td><td></td></tr><tr><td>gol_ruang</td><td></td><td></td></tr><tr><td>satuan_organisasi</td><td></td><td></td></tr><tr><td>kgb_terakhir</td><td></td><td></td></tr><tr><td>jalan</td><td></td><td></td></tr><tr><td>kelurahan</td><td></td><td></td></tr><tr><td>kecamatan</td><td></td><td></td></tr><tr><td>kabupaten</td><td></td><td></td></tr><tr><td>provinsi</td><td></td><td></td></tr><tr><td>tinggi_badan</td><td></td><td></td></tr><tr><td>berat_badan</td><td></td><td></td></tr><tr><td>warna_rambut</td><td></td><td></td></tr><tr><td>bentuk_wajah</td><td></td><td></td></tr><tr><td>warna_kulit</td><td></td><td></td></tr><tr><td>ciri</td><td></td><td></td></tr><tr><td>cacat_tubuh</td><td></td><td></td></tr><tr><td>kegemaran</td><td></td><td></td></tr><tr><td>no_tlp</td><td></td><td></td></tr><tr><td>pangkat</td><td></td><td></td></tr><tr><td>kapreg</td><td></td><td></td></tr><tr><td>karis_su</td><td></td><td></td></tr><tr><td>kpe</td><td></td><td></td></tr><tr><td>taspem</td><td></td><td></td></tr><tr><td>npwp</td><td></td><td></td></tr><tr><td>nuptk</td><td></td><td></td></tr><tr><td>nidn</td><td></td><td></td></tr><tr><td>jurusan</td><td></td><td></td></tr><tr><td>fakultas</td><td></td><td></td></tr></tbody></table>', 1, '2020-02-27 03:29:21', NULL),
(70, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-02-27 03:29:43', NULL),
(71, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-02-27 03:30:11', NULL),
(72, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/pegawai26/delete/6', 'Delete data admin at Akun Management', '', 1, '2020-02-27 03:33:45', NULL),
(73, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/pegawai26/add-save', 'Add New Data admin at Akun Management', '', 1, '2020-02-27 03:40:04', NULL),
(74, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-02-27 03:40:28', NULL),
(75, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-02-27 03:41:19', NULL),
(76, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/users/add-save', 'Add New Data kodok at Users Management', '', 1, '2020-02-27 03:45:24', NULL),
(77, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-02-27 03:45:33', NULL),
(78, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'kodok@uinsgd.com login with IP Address 127.0.0.1', '', 3, '2020-02-27 03:45:45', NULL),
(79, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'kodok@uinsgd.com logout', '', 3, '2020-02-27 03:48:32', NULL),
(80, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@fu.uinsgd.com login with IP Address 127.0.0.1', '', 7, '2020-02-27 04:04:22', NULL),
(81, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@fu.uinsgd.com logout', '', 7, '2020-02-27 04:05:18', NULL),
(82, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-02-27 04:05:45', NULL),
(83, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/pegawai26/edit-save/7', 'Update data admin at Akun Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>password</td><td>$2y$10$32BPyCkihVceprCQcAJde.X4FqRL4HnI3zLOaf/ZxzMJFSmfiHRKC</td><td></td></tr><tr><td>id_cms_privileges</td><td>3</td><td>1</td></tr><tr><td>nip</td><td></td><td></td></tr><tr><td>tgl_lahir</td><td></td><td></td></tr><tr><td>tempat_lahir</td><td></td><td></td></tr><tr><td>jk</td><td></td><td></td></tr><tr><td>agama</td><td></td><td></td></tr><tr><td>s_nikah</td><td></td><td></td></tr><tr><td>s_kepegawaian</td><td></td><td></td></tr><tr><td>jenis_kepegawaian</td><td></td><td></td></tr><tr><td>satuan_kerja</td><td></td><td></td></tr><tr><td>jabatan_terakhir</td><td></td><td></td></tr><tr><td>pendidikan_terakhir</td><td></td><td></td></tr><tr><td>gol_ruang</td><td></td><td></td></tr><tr><td>satuan_organisasi</td><td></td><td></td></tr><tr><td>kgb_terakhir</td><td></td><td></td></tr><tr><td>jalan</td><td></td><td></td></tr><tr><td>kelurahan</td><td></td><td></td></tr><tr><td>kecamatan</td><td></td><td></td></tr><tr><td>kabupaten</td><td></td><td></td></tr><tr><td>provinsi</td><td></td><td></td></tr><tr><td>tinggi_badan</td><td></td><td></td></tr><tr><td>berat_badan</td><td></td><td></td></tr><tr><td>warna_rambut</td><td></td><td></td></tr><tr><td>bentuk_wajah</td><td></td><td></td></tr><tr><td>warna_kulit</td><td></td><td></td></tr><tr><td>ciri</td><td></td><td></td></tr><tr><td>cacat_tubuh</td><td></td><td></td></tr><tr><td>kegemaran</td><td></td><td></td></tr><tr><td>no_tlp</td><td></td><td></td></tr><tr><td>pangkat</td><td></td><td></td></tr><tr><td>kapreg</td><td></td><td></td></tr><tr><td>karis_su</td><td></td><td></td></tr><tr><td>kpe</td><td></td><td></td></tr><tr><td>taspem</td><td></td><td></td></tr><tr><td>npwp</td><td></td><td></td></tr><tr><td>nuptk</td><td></td><td></td></tr><tr><td>nidn</td><td></td><td></td></tr><tr><td>jurusan</td><td></td><td></td></tr><tr><td>fakultas</td><td></td><td></td></tr></tbody></table>', 1, '2020-02-27 04:06:17', NULL),
(84, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/pegawai26/edit-save/1', 'Update data Fariz Maulana Herman at Akun Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>password</td><td>$2y$10$8gwXlGBuKVbUS4bQTv3Sxu2cYozMqZQQT7hYWNIqA1RfCTu7Rzb4W</td><td>$2y$10$oo7wXvRsDF3VAm9Wb7RXcewfytLt3qxI6c6r4nHPKqDmF9BPxI5QO</td></tr><tr><td>nip</td><td>1167050062</td><td></td></tr><tr><td>tgl_lahir</td><td>2020-02-24</td><td></td></tr><tr><td>tempat_lahir</td><td>B</td><td></td></tr><tr><td>jk</td><td>PRIA</td><td></td></tr><tr><td>agama</td><td>ISLAM</td><td></td></tr><tr><td>s_nikah</td><td>BELUM</td><td></td></tr><tr><td>s_kepegawaian</td><td>AKTIF</td><td></td></tr><tr><td>jenis_kepegawaian</td><td>CAPEG</td><td></td></tr><tr><td>satuan_kerja</td><td>TIDAK TAHU</td><td></td></tr><tr><td>jabatan_terakhir</td><td>ASISTEN AHLI MADYA</td><td></td></tr><tr><td>pendidikan_terakhir</td><td>S1</td><td></td></tr><tr><td>gol_ruang</td><td>IIIC</td><td></td></tr><tr><td>satuan_organisasi</td><td>tidak tahu</td><td></td></tr><tr><td>kgb_terakhir</td><td>2020-02-23</td><td></td></tr><tr><td>jalan</td><td>KBKBHV</td><td></td></tr><tr><td>kelurahan</td><td>HBJBJHB</td><td></td></tr><tr><td>kecamatan</td><td>JBJB</td><td></td></tr><tr><td>kabupaten</td><td>KKBKBH</td><td></td></tr><tr><td>provinsi</td><td></td><td></td></tr><tr><td>tinggi_badan</td><td></td><td></td></tr><tr><td>berat_badan</td><td></td><td></td></tr><tr><td>warna_rambut</td><td></td><td></td></tr><tr><td>bentuk_wajah</td><td>KBJHVGV</td><td></td></tr><tr><td>warna_kulit</td><td>KBJHVG</td><td></td></tr><tr><td>ciri</td><td>JHVJHV</td><td></td></tr><tr><td>cacat_tubuh</td><td>JVJHV</td><td></td></tr><tr><td>kegemaran</td><td>JHVJHV</td><td></td></tr><tr><td>no_tlp</td><td>HVHJV</td><td></td></tr><tr><td>pangkat</td><td>PEMBINA INGKAT I</td><td></td></tr><tr><td>kapreg</td><td>asas</td><td></td></tr><tr><td>karis_su</td><td>ASDFSA</td><td></td></tr><tr><td>kpe</td><td>SDFVDB</td><td></td></tr><tr><td>taspem</td><td>C C</td><td></td></tr><tr><td>npwp</td><td>SDFVDTB</td><td></td></tr><tr><td>nuptk</td><td>DFBDGB</td><td></td></tr><tr><td>nidn</td><td>DVD</td><td></td></tr><tr><td>jurusan</td><td>Tasawuf Psikoterapi</td><td></td></tr><tr><td>fakultas</td><td>USHULUDDIN</td><td></td></tr></tbody></table>', 1, '2020-02-27 04:06:35', NULL),
(85, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-02-27 04:06:47', NULL),
(86, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@fu.uinsgd.com login with IP Address 127.0.0.1', '', 7, '2020-02-27 04:07:08', NULL),
(87, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@fu.uinsgd.com logout', '', 7, '2020-02-27 04:07:44', NULL),
(88, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'fariz.herman@gmail.com login with IP Address 127.0.0.1', '', 1, '2020-02-27 04:07:56', NULL),
(89, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'fariz.herman@gmail.com logout', '', 1, '2020-02-27 04:11:34', NULL),
(90, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@fu.uinsgd.com login with IP Address 127.0.0.1', '', 7, '2020-02-27 04:12:20', NULL),
(91, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/pegawai26/edit-save/4', 'Update data MAMAT at Akun Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>password</td><td>$2y$10$ZtpC1k2wNLUMGqIx0xCx7eA/TtfjN6rzTjyTuv7IvC6yph.U5YEiS</td><td>$2y$10$BWLNyu9VLMFko4asnkDX6.9OR0l6x9QV6z6cO6TLXva3bRucf/ckK</td></tr><tr><td>nip</td><td>1167050063</td><td></td></tr><tr><td>tgl_lahir</td><td>2020-03-12</td><td></td></tr><tr><td>tempat_lahir</td><td>Bogor</td><td></td></tr><tr><td>jk</td><td>PRIA</td><td></td></tr><tr><td>agama</td><td>ISLAM</td><td></td></tr><tr><td>s_nikah</td><td>BELUM</td><td></td></tr><tr><td>s_kepegawaian</td><td>AKTIF</td><td></td></tr><tr><td>jenis_kepegawaian</td><td>PNS</td><td></td></tr><tr><td>satuan_kerja</td><td>TIDAK TAHU</td><td></td></tr><tr><td>jabatan_terakhir</td><td>ASISTEN AHLI MADYA</td><td></td></tr><tr><td>pendidikan_terakhir</td><td>S2</td><td></td></tr><tr><td>gol_ruang</td><td>IVA</td><td></td></tr><tr><td>satuan_organisasi</td><td>tidak tahu</td><td></td></tr><tr><td>kgb_terakhir</td><td>2020-03-26</td><td></td></tr><tr><td>jalan</td><td>jvgv</td><td></td></tr><tr><td>kelurahan</td><td>kbjhvy</td><td></td></tr><tr><td>kecamatan</td><td>ghvgv</td><td></td></tr><tr><td>kabupaten</td><td>lnkn</td><td></td></tr><tr><td>provinsi</td><td></td><td></td></tr><tr><td>tinggi_badan</td><td></td><td></td></tr><tr><td>berat_badan</td><td></td><td></td></tr><tr><td>warna_rambut</td><td></td><td></td></tr><tr><td>bentuk_wajah</td><td>kbjkb</td><td></td></tr><tr><td>warna_kulit</td><td>hgvhgcv</td><td></td></tr><tr><td>ciri</td><td>mnkjb</td><td></td></tr><tr><td>cacat_tubuh</td><td>hgcfc</td><td></td></tr><tr><td>kegemaran</td><td>knbkjb</td><td></td></tr><tr><td>no_tlp</td><td>gchgc</td><td></td></tr><tr><td>pangkat</td><td>PENATA</td><td></td></tr><tr><td>kapreg</td><td>iuugg</td><td></td></tr><tr><td>karis_su</td><td>jbvjgvgu</td><td></td></tr><tr><td>kpe</td><td>nbjhvygc</td><td></td></tr><tr><td>taspem</td><td>kbjhvg</td><td></td></tr><tr><td>npwp</td><td>kbhgv</td><td></td></tr><tr><td>nuptk</td><td>kbjhv</td><td></td></tr><tr><td>nidn</td><td>knkhjv</td><td></td></tr><tr><td>jurusan</td><td>Tasawuf Psikoterapi</td><td></td></tr><tr><td>fakultas</td><td>USHULUDDIN</td><td></td></tr></tbody></table>', 7, '2020-02-27 04:12:40', NULL),
(92, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@fu.uinsgd.com logout', '', 7, '2020-02-27 04:12:49', NULL),
(93, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'mamat@crudbooster.com login with IP Address 127.0.0.1', '', 4, '2020-02-27 04:12:57', NULL),
(94, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ' logout', '', 4, '2020-02-27 04:19:04', NULL),
(95, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-02-27 04:19:06', NULL),
(96, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-02-27 04:19:31', NULL),
(97, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-02-27 04:20:09', NULL),
(98, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/users/edit-save/3', 'Update data kodok at Users Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>password</td><td>$2y$10$L.8eywSsjaPPI.TsRE01DumbM2/2MzoxnqCH8ulqq403nGZKLqK6O</td><td>$2y$10$V.kyPwluOr7lWjbwHs2oHOs70DvSRBaRye7fe6r4ozKhPHhwwwQLe</td></tr><tr><td>status</td><td></td><td></td></tr></tbody></table>', 1, '2020-02-27 04:20:33', NULL),
(99, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-02-27 04:20:41', NULL),
(100, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'kodok@uinsgd.com login with IP Address 127.0.0.1', '', 3, '2020-02-27 04:20:49', NULL),
(101, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'udin@crudbooster.com logout', '', 3, '2020-02-27 04:25:31', NULL),
(102, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'mamat@crudbooster.com login with IP Address 127.0.0.1', '', 4, '2020-02-27 04:25:38', NULL),
(103, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'mamat@crudbooster.com logout', '', 4, '2020-02-27 04:42:33', NULL),
(104, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@fu.uinsgd.com login with IP Address 127.0.0.1', '', 7, '2020-02-27 04:42:47', NULL),
(105, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@fu.uinsgd.com logout', '', 7, '2020-02-27 04:50:16', NULL),
(106, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'mamat@crudbooster.com login with IP Address 127.0.0.1', '', 4, '2020-02-27 04:50:22', NULL),
(107, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/keluarga/add-save', 'Add New Data jshafhj at Profil Keluarga', '', 4, '2020-02-27 05:03:16', NULL),
(108, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/pendidikan/add-save', 'Add New Data kjsvb at Pendidikan', '', 4, '2020-02-27 05:45:00', NULL),
(109, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/pendidikan/add-save', 'Add New Data jksb at Pendidikan', '', 4, '2020-02-27 05:45:13', NULL),
(110, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/kursus_latihan/add-save', 'Add New Data jksbvakb at Kursus / latihan', '', 4, '2020-02-27 05:49:02', NULL),
(111, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'mamat@crudbooster.com logout', '', 4, '2020-02-27 06:44:15', NULL),
(112, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'fariz.herman@gmail.com login with IP Address 127.0.0.1', '', 1, '2020-02-27 08:28:13', NULL),
(113, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'fariz.herman@gmail.com logout', '', 1, '2020-02-27 08:28:53', NULL),
(114, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@fu.uinsgd.com login with IP Address 127.0.0.1', '', 7, '2020-02-27 08:29:24', NULL);
INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES
(115, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'fariz.herman@gmail.com login with IP Address 127.0.0.1', '', 1, '2020-02-29 09:34:49', NULL),
(116, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'fariz.herman@gmail.com logout', '', 1, '2020-02-29 09:35:28', NULL),
(117, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@fu.uinsgd.com login with IP Address 127.0.0.1', '', 7, '2020-02-29 09:35:46', NULL),
(118, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', 'http://127.0.0.1:8000/admin/pegawai26/edit-save/1', 'Update data Fariz Maulana Herman at Akun Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>password</td><td>$2y$10$oo7wXvRsDF3VAm9Wb7RXcewfytLt3qxI6c6r4nHPKqDmF9BPxI5QO</td><td></td></tr><tr><td>id_cms_privileges</td><td>2</td><td>3</td></tr><tr><td>nip</td><td>1167050062</td><td></td></tr><tr><td>tgl_lahir</td><td>2020-02-24</td><td></td></tr><tr><td>tempat_lahir</td><td>B</td><td></td></tr><tr><td>jk</td><td>PRIA</td><td></td></tr><tr><td>agama</td><td>ISLAM</td><td></td></tr><tr><td>s_nikah</td><td>BELUM</td><td></td></tr><tr><td>s_kepegawaian</td><td>AKTIF</td><td></td></tr><tr><td>jenis_kepegawaian</td><td>CAPEG</td><td></td></tr><tr><td>satuan_kerja</td><td>TIDAK TAHU</td><td></td></tr><tr><td>jabatan_terakhir</td><td>ASISTEN AHLI MADYA</td><td></td></tr><tr><td>pendidikan_terakhir</td><td>S1</td><td></td></tr><tr><td>gol_ruang</td><td>IIIC</td><td></td></tr><tr><td>satuan_organisasi</td><td>tidak tahu</td><td></td></tr><tr><td>kgb_terakhir</td><td>2020-02-23</td><td></td></tr><tr><td>jalan</td><td>KBKBHV</td><td></td></tr><tr><td>kelurahan</td><td>HBJBJHB</td><td></td></tr><tr><td>kecamatan</td><td>JBJB</td><td></td></tr><tr><td>kabupaten</td><td>KKBKBH</td><td></td></tr><tr><td>provinsi</td><td></td><td></td></tr><tr><td>tinggi_badan</td><td></td><td></td></tr><tr><td>berat_badan</td><td></td><td></td></tr><tr><td>warna_rambut</td><td></td><td></td></tr><tr><td>bentuk_wajah</td><td>KBJHVGV</td><td></td></tr><tr><td>warna_kulit</td><td>KBJHVG</td><td></td></tr><tr><td>ciri</td><td>JHVJHV</td><td></td></tr><tr><td>cacat_tubuh</td><td>JVJHV</td><td></td></tr><tr><td>kegemaran</td><td>JHVJHV</td><td></td></tr><tr><td>no_tlp</td><td>HVHJV</td><td></td></tr><tr><td>pangkat</td><td>PEMBINA INGKAT I</td><td></td></tr><tr><td>kapreg</td><td>asas</td><td></td></tr><tr><td>karis_su</td><td>ASDFSA</td><td></td></tr><tr><td>kpe</td><td>SDFVDB</td><td></td></tr><tr><td>taspem</td><td>C C</td><td></td></tr><tr><td>npwp</td><td>SDFVDTB</td><td></td></tr><tr><td>nuptk</td><td>DFBDGB</td><td></td></tr><tr><td>nidn</td><td>DVD</td><td></td></tr><tr><td>jurusan</td><td>Tasawuf Psikoterapi</td><td></td></tr><tr><td>fakultas</td><td>USHULUDDIN</td><td></td></tr></tbody></table>', 7, '2020-02-29 09:36:23', NULL),
(119, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@fu.uinsgd.com logout', '', 7, '2020-02-29 09:36:45', NULL),
(120, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'fariz.herman@gmail.com login with IP Address 127.0.0.1', '', 1, '2020-02-29 09:36:52', NULL),
(121, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'fariz.herman@gmail.com logout', '', 1, '2020-02-29 09:37:08', NULL),
(122, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@fu.uinsgd.com login with IP Address 127.0.0.1', '', 7, '2020-02-29 09:37:15', NULL),
(123, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/20', 'Update data Akun Management at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>8</td><td></td></tr></tbody></table>', 7, '2020-02-29 09:37:36', NULL),
(124, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@fu.uinsgd.com logout', '', 7, '2020-02-29 09:37:49', NULL),
(125, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'fariz.herman@gmail.com login with IP Address 127.0.0.1', '', 1, '2020-02-29 09:37:57', NULL),
(126, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'fariz.herman@gmail.com logout', '', 1, '2020-02-29 09:38:10', NULL),
(127, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@fu.uinsgd.com login with IP Address 127.0.0.1', '', 7, '2020-02-29 09:38:13', NULL),
(128, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/20', 'Update data Akun Management at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>8</td><td></td></tr></tbody></table>', 7, '2020-02-29 09:38:40', NULL),
(129, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@fu.uinsgd.com logout', '', 7, '2020-02-29 09:39:00', NULL),
(130, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'fariz.herman@gmail.com login with IP Address 127.0.0.1', '', 1, '2020-02-29 09:39:11', NULL),
(131, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'fariz.herman@gmail.com logout', '', 1, '2020-02-29 14:45:37', NULL),
(132, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@fu.uinsgd.com login with IP Address 127.0.0.1', '', 7, '2020-03-02 01:57:44', NULL),
(133, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@fu.uinsgd.com login with IP Address 127.0.0.1', '', 7, '2020-03-06 01:45:30', NULL),
(134, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@fu.uinsgd.com logout', '', 7, '2020-03-06 01:56:23', NULL),
(135, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'fariz.herman@gmail.com login with IP Address 127.0.0.1', '', 1, '2020-03-06 01:56:33', NULL),
(136, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'fariz.herman@gmail.com logout', '', 1, '2020-03-06 02:05:30', NULL),
(137, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'mamat@crudbooster.com login with IP Address 127.0.0.1', '', 4, '2020-03-06 02:05:40', NULL),
(138, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'mamat@crudbooster.com logout', '', 4, '2020-03-06 02:14:55', NULL),
(139, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@fu.uinsgd.com login with IP Address 127.0.0.1', '', 7, '2020-03-06 02:15:00', NULL),
(140, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', 'http://127.0.0.1:8000/admin/pegawai26/edit-save/1', 'Update data Fariz Maulana Herman at Akun Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>password</td><td>$2y$10$oo7wXvRsDF3VAm9Wb7RXcewfytLt3qxI6c6r4nHPKqDmF9BPxI5QO</td><td></td></tr><tr><td>id_cms_privileges</td><td>3</td><td>4</td></tr><tr><td>nip</td><td>1167050062</td><td></td></tr><tr><td>tgl_lahir</td><td>2020-02-24</td><td></td></tr><tr><td>tempat_lahir</td><td>B</td><td></td></tr><tr><td>jk</td><td>PRIA</td><td></td></tr><tr><td>agama</td><td>ISLAM</td><td></td></tr><tr><td>s_nikah</td><td>BELUM</td><td></td></tr><tr><td>s_kepegawaian</td><td>AKTIF</td><td></td></tr><tr><td>jenis_kepegawaian</td><td>CAPEG</td><td></td></tr><tr><td>satuan_kerja</td><td>TIDAK TAHU</td><td></td></tr><tr><td>jabatan_terakhir</td><td>ASISTEN AHLI MADYA</td><td></td></tr><tr><td>pendidikan_terakhir</td><td>S1</td><td></td></tr><tr><td>gol_ruang</td><td>IIIC</td><td></td></tr><tr><td>satuan_organisasi</td><td>tidak tahu</td><td></td></tr><tr><td>kgb_terakhir</td><td>2020-02-23</td><td></td></tr><tr><td>jalan</td><td>KBKBHV</td><td></td></tr><tr><td>kelurahan</td><td>HBJBJHB</td><td></td></tr><tr><td>kecamatan</td><td>JBJB</td><td></td></tr><tr><td>kabupaten</td><td>KKBKBH</td><td></td></tr><tr><td>provinsi</td><td></td><td></td></tr><tr><td>tinggi_badan</td><td></td><td></td></tr><tr><td>berat_badan</td><td></td><td></td></tr><tr><td>warna_rambut</td><td></td><td></td></tr><tr><td>bentuk_wajah</td><td>KBJHVGV</td><td></td></tr><tr><td>warna_kulit</td><td>KBJHVG</td><td></td></tr><tr><td>ciri</td><td>JHVJHV</td><td></td></tr><tr><td>cacat_tubuh</td><td>JVJHV</td><td></td></tr><tr><td>kegemaran</td><td>JHVJHV</td><td></td></tr><tr><td>no_tlp</td><td>HVHJV</td><td></td></tr><tr><td>pangkat</td><td>PEMBINA INGKAT I</td><td></td></tr><tr><td>kapreg</td><td>asas</td><td></td></tr><tr><td>karis_su</td><td>ASDFSA</td><td></td></tr><tr><td>kpe</td><td>SDFVDB</td><td></td></tr><tr><td>taspem</td><td>C C</td><td></td></tr><tr><td>npwp</td><td>SDFVDTB</td><td></td></tr><tr><td>nuptk</td><td>DFBDGB</td><td></td></tr><tr><td>nidn</td><td>DVD</td><td></td></tr><tr><td>jurusan</td><td>Tasawuf Psikoterapi</td><td></td></tr><tr><td>fakultas</td><td>USHULUDDIN</td><td></td></tr></tbody></table>', 7, '2020-03-06 03:11:57', NULL),
(141, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@fu.uinsgd.com logout', '', 7, '2020-03-06 03:13:06', NULL),
(142, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@fu.uinsgd.com login with IP Address 127.0.0.1', '', 7, '2020-03-06 03:13:08', NULL),
(143, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@fu.uinsgd.com logout', '', 7, '2020-03-06 03:13:32', NULL),
(144, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'fariz.herman@gmail.com login with IP Address 127.0.0.1', '', 1, '2020-03-06 03:13:41', NULL),
(145, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'fariz.herman@gmail.com logout', '', 1, '2020-03-06 03:15:05', NULL),
(146, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@fu.uinsgd.com login with IP Address 127.0.0.1', '', 7, '2020-03-06 03:15:08', NULL),
(147, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', 'http://127.0.0.1:8000/admin/pegawai26/edit-save/1', 'Update data Fariz Maulana Herman at Akun Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>password</td><td>$2y$10$oo7wXvRsDF3VAm9Wb7RXcewfytLt3qxI6c6r4nHPKqDmF9BPxI5QO</td><td></td></tr><tr><td>id_cms_privileges</td><td>4</td><td>3</td></tr><tr><td>nip</td><td>1167050062</td><td></td></tr><tr><td>tgl_lahir</td><td>2020-02-24</td><td></td></tr><tr><td>tempat_lahir</td><td>B</td><td></td></tr><tr><td>jk</td><td>PRIA</td><td></td></tr><tr><td>agama</td><td>ISLAM</td><td></td></tr><tr><td>s_nikah</td><td>BELUM</td><td></td></tr><tr><td>s_kepegawaian</td><td>AKTIF</td><td></td></tr><tr><td>jenis_kepegawaian</td><td>CAPEG</td><td></td></tr><tr><td>satuan_kerja</td><td>TIDAK TAHU</td><td></td></tr><tr><td>jabatan_terakhir</td><td>ASISTEN AHLI MADYA</td><td></td></tr><tr><td>pendidikan_terakhir</td><td>S1</td><td></td></tr><tr><td>gol_ruang</td><td>IIIC</td><td></td></tr><tr><td>satuan_organisasi</td><td>tidak tahu</td><td></td></tr><tr><td>kgb_terakhir</td><td>2020-02-23</td><td></td></tr><tr><td>jalan</td><td>KBKBHV</td><td></td></tr><tr><td>kelurahan</td><td>HBJBJHB</td><td></td></tr><tr><td>kecamatan</td><td>JBJB</td><td></td></tr><tr><td>kabupaten</td><td>KKBKBH</td><td></td></tr><tr><td>provinsi</td><td></td><td></td></tr><tr><td>tinggi_badan</td><td></td><td></td></tr><tr><td>berat_badan</td><td></td><td></td></tr><tr><td>warna_rambut</td><td></td><td></td></tr><tr><td>bentuk_wajah</td><td>KBJHVGV</td><td></td></tr><tr><td>warna_kulit</td><td>KBJHVG</td><td></td></tr><tr><td>ciri</td><td>JHVJHV</td><td></td></tr><tr><td>cacat_tubuh</td><td>JVJHV</td><td></td></tr><tr><td>kegemaran</td><td>JHVJHV</td><td></td></tr><tr><td>no_tlp</td><td>HVHJV</td><td></td></tr><tr><td>pangkat</td><td>PEMBINA INGKAT I</td><td></td></tr><tr><td>kapreg</td><td>asas</td><td></td></tr><tr><td>karis_su</td><td>ASDFSA</td><td></td></tr><tr><td>kpe</td><td>SDFVDB</td><td></td></tr><tr><td>taspem</td><td>C C</td><td></td></tr><tr><td>npwp</td><td>SDFVDTB</td><td></td></tr><tr><td>nuptk</td><td>DFBDGB</td><td></td></tr><tr><td>nidn</td><td>DVD</td><td></td></tr><tr><td>jurusan</td><td>Tasawuf Psikoterapi</td><td></td></tr><tr><td>fakultas</td><td>USHULUDDIN</td><td></td></tr></tbody></table>', 7, '2020-03-06 03:15:32', NULL),
(148, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', 'http://127.0.0.1:8000/admin/pegawai26/edit-save/7', 'Update data Super Admin at Akun Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>admin</td><td>Super Admin</td></tr><tr><td>password</td><td>$2y$10$32BPyCkihVceprCQcAJde.X4FqRL4HnI3zLOaf/ZxzMJFSmfiHRKC</td><td></td></tr><tr><td>nip</td><td></td><td></td></tr><tr><td>tgl_lahir</td><td></td><td></td></tr><tr><td>tempat_lahir</td><td></td><td></td></tr><tr><td>jk</td><td></td><td></td></tr><tr><td>agama</td><td></td><td></td></tr><tr><td>s_nikah</td><td></td><td></td></tr><tr><td>s_kepegawaian</td><td></td><td></td></tr><tr><td>jenis_kepegawaian</td><td></td><td></td></tr><tr><td>satuan_kerja</td><td></td><td></td></tr><tr><td>jabatan_terakhir</td><td></td><td></td></tr><tr><td>pendidikan_terakhir</td><td></td><td></td></tr><tr><td>gol_ruang</td><td></td><td></td></tr><tr><td>satuan_organisasi</td><td></td><td></td></tr><tr><td>kgb_terakhir</td><td></td><td></td></tr><tr><td>jalan</td><td></td><td></td></tr><tr><td>kelurahan</td><td></td><td></td></tr><tr><td>kecamatan</td><td></td><td></td></tr><tr><td>kabupaten</td><td></td><td></td></tr><tr><td>provinsi</td><td></td><td></td></tr><tr><td>tinggi_badan</td><td></td><td></td></tr><tr><td>berat_badan</td><td></td><td></td></tr><tr><td>warna_rambut</td><td></td><td></td></tr><tr><td>bentuk_wajah</td><td></td><td></td></tr><tr><td>warna_kulit</td><td></td><td></td></tr><tr><td>ciri</td><td></td><td></td></tr><tr><td>cacat_tubuh</td><td></td><td></td></tr><tr><td>kegemaran</td><td></td><td></td></tr><tr><td>no_tlp</td><td></td><td></td></tr><tr><td>pangkat</td><td></td><td></td></tr><tr><td>kapreg</td><td></td><td></td></tr><tr><td>karis_su</td><td></td><td></td></tr><tr><td>kpe</td><td></td><td></td></tr><tr><td>taspem</td><td></td><td></td></tr><tr><td>npwp</td><td></td><td></td></tr><tr><td>nuptk</td><td></td><td></td></tr><tr><td>nidn</td><td></td><td></td></tr><tr><td>jurusan</td><td></td><td></td></tr><tr><td>fakultas</td><td></td><td></td></tr></tbody></table>', 7, '2020-03-06 03:15:48', NULL),
(149, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/5', 'Update data Profil Pegawai at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 7, '2020-03-06 06:28:25', NULL),
(150, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/6', 'Update data Pendidikan at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>icon</td><td></td><td></td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 7, '2020-03-06 06:29:07', NULL),
(151, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/9', 'Update data Riwayat Pekerjaan at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>icon</td><td></td><td></td></tr><tr><td>sorting</td><td>3</td><td></td></tr></tbody></table>', 7, '2020-03-06 06:29:50', NULL),
(152, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/10', 'Update data Tanda Jasa / Penghargaan at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>4</td><td></td></tr></tbody></table>', 7, '2020-03-06 06:29:59', NULL),
(153, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/15', 'Update data Pengalaman at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>icon</td><td></td><td></td></tr><tr><td>sorting</td><td>5</td><td></td></tr></tbody></table>', 7, '2020-03-06 06:30:07', NULL),
(154, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/18', 'Update data Penelitian / Karya tulis at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>icon</td><td></td><td></td></tr><tr><td>sorting</td><td>6</td><td></td></tr></tbody></table>', 7, '2020-03-06 06:30:33', NULL),
(155, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/19', 'Update data Keterangan Organisasi at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>7</td><td></td></tr></tbody></table>', 7, '2020-03-06 06:30:44', NULL),
(156, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/20', 'Update data Akun Management at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>8</td><td></td></tr></tbody></table>', 7, '2020-03-06 06:31:38', NULL),
(157, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@fu.uinsgd.com login with IP Address 127.0.0.1', '', 7, '2020-03-11 04:54:40', NULL),
(158, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@fu.uinsgd.com logout', '', 7, '2020-03-11 04:55:28', NULL),
(159, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'fariz.herman@gmail.com login with IP Address 127.0.0.1', '', 1, '2020-03-11 04:55:43', NULL),
(160, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'fariz.herman@gmail.com logout', '', 1, '2020-03-11 04:59:09', NULL),
(161, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@fu.uinsgd.com login with IP Address 127.0.0.1', '', 7, '2020-03-11 04:59:17', NULL),
(162, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@fu.uinsgd.com logout', '', 7, '2020-03-11 04:59:37', NULL),
(163, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'mamat@crudbooster.com login with IP Address 127.0.0.1', '', 4, '2020-03-11 04:59:50', NULL),
(164, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'mamat@crudbooster.com logout', '', 4, '2020-03-11 05:14:11', NULL),
(165, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'fariz.herman@gmail.com login with IP Address 127.0.0.1', '', 1, '2020-03-11 05:14:19', NULL),
(166, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'fariz.herman@gmail.com logout', '', 1, '2020-03-11 05:41:52', NULL),
(167, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@fu.uinsgd.com login with IP Address 127.0.0.1', '', 7, '2020-03-11 05:41:55', NULL),
(168, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/20', 'Update data Akun Management at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>8</td><td></td></tr></tbody></table>', 7, '2020-03-11 05:57:00', NULL),
(169, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@fu.uinsgd.com login with IP Address 127.0.0.1', '', 7, '2020-04-01 10:27:42', NULL),
(170, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@fu.uinsgd.com logout', '', 7, '2020-04-01 10:28:15', NULL),
(171, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'fariz.herman@gmail.com login with IP Address 127.0.0.1', '', 1, '2020-04-01 10:28:27', NULL),
(172, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', 'http://127.0.0.1:8000/admin/pegawai26/add-save', 'Add New Data pegawai A at Akun Management', '', 1, '2020-04-01 10:44:55', NULL),
(173, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', 'http://127.0.0.1:8000/admin/pegawai26/add-save', 'Add New Data pegawai B at Akun Management', '', 1, '2020-04-01 10:46:00', NULL),
(174, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', 'http://127.0.0.1:8000/admin/pegawai26/add-save', 'Add New Data pegawai C at Akun Management', '', 1, '2020-04-01 10:47:02', NULL),
(175, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', 'http://127.0.0.1:8000/admin/pegawai26/add-save', 'Add New Data pegawai D at Akun Management', '', 1, '2020-04-01 10:48:00', NULL),
(176, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', 'http://127.0.0.1:8000/admin/pegawai26/add-save', 'Add New Data pegawai E at Akun Management', '', 1, '2020-04-01 10:48:45', NULL),
(177, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'fariz.herman@gmail.com logout', '', 1, '2020-04-01 10:54:16', NULL),
(178, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'pegawai1@gmail.com login with IP Address 127.0.0.1', '', 8, '2020-04-01 10:54:30', NULL),
(179, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', 'http://127.0.0.1:8000/admin/pegawai/edit-save/8', 'Update data pegawai A at Pegawai', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>password</td><td>$2y$10$v2ytM9FDKNgEjOruV/HpGOOvZGPaQrnwZ6lyDiTKNXzW.TgxyCbly</td><td></td></tr><tr><td>nip</td><td></td><td>111</td></tr><tr><td>tgl_lahir</td><td></td><td>2020-04-16</td></tr><tr><td>tempat_lahir</td><td></td><td>bogor</td></tr><tr><td>jk</td><td></td><td>PRIA</td></tr><tr><td>agama</td><td></td><td>ISLAM</td></tr><tr><td>s_nikah</td><td></td><td>BELUM</td></tr><tr><td>s_kepegawaian</td><td></td><td>AKTIF</td></tr><tr><td>jenis_kepegawaian</td><td></td><td>CAPEG</td></tr><tr><td>satuan_kerja</td><td></td><td>TIDAK TAHU</td></tr><tr><td>jabatan_terakhir</td><td></td><td>GURU BESAR</td></tr><tr><td>pendidikan_terakhir</td><td></td><td>S1</td></tr><tr><td>gol_ruang</td><td></td><td>IVB</td></tr><tr><td>satuan_organisasi</td><td></td><td>tidak tahu</td></tr><tr><td>kgb_terakhir</td><td></td><td>2020-05-09</td></tr><tr><td>jalan</td><td></td><td></td></tr><tr><td>kelurahan</td><td></td><td></td></tr><tr><td>kecamatan</td><td></td><td></td></tr><tr><td>kabupaten</td><td></td><td></td></tr><tr><td>provinsi</td><td></td><td></td></tr><tr><td>tinggi_badan</td><td></td><td></td></tr><tr><td>berat_badan</td><td></td><td></td></tr><tr><td>warna_rambut</td><td></td><td></td></tr><tr><td>bentuk_wajah</td><td></td><td></td></tr><tr><td>warna_kulit</td><td></td><td></td></tr><tr><td>ciri</td><td></td><td></td></tr><tr><td>cacat_tubuh</td><td></td><td></td></tr><tr><td>kegemaran</td><td></td><td></td></tr><tr><td>no_tlp</td><td></td><td></td></tr><tr><td>pangkat</td><td></td><td>PEMBINA UTAMA MUDA</td></tr><tr><td>kapreg</td><td></td><td></td></tr><tr><td>karis_su</td><td></td><td></td></tr><tr><td>kpe</td><td></td><td></td></tr><tr><td>taspem</td><td></td><td></td></tr><tr><td>npwp</td><td></td><td></td></tr><tr><td>nuptk</td><td></td><td></td></tr><tr><td>nidn</td><td></td><td></td></tr><tr><td>jurusan</td><td></td><td>Tasawuf Psikoterapi</td></tr><tr><td>fakultas</td><td></td><td>USHULUDDIN</td></tr></tbody></table>', 8, '2020-04-01 10:56:25', NULL),
(180, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', 'http://127.0.0.1:8000/admin/pegawai/edit-save/8', 'Update data pegawai A at Pegawai', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>password</td><td>$2y$10$v2ytM9FDKNgEjOruV/HpGOOvZGPaQrnwZ6lyDiTKNXzW.TgxyCbly</td><td></td></tr><tr><td>jalan</td><td></td><td>asd</td></tr><tr><td>kelurahan</td><td></td><td>asdf</td></tr><tr><td>kecamatan</td><td></td><td>fgh</td></tr><tr><td>kabupaten</td><td></td><td>qwe</td></tr><tr><td>provinsi</td><td></td><td></td></tr><tr><td>tinggi_badan</td><td></td><td></td></tr><tr><td>berat_badan</td><td></td><td></td></tr><tr><td>warna_rambut</td><td></td><td></td></tr><tr><td>bentuk_wajah</td><td></td><td>sfd</td></tr><tr><td>warna_kulit</td><td></td><td>zdxc</td></tr><tr><td>ciri</td><td></td><td>fsdghd</td></tr><tr><td>cacat_tubuh</td><td></td><td>hjf</td></tr><tr><td>kegemaran</td><td></td><td>ads</td></tr><tr><td>no_tlp</td><td></td><td>082112528756</td></tr><tr><td>kapreg</td><td></td><td>5551</td></tr><tr><td>karis_su</td><td></td><td>222544</td></tr><tr><td>kpe</td><td></td><td>11553</td></tr><tr><td>taspem</td><td></td><td>11426</td></tr><tr><td>npwp</td><td></td><td>1167996</td></tr><tr><td>nuptk</td><td></td><td>1112456</td></tr><tr><td>nidn</td><td></td><td>1235612</td></tr></tbody></table>', 8, '2020-04-01 10:57:46', NULL),
(181, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', 'http://127.0.0.1:8000/admin/keluarga/add-save', 'Add New Data Istri at Profil Keluarga', '', 8, '2020-04-01 11:07:22', NULL),
(182, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', 'http://127.0.0.1:8000/admin/keluarga/add-save', 'Add New Data Ayah at Profil Keluarga', '', 8, '2020-04-01 11:09:11', NULL),
(183, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', 'http://127.0.0.1:8000/admin/keluarga/add-save', 'Add New Data Ibu at Profil Keluarga', '', 8, '2020-04-01 11:10:57', NULL),
(184, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', 'http://127.0.0.1:8000/admin/keluarga/add-save', 'Add New Data Ayah Mertua at Profil Keluarga', '', 8, '2020-04-01 11:12:01', NULL),
(185, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', 'http://127.0.0.1:8000/admin/keluarga/add-save', 'Add New Data Ibu Mertua at Profil Keluarga', '', 8, '2020-04-01 11:13:04', NULL),
(186, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', 'http://127.0.0.1:8000/admin/keluarga/add-save', 'Add New Data saudara A at Profil Keluarga', '', 8, '2020-04-01 11:14:36', NULL),
(187, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', 'http://127.0.0.1:8000/admin/pendidikan/add-save', 'Add New Data kldmgkld at Pendidikan', '', 8, '2020-04-01 11:15:42', NULL),
(188, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', 'http://127.0.0.1:8000/admin/pendidikan/add-save', 'Add New Data jkasnjsna at Pendidikan', '', 8, '2020-04-01 11:16:45', NULL),
(189, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', 'http://127.0.0.1:8000/admin/pendidikan/add-save', 'Add New Data skdvbkdj at Pendidikan', '', 8, '2020-04-01 11:17:23', NULL),
(190, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', 'http://127.0.0.1:8000/admin/pendidikan/add-save', 'Add New Data kbsk at Pendidikan', '', 8, '2020-04-01 11:18:37', NULL),
(191, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', 'http://127.0.0.1:8000/admin/kursus_latihan/add-save', 'Add New Data ksdvn at Kursus / latihan', '', 8, '2020-04-01 11:19:39', NULL),
(192, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', 'http://127.0.0.1:8000/admin/riwayat_kepangkatan/add-save', 'Add New Data  at Riwayat Kepangkatan', '', 8, '2020-04-01 11:21:12', NULL),
(193, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', 'http://127.0.0.1:8000/admin/riwayat_jabatan/add-save', 'Add New Data  at Riwayat Jabatan', '', 8, '2020-04-01 11:29:39', NULL),
(194, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', 'http://127.0.0.1:8000/admin/tanda_jasa_penghargaan/add-save', 'Add New Data akjsnfksjn at Tanda Jasa / Penghargaan', '', 8, '2020-04-01 11:30:38', NULL),
(195, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', 'http://127.0.0.1:8000/admin/kunjungan_luar_negeri/add-save', 'Add New Data  at Kunjungan Luar Negeri', '', 8, '2020-04-01 11:31:56', NULL),
(196, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', 'http://127.0.0.1:8000/admin/pengalaman_mengajar/add-save', 'Add New Data dms gdlkn at Pengalaman Mengajar', '', 8, '2020-04-01 11:34:56', NULL),
(197, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', 'http://127.0.0.1:8000/admin/pengalaman_kegiatan/add-save', 'Add New Data Kegiatan Kerja Bakti at Pengalaman_kegiatan', '', 8, '2020-04-01 11:35:51', NULL),
(198, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', 'http://127.0.0.1:8000/admin/pengalaman_membimbing/add-save', 'Add New Data Fariz Maulana Herman at Pengalaman Membimbing', '', 8, '2020-04-01 11:36:33', NULL),
(199, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', 'http://127.0.0.1:8000/admin/pengalaman_penelitian/add-save', 'Add New Data penelitian prilaku pemain Free Fire at Pengalaman Penelitian', '', 8, '2020-04-01 11:37:00', NULL),
(200, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', 'http://127.0.0.1:8000/admin/pengalaman_karya_tulis/add-save', 'Add New Data tentang figure at Pengalaman Karya Tulis', '', 8, '2020-04-01 11:37:24', NULL),
(201, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', 'http://127.0.0.1:8000/admin/ket_organisasi/add-save', 'Add New Data jnlknoj at Keterangan Organisasi', '', 8, '2020-04-01 11:37:49', NULL),
(202, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'pegawai1@gmail.com logout', '', 8, '2020-04-01 11:39:06', NULL),
(203, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'pegawai2@gmail.com login with IP Address 127.0.0.1', '', 9, '2020-04-01 11:40:42', NULL),
(204, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', 'http://127.0.0.1:8000/admin/pegawai/edit-save/9', 'Update data pegawai B at Pegawai', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>password</td><td>$2y$10$OA50hwD6LluB2DLHVILolOa/aEMaCFpX9KwyRio/ROOIUwKiUVpJ2</td><td></td></tr><tr><td>nip</td><td></td><td>114444885566</td></tr><tr><td>tgl_lahir</td><td></td><td>2020-04-15</td></tr><tr><td>tempat_lahir</td><td></td><td>bandung</td></tr><tr><td>jk</td><td></td><td>PRIA</td></tr><tr><td>agama</td><td></td><td>ISLAM</td></tr><tr><td>s_nikah</td><td></td><td>BELUM</td></tr><tr><td>s_kepegawaian</td><td></td><td>AKTIF</td></tr><tr><td>jenis_kepegawaian</td><td></td><td>PNS</td></tr><tr><td>satuan_kerja</td><td></td><td>jhbhbh</td></tr><tr><td>jabatan_terakhir</td><td></td><td>ASISTEN AHLI MADYA</td></tr><tr><td>pendidikan_terakhir</td><td></td><td>S1</td></tr><tr><td>gol_ruang</td><td></td><td>IVA</td></tr><tr><td>satuan_organisasi</td><td></td><td>hbjhbkj</td></tr><tr><td>kgb_terakhir</td><td></td><td>2020-04-21</td></tr><tr><td>jalan</td><td></td><td>97987</td></tr><tr><td>kelurahan</td><td></td><td>987897</td></tr><tr><td>kecamatan</td><td></td><td>876876</td></tr><tr><td>kabupaten</td><td></td><td>9769786</td></tr><tr><td>provinsi</td><td></td><td></td></tr><tr><td>tinggi_badan</td><td></td><td></td></tr><tr><td>berat_badan</td><td></td><td></td></tr><tr><td>warna_rambut</td><td></td><td></td></tr><tr><td>bentuk_wajah</td><td></td><td>976976</td></tr><tr><td>warna_kulit</td><td></td><td>97987</td></tr><tr><td>ciri</td><td></td><td>khgkhg</td></tr><tr><td>cacat_tubuh</td><td></td><td>jbjbk</td></tr><tr><td>kegemaran</td><td></td><td>bbkjbk</td></tr><tr><td>no_tlp</td><td></td><td>082112528756</td></tr><tr><td>pangkat</td><td></td><td>PENATA MUDA TINGKAT I</td></tr><tr><td>kapreg</td><td></td><td>87687569</td></tr><tr><td>karis_su</td><td></td><td>9678798</td></tr><tr><td>kpe</td><td></td><td>858768</td></tr><tr><td>taspem</td><td></td><td>876854</td></tr><tr><td>npwp</td><td></td><td>786865</td></tr><tr><td>nuptk</td><td></td><td>786865564</td></tr><tr><td>nidn</td><td></td><td>7986897</td></tr><tr><td>jurusan</td><td></td><td>Ilmu Hadist</td></tr><tr><td>fakultas</td><td></td><td>USHULUDDIN</td></tr></tbody></table>', 9, '2020-04-01 11:43:49', NULL),
(205, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', 'http://127.0.0.1:8000/admin/keluarga/add-save', 'Add New Data Ayah A at Profil Keluarga', '', 9, '2020-04-01 11:47:24', NULL),
(206, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', 'http://127.0.0.1:8000/admin/keluarga/add-save', 'Add New Data Ibu at Profil Keluarga', '', 9, '2020-04-01 11:49:02', NULL),
(207, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', 'http://127.0.0.1:8000/admin/keluarga/add-save', 'Add New Data Ayah Mertua A at Profil Keluarga', '', 9, '2020-04-01 11:50:48', NULL),
(208, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', 'http://127.0.0.1:8000/admin/keluarga/add-save', 'Add New Data Ibu at Profil Keluarga', '', 9, '2020-04-01 11:52:38', NULL),
(209, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', 'http://127.0.0.1:8000/admin/keluarga/add-save', 'Add New Data Ibu Mertua at Profil Keluarga', '', 9, '2020-04-01 11:53:19', NULL),
(210, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', 'http://127.0.0.1:8000/admin/pendidikan/add-save', 'Add New Data kjhkjhkl at Pendidikan', '', 9, '2020-04-01 11:55:04', NULL),
(211, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', 'http://127.0.0.1:8000/admin/kursus_latihan/add-save', 'Add New Data Pelatihan Dasar Membuat Web at Kursus / latihan', '', 9, '2020-04-01 11:56:50', NULL),
(212, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@fu.uinsgd.com login with IP Address 127.0.0.1', '', 7, '2020-04-02 21:44:55', NULL),
(213, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@fu.uinsgd.com logout', '', 7, '2020-04-02 21:45:10', NULL),
(214, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'fariz.herman@gmail.com login with IP Address 127.0.0.1', '', 1, '2020-04-02 21:45:20', NULL),
(215, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'fariz.herman@gmail.com login with IP Address 127.0.0.1', '', 1, '2020-04-04 07:50:20', NULL),
(216, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'fariz.herman@gmail.com login with IP Address 127.0.0.1', '', 1, '2020-04-05 00:38:24', NULL),
(217, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'fariz.herman@gmail.com logout', '', 1, '2020-04-05 01:23:08', NULL),
(218, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@fu.uinsgd.com login with IP Address 127.0.0.1', '', 7, '2020-04-05 01:23:12', NULL),
(219, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@fu.uinsgd.com logout', '', 7, '2020-04-05 01:41:02', NULL),
(220, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'fariz.herman@gmail.com login with IP Address 127.0.0.1', '', 1, '2020-04-05 01:41:17', NULL),
(221, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'fariz.herman@gmail.com logout', '', 1, '2020-04-05 01:42:01', NULL),
(222, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@fu.uinsgd.com login with IP Address 127.0.0.1', '', 7, '2020-04-05 01:42:04', NULL),
(223, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@fu.uinsgd.com login with IP Address 127.0.0.1', '', 7, '2020-04-11 08:46:10', NULL),
(224, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/20', 'Update data Akun Management at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>8</td><td></td></tr></tbody></table>', 7, '2020-04-11 08:47:45', NULL),
(225, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@fu.uinsgd.com logout', '', 7, '2020-04-11 08:48:07', NULL),
(226, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'fariz.herman@gmail.com login with IP Address 127.0.0.1', '', 1, '2020-04-11 08:49:57', NULL),
(227, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'fariz.herman@gmail.com logout', '', 1, '2020-04-11 08:52:09', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_menus`
--

CREATE TABLE `cms_menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'url',
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `is_dashboard` tinyint(1) NOT NULL DEFAULT 0,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `cms_menus`
--

INSERT INTO `cms_menus` (`id`, `name`, `type`, `path`, `color`, `icon`, `parent_id`, `is_active`, `is_dashboard`, `id_cms_privileges`, `sorting`, `created_at`, `updated_at`) VALUES
(1, 'Pegawai', 'Route', 'AdminPegawai1ControllerGetIndex', 'normal', 'fa fa-user', 5, 1, 0, 1, 1, '2020-02-25 01:02:00', '2020-02-25 01:54:37'),
(2, 'Profil Keluarga', 'Route', 'AdminKeluarga1ControllerGetIndex', 'normal', 'fa fa-users', 5, 1, 0, 1, 2, '2020-02-25 01:30:01', '2020-02-25 01:54:50'),
(3, 'Pendidikan', 'Route', 'AdminPendidikan1ControllerGetIndex', 'normal', 'fa fa-edit', 6, 1, 0, 1, 1, '2020-02-25 01:39:00', '2020-02-25 01:56:04'),
(4, 'Kursus / latihan', 'Route', 'AdminKursusLatihanControllerGetIndex', 'normal', 'fa fa-edit', 6, 1, 0, 1, 2, '2020-02-25 01:47:10', '2020-02-25 01:56:23'),
(5, 'Profil Pegawai', 'URL', 'pegawai', 'normal', 'fa fa-user', 0, 1, 0, 1, 1, '2020-02-25 01:53:58', '2020-03-06 06:28:24'),
(6, 'Pendidikan', 'URL', 'pendidikan', 'normal', NULL, 0, 1, 0, 1, 2, '2020-02-25 01:55:20', '2020-03-06 06:29:04'),
(7, 'Riwayat Kepangkatan', 'Route', 'AdminRiwayatKepangkatan1ControllerGetIndex', 'normal', 'fa fa-edit', 9, 1, 0, 1, 1, '2020-02-25 01:57:55', '2020-02-26 05:42:53'),
(8, 'Riwayat Jabatan', 'Route', 'AdminRiwayatJabatan1ControllerGetIndex', 'normal', 'fa fa-edit', 9, 1, 0, 1, 2, '2020-02-25 04:31:44', '2020-02-26 05:43:07'),
(9, 'Riwayat Pekerjaan', 'URL', 'riwayat_pekerjaan', 'normal', NULL, 0, 1, 0, 1, 3, '2020-02-26 05:42:14', '2020-03-06 06:29:49'),
(10, 'Tanda Jasa / Penghargaan', 'Route', 'AdminTandaJasaPenghargaan1ControllerGetIndex', 'normal', 'fa fa-trophy', 0, 1, 0, 1, 4, '2020-02-26 05:59:59', '2020-03-06 06:29:56'),
(11, 'Kunjungan Luar Negeri', 'Route', 'AdminKunjunganLuarNegeri1ControllerGetIndex', 'normal', 'fa fa-edit', 15, 1, 0, 1, 1, '2020-02-26 06:08:03', '2020-02-26 06:28:22'),
(12, 'Pengalaman Mengajar', 'Route', 'AdminPengalamanMengajar1ControllerGetIndex', 'normal', 'fa fa-edit', 15, 1, 0, 1, 2, '2020-02-26 06:12:08', '2020-02-26 06:29:00'),
(13, 'Pengalaman Kegiatan', 'Route', 'AdminPengalamanKegiatan1ControllerGetIndex', 'normal', 'fa fa-edit', 15, 1, 0, 1, 3, '2020-02-26 06:30:00', '2020-02-26 06:31:43'),
(14, 'Pengalaman Membimbing', 'Route', 'AdminPengalamanMembimbing1ControllerGetIndex', 'normal', 'fa fa-edit', 15, 1, 0, 1, 4, '2020-02-26 06:36:03', '2020-02-26 06:37:30'),
(15, 'Pengalaman', 'URL', 'PENGALAMAN', 'normal', NULL, 0, 1, 0, 1, 5, '2020-02-26 06:43:22', '2020-03-06 06:30:03'),
(16, 'Pengalaman Penelitian', 'Route', 'AdminPengalamanPenelitianControllerGetIndex', 'normal', 'fa fa-edit', 18, 1, 0, 1, 1, '2020-02-26 06:50:45', '2020-02-26 06:52:01'),
(17, 'Pengalaman Karya Tulis', 'Route', 'AdminPengalamanKaryaTulisControllerGetIndex', 'normal', 'fa fa-edit', 18, 1, 0, 1, 2, '2020-02-26 06:52:59', '2020-02-26 06:59:08'),
(18, 'Penelitian / Karya tulis', 'URL', 'penelitian_karya_tulis', 'normal', NULL, 0, 1, 0, 1, 6, '2020-02-26 06:56:18', '2020-03-06 06:30:31'),
(19, 'Keterangan Organisasi', 'Route', 'AdminKetOrganisasiControllerGetIndex', 'normal', 'fa fa-edit', 0, 1, 0, 1, 7, '2020-02-26 08:35:27', '2020-03-06 06:30:42'),
(20, 'Akun Management', 'Route', 'AdminPegawai26ControllerGetIndex', 'normal', 'fa fa-users', 0, 1, 0, 1, 8, '2020-02-26 08:39:27', '2020-04-11 08:47:45');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_menus_privileges`
--

CREATE TABLE `cms_menus_privileges` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cms_menus` int(11) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `cms_menus_privileges`
--

INSERT INTO `cms_menus_privileges` (`id`, `id_cms_menus`, `id_cms_privileges`) VALUES
(11, 1, 3),
(12, 1, 2),
(13, 1, 1),
(14, 2, 3),
(15, 2, 2),
(16, 2, 1),
(23, 3, 3),
(24, 3, 2),
(25, 3, 1),
(26, 4, 3),
(27, 4, 2),
(28, 4, 1),
(37, 7, 3),
(38, 7, 2),
(39, 7, 1),
(40, 8, 3),
(41, 8, 2),
(42, 8, 1),
(52, 11, 3),
(53, 11, 2),
(54, 11, 1),
(55, 12, 3),
(56, 12, 2),
(57, 12, 1),
(60, 13, 3),
(61, 13, 2),
(62, 13, 1),
(64, 14, 3),
(65, 14, 2),
(66, 14, 1),
(74, 16, 3),
(75, 16, 2),
(76, 16, 1),
(78, NULL, 3),
(79, NULL, 2),
(80, NULL, 1),
(84, 17, 3),
(85, 17, 2),
(86, 17, 1),
(95, 5, 3),
(96, 5, 2),
(97, 6, 3),
(98, 6, 2),
(99, 9, 3),
(100, 9, 2),
(101, 10, 3),
(102, 10, 2),
(103, 15, 3),
(104, 15, 2),
(105, 18, 3),
(106, 18, 2),
(107, 19, 3),
(108, 19, 2),
(112, 20, 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_moduls`
--

CREATE TABLE `cms_moduls` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_protected` tinyint(1) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `cms_moduls`
--

INSERT INTO `cms_moduls` (`id`, `name`, `icon`, `path`, `table_name`, `controller`, `is_protected`, `is_active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Notifications', 'fa fa-cog', 'notifications', 'cms_notifications', 'NotificationsController', 1, 1, '2020-02-25 00:59:36', NULL, NULL),
(2, 'Privileges', 'fa fa-cog', 'privileges', 'cms_privileges', 'PrivilegesController', 1, 1, '2020-02-25 00:59:36', NULL, NULL),
(3, 'Privileges Roles', 'fa fa-cog', 'privileges_roles', 'cms_privileges_roles', 'PrivilegesRolesController', 1, 1, '2020-02-25 00:59:36', NULL, NULL),
(4, 'Users Management', 'fa fa-users', 'users', 'cms_users', 'AdminCmsUsersController', 0, 1, '2020-02-25 00:59:36', NULL, NULL),
(5, 'Settings', 'fa fa-cog', 'settings', 'cms_settings', 'SettingsController', 1, 1, '2020-02-25 00:59:36', NULL, NULL),
(6, 'Module Generator', 'fa fa-database', 'module_generator', 'cms_moduls', 'ModulsController', 1, 1, '2020-02-25 00:59:36', NULL, NULL),
(7, 'Menu Management', 'fa fa-bars', 'menu_management', 'cms_menus', 'MenusController', 1, 1, '2020-02-25 00:59:36', NULL, NULL),
(8, 'Email Templates', 'fa fa-envelope-o', 'email_templates', 'cms_email_templates', 'EmailTemplatesController', 1, 1, '2020-02-25 00:59:36', NULL, NULL),
(9, 'Statistic Builder', 'fa fa-dashboard', 'statistic_builder', 'cms_statistics', 'StatisticBuilderController', 1, 1, '2020-02-25 00:59:36', NULL, NULL),
(10, 'API Generator', 'fa fa-cloud-download', 'api_generator', '', 'ApiCustomController', 1, 1, '2020-02-25 00:59:36', NULL, NULL),
(11, 'Log User Access', 'fa fa-flag-o', 'logs', 'cms_logs', 'LogsController', 1, 1, '2020-02-25 00:59:36', NULL, NULL),
(12, 'Pegawai', 'fa fa-user', 'pegawai', 'pegawai', 'AdminPegawai1Controller', 0, 0, '2020-02-25 01:01:59', NULL, NULL),
(13, 'Profil Keluarga', 'fa fa-users', 'keluarga', 'keluarga', 'AdminKeluarga1Controller', 0, 0, '2020-02-25 01:30:01', NULL, NULL),
(14, 'Pendidikan', 'fa fa-edit', 'pendidikan', 'pendidikan', 'AdminPendidikan1Controller', 0, 0, '2020-02-25 01:39:00', NULL, NULL),
(15, 'Kursus / latihan', 'fa fa-edit', 'kursus_latihan', 'kursus_latihan', 'AdminKursusLatihanController', 0, 0, '2020-02-25 01:47:10', NULL, NULL),
(16, 'Riwayat Kepangkatan', 'fa fa-edit', 'riwayat_kepangkatan', 'riwayat_kepangkatan', 'AdminRiwayatKepangkatan1Controller', 0, 0, '2020-02-25 01:57:55', NULL, NULL),
(17, 'Riwayat Jabatan', 'fa fa-edit', 'riwayat_jabatan', 'riwayat_jabatan', 'AdminRiwayatJabatan1Controller', 0, 0, '2020-02-25 04:31:44', NULL, NULL),
(18, 'Tanda Jasa / Penghargaan', 'fa fa-trophy', 'tanda_jasa_penghargaan', 'tanda_jasa_penghargaan', 'AdminTandaJasaPenghargaan1Controller', 0, 0, '2020-02-26 05:59:59', NULL, NULL),
(19, 'Kunjungan Luar Negeri', 'fa fa-edit', 'kunjungan_luar_negeri', 'kunjungan_luar_negeri', 'AdminKunjunganLuarNegeri1Controller', 0, 0, '2020-02-26 06:08:03', NULL, NULL),
(20, 'Pengalaman Mengajar', 'fa fa-edit', 'pengalaman_mengajar', 'pengalaman_mengajar', 'AdminPengalamanMengajar1Controller', 0, 0, '2020-02-26 06:12:07', NULL, NULL),
(21, 'Pengalaman_kegiatan', 'fa fa-glass', 'pengalaman_kegiatan', 'pengalaman_kegiatan', 'AdminPengalamanKegiatan1Controller', 0, 0, '2020-02-26 06:29:59', NULL, NULL),
(22, 'Pengalaman Membimbing', 'fa fa-edit', 'pengalaman_membimbing', 'pengalaman_membimbing', 'AdminPengalamanMembimbing1Controller', 0, 0, '2020-02-26 06:36:02', NULL, NULL),
(23, 'Pengalaman Penelitian', 'fa fa-edit', 'pengalaman_penelitian', 'pengalaman_penelitian', 'AdminPengalamanPenelitianController', 0, 0, '2020-02-26 06:50:44', NULL, NULL),
(24, 'Pengalaman Karya Tulis', 'fa fa-edit', 'pengalaman_karya_tulis', 'pengalaman_karya_tulis', 'AdminPengalamanKaryaTulisController', 0, 0, '2020-02-26 06:52:59', NULL, NULL),
(25, 'Keterangan Organisasi', 'fa fa-edit', 'ket_organisasi', 'ket_organisasi', 'AdminKetOrganisasiController', 0, 0, '2020-02-26 08:35:27', NULL, NULL),
(26, 'Akun Management', 'fa fa-users', 'pegawai26', 'pegawai', 'AdminPegawai26Controller', 0, 0, '2020-02-26 08:39:27', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_notifications`
--

CREATE TABLE `cms_notifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cms_users` int(11) DEFAULT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_privileges`
--

CREATE TABLE `cms_privileges` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_superadmin` tinyint(1) DEFAULT NULL,
  `theme_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `cms_privileges`
--

INSERT INTO `cms_privileges` (`id`, `name`, `is_superadmin`, `theme_color`, `created_at`, `updated_at`) VALUES
(1, 'Super Administrator', 1, 'skin-red', '2020-02-25 00:59:36', NULL),
(2, 'pegawai', 0, 'skin-green', NULL, NULL),
(3, 'admin', 0, 'skin-red', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_privileges_roles`
--

CREATE TABLE `cms_privileges_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `is_visible` tinyint(1) DEFAULT NULL,
  `is_create` tinyint(1) DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `is_edit` tinyint(1) DEFAULT NULL,
  `is_delete` tinyint(1) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `id_cms_moduls` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `cms_privileges_roles`
--

INSERT INTO `cms_privileges_roles` (`id`, `is_visible`, `is_create`, `is_read`, `is_edit`, `is_delete`, `id_cms_privileges`, `id_cms_moduls`, `created_at`, `updated_at`) VALUES
(32, 1, 1, 1, 1, 1, 2, 25, NULL, NULL),
(33, 1, 1, 1, 1, 1, 2, 19, NULL, NULL),
(34, 1, 1, 1, 1, 1, 2, 15, NULL, NULL),
(35, 1, 0, 1, 1, 0, 2, 12, NULL, NULL),
(36, 1, 1, 1, 1, 1, 2, 14, NULL, NULL),
(37, 1, 1, 1, 1, 1, 2, 24, NULL, NULL),
(38, 1, 1, 1, 1, 1, 2, 22, NULL, NULL),
(39, 1, 1, 1, 1, 1, 2, 20, NULL, NULL),
(40, 1, 1, 1, 1, 1, 2, 23, NULL, NULL),
(41, 1, 1, 1, 1, 1, 2, 21, NULL, NULL),
(42, 1, 1, 1, 1, 1, 2, 13, NULL, NULL),
(43, 1, 1, 1, 1, 1, 2, 17, NULL, NULL),
(44, 1, 1, 1, 1, 1, 2, 16, NULL, NULL),
(45, 1, 1, 1, 1, 1, 2, 18, NULL, NULL),
(46, 1, 1, 1, 1, 1, 3, 26, NULL, NULL),
(47, 1, 1, 1, 1, 1, 3, 25, NULL, NULL),
(48, 1, 1, 1, 1, 1, 3, 19, NULL, NULL),
(49, 1, 1, 1, 1, 1, 3, 15, NULL, NULL),
(50, 1, 1, 1, 1, 1, 3, 12, NULL, NULL),
(51, 1, 1, 1, 1, 1, 3, 14, NULL, NULL),
(52, 1, 1, 1, 1, 1, 3, 24, NULL, NULL),
(53, 1, 1, 1, 1, 1, 3, 22, NULL, NULL),
(54, 1, 1, 1, 1, 1, 3, 20, NULL, NULL),
(55, 1, 1, 1, 1, 1, 3, 23, NULL, NULL),
(56, 1, 1, 1, 1, 1, 3, 21, NULL, NULL),
(57, 1, 1, 1, 1, 1, 3, 13, NULL, NULL),
(58, 1, 1, 1, 1, 1, 3, 17, NULL, NULL),
(59, 1, 1, 1, 1, 1, 3, 16, NULL, NULL),
(60, 1, 1, 1, 1, 1, 3, 18, NULL, NULL),
(77, 1, 1, 1, 1, 1, 1, 26, NULL, NULL),
(78, 1, 1, 1, 1, 1, 1, 25, NULL, NULL),
(79, 1, 1, 1, 1, 1, 1, 19, NULL, NULL),
(80, 1, 1, 1, 1, 1, 1, 15, NULL, NULL),
(81, 1, 1, 1, 1, 1, 1, 12, NULL, NULL),
(82, 1, 1, 1, 1, 1, 1, 14, NULL, NULL),
(83, 1, 1, 1, 1, 1, 1, 24, NULL, NULL),
(84, 1, 1, 1, 1, 1, 1, 22, NULL, NULL),
(85, 1, 1, 1, 1, 1, 1, 20, NULL, NULL),
(86, 1, 1, 1, 1, 1, 1, 23, NULL, NULL),
(87, 1, 1, 1, 1, 1, 1, 21, NULL, NULL),
(88, 1, 1, 1, 1, 1, 1, 13, NULL, NULL),
(89, 1, 1, 1, 1, 1, 1, 17, NULL, NULL),
(90, 1, 1, 1, 1, 1, 1, 16, NULL, NULL),
(91, 1, 1, 1, 1, 1, 1, 18, NULL, NULL),
(92, 1, 1, 1, 1, 1, 1, 4, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_settings`
--

CREATE TABLE `cms_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_input_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dataenum` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `helper` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `group_setting` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `cms_settings`
--

INSERT INTO `cms_settings` (`id`, `name`, `content`, `content_input_type`, `dataenum`, `helper`, `created_at`, `updated_at`, `group_setting`, `label`) VALUES
(1, 'login_background_color', NULL, 'text', NULL, 'Input hexacode', '2020-02-25 00:59:37', NULL, 'Login Register Style', 'Login Background Color'),
(2, 'login_font_color', NULL, 'text', NULL, 'Input hexacode', '2020-02-25 00:59:37', NULL, 'Login Register Style', 'Login Font Color'),
(3, 'login_background_image', 'uploads/2020-02/9bf0ed779a1f02922b15903fcfc45a12.jpg', 'upload_image', NULL, NULL, '2020-02-25 00:59:37', NULL, 'Login Register Style', 'Login Background Image'),
(4, 'email_sender', 'support@crudbooster.com', 'text', NULL, NULL, '2020-02-25 00:59:37', NULL, 'Email Setting', 'Email Sender'),
(5, 'smtp_driver', 'mail', 'select', 'smtp,mail,sendmail', NULL, '2020-02-25 00:59:37', NULL, 'Email Setting', 'Mail Driver'),
(6, 'smtp_host', '', 'text', NULL, NULL, '2020-02-25 00:59:37', NULL, 'Email Setting', 'SMTP Host'),
(7, 'smtp_port', '25', 'text', NULL, 'default 25', '2020-02-25 00:59:37', NULL, 'Email Setting', 'SMTP Port'),
(8, 'smtp_username', '', 'text', NULL, NULL, '2020-02-25 00:59:37', NULL, 'Email Setting', 'SMTP Username'),
(9, 'smtp_password', '', 'text', NULL, NULL, '2020-02-25 00:59:37', NULL, 'Email Setting', 'SMTP Password'),
(10, 'appname', 'USHULUDDIN', 'text', NULL, NULL, '2020-02-25 00:59:37', NULL, 'Application Setting', 'Application Name'),
(11, 'default_paper_size', 'Legal', 'text', NULL, 'Paper size, ex : A4, Legal, etc', '2020-02-25 00:59:37', NULL, 'Application Setting', 'Default Paper Print Size'),
(12, 'logo', 'uploads/2020-02/42c262fc69358de2a04cfeec648331c1.png', 'upload_image', NULL, NULL, '2020-02-25 00:59:37', NULL, 'Application Setting', 'Logo'),
(13, 'favicon', 'uploads/2020-02/f83274a291b735cf253faf94fb37d167.jpg', 'upload_image', NULL, NULL, '2020-02-25 00:59:37', NULL, 'Application Setting', 'Favicon'),
(14, 'api_debug_mode', 'true', 'select', 'true,false', NULL, '2020-02-25 00:59:37', NULL, 'Application Setting', 'API Debug Mode'),
(15, 'google_api_key', NULL, 'text', NULL, NULL, '2020-02-25 00:59:37', NULL, 'Application Setting', 'Google API Key'),
(16, 'google_fcm_key', NULL, 'text', NULL, NULL, '2020-02-25 00:59:37', NULL, 'Application Setting', 'Google FCM Key');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_statistics`
--

CREATE TABLE `cms_statistics` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_statistic_components`
--

CREATE TABLE `cms_statistic_components` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cms_statistics` int(11) DEFAULT NULL,
  `componentID` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `component_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area_name` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `config` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_users`
--

CREATE TABLE `cms_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `cms_users`
--

INSERT INTO `cms_users` (`id`, `name`, `photo`, `email`, `password`, `id_cms_privileges`, `created_at`, `updated_at`, `status`) VALUES
(1, 'Super Admin', NULL, 'admin@crudbooster.com', '$2y$10$wB/QVHy/piSM.4AZlLb./OXF4iJLk.CiOJ7Cdkwobk5t2.tiES22y', 1, '2020-02-25 00:59:36', NULL, 'Active'),
(3, 'kodok', 'uploads/1/2020-02/user.jpg', 'kodok@uinsgd.com', '$2y$10$V.kyPwluOr7lWjbwHs2oHOs70DvSRBaRye7fe6r4ozKhPHhwwwQLe', 2, '2020-02-27 03:45:24', '2020-02-27 04:20:33', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `keluarga`
--

CREATE TABLE `keluarga` (
  `id` int(10) UNSIGNED NOT NULL,
  `dosen_id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_lahir` date NOT NULL,
  `tempat_lahir` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pekerjaan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_nikah` date NOT NULL,
  `sebagai` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jk_anak` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `keluarga`
--

INSERT INTO `keluarga` (`id`, `dosen_id`, `nama`, `tgl_lahir`, `tempat_lahir`, `pekerjaan`, `keterangan`, `tgl_nikah`, `sebagai`, `jk_anak`, `created_at`, `updated_at`) VALUES
(1, 1, 'Muhammad Diza Aulia', '2020-02-11', 'Kuningan', 'GURU,DOSEN', 'MENINGGAL', '2020-02-11', 'IBU MERTUA', 'LAKI-LAKI', '2020-02-26 09:56:21', NULL),
(2, 4, 'jshafhj', '2020-03-05', 'Kuningan', 'GURU,DOSEN', 'MENINGGAL', '2020-03-12', 'SUAMI', 'PEREMPUAN', '2020-02-27 05:03:16', NULL),
(3, 8, 'Istri', '2020-04-09', 'bogor', 'GURU,DOSEN', 'HIDUP', '2020-04-20', 'ISTRI', 'PEREMPUAN', '2020-04-01 11:07:22', NULL),
(4, 8, 'Ayah', '2020-04-15', 'Bogor', 'PNS', 'HIDUP', '2020-04-24', 'AYAH', 'LAKI-LAKI', '2020-04-01 11:09:11', NULL),
(5, 8, 'Ibu', '2020-04-22', 'Bogor', 'PETANI', 'HIDUP', '2020-04-28', 'IBU', 'PEREMPUAN', '2020-04-01 11:10:57', NULL),
(6, 8, 'Ayah Mertua', '2020-04-30', 'Bogor', 'PENGUSAHA', 'HIDUP', '2020-04-14', 'AYAH MERTUA', 'LAKI-LAKI', '2020-04-01 11:12:01', NULL),
(7, 8, 'Ibu Mertua', '2020-04-22', 'bogor', 'PNS', 'HIDUP', '2020-04-23', 'IBU MERTUA', 'PEREMPUAN', '2020-04-01 11:13:04', NULL),
(8, 8, 'saudara A', '2020-04-10', 'Bogor', 'IBU RUMAH TANGGA', 'HIDUP', '2020-04-30', 'SAUDARA KANDUNG', 'LAKI-LAKI', '2020-04-01 11:14:36', NULL),
(9, 9, 'Ayah A', '2020-04-14', 'bogor', 'PNS', 'HIDUP', '2020-04-16', 'AYAH', 'LAKI-LAKI', '2020-04-01 11:47:24', NULL),
(10, 9, 'Ibu', '2020-04-08', 'Bogor', 'PNS', 'HIDUP', '2020-04-14', 'IBU', 'PEREMPUAN', '2020-04-01 11:49:02', NULL),
(11, 9, 'Ayah Mertua A', '2020-04-20', 'Bogor', 'PETANI', 'HIDUP', '2020-04-14', 'AYAH MERTUA', 'LAKI-LAKI', '2020-04-01 11:50:48', NULL),
(12, 9, 'Ibu', '2020-04-06', 'Bogor', 'PETANI', 'HIDUP', '2020-04-13', 'IBU', 'PEREMPUAN', '2020-04-01 11:52:38', NULL),
(13, 9, 'Ibu Mertua', '2020-04-21', 'Bogor', 'PETERNAK', 'HIDUP', '2020-04-08', 'IBU MERTUA', 'PEREMPUAN', '2020-04-01 11:53:19', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `ket_organisasi`
--

CREATE TABLE `ket_organisasi` (
  `id` int(10) UNSIGNED NOT NULL,
  `dosen_id` int(10) UNSIGNED NOT NULL,
  `jenis` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_organisasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kedudukan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `periode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tempat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_pimpinan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `ket_organisasi`
--

INSERT INTO `ket_organisasi` (`id`, `dosen_id`, `jenis`, `nama_organisasi`, `kedudukan`, `periode`, `tempat`, `nama_pimpinan`, `created_at`, `updated_at`) VALUES
(1, 1, 'SLTA KE BAWAH', 'AFA', 'svq', 'dv', 'svf', 'sv', '2020-02-26 13:27:28', NULL),
(2, 8, 'KULIAH', 'jnlknoj', 'nkjn', 'jhg', 'kjhkjh', 'jknnl', '2020-04-01 11:37:49', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kunjungan_luar_negeri`
--

CREATE TABLE `kunjungan_luar_negeri` (
  `id` int(10) UNSIGNED NOT NULL,
  `dosen_id` int(10) UNSIGNED NOT NULL,
  `negara` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tahun` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lamanya` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `yg_membiayai` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `kunjungan_luar_negeri`
--

INSERT INTO `kunjungan_luar_negeri` (`id`, `dosen_id`, `negara`, `tahun`, `lamanya`, `yg_membiayai`, `created_at`, `updated_at`) VALUES
(1, 1, 'dknvlwnj', 'sknvlsjnvs', 'ldvndkjn', 'jnvkjn', '2020-02-26 13:10:21', NULL),
(2, 8, 'Malaysia', '2020', 'kasfksjn', 'kasnfkjsn', '2020-04-01 11:31:56', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kursus_latihan`
--

CREATE TABLE `kursus_latihan` (
  `id` int(10) UNSIGNED NOT NULL,
  `dosen_id` int(10) UNSIGNED NOT NULL,
  `nama_kursus_latihan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `periode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jam` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hari` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bulan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `penyelenggara` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jenis` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `kursus_latihan`
--

INSERT INTO `kursus_latihan` (`id`, `dosen_id`, `nama_kursus_latihan`, `periode`, `jam`, `hari`, `bulan`, `penyelenggara`, `jenis`, `created_at`, `updated_at`) VALUES
(1, 1, 'njkbkjb', 'bkbkj', 'bkbkjb', 'kjbkjb', 'kjbkjb', 'kjbkj', 'DALAM NEGERI', '2020-02-26 10:41:36', NULL),
(2, 4, 'jksbvakb', 'kjbasvkjb', 'kjbsk', 'kjbsv', 'kjbskv', 'kjbvksj', 'DALAM NEGERI', '2020-02-27 05:49:01', NULL),
(3, 8, 'ksdvn', 'lsnvjn', 'snv', 'ks vks', 'skjv', 'snflksn', 'DALAM NEGERI', '2020-04-01 11:19:39', NULL),
(4, 9, 'Pelatihan Dasar Membuat Web', '2020/2021', '14.20', 'Senin', 'Maret', 'Jurusan Informatika', 'DALAM NEGERI', '2020-04-01 11:56:50', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2016_08_07_145904_add_table_cms_apicustom', 1),
(2, '2016_08_07_150834_add_table_cms_dashboard', 1),
(3, '2016_08_07_151210_add_table_cms_logs', 1),
(4, '2016_08_07_151211_add_details_cms_logs', 1),
(5, '2016_08_07_152014_add_table_cms_privileges', 1),
(6, '2016_08_07_152214_add_table_cms_privileges_roles', 1),
(7, '2016_08_07_152320_add_table_cms_settings', 1),
(8, '2016_08_07_152421_add_table_cms_users', 1),
(9, '2016_08_07_154624_add_table_cms_menus_privileges', 1),
(10, '2016_08_07_154624_add_table_cms_moduls', 1),
(11, '2016_08_17_225409_add_status_cms_users', 1),
(12, '2016_08_20_125418_add_table_cms_notifications', 1),
(13, '2016_09_04_033706_add_table_cms_email_queues', 1),
(14, '2016_09_16_035347_add_group_setting', 1),
(15, '2016_09_16_045425_add_label_setting', 1),
(16, '2016_09_17_104728_create_nullable_cms_apicustom', 1),
(17, '2016_10_01_141740_add_method_type_apicustom', 1),
(18, '2016_10_01_141846_add_parameters_apicustom', 1),
(19, '2016_10_01_141934_add_responses_apicustom', 1),
(20, '2016_10_01_144826_add_table_apikey', 1),
(21, '2016_11_14_141657_create_cms_menus', 1),
(22, '2016_11_15_132350_create_cms_email_templates', 1),
(23, '2016_11_15_190410_create_cms_statistics', 1),
(24, '2016_11_17_102740_create_cms_statistic_components', 1),
(25, '2017_06_06_164501_add_deleted_at_cms_moduls', 1),
(26, '2020_02_24_094323_pegawai', 1),
(27, '2020_02_24_094710_keluarga', 1),
(28, '2020_02_24_095512_riwayat_kepangkatan', 1),
(29, '2020_02_24_095631_riwayat_jabatan', 1),
(30, '2020_02_24_100706_tanda_jasa_penghargaan', 1),
(31, '2020_02_24_125825_add_on_t_b_tanda_jasa', 1),
(32, '2020_02_24_135301_pendidikan', 1),
(33, '2020_02_24_142514_kursus_latihan', 1),
(34, '2020_02_24_143206_kunjungan_luar_negeri', 1),
(35, '2020_02_24_143511_pengalaman_mengajar', 1),
(36, '2020_02_24_143644_pengalaman_kegiatan', 1),
(37, '2020_02_24_143804_pengalaman_membimbing', 1),
(38, '2020_02_25_062513_pengalaman_penelitian', 1),
(39, '2020_02_25_063321_pengalaman_karya_tulis', 1),
(40, '2020_02_25_064138_ket_organisasi', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pegawai`
--

CREATE TABLE `pegawai` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `nip` bigint(20) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `tempat_lahir` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jk` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `agama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `s_nikah` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `s_kepegawaian` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jenis_kepegawaian` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `satuan_kerja` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jabatan_terakhir` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pendidikan_terakhir` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gol_ruang` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `satuan_organisasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kgb_terakhir` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jalan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kelurahan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kecamatan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kabupaten` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provinsi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tinggi_badan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `berat_badan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `warna_rambut` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bentuk_wajah` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `warna_kulit` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ciri` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cacat_tubuh` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kegemaran` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_tlp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pangkat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kapreg` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `karis_su` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kpe` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `taspem` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `npwp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nuptk` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nidn` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jurusan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fakultas` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pegawai`
--

INSERT INTO `pegawai` (`id`, `name`, `photo`, `email`, `password`, `id_cms_privileges`, `nip`, `tgl_lahir`, `tempat_lahir`, `jk`, `agama`, `s_nikah`, `s_kepegawaian`, `jenis_kepegawaian`, `satuan_kerja`, `jabatan_terakhir`, `pendidikan_terakhir`, `gol_ruang`, `satuan_organisasi`, `kgb_terakhir`, `jalan`, `kelurahan`, `kecamatan`, `kabupaten`, `provinsi`, `tinggi_badan`, `berat_badan`, `warna_rambut`, `bentuk_wajah`, `warna_kulit`, `ciri`, `cacat_tubuh`, `kegemaran`, `no_tlp`, `pangkat`, `kapreg`, `karis_su`, `kpe`, `taspem`, `npwp`, `nuptk`, `nidn`, `jurusan`, `fakultas`, `created_at`, `updated_at`) VALUES
(1, 'Fariz Maulana Herman', 'uploads/1/2020-02/user.jpg', 'fariz.herman@gmail.com', '$2y$10$oo7wXvRsDF3VAm9Wb7RXcewfytLt3qxI6c6r4nHPKqDmF9BPxI5QO', 3, 1167050062, '2020-02-24', 'B', 'PRIA', 'ISLAM', 'BELUM', 'AKTIF', 'CAPEG', 'TIDAK TAHU', 'ASISTEN AHLI MADYA', 'S1', 'IIIC', 'tidak tahu', '2020-02-23', 'KBKBHV', 'HBJBJHB', 'JBJB', 'KKBKBH', NULL, NULL, NULL, NULL, 'KBJHVGV', 'KBJHVG', 'JHVJHV', 'JVJHV', 'JHVJHV', 'HVHJV', 'PEMBINA INGKAT I', 'asas', 'ASDFSA', 'SDFVDB', 'C C', 'SDFVDTB', 'DFBDGB', 'DVD', 'Tasawuf Psikoterapi', 'USHULUDDIN', '2020-02-26 09:06:23', '2020-03-06 03:15:32'),
(2, 'BAMBANG', 'uploads/1/2020-02/user.jpg', 'bambang@crudbooster.com', '$2y$10$CZJvzFZJMUrspX54aLn5aezAoEtWqcAjl8mT0iIM8GGA1AGEjplVm', 2, 1167050060, '2020-02-16', 'Bogor', 'PRIA', 'ISLAM', 'BELUM', 'AKTIF', 'PNS', 'TIDAK TAHU', 'ASISTEN AHLI MADYA', 'S1', 'IIID', 'tidak tahu', '2020-02-24', 'jhvhjvhjv', 'vhvhjvhjv', 'hjvhjvhjv', 'hjvhjvhjv', NULL, NULL, NULL, NULL, 'hjvhj', 'vhj', 'v', 'hjv', 'hjvhjvhjvhjv', 'jhvkvh', 'PENATA TINGKAT I', 'hbjhbkj', 'k , nbhb', 'bjhvjvbjhv', 'jhvvhjvjhv', 'jhvhjvkvkhv', 'jhvjhvhjv', 'jhvhjvkjv', 'Studi Agama-agama', 'USHULUDDIN', '2020-02-26 09:08:11', NULL),
(3, 'UDIN', 'uploads/1/2020-02/user.jpg', 'udin@crudbooster.com', '$2y$10$Mw8mXEqPyTiCz70rv.7rbO9K71PfoQPd1HY0YpLqt5MXdbZ97loDq', 2, 1167050061, '2020-02-17', 'Bogor', 'PRIA', 'ISLAM', 'BELUM', 'AKTIF', 'CAPEG', 'TIDAK TAHU', 'ASISTEN', 'S1', 'IVA', 'tidak tahu', '2020-02-18', 'vgv', 'hbjhv', 'gvghv', 'jhvjh', NULL, NULL, NULL, NULL, 'jhvj', 'hvjv', 'jhvjh', 'vjhjv', 'jvvj', 'hvjhv', 'PENATA', 'poipo', 'poikjn', 'jkjb', 'hbjhbh', 'jvjhvbgv', 'vhgv', 'jh', 'Ilmu Hadist', 'USHULUDDIN', '2020-02-26 09:09:43', NULL),
(4, 'MAMAT', 'uploads/1/2020-02/user.jpg', 'mamat@crudbooster.com', '$2y$10$BWLNyu9VLMFko4asnkDX6.9OR0l6x9QV6z6cO6TLXva3bRucf/ckK', 2, 1167050063, '2020-03-12', 'Bogor', 'PRIA', 'ISLAM', 'BELUM', 'AKTIF', 'PNS', 'TIDAK TAHU', 'ASISTEN AHLI MADYA', 'S2', 'IVA', 'tidak tahu', '2020-03-26', 'jvgv', 'kbjhvy', 'ghvgv', 'lnkn', NULL, NULL, NULL, NULL, 'kbjkb', 'hgvhgcv', 'mnkjb', 'hgcfc', 'knbkjb', 'gchgc', 'PENATA', 'iuugg', 'jbvjgvgu', 'nbjhvygc', 'kbjhvg', 'kbhgv', 'kbjhv', 'knkhjv', 'Tasawuf Psikoterapi', 'USHULUDDIN', '2020-02-26 09:11:18', '2020-02-27 04:12:40'),
(7, 'Super Admin', 'uploads/1/2020-02/user.jpg', 'admin@fu.uinsgd.com', '$2y$10$32BPyCkihVceprCQcAJde.X4FqRL4HnI3zLOaf/ZxzMJFSmfiHRKC', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-27 03:40:04', '2020-03-06 03:15:48'),
(8, 'pegawai A', 'uploads/1/2020-04/user.jpg', 'pegawai1@gmail.com', '$2y$10$v2ytM9FDKNgEjOruV/HpGOOvZGPaQrnwZ6lyDiTKNXzW.TgxyCbly', 2, 111, '2020-04-16', 'bogor', 'PRIA', 'ISLAM', 'BELUM', 'AKTIF', 'CAPEG', 'TIDAK TAHU', 'GURU BESAR', 'S1', 'IVB', 'tidak tahu', '2020-05-09', 'asd', 'asdf', 'fgh', 'qwe', NULL, NULL, NULL, NULL, 'sfd', 'zdxc', 'fsdghd', 'hjf', 'ads', '082112528756', 'PEMBINA UTAMA MUDA', '5551', '222544', '11553', '11426', '1167996', '1112456', '1235612', 'Tasawuf Psikoterapi', 'USHULUDDIN', '2020-04-01 10:44:55', '2020-04-01 10:57:46'),
(9, 'pegawai B', 'uploads/1/2020-04/user.jpg', 'pegawai2@gmail.com', '$2y$10$OA50hwD6LluB2DLHVILolOa/aEMaCFpX9KwyRio/ROOIUwKiUVpJ2', 2, 114444885566, '2020-04-15', 'bandung', 'PRIA', 'ISLAM', 'BELUM', 'AKTIF', 'PNS', 'jhbhbh', 'ASISTEN AHLI MADYA', 'S1', 'IVA', 'hbjhbkj', '2020-04-21', '97987', '987897', '876876', '9769786', NULL, NULL, NULL, NULL, '976976', '97987', 'khgkhg', 'jbjbk', 'bbkjbk', '082112528756', 'PENATA MUDA TINGKAT I', '87687569', '9678798', '858768', '876854', '786865', '786865564', '7986897', 'Ilmu Hadist', 'USHULUDDIN', '2020-04-01 10:46:00', '2020-04-01 11:43:49'),
(10, 'pegawai C', 'uploads/1/2020-04/user.jpg', 'pegawai3@gmail.com', '$2y$10$ABZTWnfns3KgqcVyQnr7suajs.AYaasLv5AbZxxYgFhalIT2ZqOUC', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-01 10:47:02', NULL),
(11, 'pegawai D', 'uploads/1/2020-04/user.jpg', 'pegawai4@gmail.com', '$2y$10$OlBJj7Q.D2qDmDORsQk94.TAJWECjg6nJOkvv9EyVQYvqPF3KwMEa', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-01 10:47:59', NULL),
(12, 'pegawai E', 'uploads/1/2020-04/user.jpg', 'pegawai5@gmail.com', '$2y$10$0Vfo8AWgh3PgisT8yjo.veaZtcuBvIxDyZ5eI2dl0sw2O1gV5ABp6', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-01 10:48:45', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pendidikan`
--

CREATE TABLE `pendidikan` (
  `id` int(10) UNSIGNED NOT NULL,
  `dosen_id` int(10) UNSIGNED NOT NULL,
  `tingkat_pendidikan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_sekolah_pt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fakultas` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jurusan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tahun_lulus` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sumber_dana` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tempat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jenis` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pendidikan`
--

INSERT INTO `pendidikan` (`id`, `dosen_id`, `tingkat_pendidikan`, `nama_sekolah_pt`, `fakultas`, `jurusan`, `tahun_lulus`, `sumber_dana`, `tempat`, `jenis`, `created_at`, `updated_at`) VALUES
(1, 1, 'SMP', 'asdad', NULL, NULL, 'asdasasd', 'asdas', 'asdasd', 'DALAM NEGERI', '2020-02-26 09:59:45', NULL),
(2, 4, 'SMA', 'kjsvb', 'klsbv', 'ksbv', 'ksbv', 'kjbv', 'kjbv', 'DALAM NEGERI', '2020-02-27 05:45:00', NULL),
(3, 4, 'S1', 'jksb', 'kjbsvkj', 'jbsvkj', 'bvljb', 'ljbvqjb', 'lbqvjb', 'DALAM NEGERI', '2020-02-27 05:45:13', NULL),
(4, 8, 'SD', 'kldmgkld', NULL, NULL, 'lkvnl', 'lsnsfl', 'lskfns', 'DALAM NEGERI', '2020-04-01 11:15:42', NULL),
(5, 8, 'SMP', 'jkasnjsna', NULL, NULL, '2022', 'lasnfj', 'sjnfkj', 'DALAM NEGERI', '2020-04-01 11:16:45', NULL),
(6, 8, 'SMA', 'skdvbkdj', 'ipa', 'kskvj', 'kvnsjn', 'nvksjn', 'kjvns', 'DALAM NEGERI', '2020-04-01 11:17:23', NULL),
(7, 8, 'S1', 'kbsk', 'Sains dan Teknologi', 'Tekni Informatika', '2024', 'asjf', 'kjv', 'DALAM NEGERI', '2020-04-01 11:18:37', NULL),
(8, 9, 'SMP', 'kjhkjhkl', NULL, NULL, '2024', 'aaaa', 'Cileungsi', 'DALAM NEGERI', '2020-04-01 11:55:04', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengalaman_karya_tulis`
--

CREATE TABLE `pengalaman_karya_tulis` (
  `id` int(10) UNSIGNED NOT NULL,
  `dosen_id` int(10) UNSIGNED NOT NULL,
  `jenis` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tahun` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `penyelenggara` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referensi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pengalaman_karya_tulis`
--

INSERT INTO `pengalaman_karya_tulis` (`id`, `dosen_id`, `jenis`, `tahun`, `judul`, `penyelenggara`, `referensi`, `created_at`, `updated_at`) VALUES
(1, 1, 'PENGALAMAN KARYA TULIS PENYUNTING', '2018', 'balbaosandAn', 'LKM', 'LKM', '2020-02-26 13:24:44', NULL),
(2, 8, 'PENGALAMAN KARYA TULIS POSTER', '2020', 'tentang figure', 'Jurusan Informatika', 'ksjbvkj', '2020-04-01 11:37:24', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengalaman_kegiatan`
--

CREATE TABLE `pengalaman_kegiatan` (
  `id` int(10) UNSIGNED NOT NULL,
  `dosen_id` int(10) UNSIGNED NOT NULL,
  `jenis` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `judul_kegiatan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `penyelenggara` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pengalaman_kegiatan`
--

INSERT INTO `pengalaman_kegiatan` (`id`, `dosen_id`, `jenis`, `judul_kegiatan`, `penyelenggara`, `created_at`, `updated_at`) VALUES
(1, 1, 'PESERTA SIMPOSIUM', 'svbnsln', 'svas', '2020-02-26 13:17:15', NULL),
(2, 8, 'PESERTA LOKAKARYA', 'Kegiatan Kerja Bakti', 'RW 12', '2020-04-01 11:35:51', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengalaman_membimbing`
--

CREATE TABLE `pengalaman_membimbing` (
  `id` int(10) UNSIGNED NOT NULL,
  `dosen_id` int(10) UNSIGNED NOT NULL,
  `jenis_bimbingan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_mahasiswa` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sk` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tgl_mulai` date DEFAULT NULL,
  `tgl_akhir` date DEFAULT NULL,
  `jml_pertemuan` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pengalaman_membimbing`
--

INSERT INTO `pengalaman_membimbing` (`id`, `dosen_id`, `jenis_bimbingan`, `nama_mahasiswa`, `sk`, `tgl_mulai`, `tgl_akhir`, `jml_pertemuan`, `created_at`, `updated_at`) VALUES
(1, 1, 'KRS', 'jiskjbv', 'uploads/1/2020-02/enen_no_shouboutai.png', '2020-02-24', '2020-02-17', 2, '2020-02-26 13:18:37', NULL),
(2, 8, 'TAHFIDZ', 'Fariz Maulana Herman', 'uploads/8/2020-04/report_04_jan_2020.pdf', '2020-04-27', '2020-05-09', 10, '2020-04-01 11:36:33', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengalaman_mengajar`
--

CREATE TABLE `pengalaman_mengajar` (
  `id` int(10) UNSIGNED NOT NULL,
  `dosen_id` int(10) UNSIGNED NOT NULL,
  `kode_mk` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_mk` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jenjang` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jurusan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tahun_akademik` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `semester` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rentang_mulai` date DEFAULT NULL,
  `rentang_akhir` date DEFAULT NULL,
  `sk_mengajar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tgl_sk` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jam` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ruang` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mengajar_bersama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sks` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pengalaman_mengajar`
--

INSERT INTO `pengalaman_mengajar` (`id`, `dosen_id`, `kode_mk`, `nama_mk`, `jenjang`, `jurusan`, `tahun_akademik`, `semester`, `rentang_mulai`, `rentang_akhir`, `sk_mengajar`, `tgl_sk`, `jam`, `ruang`, `mengajar_bersama`, `sks`, `created_at`, `updated_at`) VALUES
(1, 1, 'amsvbkn', 'ksndvkwjb', 'S2', 'Tasawuf Psikoterapi', 'sv', 'III', '2020-03-06', '2020-02-27', 'uploads/1/2020-02/enen_no_shouboutai.png', '24-11-2019', '17', 'slvnjak', '2', 4, '2020-02-26 13:12:44', NULL),
(2, 8, '1123445522', 'dms gdlkn', 'S1', 'Ilmu Hadist', 'knasfsnskmfn', 'III', '2020-04-21', '2020-04-21', 'uploads/8/2020-04/tupoksi_dekanat.pdf', '24-11-2019', '14', 'R 4.01', '8', 4, '2020-04-01 11:34:56', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengalaman_penelitian`
--

CREATE TABLE `pengalaman_penelitian` (
  `id` int(10) UNSIGNED NOT NULL,
  `dosen_id` int(10) UNSIGNED NOT NULL,
  `tahun` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `judul_penelitian` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jabatan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sumber_dana` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referensi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pengalaman_penelitian`
--

INSERT INTO `pengalaman_penelitian` (`id`, `dosen_id`, `tahun`, `judul_penelitian`, `jabatan`, `sumber_dana`, `referensi`, `created_at`, `updated_at`) VALUES
(1, 1, 'ksbkjab', 'ksvbkjb', 'ksjbvskj', 'kjsbvkj', 'ksjbvkj', '2020-02-26 13:19:54', NULL),
(2, 8, '2020', 'penelitian prilaku pemain Free Fire', 'tidak ada', 'asda', 'ksjbvkj', '2020-04-01 11:37:00', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `riwayat_jabatan`
--

CREATE TABLE `riwayat_jabatan` (
  `id` int(10) UNSIGNED NOT NULL,
  `dosen_id` int(10) UNSIGNED NOT NULL,
  `jabatan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tmt` date DEFAULT NULL,
  `gol_ruang` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gaji_pokok` double DEFAULT NULL,
  `surat_keputusan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tgl_mulai` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pejabat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_sk` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `riwayat_jabatan`
--

INSERT INTO `riwayat_jabatan` (`id`, `dosen_id`, `jabatan`, `tmt`, `gol_ruang`, `gaji_pokok`, `surat_keputusan`, `tgl_mulai`, `pejabat`, `no_sk`, `created_at`, `updated_at`) VALUES
(1, 1, 'ASISTEN AHLI MADYA', '2020-03-12', 'IIID', 11111111111111, 'shflsalf', '2020-01-19', 'kjbkjhjjbl', '541', '2020-02-26 10:53:44', NULL),
(2, 8, 'ASISTEN', '2020-04-17', 'IIID', 222222, 'uploads/8/2020-04/1165_2313_1_pb.pdf', '2020-01-19', 'jkbljkb', '22234441', '2020-04-01 11:29:39', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `riwayat_kepangkatan`
--

CREATE TABLE `riwayat_kepangkatan` (
  `id` int(10) UNSIGNED NOT NULL,
  `dosen_id` int(10) UNSIGNED NOT NULL,
  `jenis_sk` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pangkat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gol_ruang` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_sk` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tgl_sk` date DEFAULT NULL,
  `tmt_sk` date DEFAULT NULL,
  `gaji` double DEFAULT NULL,
  `pak` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pejabat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `riwayat_kepangkatan`
--

INSERT INTO `riwayat_kepangkatan` (`id`, `dosen_id`, `jenis_sk`, `pangkat`, `gol_ruang`, `no_sk`, `tgl_sk`, `tmt_sk`, `gaji`, `pak`, `pejabat`, `created_at`, `updated_at`) VALUES
(1, 1, 'PNS', 'PENATA MUDA', 'IIIA', '1111', '2020-03-12', '2020-03-05', 111111111, '111', '11df', '2020-02-26 10:49:31', NULL),
(2, 8, 'PNS', 'PENATA TINGKAT I', 'IIID', '225542', '2020-04-19', '2020-04-08', 2500000, 'dksnvksjn', 'jhkjh', '2020-04-01 11:21:12', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tanda_jasa_penghargaan`
--

CREATE TABLE `tanda_jasa_penghargaan` (
  `id` int(10) UNSIGNED NOT NULL,
  `dosen_id` int(10) UNSIGNED NOT NULL,
  `jenis` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_tanda_jasa_penghargaan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tahun` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pemberi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tanda_jasa_penghargaan`
--

INSERT INTO `tanda_jasa_penghargaan` (`id`, `dosen_id`, `jenis`, `nama_tanda_jasa_penghargaan`, `tahun`, `pemberi`, `created_at`, `updated_at`, `file`) VALUES
(1, 1, 'TANDA JASA', ';smvkln', 'lksnvj', 'lksnvj', '2020-02-26 13:05:56', NULL, 'lkn'),
(2, 8, 'TANDA JASA', 'akjsnfksjn', '2020', 'ksnkjn', '2020-04-01 11:30:38', NULL, 'uploads/8/2020-04/tupoksi_dekanat.pdf');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `cms_apicustom`
--
ALTER TABLE `cms_apicustom`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cms_apikey`
--
ALTER TABLE `cms_apikey`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cms_dashboard`
--
ALTER TABLE `cms_dashboard`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cms_email_queues`
--
ALTER TABLE `cms_email_queues`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cms_email_templates`
--
ALTER TABLE `cms_email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cms_logs`
--
ALTER TABLE `cms_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cms_menus`
--
ALTER TABLE `cms_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cms_menus_privileges`
--
ALTER TABLE `cms_menus_privileges`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cms_moduls`
--
ALTER TABLE `cms_moduls`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cms_notifications`
--
ALTER TABLE `cms_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cms_privileges`
--
ALTER TABLE `cms_privileges`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cms_privileges_roles`
--
ALTER TABLE `cms_privileges_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cms_settings`
--
ALTER TABLE `cms_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cms_statistics`
--
ALTER TABLE `cms_statistics`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cms_statistic_components`
--
ALTER TABLE `cms_statistic_components`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cms_users`
--
ALTER TABLE `cms_users`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `keluarga`
--
ALTER TABLE `keluarga`
  ADD PRIMARY KEY (`id`),
  ADD KEY `keluarga_dosen_id_foreign` (`dosen_id`);

--
-- Indeks untuk tabel `ket_organisasi`
--
ALTER TABLE `ket_organisasi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ket_organisasi_dosen_id_foreign` (`dosen_id`);

--
-- Indeks untuk tabel `kunjungan_luar_negeri`
--
ALTER TABLE `kunjungan_luar_negeri`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kunjungan_luar_negeri_dosen_id_foreign` (`dosen_id`);

--
-- Indeks untuk tabel `kursus_latihan`
--
ALTER TABLE `kursus_latihan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kursus_latihan_dosen_id_foreign` (`dosen_id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pegawai_nip_unique` (`nip`);

--
-- Indeks untuk tabel `pendidikan`
--
ALTER TABLE `pendidikan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pendidikan_dosen_id_foreign` (`dosen_id`);

--
-- Indeks untuk tabel `pengalaman_karya_tulis`
--
ALTER TABLE `pengalaman_karya_tulis`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pengalaman_karya_tulis_dosen_id_foreign` (`dosen_id`);

--
-- Indeks untuk tabel `pengalaman_kegiatan`
--
ALTER TABLE `pengalaman_kegiatan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pengalaman_kegiatan_dosen_id_foreign` (`dosen_id`);

--
-- Indeks untuk tabel `pengalaman_membimbing`
--
ALTER TABLE `pengalaman_membimbing`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pengalaman_membimbing_dosen_id_foreign` (`dosen_id`);

--
-- Indeks untuk tabel `pengalaman_mengajar`
--
ALTER TABLE `pengalaman_mengajar`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pengalaman_mengajar_dosen_id_foreign` (`dosen_id`);

--
-- Indeks untuk tabel `pengalaman_penelitian`
--
ALTER TABLE `pengalaman_penelitian`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pengalaman_penelitian_dosen_id_foreign` (`dosen_id`);

--
-- Indeks untuk tabel `riwayat_jabatan`
--
ALTER TABLE `riwayat_jabatan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `riwayat_jabatan_dosen_id_foreign` (`dosen_id`);

--
-- Indeks untuk tabel `riwayat_kepangkatan`
--
ALTER TABLE `riwayat_kepangkatan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `riwayat_kepangkatan_dosen_id_foreign` (`dosen_id`);

--
-- Indeks untuk tabel `tanda_jasa_penghargaan`
--
ALTER TABLE `tanda_jasa_penghargaan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tanda_jasa_penghargaan_dosen_id_foreign` (`dosen_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `cms_apicustom`
--
ALTER TABLE `cms_apicustom`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `cms_apikey`
--
ALTER TABLE `cms_apikey`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `cms_dashboard`
--
ALTER TABLE `cms_dashboard`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `cms_email_queues`
--
ALTER TABLE `cms_email_queues`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `cms_email_templates`
--
ALTER TABLE `cms_email_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `cms_logs`
--
ALTER TABLE `cms_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=228;

--
-- AUTO_INCREMENT untuk tabel `cms_menus`
--
ALTER TABLE `cms_menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `cms_menus_privileges`
--
ALTER TABLE `cms_menus_privileges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT untuk tabel `cms_moduls`
--
ALTER TABLE `cms_moduls`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT untuk tabel `cms_notifications`
--
ALTER TABLE `cms_notifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `cms_privileges`
--
ALTER TABLE `cms_privileges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `cms_privileges_roles`
--
ALTER TABLE `cms_privileges_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT untuk tabel `cms_settings`
--
ALTER TABLE `cms_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `cms_statistics`
--
ALTER TABLE `cms_statistics`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `cms_statistic_components`
--
ALTER TABLE `cms_statistic_components`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `cms_users`
--
ALTER TABLE `cms_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `keluarga`
--
ALTER TABLE `keluarga`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `ket_organisasi`
--
ALTER TABLE `ket_organisasi`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `kunjungan_luar_negeri`
--
ALTER TABLE `kunjungan_luar_negeri`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `kursus_latihan`
--
ALTER TABLE `kursus_latihan`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT untuk tabel `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `pendidikan`
--
ALTER TABLE `pendidikan`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `pengalaman_karya_tulis`
--
ALTER TABLE `pengalaman_karya_tulis`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `pengalaman_kegiatan`
--
ALTER TABLE `pengalaman_kegiatan`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `pengalaman_membimbing`
--
ALTER TABLE `pengalaman_membimbing`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `pengalaman_mengajar`
--
ALTER TABLE `pengalaman_mengajar`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `pengalaman_penelitian`
--
ALTER TABLE `pengalaman_penelitian`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `riwayat_jabatan`
--
ALTER TABLE `riwayat_jabatan`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `riwayat_kepangkatan`
--
ALTER TABLE `riwayat_kepangkatan`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tanda_jasa_penghargaan`
--
ALTER TABLE `tanda_jasa_penghargaan`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `keluarga`
--
ALTER TABLE `keluarga`
  ADD CONSTRAINT `keluarga_dosen_id_foreign` FOREIGN KEY (`dosen_id`) REFERENCES `pegawai` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `ket_organisasi`
--
ALTER TABLE `ket_organisasi`
  ADD CONSTRAINT `ket_organisasi_dosen_id_foreign` FOREIGN KEY (`dosen_id`) REFERENCES `pegawai` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `kunjungan_luar_negeri`
--
ALTER TABLE `kunjungan_luar_negeri`
  ADD CONSTRAINT `kunjungan_luar_negeri_dosen_id_foreign` FOREIGN KEY (`dosen_id`) REFERENCES `pegawai` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `kursus_latihan`
--
ALTER TABLE `kursus_latihan`
  ADD CONSTRAINT `kursus_latihan_dosen_id_foreign` FOREIGN KEY (`dosen_id`) REFERENCES `pegawai` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `pendidikan`
--
ALTER TABLE `pendidikan`
  ADD CONSTRAINT `pendidikan_dosen_id_foreign` FOREIGN KEY (`dosen_id`) REFERENCES `pegawai` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `pengalaman_karya_tulis`
--
ALTER TABLE `pengalaman_karya_tulis`
  ADD CONSTRAINT `pengalaman_karya_tulis_dosen_id_foreign` FOREIGN KEY (`dosen_id`) REFERENCES `pegawai` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `pengalaman_kegiatan`
--
ALTER TABLE `pengalaman_kegiatan`
  ADD CONSTRAINT `pengalaman_kegiatan_dosen_id_foreign` FOREIGN KEY (`dosen_id`) REFERENCES `pegawai` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `pengalaman_membimbing`
--
ALTER TABLE `pengalaman_membimbing`
  ADD CONSTRAINT `pengalaman_membimbing_dosen_id_foreign` FOREIGN KEY (`dosen_id`) REFERENCES `pegawai` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `pengalaman_mengajar`
--
ALTER TABLE `pengalaman_mengajar`
  ADD CONSTRAINT `pengalaman_mengajar_dosen_id_foreign` FOREIGN KEY (`dosen_id`) REFERENCES `pegawai` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `pengalaman_penelitian`
--
ALTER TABLE `pengalaman_penelitian`
  ADD CONSTRAINT `pengalaman_penelitian_dosen_id_foreign` FOREIGN KEY (`dosen_id`) REFERENCES `pegawai` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `riwayat_jabatan`
--
ALTER TABLE `riwayat_jabatan`
  ADD CONSTRAINT `riwayat_jabatan_dosen_id_foreign` FOREIGN KEY (`dosen_id`) REFERENCES `pegawai` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `riwayat_kepangkatan`
--
ALTER TABLE `riwayat_kepangkatan`
  ADD CONSTRAINT `riwayat_kepangkatan_dosen_id_foreign` FOREIGN KEY (`dosen_id`) REFERENCES `pegawai` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tanda_jasa_penghargaan`
--
ALTER TABLE `tanda_jasa_penghargaan`
  ADD CONSTRAINT `tanda_jasa_penghargaan_dosen_id_foreign` FOREIGN KEY (`dosen_id`) REFERENCES `pegawai` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
