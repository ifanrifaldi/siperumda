-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 18 Sep 2023 pada 08.27
-- Versi server: 5.7.33
-- Versi PHP: 8.1.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sipkm`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `berita`
--

CREATE TABLE `berita` (
  `id` int(11) NOT NULL,
  `nama_pembuat` varchar(255) DEFAULT NULL,
  `tanggal` varchar(255) DEFAULT NULL,
  `judul` varchar(255) DEFAULT NULL,
  `keterangan` text,
  `foto` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `bisnis`
--

CREATE TABLE `bisnis` (
  `id` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `nama_bisnis` varchar(255) DEFAULT NULL,
  `penjelasan` text,
  `foto` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `budidayatanaman`
--

CREATE TABLE `budidayatanaman` (
  `id` int(11) NOT NULL,
  `perdagangan` varchar(255) DEFAULT NULL,
  `nama_bisnis` varchar(255) DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `jasaangkut`
--

CREATE TABLE `jasaangkut` (
  `id` int(11) NOT NULL,
  `nama_bisnis` varchar(255) DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kegiatan`
--

CREATE TABLE `kegiatan` (
  `id` int(11) NOT NULL,
  `nama_pembuat` varchar(255) DEFAULT NULL,
  `tanggal` varchar(255) DEFAULT NULL,
  `judul` varchar(255) DEFAULT NULL,
  `keterangan` text,
  `foto` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `padi`
--

CREATE TABLE `padi` (
  `id` int(11) NOT NULL,
  `nama_bisnis` varchar(255) DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembenihan`
--

CREATE TABLE `pembenihan` (
  `id` int(11) NOT NULL,
  `nama_bisnis` varchar(255) DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pemerintahan`
--

CREATE TABLE `pemerintahan` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `tanggal_lahir` varchar(255) DEFAULT NULL,
  `tempat_lahir` varchar(255) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `pendidikan_terakhir` varchar(255) DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `periode` varchar(25) DEFAULT NULL,
  `jabatan` varchar(255) DEFAULT NULL,
  `level` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `perdagangan`
--

CREATE TABLE `perdagangan` (
  `id` int(11) NOT NULL,
  `nama_bisnis` varchar(255) DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `profil`
--

CREATE TABLE `profil` (
  `id` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `level` varchar(255) DEFAULT NULL,
  `keterangan` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `profil`
--

INSERT INTO `profil` (`id`, `id_user`, `level`, `keterangan`, `created_at`, `updated_at`) VALUES
(5, NULL, 'Visi', 'Menjadi Perumda yang Profesional, Berkembang dan Maju', '2023-07-15 07:52:11', '2023-07-15 07:59:37'),
(6, NULL, 'Misi', 'Membangun Organisasidan Jaringan dengn Budaya Kerja yang Bermutu\r\n     Membangun unit Bisnis yang menghasilkan Keuntungan\r\nMengembangkan Unit Bisnis/Usaha yang memberikan Manfaat bagi Masyarakat.', '2023-07-15 07:52:31', '2023-07-15 07:52:31'),
(7, NULL, 'Sejarah', 'Pada tanggal 11 Februari 2021, Bupati Ketapang Martin Rantan SH, M.Sos melantik Direksi dan Dewan\r\n                        Pengawas Perusahaan Umum Daerah Ketapang Pangan Mandiri. Pelantikan ini menandai dimulainya\r\n                        operasional Perumda Ketapang Pangan Mandiri, sebuah BUMD yang dibentuk melalu Peraturan Daerah\r\n                        Kabupaten Ketapang Nomor 1 Tahun 2019.', '2023-07-16 09:27:39', '2023-07-16 09:28:08');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pupuk`
--

CREATE TABLE `pupuk` (
  `id` int(11) NOT NULL,
  `perdagangan` varchar(255) DEFAULT NULL,
  `nama_bisnis` varchar(255) DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `stukturanggota`
--

CREATE TABLE `stukturanggota` (
  `id` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `nama_anggota` varchar(255) DEFAULT NULL,
  `level` varchar(255) DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `stukturanggota`
--

INSERT INTO `stukturanggota` (`id`, `id_user`, `nama_anggota`, `level`, `foto`, `created_at`, `updated_at`) VALUES
(16, NULL, 'Muhammad Effendi', 'Direktur_Keuangan', 'app/anggota/-1689437267-eTIjl.jpg', '2023-07-15 09:07:47', '2023-07-15 09:07:47'),
(18, NULL, 'Sapran Darius', 'Direktur_Teknis', 'app/anggota/-1689437938-IkQUM.jpg', '2023-07-15 09:18:58', '2023-07-15 09:18:58'),
(19, NULL, 'Muhammad Thamrin', 'Dewan_Pengawas', 'app/anggota/-1689438155-IZzRf.jpg', '2023-07-15 09:22:35', '2023-07-15 09:22:35'),
(20, NULL, 'H.farhan SE,M.Si', 'Wakil_Bupati', 'app/anggota/-1689438493-422wX.jpg', '2023-07-15 09:28:13', '2023-07-15 09:28:13'),
(22, NULL, 'Alkap Pasti', 'Direktur_Utama', 'app/anggota/-1689523684-waKYX.jpg', '2023-07-16 09:08:04', '2023-07-16 09:08:04');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `remember_token` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `email`, `username`, `password`, `nama`, `remember_token`, `created_at`, `updated_at`) VALUES
(11, 'ariktpa@gmail.com', 'okkkaka', '$2y$10$6jlq2Fe4Z.Nf2NUX11g/zO9QyCNiZR40610nERwvUC5v60NfWcxVi', 'arief', NULL, '2023-07-16 08:18:50', '2023-07-16 08:21:05'),
(12, 'jemi@gmail.com', 'okk', '$2y$10$nQxGLfCCA8BKt.pk4ine0eytprd8JrZqWi3C1jxgr6JviM31uMUU6', 'APEL FUJI SUPER PREMIUM', NULL, '2023-07-16 08:19:03', '2023-07-16 08:19:03'),
(13, 'beli_husaiin@gmail.com', 'okk', '$2y$10$XVcYFPK8FggLcHMKFSHivubQaPUGFFrAsTcPwJETYFmr5msUuFC1C', 'irsyad husain jauhari', NULL, '2023-07-16 08:28:42', '2023-07-16 08:28:42'),
(14, 'ari', NULL, '$2y$10$YuYXLtsgob9f6Su2EXo/0es9UQaJsmI.KgF9odCreU66ia46ZOEvS', NULL, NULL, '2023-09-18 01:25:11', '2023-09-18 01:25:11');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `bisnis`
--
ALTER TABLE `bisnis`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `budidayatanaman`
--
ALTER TABLE `budidayatanaman`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `jasaangkut`
--
ALTER TABLE `jasaangkut`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kegiatan`
--
ALTER TABLE `kegiatan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `padi`
--
ALTER TABLE `padi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pembenihan`
--
ALTER TABLE `pembenihan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pemerintahan`
--
ALTER TABLE `pemerintahan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `perdagangan`
--
ALTER TABLE `perdagangan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `profil`
--
ALTER TABLE `profil`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pupuk`
--
ALTER TABLE `pupuk`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `stukturanggota`
--
ALTER TABLE `stukturanggota`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `berita`
--
ALTER TABLE `berita`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `bisnis`
--
ALTER TABLE `bisnis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `budidayatanaman`
--
ALTER TABLE `budidayatanaman`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `jasaangkut`
--
ALTER TABLE `jasaangkut`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `kegiatan`
--
ALTER TABLE `kegiatan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `padi`
--
ALTER TABLE `padi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pembenihan`
--
ALTER TABLE `pembenihan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pemerintahan`
--
ALTER TABLE `pemerintahan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `perdagangan`
--
ALTER TABLE `perdagangan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `profil`
--
ALTER TABLE `profil`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `pupuk`
--
ALTER TABLE `pupuk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `stukturanggota`
--
ALTER TABLE `stukturanggota`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
