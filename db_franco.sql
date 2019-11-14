-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 13 Jul 2019 pada 18.34
-- Versi server: 10.3.16-MariaDB
-- Versi PHP: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_franco`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `cicilan`
--

CREATE TABLE `cicilan` (
  `id_cicilan` int(11) NOT NULL,
  `id_pinjaman` int(11) NOT NULL,
  `pembayaran` varchar(32) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `cicilan`
--

INSERT INTO `cicilan` (`id_cicilan`, `id_pinjaman`, `pembayaran`, `status`) VALUES
(1, 5, '', 0),
(2, 13, '', 0),
(3, 13, '26e63b4d47c58a213706500c1e017c48', 1),
(5, 13, 'd700c69325e3f313420ceaf6f2f49b4b', 1),
(6, 13, 'dfb8e07e759746357a1c9b4cdb845fc7', 1),
(7, 13, 'd4004bc7ecf1d60442b23e8f7b142474', 1),
(8, 13, '9e8325545ae0dafdbf4dbb9af8f56419', 1),
(9, 15, '1c4f95fdc9f629da1c8ad166a21dbcab', 1),
(10, 15, '26e1d592a68dbd82f29a7f2161ee160c', 1),
(11, 15, 'e89278c91f12db2f4884b6a244428dc6', 1),
(12, 18, 'f1c533d763a36375f8ca712d49d74338', 1),
(13, 18, 'e7f3fdd5e93219363b69e8a815ad72bb', 1),
(14, 18, '47719a2fd4215e14bcd83aa98dbfc241', 1),
(15, 20, '98cf2242e24f468abaea58023204d4d2', 1),
(16, 20, '1eb1c23f7a66155381b5ba6f0f0b9d90', 1),
(17, 20, '9955e8717a8473eecd03d0adf6aa96a6', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pinjaman`
--

