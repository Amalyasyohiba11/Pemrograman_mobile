-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 24 Feb 2024 pada 15.32
-- Versi server: 10.6.16-MariaDB-cll-lve
-- Versi PHP: 8.1.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rplmedan_rumahsakit`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `pasien`
--

CREATE TABLE `pasien` (
  `id` int(5) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `nohp` varchar(15) NOT NULL,
  `jenis_kelamin` varchar(11) NOT NULL,
  `tanggal_lahir` varchar(12) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `klinik` varchar(30) NOT NULL,
  `pembayaran` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pasien`
--

INSERT INTO `pasien` (`id`, `nama`, `nohp`, `jenis_kelamin`, `tanggal_lahir`, `alamat`, `email`, `klinik`, `pembayaran`) VALUES
(18, 'lola prastika hasibuan', '082276549809', 'perempuan', '2002-04-04', 'medan', 'wikapebriani035@gmai', 'gimu', 'bpjs'),
(20, 'Wulsa', '082204032123', 'perempuan', '2001-03-04', 'Jl. Besar Tembung', 'wulsa03@gmail.com', 'gimu', 'bpjs'),
(23, 'amalya syohiba', '0253821313', 'perempuan', '11-04-2002', 'Medan', 'amalyasyohiba8@gmail.com', 'Kulit Dan Kelamin', 'Umum'),
(24, 'Nanang Nurdiansyah', '082275573043', 'Laki-laki', '2002-02-03', 'Medan Baru', 'nurdiansyahnanang765@gamil.com', 'THT', 'BPJS Kesehatan'),
(25, 'Dewani ', '08454645', 'Perempuan', '2003-04-04', 'Medan', 'dewani@gmail.com', 'Mata', 'Umum');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `pasien`
--
ALTER TABLE `pasien`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `pasien`
--
ALTER TABLE `pasien`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
