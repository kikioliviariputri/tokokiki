-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 15, 2025 at 05:28 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tokokiki`
--

-- --------------------------------------------------------

--
-- Table structure for table `checkout`
--

CREATE TABLE `checkout` (
  `id_checkout` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `total_harga` decimal(10,2) NOT NULL,
  `metode_pembayaran` varchar(200) NOT NULL,
  `alamat_pengiriman` text NOT NULL,
  `nomor_telepon` varchar(15) NOT NULL,
  `status` enum('pending','berhasil','gagal') DEFAULT 'pending',
  `status_pembayaran` enum('belum_dibayar','menunggu_verifikasi','berhasil','batal') DEFAULT 'belum_dibayar',
  `bukti_transfer` varchar(255) DEFAULT NULL,
  `tanggal_checkout` timestamp NOT NULL DEFAULT current_timestamp(),
  `status_pengiriman` enum('menunggu','dikirim','selesai','batal') DEFAULT 'menunggu'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `checkout`
--

INSERT INTO `checkout` (`id_checkout`, `user_id`, `total_harga`, `metode_pembayaran`, `alamat_pengiriman`, `nomor_telepon`, `status`, `status_pembayaran`, `bukti_transfer`, `tanggal_checkout`, `status_pengiriman`) VALUES
(1, 2, 929332.00, 'transfer_bank', 'Jl. Pengarengan', '085627238876', 'pending', 'batal', NULL, '2025-05-12 09:54:24', 'batal'),
(2, 2, 232333.00, '', 'saalksakjsan', '09213849450', 'pending', 'belum_dibayar', NULL, '2025-05-12 10:33:06', 'menunggu'),
(3, 2, 232333.00, '', 'kqwqkwqqwnj', '090999808990', 'pending', 'belum_dibayar', NULL, '2025-05-12 10:34:00', 'menunggu'),
(4, 2, 232333.00, 'gopay', 'Jl. kdsjsdksd', '098495969600', 'pending', 'belum_dibayar', NULL, '2025-05-12 10:42:03', 'menunggu'),
(5, 2, 232333.00, 'gopay', 'dkdsksdjkdj', '0986970709968', 'pending', 'belum_dibayar', NULL, '2025-05-12 10:47:47', 'menunggu'),
(6, 2, 232333.00, '', 'asksmask', '0939400', 'pending', 'belum_dibayar', NULL, '2025-05-12 10:50:04', 'menunggu'),
(7, 2, 232333.00, 'ovo', 'sasa', '8098', 'pending', 'belum_dibayar', NULL, '2025-05-12 10:52:45', 'menunggu'),
(8, 2, 232333.00, '', 'D', '085627238876', 'pending', 'belum_dibayar', NULL, '2025-05-12 10:53:09', 'menunggu'),
(9, 2, 232333.00, 'ovo', 'a', '098', 'pending', 'belum_dibayar', NULL, '2025-05-12 10:55:21', 'menunggu'),
(10, 2, 232333.00, '', '21212', '12211212', 'pending', 'belum_dibayar', NULL, '2025-05-12 10:55:44', 'menunggu'),
(11, 2, 232333.00, '', 'sasasa', '8098', 'pending', 'belum_dibayar', NULL, '2025-05-12 11:03:59', 'menunggu'),
(12, 2, 464666.00, '', 'sasa', 'ssa', 'pending', 'belum_dibayar', NULL, '2025-05-12 13:36:01', 'menunggu'),
(13, 2, 232333.00, '', 'wqkwqkwqk', '12332', 'pending', 'belum_dibayar', NULL, '2025-05-12 13:36:31', 'menunggu'),
(14, 2, 464666.00, 'BCA', 'hdjsjsn', '9930', 'pending', 'belum_dibayar', 'bukti_1747057578.jpg', '2025-05-12 13:39:25', 'menunggu'),
(15, 2, 232333.00, 'BSI', '1827387', '12635', 'pending', 'belum_dibayar', 'bukti_1747057773.jpg', '2025-05-12 13:49:16', 'menunggu'),
(16, 2, 232333.00, 'BRI', 'asasassa', '212112', 'pending', 'belum_dibayar', 'bukti_1747058083.jpg', '2025-05-12 13:54:35', 'menunggu'),
(17, 2, 232333.00, 'BRI', 'dkdjskdnskj`', '094844909', 'pending', 'belum_dibayar', 'bukti_1747182394.png', '2025-05-14 00:26:25', 'menunggu'),
(18, 1, 85000.00, 'BCA', 'fgffg', '0785', 'pending', 'belum_dibayar', 'bukti_1747260137.png', '2025-05-14 05:56:47', 'menunggu'),
(21, 7, 50000.00, 'BCA', 'ad', '222', 'pending', 'belum_dibayar', 'bukti_1747229696.jpeg', '2025-05-14 13:34:01', 'menunggu'),
(22, 2, 50000.00, 'BCA', 'sdc', '07', 'pending', 'belum_dibayar', NULL, '2025-05-15 02:26:23', 'menunggu'),
(23, 2, 85000.00, 'BRI', 'sd', '2', 'pending', 'belum_dibayar', NULL, '2025-05-15 03:26:05', 'menunggu');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`) VALUES
(4, 'Buku Non Fiksi'),
(1, 'Buku Pelajaran');

-- --------------------------------------------------------

--
-- Table structure for table `keranjang`
--

CREATE TABLE `keranjang` (
  `id_keranjang` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `id_buku` int(11) DEFAULT NULL,
  `jumlah` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id_pembayaran` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `total_harga` decimal(10,2) NOT NULL,
  `metode_pembayaran` enum('transfer','cash') NOT NULL,
  `status` enum('pending','paid','cancelled') DEFAULT 'pending',
  `tanggal_pembayaran` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE `penjualan` (
  `id_penjualan` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `id_buku` int(11) DEFAULT NULL,
  `jumlah_terjual` int(11) NOT NULL,
  `total_harga` decimal(10,2) NOT NULL,
  `tanggal_penjualan` timestamp NOT NULL DEFAULT current_timestamp(),
  `status_pembayaran` enum('belum dibayar','sudah dibayar') DEFAULT 'belum dibayar',
  `status_pengiriman` enum('belum dikirim','dikirim','diterima') DEFAULT 'belum dikirim'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `penjualan`
--

INSERT INTO `penjualan` (`id_penjualan`, `user_id`, `id_buku`, `jumlah_terjual`, `total_harga`, `tanggal_penjualan`, `status_pembayaran`, `status_pengiriman`) VALUES
(18, 1, 6, 1, 35000.00, '2025-05-14 05:56:47', 'sudah dibayar', 'dikirim'),
(19, 1, 7, 1, 50000.00, '2025-05-14 05:56:47', 'sudah dibayar', 'dikirim'),
(22, 7, 7, 1, 50000.00, '2025-05-14 13:34:01', 'sudah dibayar', 'dikirim'),
(23, 2, 7, 1, 50000.00, '2025-05-15 02:26:23', 'sudah dibayar', 'dikirim'),
(24, 2, 6, 1, 35000.00, '2025-05-15 03:26:05', 'belum dibayar', 'belum dikirim'),
(25, 2, 7, 1, 50000.00, '2025-05-15 03:26:05', 'belum dibayar', 'belum dikirim');

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id_buku` int(11) NOT NULL,
  `nama_buku` varchar(255) NOT NULL,
  `penerbit` varchar(255) NOT NULL,
  `harga` decimal(10,2) NOT NULL,
  `stok` int(11) DEFAULT 0,
  `kategori_id` int(11) DEFAULT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id_buku`, `nama_buku`, `penerbit`, `harga`, `stok`, `kategori_id`, `gambar`, `created_at`) VALUES