CREATE TABLE `pinjaman` (
  `id_pinjaman` int(11) NOT NULL,
  `email` varchar(20) NOT NULL,
  `jumlah_pinjaman` bigint(20) NOT NULL,
  `periode` int(2) NOT NULL,
  `tanggal_pinjaman` date NOT NULL,
  `status` int(1) NOT NULL,
  `keterangan` varchar(50) NOT NULL,
  `deleted` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pinjaman`
--

INSERT INTO `pinjaman` (`id_pinjaman`, `email`, `jumlah_pinjaman`, `periode`, `tanggal_pinjaman`, `status`, `keterangan`, `deleted`) VALUES
(1, 'c@c', 500000, 12, '2019-07-06', 0, 'beli botol aqua', 1),
(2, 'c@c', 500000, 3, '2019-07-06', 0, 'utang 50.000', 1),
(3, 'c@c', 10000000, 6, '2019-07-06', 0, 'beli laptop', 1),
(4, 'c@c', 5000000, 12, '2019-07-06', 1, 'beli hp', 1),
(5, 'c@c', 1500000, 3, '2019-07-06', 1, 'beli hp seken', 0),
(6, 'asd@asd', 500000, 3, '2019-07-06', 0, 'beli baju', 0),
(7, 'c@c', 2500000, 6, '2019-07-07', 0, 'beli sepeda', 1),
(8, 'c@c', 500000, 3, '2019-07-07', 0, 'coba utang', 1),
(9, 'c@c', 500000, 12, '2019-07-07', 0, 'coba minjam duit', 1),
(10, 'c@c', 500000, 3, '2019-07-07', 0, 'coba lagi minjam', 1),
(11, 'c@c', 500000, 3, '2019-07-07', 0, 'masih bisa', 1),
(12, 'a@a', 500000, 3, '2019-07-07', 0, 'service laptop', 0),
(13, 'c@c', 4500000, 6, '2019-07-07', 1, 'cicilan kulkas', 1),
(14, 'c@c', 500000, 3, '2019-07-07', 0, 'DP Mobil', 1),
(15, 'pengunjung1@email', 2500000, 3, '2019-07-08', 1, 'beli HP', 1),
(16, 'pengunjung1@email', 500000, 3, '2019-07-08', 0, 'bayar utang', 1),
(17, 'pengunjung1@email', 1500000, 3, '2019-07-08', 0, 'bayar utang', 1),
(18, 'pengunjung1@email', 500000, 3, '2019-07-08', 1, 'qwe', 1),
(19, 'c@c', 500000, 3, '2019-07-08', 0, 'beli makan', 0),
(20, 'pengguna2@email', 500000, 3, '2019-07-08', 1, 'beli sepatu', 1),
(21, 'pengguna2@email', 500000, 3, '2019-07-08', 0, 'qwe', 1),
(22, 'pengguna2@email', 500000, 3, '2019-07-08', 0, 'beli sepatu', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `syarat`
--

CREATE TABLE `syarat` (
  `email` varchar(20) NOT NULL,
  `syarat_foto` int(1) NOT NULL,
  `syarat_ktp` int(1) NOT NULL,
  `syarat_npwp` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `syarat`
--

INSERT INTO `syarat` (`email`, `syarat_foto`, `syarat_ktp`, `syarat_npwp`) VALUES
('a@a', 0, 0, 0),
('asd@asd', 0, 0, 0),
('c@c', 1, 1, 1),
('pengguna2@email', 1, 1, 0),
('pengunjung1@email', 1, 1, 0),
('v@v', 0, 0, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `email` varchar(20) NOT NULL,
  `password` varchar(32) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `jenis_bank` varchar(7) NOT NULL,
  `no_rekening` int(10) NOT NULL,
  `foto` varchar(32) NOT NULL,
  `ktp` varchar(32) NOT NULL,
  `npwp` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`email`, `password`, `nama`, `jenis_bank`, `no_rekening`, `foto`, `ktp`, `npwp`) VALUES
('a@a', '0cc175b9c0f1b6a831c399e269772661', 'asda', 'BNI', 12311, '', '', ''),
('admin@admin', '21232f297a57a5a743894a0e4a801fc3', '', '', 0, '', '', ''),
('asd@asd', '7815696ecbf1c96e6894b779456d330e', 'Herul Syahwandi', 'BNI', 560, '', '', ''),
('c@c', '4a8a08f09d37b73795649038408b5f33', 'Herul Syahwandi', 'BCA', 123, '192cc0f885e7a0ecb656c0af21222ffa', '694333783a8f04c18d1b4d873b5c080b', '1eb176446d0d4a0c216771ae78feabb2'),
('pengguna2@email', '7815696ecbf1c96e6894b779456d330e', 'Pengguna 2', 'BRI', 56772, '5a1eae290301c129818daecbb7ad7156', 'eb24277e0a984d9b264e46bb9ee2583d', ''),
('pengunjung1@email', '7815696ecbf1c96e6894b779456d330e', 'Herul Syahwandi', 'BCA', 123, '0cb57d747769f7130807a95c4cf508dd', '0ae55a9ec304dc5b6aebe95860d94f7e', 'c6af35f5e2e8cd307bc805a092511257'),
('v@v', '9e3669d19b675bd57058fd4664205d2a', 'as', 'BNI', 123, '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `cicilan`
--
ALTER TABLE `cicilan`
  ADD PRIMARY KEY (`id_cicilan`),
  ADD KEY `id_pinjaman` (`id_pinjaman`);

--
-- Indeks untuk tabel `pinjaman`
--
ALTER TABLE `pinjaman`
  ADD PRIMARY KEY (`id_pinjaman`),
  ADD KEY `email` (`email`);

--
-- Indeks untuk tabel `syarat`
--
ALTER TABLE `syarat`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `cicilan`
--
ALTER TABLE `cicilan`
  MODIFY `id_cicilan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `pinjaman`
--
ALTER TABLE `pinjaman`
  MODIFY `id_pinjaman` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `pinjaman`
--
ALTER TABLE `pinjaman`
  ADD CONSTRAINT `pinjaman_ibfk_1` FOREIGN KEY (`email`) REFERENCES `user` (`email`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `syarat`
--
ALTER TABLE `syarat`
  ADD CONSTRAINT `syarat_ibfk_1` FOREIGN KEY (`email`) REFERENCES `user` (`email`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
