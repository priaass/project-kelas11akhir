-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 08 Nov 2024 pada 09.20
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
-- Database: `laundry`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `contact`
--

CREATE TABLE `contact` (
  `nama1` text NOT NULL,
  `hp1` text NOT NULL,
  `alamat1` text NOT NULL,
  `nama2` text NOT NULL,
  `hp2` text NOT NULL,
  `pesan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `contact`
--

INSERT INTO `contact` (`nama1`, `hp1`, `alamat1`, `nama2`, `hp2`, `pesan`) VALUES
('ikhlas', '0885654546', 'Purbalingga', '', '', 'Kerennn'),
('nayla', '08975645', 'Purbalingga', 'erlina', '0898786756', 'okee'),
('Keyy', '087565657', 'Purbalingga', 'Arl', '0876767', 'Semangatttt');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cuci_kering`
--

CREATE TABLE `cuci_kering` (
  `id` int(11) NOT NULL,
  `paket` varchar(255) DEFAULT NULL,
  `waktu` int(11) DEFAULT NULL,
  `kuantitas` int(11) DEFAULT NULL,
  `tarif` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `cuci_kering`
--

INSERT INTO `cuci_kering` (`id`, `paket`, `waktu`, `kuantitas`, `tarif`) VALUES
(1, 'cuci kering reguler', 48, 1, 6000.00),
(2, 'cuci kering kilat', 24, 1, 9000.00),
(3, 'cuci kering express', 6, 1, 15000.00);

-- --------------------------------------------------------

--
-- Struktur dari tabel `cuci_komplit`
--

CREATE TABLE `cuci_komplit` (
  `id` int(11) NOT NULL,
  `paket` varchar(255) NOT NULL,
  `waktu` int(11) NOT NULL,
  `kuantitas` int(11) NOT NULL,
  `tarif` decimal(11,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `cuci_komplit`
--

INSERT INTO `cuci_komplit` (`id`, `paket`, `waktu`, `kuantitas`, `tarif`) VALUES
(1, 'Cuci Komplit Reguler', 48, 1, 8000.00),
(2, 'Cuci Komplit Kilat', 24, 1, 15000.00),
(3, 'Cuci Komplit Express', 5, 1, 20000.00);

-- --------------------------------------------------------

--
-- Struktur dari tabel `cuci_satuan`
--

CREATE TABLE `cuci_satuan` (
  `id` int(11) NOT NULL,
  `paket` varchar(255) NOT NULL,
  `waktu` int(11) NOT NULL,
  `kuantitas` int(11) NOT NULL,
  `tarif` decimal(11,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `cuci_satuan`
--

INSERT INTO `cuci_satuan` (`id`, `paket`, `waktu`, `kuantitas`, `tarif`) VALUES
(1, 'Jaket Kulit', 24, 1, 15000.00),
(2, 'Jaket Non Kulit', 24, 1, 6000.00),
(3, 'Boneka Kecil', 24, 1, 6000.00),
(4, 'Boneka Sedang', 24, 1, 10000.00),
(5, 'Boneka Besar', 24, 1, 15000.00),
(6, 'Sejadah', 24, 1, 20000.00),
(7, 'Selimut', 24, 1, 20000.00),
(8, 'Keset', 24, 1, 20000.00);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tr_cuci_kering`
--

CREATE TABLE `tr_cuci_kering` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `no_hp` varchar(20) NOT NULL,
  `alamat` text NOT NULL,
  `paket_id` int(11) NOT NULL,
  `waktu` int(11) NOT NULL,
  `berat` decimal(10,2) NOT NULL,
  `tarif` decimal(10,2) NOT NULL,
  `tgl_masuk` datetime NOT NULL,
  `tgl_keluar` datetime NOT NULL,
  `total_bayar` decimal(10,2) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tr_cuci_kering`
--

INSERT INTO `tr_cuci_kering` (`id`, `user_id`, `nama`, `no_hp`, `alamat`, `paket_id`, `waktu`, `berat`, `tarif`, `tgl_masuk`, `tgl_keluar`, `total_bayar`, `status`) VALUES
(6, 13, 'Eleanor', '086757', 'Kaligondang', 2, 24, 9.90, 9000.00, '2024-05-21 21:26:09', '2024-05-30 05:42:54', 89100.00, 1),
(7, 6, 'Naira', '08124256', 'Kaligondang', 1, 48, 3.55, 6000.00, '2024-05-21 21:52:00', '2024-05-29 23:53:35', 21300.00, 2),
(8, 6, 'Naira', '0878756', 'Purbalingga', 3, 6, 3.45, 15000.00, '2024-05-21 21:58:46', '2024-05-22 03:58:46', 51750.00, 2),
(9, 1, 'Kayla', '0889788', 'Purbalingga', 1, 48, 4.05, 6000.00, '2024-05-22 02:33:16', '2024-05-29 23:53:46', 24300.00, 2),
(10, 1, 'Nayla', '0897876', 'Purbalingga', 1, 48, 5.86, 6000.00, '2024-05-22 02:33:49', '2024-05-29 23:57:57', 35160.00, 1),
(42, 6, 'Naira', '08645498', 'Purbalingga', 1, 48, 8.52, 6000.00, '2024-05-27 16:55:59', '2024-05-29 23:58:10', 51120.00, 0),
(47, 1, 'Aurora', '08953012', 'Purbalingga', 1, 48, 2.45, 6000.00, '2024-05-27 22:50:50', '2024-05-29 22:50:50', 14700.00, 0),
(48, 1, 'Aurora', '08953012', 'Purbalingga', 1, 48, 2.45, 6000.00, '2024-05-27 22:51:22', '2024-05-29 22:51:22', 14700.00, 0),
(49, 1, 'Jenna', '0889788', 'Purbalingga', 2, 24, 4.05, 9000.00, '2024-05-27 22:52:23', '2024-05-28 22:52:23', 36450.00, 0),
(50, 1, 'Eleanor', '087453457846', 'Purbalingga', 2, 24, 11.65, 9000.00, '2024-05-27 23:49:37', '2024-05-28 23:49:37', 104850.00, 0),
(51, 1, 'Syaff', '0876878564', 'Purbalingga', 3, 6, 4.05, 15000.00, '2024-05-27 23:50:05', '2024-05-28 05:50:05', 60750.00, 0),
(52, 1, 'Syafira', '09999999', 'Kajongan', 3, 6, 2.45, 15000.00, '2024-05-27 23:51:09', '2024-05-28 05:51:09', 36750.00, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tr_cuci_komplit`
--

CREATE TABLE `tr_cuci_komplit` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `no_hp` varchar(15) NOT NULL,
  `alamat` text NOT NULL,
  `paket_id` int(11) NOT NULL,
  `waktu` int(11) NOT NULL,
  `berat` decimal(10,2) NOT NULL,
  `tarif` decimal(10,2) NOT NULL,
  `tgl_masuk` datetime NOT NULL,
  `tgl_keluar` datetime NOT NULL,
  `total_bayar` decimal(10,2) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tr_cuci_komplit`
--

INSERT INTO `tr_cuci_komplit` (`id`, `user_id`, `nama`, `no_hp`, `alamat`, `paket_id`, `waktu`, `berat`, `tarif`, `tgl_masuk`, `tgl_keluar`, `total_bayar`, `status`) VALUES
(1, 6, 'Naira', '081542656', 'Purbalingga', 3, 6, 8.63, 15000.00, '2024-05-21 22:35:20', '2024-05-22 04:35:20', 129450.00, 2),
(2, 6, 'Naira', '0875655', 'Purbalingga', 2, 24, 5.86, 9000.00, '2024-05-22 03:23:23', '2024-05-23 03:23:23', 52740.00, 2),
(3, 6, 'Naira', '0898756', 'Kaligondang', 2, 24, 2.45, 9000.00, '2024-05-22 03:28:01', '2024-05-23 03:28:01', 22050.00, 1),
(4, 6, 'Naira', '0878756', 'Purbalingga', 1, 48, 3.45, 6000.00, '2024-05-25 14:16:22', '2024-05-27 14:16:22', 20700.00, 0),
(6, 13, 'Eleanor', '08346748', 'Purbalingga', 3, 6, 4.86, 15000.00, '2024-05-26 19:56:42', '2024-05-27 01:56:42', 72900.00, 0),
(12, 6, 'Naira', '084767688442', 'Purbalingga', 1, 48, 2.45, 6000.00, '2024-05-27 00:46:06', '2024-05-29 00:46:06', 14700.00, 0),
(13, 6, 'Naira', '086757', 'karangturi', 2, 24, 4.30, 9000.00, '2024-05-29 05:52:15', '2024-05-30 05:52:15', 38700.00, 0),
(14, 18, 'Tedi', '012345', 'pbg', 2, 24, 2.40, 9000.00, '2024-05-29 05:53:54', '2024-05-30 05:53:54', 21600.00, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tr_cuci_satuan`
--

CREATE TABLE `tr_cuci_satuan` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `no_hp` varchar(15) NOT NULL,
  `alamat` text NOT NULL,
  `paket_id` int(11) NOT NULL,
  `waktu` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `tarif` decimal(10,2) NOT NULL,
  `tgl_masuk` datetime NOT NULL,
  `tgl_keluar` datetime NOT NULL,
  `total_bayar` decimal(10,2) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tr_cuci_satuan`
--

INSERT INTO `tr_cuci_satuan` (`id`, `user_id`, `nama`, `no_hp`, `alamat`, `paket_id`, `waktu`, `jumlah`, `tarif`, `tgl_masuk`, `tgl_keluar`, `total_bayar`, `status`) VALUES
(3, 6, 'Naira', '0889788', 'Purbalingga', 7, 24, 6, 20000.00, '2024-05-21 23:14:23', '2024-05-22 23:14:23', 120000.00, 2),
(4, 6, 'Naira', '086765', 'Kaligondang', 5, 24, 8, 15000.00, '2024-05-22 03:25:49', '2024-05-23 03:25:49', 120000.00, 2),
(5, 6, 'Naira', '09999999', 'Purbalingga', 3, 24, 4, 6000.00, '2024-05-25 14:30:49', '2024-05-26 14:30:49', 24000.00, 2),
(6, 13, 'Eleanor', '08645498', 'Purbalingga', 5, 24, 7, 15000.00, '2024-05-26 19:59:14', '2024-05-27 19:59:14', 105000.00, 1),
(7, 6, 'Naira', '08645498', 'Purbalingga', 6, 24, 3, 20000.00, '2024-05-27 00:44:15', '2024-05-28 00:44:15', 60000.00, 1),
(8, 6, 'Naira', '08953012', 'Purbalingga', 1, 24, 6, 15000.00, '2024-05-27 00:44:57', '2024-05-28 00:44:57', 90000.00, 0),
(9, 18, 'Tedi', '0333', 'gd', 7, 24, 2, 20000.00, '2024-05-29 05:54:27', '2024-05-30 05:54:27', 40000.00, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users_`
--

CREATE TABLE `users_` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(50) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users_`
--

INSERT INTO `users_` (`id`, `username`, `password`, `role`) VALUES
(1, 'Nayla', '$2y$10$RYcFip7qTL2hwXIWLGpe2ejWRE3X18oA1LiXzyTSGhQ6t00iPCQ.S', 'admin'),
(6, 'Naira', '$2y$10$tokgBn35URaEiAG6QXxA3.5sYzusvvvr5mmsscNktqQPoRWtcAzvW', 'user'),
(7, 'Aurora', '$2y$10$lNhFcstgP7kpvrIFL35Uwe0/ujyrwFEdjjxmq7tU0/xzZ1FCh3jcy', 'user'),
(8, 'Kayla', '$2y$10$c9MKc6OKrElv9K.Ll2oVMOrgGYI88qOJfBhJMkddMiGK.BiNajSxa', 'user'),
(9, 'Syaff', '$2y$10$5EdmkTbHsexbNyTzgwKYFeBwUqUl6iOZQTWKrBGKy9YjzZhOGsEH2', 'user'),
(10, 'Syafira', '$2y$10$3m1K9UqXbjS/zX/peqP7LOECrXzocKEfqrcvFvZb0nRf6QmiU6I0K', 'user'),
(11, 'Ikhlas', '$2y$10$CvrM6QFbAMTvk1mcIRbr..6tDIY6e2jt/vSpT6mf2KIo3y1hdx7oO', 'admin'),
(12, 'Jenna', '0094c3dfe66bedab0254d7f811b7fb40', 'user'),
(13, 'Eleanor', '$2y$10$FB1s670hj0L/aMDx2GbkC.sEHVhMhuAngkOEtDF/o/rZlsILGipiS', 'user'),
(18, 'Tedi', '$2y$10$NntEOKqOqRRZo6tYkYxXWe3iv0CGu9Gr5cCMOYgGf0yixmPy2ZZkO', 'user'),
(20, 'ikhlassam_', '$2y$10$5U0/IyS20c6Pp18KWslSqOYjhU9jDmZK57RNL9.UFd/owmxfV62GK', 'user');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `cuci_kering`
--
ALTER TABLE `cuci_kering`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cuci_komplit`
--
ALTER TABLE `cuci_komplit`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cuci_satuan`
--
ALTER TABLE `cuci_satuan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tr_cuci_kering`
--
ALTER TABLE `tr_cuci_kering`
  ADD PRIMARY KEY (`id`),
  ADD KEY `paket_id` (`paket_id`),
  ADD KEY `fk_user_id` (`user_id`),
  ADD KEY `fk_nama_username` (`nama`);

--
-- Indeks untuk tabel `tr_cuci_komplit`
--
ALTER TABLE `tr_cuci_komplit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `paket_id` (`paket_id`),
  ADD KEY `fk_users` (`nama`),
  ADD KEY `fk_customer2` (`user_id`);

--
-- Indeks untuk tabel `tr_cuci_satuan`
--
ALTER TABLE `tr_cuci_satuan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `paket_id` (`paket_id`),
  ADD KEY `fk_users_` (`nama`),
  ADD KEY `fk_customer3` (`user_id`);

--
-- Indeks untuk tabel `users_`
--
ALTER TABLE `users_`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `cuci_komplit`
--
ALTER TABLE `cuci_komplit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `cuci_satuan`
--
ALTER TABLE `cuci_satuan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `tr_cuci_kering`
--
ALTER TABLE `tr_cuci_kering`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT untuk tabel `tr_cuci_komplit`
--
ALTER TABLE `tr_cuci_komplit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `tr_cuci_satuan`
--
ALTER TABLE `tr_cuci_satuan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `users_`
--
ALTER TABLE `users_`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `tr_cuci_kering`
--
ALTER TABLE `tr_cuci_kering`
  ADD CONSTRAINT `fk_customer` FOREIGN KEY (`user_id`) REFERENCES `users_` (`id`),
  ADD CONSTRAINT `fk_id_users` FOREIGN KEY (`user_id`) REFERENCES `users_` (`id`),
  ADD CONSTRAINT `fk_nama_username` FOREIGN KEY (`nama`) REFERENCES `users_` (`username`),
  ADD CONSTRAINT `fk_user_ck` FOREIGN KEY (`nama`) REFERENCES `users_` (`username`),
  ADD CONSTRAINT `fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `users_` (`id`),
  ADD CONSTRAINT `tr_cuci_kering_ibfk_1` FOREIGN KEY (`paket_id`) REFERENCES `cuci_kering` (`id`),
  ADD CONSTRAINT `us_users_` FOREIGN KEY (`nama`) REFERENCES `users_` (`username`);

--
-- Ketidakleluasaan untuk tabel `tr_cuci_komplit`
--
ALTER TABLE `tr_cuci_komplit`
  ADD CONSTRAINT `fk_customer2` FOREIGN KEY (`user_id`) REFERENCES `users_` (`id`),
  ADD CONSTRAINT `fk_users` FOREIGN KEY (`nama`) REFERENCES `users_` (`username`),
  ADD CONSTRAINT `fko_id_users` FOREIGN KEY (`user_id`) REFERENCES `users_` (`id`),
  ADD CONSTRAINT `tr_cuci_komplit_ibfk_1` FOREIGN KEY (`paket_id`) REFERENCES `cuci_komplit` (`id`);

--
-- Ketidakleluasaan untuk tabel `tr_cuci_satuan`
--
ALTER TABLE `tr_cuci_satuan`
  ADD CONSTRAINT `fk_customer3` FOREIGN KEY (`user_id`) REFERENCES `users_` (`id`),
  ADD CONSTRAINT `fk_users_` FOREIGN KEY (`nama`) REFERENCES `users_` (`username`),
  ADD CONSTRAINT `fs_id_users` FOREIGN KEY (`user_id`) REFERENCES `users_` (`id`),
  ADD CONSTRAINT `tr_cuci_satuan_ibfk_1` FOREIGN KEY (`paket_id`) REFERENCES `cuci_satuan` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