(6, 'Tuhan Maaf Aku Kurang Bersyukur', ' CV. Syalmahat Publishing', 35000.00, 985, 4, 'produk_1747196668.jpeg', '2025-05-14 04:24:28'),
(7, ' Allah Tahu Yang Terbaik Untukku ', ' Syalmahat Publishing', 50000.00, 125, 4, 'produk_1747197743.jpeg', '2025-05-14 04:42:23');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `role` varchar(30) DEFAULT 'user',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `email`, `password`, `fullname`, `role`, `created_at`) VALUES
(1, 'admin', 'admin@gmail.com', '$2y$10$Bu/nh4CPFVlOzOPE7KDhvuocitn.ouAmmzujeETmoSmw4hARaBpm2', '', 'admin', '2025-05-10 09:42:37'),
(2, 'user', 'user@gmail.com', '$2y$10$01m39T1XiJ3cJ53tlF.idegq.V.NDz7HmN7hNW12yD/iiVqDniG0i', 'Muhammad Ari', 'user', '2025-05-10 10:02:53'),
(7, 'kiki1', 'kiki1@gmail.com', '$2y$10$a1R04KQQpY3.ZA7FrDR28eA1dIbL/iqeI56yi073.Ve/ta1lweMG.', 'kiki1', 'user', '2025-05-14 13:32:01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `checkout`
--
ALTER TABLE `checkout`
  ADD PRIMARY KEY (`id_checkout`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`),
  ADD UNIQUE KEY `nama_kategori` (`nama_kategori`);

--
-- Indexes for table `keranjang`
--
ALTER TABLE `keranjang`
  ADD PRIMARY KEY (`id_keranjang`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `id_buku` (`id_buku`);

--
-- Indexes for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id_pembayaran`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`id_penjualan`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `id_buku` (`id_buku`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_buku`),
  ADD KEY `kategori_id` (`kategori_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `checkout`
--
ALTER TABLE `checkout`
  MODIFY `id_checkout` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `keranjang`
--
ALTER TABLE `keranjang`
  MODIFY `id_keranjang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `id_pembayaran` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `id_penjualan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id_buku` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `checkout`
--
ALTER TABLE `checkout`
  ADD CONSTRAINT `checkout_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `keranjang`
--
ALTER TABLE `keranjang`
  ADD CONSTRAINT `keranjang_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `keranjang_ibfk_2` FOREIGN KEY (`id_buku`) REFERENCES `produk` (`id_buku`);

--
-- Constraints for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD CONSTRAINT `pembayaran_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD CONSTRAINT `penjualan_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `penjualan_ibfk_2` FOREIGN KEY (`id_buku`) REFERENCES `produk` (`id_buku`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `produk`
--
ALTER TABLE `produk`
  ADD CONSTRAINT `produk_ibfk_1` FOREIGN KEY (`kategori_id`) REFERENCES `kategori` (`id_kategori`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
