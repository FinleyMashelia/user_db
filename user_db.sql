-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 21 Feb 2023 pada 08.25
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `user_db`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `attendance`
--

CREATE TABLE `attendance` (
  `id_attendance` int(11) NOT NULL,
  `att_barcode` varchar(50) NOT NULL,
  `tgl` date NOT NULL DEFAULT current_timestamp(),
  `att_in` time NOT NULL DEFAULT current_timestamp(),
  `att_out` time NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `attendance`
--

INSERT INTO `attendance` (`id_attendance`, `att_barcode`, `tgl`, `att_in`, `att_out`) VALUES
(1, '101100', '0000-00-00', '07:00:00', '17:00:00'),
(25, '101100', '2022-10-24', '10:42:54', '00:00:00'),
(26, '101100', '2022-10-25', '08:44:31', '00:00:00'),
(27, '101100', '2022-10-28', '07:03:59', '00:00:00'),
(28, '101100', '2022-11-03', '19:48:35', '01:50:51');

-- --------------------------------------------------------

--
-- Struktur dari tabel `employee`
--

CREATE TABLE `employee` (
  `id_employee` int(11) NOT NULL,
  `nama` varchar(256) NOT NULL,
  `universitas` varchar(20) NOT NULL,
  `alamat` varchar(360) NOT NULL,
  `jenis_kelamin` varchar(200) NOT NULL,
  `program_studi` varchar(200) NOT NULL,
  `att_barcode` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `employee`
--

INSERT INTO `employee` (`id_employee`, `nama`, `universitas`, `alamat`, `jenis_kelamin`, `program_studi`, `att_barcode`) VALUES
(1, 'wahyu aji fifni kusuma', 'Universitas Dian Nus', 'jl.mars 1/D-30 janglipermai semarang', '', '', '101100'),
(2, 'azzam abdullah anak sapa', 'Universitas Dian Nus', 'jauh dibrebes', '', '', '1234567'),
(3, 'joko kendil ni bos', 'Universitas Dian Nus', 'jauh banget say', '', '', '23423423'),
(4, 'Jarman Jacob', '00304', 'Jl. Cempaka No 55.', '', '', '8998989300261'),
(5, 'Tim Kellam', '00305', 'Jl. Legenda Malaka No 87.', '', '', '8991906101026'),
(6, 'azzambrut', 'udinusketoe', 'jalan kinibalu', '', '', '23443223'),
(10, 'Jujuk', 'UDINUS', 'Pati', 'LAKI-LAKI', 'TEKNIK INFORMATIKA', '00121'),
(11, 'Samanta', 'UDINUS', 'Pati', 'PEREMPUAN', 'MANAJEMEN', '00122'),
(12, 'Indah', 'UDINUS', 'Pati', 'PEREMPUAN', 'DESAIN KOMUNIKASI VISUAL', '00123'),
(14, 'Yuyun', 'UDINUS', 'Pati', 'PEREMPUAN', 'TEKNIK INFORMATIKA', '00124'),
(15, 'Jujuk', 'UDINUS', 'Pati', 'LAKI-LAKI', 'TEKNIK INFORMATIKA', '00121'),
(16, 'Samanta', 'UDINUS', 'Pati', 'PEREMPUAN', 'SISTEM INFORMASI', '00122'),
(18, 'wahyu aji', 'calon s2 ugm', 'jl.mars d1/D-30 jangli permai', 'LAKI-LAKI', 'sistem infomasi', '10112000'),
(19, '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `order`
--

CREATE TABLE `order` (
  `id` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `datecreation` date NOT NULL,
  `status` tinyint(1) NOT NULL,
  `username` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `orderdetail`
--

CREATE TABLE `orderdetail` (
  `productid` int(11) NOT NULL,
  `orderid` int(11) NOT NULL,
  `price` float NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `product`
--

CREATE TABLE `product` (
  `id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `price` float NOT NULL,
  `quantity` int(11) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_form`
--

CREATE TABLE `user_form` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `user_type` varchar(255) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user_form`
--

INSERT INTO `user_form` (`id`, `name`, `email`, `password`, `user_type`) VALUES
(0, 'aji', 'ajikfifni24@gmail.com', '202cb962ac59075b964b07152d234b70', 'admin'),
(0, 'aji', 'kusuma@gmail.com', '202cb962ac59075b964b07152d234b70', 'user'),
(0, 'ajikk', 'FinleyMashelia@gmail.com', '202cb962ac59075b964b07152d234b70', 'user'),
(0, 'Azzam', 'azzamvr1@gmail.com', '202cb962ac59075b964b07152d234b70', 'user'),
(0, 'ajikkkkkkk', 'LuzioOliver@gmail.com', '202cb962ac59075b964b07152d234b70', 'user');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`id_attendance`);

--
-- Indeks untuk tabel `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id_employee`);

--
-- Indeks untuk tabel `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `orderdetail`
--
ALTER TABLE `orderdetail`
  ADD PRIMARY KEY (`productid`);

--
-- Indeks untuk tabel `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `attendance`
--
ALTER TABLE `attendance`
  MODIFY `id_attendance` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT untuk tabel `employee`
--
ALTER TABLE `employee`
  MODIFY `id_employee` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `order`
--
ALTER TABLE `order`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `orderdetail`
--
ALTER TABLE `orderdetail`
  MODIFY `productid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `product`
--
ALTER TABLE `product`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
