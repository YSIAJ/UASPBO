-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 25 Jun 2024 pada 07.24
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uas_pbo`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengajuan`
--

CREATE TABLE `pengajuan` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `NIM` varchar(20) DEFAULT NULL,
  `kelas` varchar(50) DEFAULT NULL,
  `tanggal_presensi` date DEFAULT NULL,
  `sesi` varchar(50) DEFAULT NULL,
  `mata_kuliah` varchar(255) DEFAULT NULL,
  `dosen` varchar(255) DEFAULT NULL,
  `hadir_jam` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pengajuan`
--

INSERT INTO `pengajuan` (`id`, `nama`, `NIM`, `kelas`, `tanggal_presensi`, `sesi`, `mata_kuliah`, `dosen`, `hadir_jam`) VALUES
(30, 'Muhammad Zacky Arie Pratama', '212212774', '2ST6', '2024-06-02', '3', 'Pendidikan Agama Islam', 'Ustadz Muhammad Ridwan Yahya', '13:20:00'),
(36, 'Jaisy Nurhasanah', '222212676', '2KS2', '2024-06-03', '3', 'Pemrograman Berbasis Web', 'Yeni Rimawati', '13:30:00'),
(38, 'Jaisy Nurhasanah', '222212676', '2KS2', '2024-06-06', '2', 'Komputasi Statistik', 'Yuliagnis Transver Wijaya', '10:10:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `username` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `nim` varchar(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`username`, `password`, `nama`, `nim`) VALUES
('222212676@stis.ac.id', 'jaisy1101', 'Jaisy Nurhasanah', '222212676'),
('trial@stis.ac.id', '12345678', 'percobaan', '000000000');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `pengajuan`
--
ALTER TABLE `pengajuan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `pengajuan`
--
ALTER TABLE `pengajuan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
