-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 02 Feb 2025 pada 12.25
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pertiwi_cbt`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `api_setting`
--

CREATE TABLE `api_setting` (
  `id` int(11) NOT NULL,
  `auto_sync` int(11) NOT NULL DEFAULT 0,
  `edit_profile_siswa` int(11) NOT NULL DEFAULT 0,
  `edit_profile_guru` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Struktur dari tabel `api_token`
--

CREATE TABLE `api_token` (
  `id_api` int(11) NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT current_timestamp(),
  `id_user` int(11) NOT NULL,
  `address` mediumtext NOT NULL,
  `agent` mediumtext NOT NULL,
  `device` mediumtext NOT NULL,
  `token` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku_induk`
--

CREATE TABLE `buku_induk` (
  `id_siswa` int(11) NOT NULL,
  `uid` varchar(50) NOT NULL,
  `rombel_awal` varchar(50) DEFAULT NULL,
  `nama_panggilan` varchar(50) DEFAULT NULL,
  `bahasa` varchar(50) DEFAULT NULL,
  `jml_saudara_kandung` int(11) NOT NULL DEFAULT 0,
  `jml_saudara_tiri` int(11) NOT NULL DEFAULT 0,
  `jml_saudara_angkat` int(11) NOT NULL DEFAULT 0,
  `yatim` int(11) NOT NULL DEFAULT 0 COMMENT '0=ada orang-tua, 1=yatim, 2=yatim piatu',
  `tinggal_bersama` varchar(1) NOT NULL DEFAULT '1' COMMENT '1=orang-tua, 2=saudara, 3=wali, 4=asrama/pesantren, 5=kost, 6=lainnya',
  `jarak` varchar(10) DEFAULT NULL,
  `gol_darah` varchar(4) DEFAULT NULL,
  `penyakit` longtext DEFAULT NULL,
  `kelainan_fisik` varchar(100) DEFAULT NULL,
  `kegemaran` longtext DEFAULT NULL,
  `beasiswa` longtext DEFAULT NULL,
  `no_ijazah_sebelumnya` varchar(50) DEFAULT NULL,
  `tahun_lulus_sebelumnya` varchar(10) DEFAULT NULL,
  `pindahan_dari` varchar(100) DEFAULT NULL,
  `alasan_kepindahan` varchar(200) DEFAULT NULL,
  `agama_ayah` varchar(20) DEFAULT NULL,
  `tempat_lahir_ayah` varchar(50) DEFAULT NULL,
  `wn_ayah` varchar(50) DEFAULT NULL,
  `penghasilan_ayah` varchar(50) DEFAULT NULL,
  `hidup_meninggal_ayah` varchar(50) DEFAULT NULL,
  `agama_ibu` varchar(50) DEFAULT NULL,
  `tempat_lahir_ibu` varchar(50) DEFAULT NULL,
  `wn_ibu` varchar(50) DEFAULT NULL,
  `penghasilan_ibu` varchar(50) DEFAULT NULL,
  `hidup_meninggal_ibu` varchar(50) DEFAULT NULL,
  `tempat_lahir_wali` varchar(50) DEFAULT NULL,
  `agama_wali` varchar(20) DEFAULT NULL,
  `wn_wali` varchar(50) DEFAULT NULL,
  `penghasilan_wali` varchar(10) DEFAULT NULL,
  `status` int(11) DEFAULT 1 COMMENT '1= aktif, 2=lulus, 3=pindah, 4=keluar',
  `tahun_lulus` int(11) DEFAULT NULL,
  `no_ijazah` varchar(50) DEFAULT NULL,
  `kelas_akhir` varchar(50) DEFAULT NULL,
  `lanjut_ke` varchar(50) DEFAULT NULL,
  `pindah_ke` varchar(100) DEFAULT NULL,
  `alasan_pindah` varchar(100) DEFAULT NULL,
  `tgl_pindah` varchar(20) DEFAULT NULL,
  `bekerja_di` varchar(100) DEFAULT NULL,
  `catatan_penting` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `buku_induk`
--

INSERT INTO `buku_induk` (`id_siswa`, `uid`, `rombel_awal`, `nama_panggilan`, `bahasa`, `jml_saudara_kandung`, `jml_saudara_tiri`, `jml_saudara_angkat`, `yatim`, `tinggal_bersama`, `jarak`, `gol_darah`, `penyakit`, `kelainan_fisik`, `kegemaran`, `beasiswa`, `no_ijazah_sebelumnya`, `tahun_lulus_sebelumnya`, `pindahan_dari`, `alasan_kepindahan`, `agama_ayah`, `tempat_lahir_ayah`, `wn_ayah`, `penghasilan_ayah`, `hidup_meninggal_ayah`, `agama_ibu`, `tempat_lahir_ibu`, `wn_ibu`, `penghasilan_ibu`, `hidup_meninggal_ibu`, `tempat_lahir_wali`, `agama_wali`, `wn_wali`, `penghasilan_wali`, `status`, `tahun_lulus`, `no_ijazah`, `kelas_akhir`, `lanjut_ke`, `pindah_ke`, `alasan_pindah`, `tgl_pindah`, `bekerja_di`, `catatan_penting`) VALUES
(1, 'c5bdc1af-ce39-11ef-bfc1-64821443b4b0', NULL, NULL, NULL, 0, 0, 0, 0, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'c5be06c8-ce39-11ef-bfc1-64821443b4b0', NULL, NULL, NULL, 0, 0, 0, 0, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'c5be2128-ce39-11ef-bfc1-64821443b4b0', NULL, NULL, NULL, 0, 0, 0, 0, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, '17b04ae8-e154-11ef-862f-5a29bc38e2c4', NULL, NULL, NULL, 0, 0, 0, 0, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, '84f83447-e154-11ef-862f-5a29bc38e2c4', NULL, NULL, NULL, 0, 0, 0, 0, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `bulan`
--

CREATE TABLE `bulan` (
  `id_bln` int(11) NOT NULL,
  `nama_bln` varchar(25) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `bulan`
--

INSERT INTO `bulan` (`id_bln`, `nama_bln`) VALUES
(1, 'Januari'),
(2, 'Februari'),
(3, 'Maret'),
(4, 'April'),
(5, 'Mei'),
(6, 'Juni'),
(7, 'Juli'),
(8, 'Agustus'),
(9, 'September'),
(10, 'Oktober'),
(11, 'November'),
(12, 'Desember');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cbt_bank_soal`
--

CREATE TABLE `cbt_bank_soal` (
  `id_bank` int(11) NOT NULL,
  `bank_jenis_id` int(11) NOT NULL DEFAULT 0,
  `bank_kode` varchar(255) NOT NULL DEFAULT '0',
  `bank_level` varchar(225) NOT NULL,
  `bank_kelas` longtext NOT NULL,
  `bank_mapel_id` int(11) DEFAULT NULL,
  `bank_jurusan_id` int(11) NOT NULL DEFAULT 0,
  `bank_guru_id` int(11) DEFAULT NULL,
  `bank_nama` varchar(250) NOT NULL,
  `kkm` int(11) DEFAULT 0,
  `jml_soal` int(11) NOT NULL DEFAULT 0,
  `jml_esai` int(11) NOT NULL DEFAULT 0,
  `tampil_pg` int(11) NOT NULL DEFAULT 0,
  `tampil_esai` int(11) NOT NULL DEFAULT 0,
  `bobot_pg` int(11) NOT NULL DEFAULT 0,
  `bobot_esai` int(11) NOT NULL DEFAULT 0,
  `opsi` int(11) NOT NULL DEFAULT 0,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` int(11) NOT NULL DEFAULT 0,
  `soal_agama` varchar(20) DEFAULT NULL,
  `id_tp` int(11) NOT NULL,
  `id_smt` int(11) NOT NULL,
  `deskripsi` longtext DEFAULT NULL,
  `jml_kompleks` int(11) NOT NULL DEFAULT 0,
  `tampil_kompleks` int(11) NOT NULL DEFAULT 0,
  `bobot_kompleks` int(11) NOT NULL DEFAULT 0,
  `jml_jodohkan` int(11) NOT NULL DEFAULT 0,
  `tampil_jodohkan` int(11) NOT NULL DEFAULT 0,
  `bobot_jodohkan` int(11) NOT NULL DEFAULT 0,
  `jml_isian` int(11) NOT NULL DEFAULT 0,
  `tampil_isian` int(11) NOT NULL DEFAULT 0,
  `bobot_isian` int(11) NOT NULL DEFAULT 0,
  `status_soal` int(11) NOT NULL DEFAULT 0 COMMENT '0=belum selesai, 1=sudah selesai'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;

--
-- Dumping data untuk tabel `cbt_bank_soal`
--

INSERT INTO `cbt_bank_soal` (`id_bank`, `bank_jenis_id`, `bank_kode`, `bank_level`, `bank_kelas`, `bank_mapel_id`, `bank_jurusan_id`, `bank_guru_id`, `bank_nama`, `kkm`, `jml_soal`, `jml_esai`, `tampil_pg`, `tampil_esai`, `bobot_pg`, `bobot_esai`, `opsi`, `date`, `status`, `soal_agama`, `id_tp`, `id_smt`, `deskripsi`, `jml_kompleks`, `tampil_kompleks`, `bobot_kompleks`, `jml_jodohkan`, `tampil_jodohkan`, `bobot_jodohkan`, `jml_isian`, `tampil_isian`, `bobot_isian`, `status_soal`) VALUES
(1, 0, '1', '10', 'a:2:{i:0;a:1:{s:8:\"kelas_id\";s:1:\"1\";}i:1;a:1:{s:8:\"kelas_id\";N;}}', 11, 0, 1, '', 0, 1, 0, 1, 0, 100, 0, 5, '2025-01-09 03:35:37', 1, '-', 5, 2, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `cbt_durasi_siswa`
--

CREATE TABLE `cbt_durasi_siswa` (
  `id_durasi` int(11) NOT NULL,
  `id_siswa` int(11) DEFAULT NULL,
  `id_jadwal` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0 COMMENT '0=belum ujian, 1=sedang ujian, 2=sudah ujian',
  `lama_ujian` time DEFAULT NULL,
  `mulai` varchar(22) DEFAULT NULL,
  `selesai` varchar(22) DEFAULT NULL,
  `reset` int(11) NOT NULL DEFAULT 0 COMMENT '0=tidak, 1=reset dari 0, 2=reset dari sisa waktu, 3=ulangi semua',
  `time_create` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `cbt_durasi_siswa`
--

INSERT INTO `cbt_durasi_siswa` (`id_durasi`, `id_siswa`, `id_jadwal`, `status`, `lama_ujian`, `mulai`, `selesai`, `reset`, `time_create`) VALUES
(106, 1, 6, 2, NULL, '2025-01-10 20:45:33', '2025-01-10 20:48:21', 0, '2025-01-10 20:48:21'),
(206, 2, 6, 2, NULL, '2025-01-09 18:12:02', '2025-01-09 18:14:51', 0, '2025-01-09 18:14:51'),
(306, 3, 6, 2, NULL, '2025-01-09 14:20:01', '2025-01-09 14:22:04', 0, '2025-01-09 14:22:04');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cbt_jadwal`
--

CREATE TABLE `cbt_jadwal` (
  `id_jadwal` int(11) NOT NULL,
  `id_tp` char(2) NOT NULL,
  `id_smt` char(2) NOT NULL,
  `id_bank` int(11) DEFAULT NULL,
  `id_jenis` int(11) DEFAULT NULL,
  `tgl_mulai` varchar(20) NOT NULL,
  `tgl_selesai` varchar(20) NOT NULL,
  `durasi_ujian` int(11) NOT NULL,
  `pengawas` longtext DEFAULT NULL,
  `acak_soal` int(11) NOT NULL,
  `acak_opsi` int(11) NOT NULL,
  `hasil_tampil` int(11) NOT NULL,
  `token` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `ulang` int(11) NOT NULL,
  `reset_login` int(11) NOT NULL,
  `rekap` int(11) NOT NULL DEFAULT 0,
  `jam_ke` int(11) NOT NULL DEFAULT 0,
  `jarak` int(11) NOT NULL DEFAULT 0,
  `time_create` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;

--
-- Dumping data untuk tabel `cbt_jadwal`
--

INSERT INTO `cbt_jadwal` (`id_jadwal`, `id_tp`, `id_smt`, `id_bank`, `id_jenis`, `tgl_mulai`, `tgl_selesai`, `durasi_ujian`, `pengawas`, `acak_soal`, `acak_opsi`, `hasil_tampil`, `token`, `status`, `ulang`, `reset_login`, `rekap`, `jam_ke`, `jarak`, `time_create`) VALUES
(6, '5', '2', 1, 2, '2025-01-10', '2025-01-11', 120, NULL, 1, 1, 1, 1, 1, 0, 0, 1, 1, 2, '2025-01-10 20:51:41');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cbt_jenis`
--

CREATE TABLE `cbt_jenis` (
  `id_jenis` int(11) NOT NULL,
  `nama_jenis` varchar(50) NOT NULL,
  `kode_jenis` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `cbt_jenis`
--

INSERT INTO `cbt_jenis` (`id_jenis`, `nama_jenis`, `kode_jenis`) VALUES
(1, 'Penilaian Harian', 'PH'),
(2, 'Penilaian Tengah Semester', 'PTS'),
(3, 'Penilaian Akhir Semester', 'PAS'),
(4, 'Penilaian Akhir Tahun', 'PAT'),
(5, 'Ujian Madrasah Berbasis Komputer', 'UMBK'),
(6, 'Try Out', 'TO'),
(7, 'Simulasi', 'SIML');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cbt_kelas_ruang`
--

CREATE TABLE `cbt_kelas_ruang` (
  `id_kelas_ruang` varchar(50) NOT NULL,
  `id_kelas` int(11) DEFAULT NULL,
  `id_ruang` int(11) NOT NULL,
  `id_sesi` int(11) NOT NULL DEFAULT 0,
  `id_tp` int(11) NOT NULL,
  `id_smt` int(11) NOT NULL,
  `set_siswa` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Struktur dari tabel `cbt_kop_absensi`
--

CREATE TABLE `cbt_kop_absensi` (
  `id_kop` int(11) NOT NULL,
  `header_1` varchar(100) DEFAULT NULL,
  `header_2` varchar(100) DEFAULT NULL,
  `header_3` varchar(100) DEFAULT NULL,
  `header_4` varchar(100) DEFAULT NULL,
  `proktor` varchar(100) DEFAULT NULL,
  `pengawas_1` varchar(100) DEFAULT NULL,
  `pengawas_2` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Struktur dari tabel `cbt_kop_berita`
--

CREATE TABLE `cbt_kop_berita` (
  `id_kop` int(11) NOT NULL,
  `header_1` varchar(100) DEFAULT NULL,
  `header_2` varchar(100) DEFAULT NULL,
  `header_3` varchar(100) DEFAULT NULL,
  `header_4` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Struktur dari tabel `cbt_kop_kartu`
--

CREATE TABLE `cbt_kop_kartu` (
  `id_set_kartu` int(11) NOT NULL,
  `header_1` varchar(100) DEFAULT NULL,
  `header_2` varchar(100) DEFAULT NULL,
  `header_3` varchar(100) DEFAULT NULL,
  `header_4` varchar(100) DEFAULT NULL,
  `tanggal` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Struktur dari tabel `cbt_nilai`
--

CREATE TABLE `cbt_nilai` (
  `id_nilai` int(11) NOT NULL,
  `pg_benar` int(11) DEFAULT 0,
  `pg_nilai` varchar(10) DEFAULT '0',
  `essai_nilai` varchar(10) DEFAULT '0',
  `id_siswa` int(11) DEFAULT NULL,
  `id_jadwal` int(11) DEFAULT NULL,
  `kompleks_nilai` varchar(10) DEFAULT '0',
  `jodohkan_nilai` varchar(10) DEFAULT '0',
  `isian_nilai` varchar(10) DEFAULT '0',
  `dikoreksi` int(11) NOT NULL DEFAULT 0,
  `time_create` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `cbt_nilai`
--

INSERT INTO `cbt_nilai` (`id_nilai`, `pg_benar`, `pg_nilai`, `essai_nilai`, `id_siswa`, `id_jadwal`, `kompleks_nilai`, `jodohkan_nilai`, `isian_nilai`, `dikoreksi`, `time_create`) VALUES
(101, 0, '0', '0', 1, 1, '0', '0', '0', 1, NULL),
(106, 1, '100', '0', 1, 6, '0', '0', '0', 0, NULL),
(201, 1, '100', '0', 2, 1, '0', '0', '0', 1, NULL),
(206, 1, '100', '0', 2, 6, '0', '0', '0', 0, NULL),
(301, 1, '100', '0', 3, 1, '0', '0', '0', 1, NULL),
(306, 1, '100', '0', 3, 6, '0', '0', '0', 0, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `cbt_nomor_peserta`
--

CREATE TABLE `cbt_nomor_peserta` (
  `id_nomor` int(11) NOT NULL,
  `id_siswa` int(11) DEFAULT NULL,
  `id_tp` int(11) NOT NULL,
  `id_smt` int(11) NOT NULL DEFAULT 1,
  `nomor_peserta` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `cbt_nomor_peserta`
--

INSERT INTO `cbt_nomor_peserta` (`id_nomor`, `id_siswa`, `id_tp`, `id_smt`, `nomor_peserta`) VALUES
(15, 1, 5, 1, '2425.10.001'),
(25, 2, 5, 1, '2425.10.003'),
(35, 3, 5, 1, '2425.10.002');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cbt_pengawas`
--

CREATE TABLE `cbt_pengawas` (
  `id_pengawas` varchar(50) NOT NULL,
  `id_jadwal` varchar(50) NOT NULL,
  `id_tp` int(11) NOT NULL,
  `id_smt` int(11) NOT NULL,
  `id_ruang` varchar(50) NOT NULL,
  `id_sesi` varchar(50) NOT NULL,
  `id_guru` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `cbt_pengawas`
--

INSERT INTO `cbt_pengawas` (`id_pengawas`, `id_jadwal`, `id_tp`, `id_smt`, `id_ruang`, `id_sesi`, `id_guru`) VALUES
('52612', '6', 5, 2, '1', '2', '2'),
('52614', '6', 5, 2, '1', '4', '2');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cbt_rekap`
--

CREATE TABLE `cbt_rekap` (
  `id_rekap` int(11) NOT NULL,
  `id_tp` int(11) NOT NULL,
  `tp` varchar(20) NOT NULL,
  `id_smt` int(11) NOT NULL,
  `smt` varchar(20) NOT NULL,
  `id_jadwal` varchar(250) NOT NULL,
  `id_jenis` varchar(250) NOT NULL,
  `kode_jenis` varchar(20) NOT NULL,
  `id_bank` varchar(250) NOT NULL,
  `bank_kelas` longtext NOT NULL,
  `bank_kode` varchar(20) NOT NULL,
  `bank_level` int(11) NOT NULL,
  `id_mapel` varchar(250) NOT NULL,
  `nama_mapel` varchar(100) NOT NULL,
  `kode` varchar(50) NOT NULL,
  `tgl_mulai` varchar(22) NOT NULL,
  `tgl_selesai` varchar(22) NOT NULL,
  `tampil_pg` int(11) NOT NULL,
  `jawaban_pg` longtext NOT NULL,
  `tampil_esai` int(11) NOT NULL,
  `jawaban_esai` longtext NOT NULL,
  `bobot_pg` int(11) NOT NULL,
  `bobot_esai` int(11) NOT NULL,
  `id_guru` varchar(250) NOT NULL,
  `nama_guru` varchar(100) NOT NULL,
  `nama_kelas` longtext DEFAULT NULL,
  `soal_kompleks` longtext DEFAULT NULL,
  `soal_jodohkan` longtext DEFAULT NULL,
  `soal_isian` longtext DEFAULT NULL,
  `soal_essai` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `cbt_rekap`
--

INSERT INTO `cbt_rekap` (`id_rekap`, `id_tp`, `tp`, `id_smt`, `smt`, `id_jadwal`, `id_jenis`, `kode_jenis`, `id_bank`, `bank_kelas`, `bank_kode`, `bank_level`, `id_mapel`, `nama_mapel`, `kode`, `tgl_mulai`, `tgl_selesai`, `tampil_pg`, `jawaban_pg`, `tampil_esai`, `jawaban_esai`, `bobot_pg`, `bobot_esai`, `id_guru`, `nama_guru`, `nama_kelas`, `soal_kompleks`, `soal_jodohkan`, `soal_isian`, `soal_essai`) VALUES
(2, 5, '2024/2025', 2, 'II (dua)', '1', '1', 'PH', '1', 'a:2:{i:0;a:1:{s:8:\"kelas_id\";s:1:\"1\";}i:1;a:1:{s:8:\"kelas_id\";N;}}', '1', 10, '11', 'Pendidikan Pancasila dan Kewarganegaraan', 'PPKn', '2025-01-09', '2025-01-10', 1, 'a:1:{i:0;a:2:{s:7:\"no_soal\";i:1;s:5:\"jawab\";s:1:\"a\";}}', 0, '', 100, 0, '1', 'Asep Bertian Mustopa, S.Pd.', 'a:1:{i:1;s:9:\"10 TJKT 1\";}', 'a:3:{s:6:\"tampil\";s:1:\"0\";s:5:\"bobot\";s:1:\"0\";s:7:\"jawaban\";a:0:{}}', 'a:3:{s:6:\"tampil\";s:1:\"0\";s:5:\"bobot\";s:1:\"0\";s:7:\"jawaban\";a:0:{}}', 'a:3:{s:6:\"tampil\";s:1:\"0\";s:5:\"bobot\";s:1:\"0\";s:7:\"jawaban\";a:0:{}}', 'a:3:{s:6:\"tampil\";s:1:\"0\";s:5:\"bobot\";s:1:\"0\";s:7:\"jawaban\";a:0:{}}'),
(3, 5, '2024/2025', 2, 'II (dua)', '6', '2', 'PTS', '1', 'a:2:{i:0;a:1:{s:8:\"kelas_id\";s:1:\"1\";}i:1;a:1:{s:8:\"kelas_id\";N;}}', '1', 10, '11', 'Pendidikan Pancasila dan Kewarganegaraan', 'PPKn', '2025-01-10', '2025-01-11', 1, 'a:1:{i:0;a:2:{s:7:\"no_soal\";i:1;s:5:\"jawab\";s:1:\"c\";}}', 0, '', 100, 0, '1', 'Asep Bertian Mustopa, S.Pd.', 'a:1:{i:1;s:9:\"10 TJKT 1\";}', 'a:3:{s:6:\"tampil\";s:1:\"0\";s:5:\"bobot\";s:1:\"0\";s:7:\"jawaban\";a:0:{}}', 'a:3:{s:6:\"tampil\";s:1:\"0\";s:5:\"bobot\";s:1:\"0\";s:7:\"jawaban\";a:0:{}}', 'a:3:{s:6:\"tampil\";s:1:\"0\";s:5:\"bobot\";s:1:\"0\";s:7:\"jawaban\";a:0:{}}', 'a:3:{s:6:\"tampil\";s:1:\"0\";s:5:\"bobot\";s:1:\"0\";s:7:\"jawaban\";a:0:{}}');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cbt_rekap_nilai`
--

CREATE TABLE `cbt_rekap_nilai` (
  `id_rekap_nilai` int(11) NOT NULL,
  `id_jadwal` int(11) DEFAULT NULL,
  `id_tp` int(11) NOT NULL,
  `tp` varchar(20) NOT NULL,
  `id_smt` int(11) NOT NULL,
  `smt` varchar(20) NOT NULL,
  `id_jenis` int(11) NOT NULL,
  `kode_jenis` varchar(20) NOT NULL,
  `id_bank` int(11) DEFAULT NULL,
  `id_mapel` int(11) DEFAULT NULL,
  `id_siswa` int(11) DEFAULT NULL,
  `id_kelas` int(11) DEFAULT 0,
  `kelas` varchar(20) NOT NULL,
  `mulai` varchar(20) NOT NULL,
  `selesai` varchar(20) NOT NULL,
  `durasi` varchar(20) NOT NULL,
  `bobot_pg` int(11) NOT NULL,
  `jawaban_pg` longtext NOT NULL,
  `nilai_pg` varchar(10) NOT NULL,
  `bobot_esai` int(11) NOT NULL,
  `jawaban_esai` longtext NOT NULL,
  `nilai_esai` varchar(10) NOT NULL,
  `id_guru` int(11) DEFAULT NULL,
  `nama_siswa` varchar(100) DEFAULT NULL,
  `no_peserta` varchar(100) DEFAULT NULL,
  `soal_kompleks` longtext DEFAULT NULL,
  `soal_jodohkan` longtext DEFAULT NULL,
  `soal_isian` longtext DEFAULT NULL,
  `soal_essai` longtext DEFAULT NULL,
  `time_create` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `cbt_rekap_nilai`
--

INSERT INTO `cbt_rekap_nilai` (`id_rekap_nilai`, `id_jadwal`, `id_tp`, `tp`, `id_smt`, `smt`, `id_jenis`, `kode_jenis`, `id_bank`, `id_mapel`, `id_siswa`, `id_kelas`, `kelas`, `mulai`, `selesai`, `durasi`, `bobot_pg`, `jawaban_pg`, `nilai_pg`, `bobot_esai`, `jawaban_esai`, `nilai_esai`, `id_guru`, `nama_siswa`, `no_peserta`, `soal_kompleks`, `soal_jodohkan`, `soal_isian`, `soal_essai`, `time_create`) VALUES
(4, 1, 5, '2024/2025', 2, 'II (dua)', 1, 'PH', 1, 11, 1, 1, '10 TJKT 1', '', '', '', 100, 'a:0:{}', '0', 0, '', '', 1, 'Ilham', '2425.10.001', 'a:3:{s:5:\"bobot\";s:1:\"0\";s:7:\"jawaban\";a:0:{}s:5:\"nilai\";s:1:\"0\";}', 'a:3:{s:5:\"bobot\";s:1:\"0\";s:7:\"jawaban\";a:0:{}s:5:\"nilai\";s:1:\"0\";}', 'a:3:{s:5:\"bobot\";s:1:\"0\";s:7:\"jawaban\";a:0:{}s:5:\"nilai\";s:1:\"0\";}', 'a:3:{s:5:\"bobot\";s:1:\"0\";s:7:\"jawaban\";a:0:{}s:5:\"nilai\";s:1:\"0\";}', NULL),
(5, 1, 5, '2024/2025', 2, 'II (dua)', 1, 'PH', 1, 11, 3, 1, '10 TJKT 1', '2025-01-09 10:46:56', '2025-01-09 11:13:48', '', 100, 'a:1:{i:0;a:2:{s:7:\"no_soal\";s:1:\"1\";s:5:\"jawab\";s:1:\"A\";}}', '100', 0, '', '', 1, 'Nandang', '2425.10.002', 'a:3:{s:5:\"bobot\";s:1:\"0\";s:7:\"jawaban\";a:0:{}s:5:\"nilai\";s:1:\"0\";}', 'a:3:{s:5:\"bobot\";s:1:\"0\";s:7:\"jawaban\";a:0:{}s:5:\"nilai\";s:1:\"0\";}', 'a:3:{s:5:\"bobot\";s:1:\"0\";s:7:\"jawaban\";a:0:{}s:5:\"nilai\";s:1:\"0\";}', 'a:3:{s:5:\"bobot\";s:1:\"0\";s:7:\"jawaban\";a:0:{}s:5:\"nilai\";s:1:\"0\";}', NULL),
(6, 1, 5, '2024/2025', 2, 'II (dua)', 1, 'PH', 1, 11, 2, 1, '10 TJKT 1', '2025-01-09 12:10:31', '2025-01-09 12:20:58', '', 100, 'a:1:{i:0;a:2:{s:7:\"no_soal\";s:1:\"1\";s:5:\"jawab\";s:1:\"A\";}}', '100', 0, '', '', 1, 'Robby', '2425.10.003', 'a:3:{s:5:\"bobot\";s:1:\"0\";s:7:\"jawaban\";a:0:{}s:5:\"nilai\";s:1:\"0\";}', 'a:3:{s:5:\"bobot\";s:1:\"0\";s:7:\"jawaban\";a:0:{}s:5:\"nilai\";s:1:\"0\";}', 'a:3:{s:5:\"bobot\";s:1:\"0\";s:7:\"jawaban\";a:0:{}s:5:\"nilai\";s:1:\"0\";}', 'a:3:{s:5:\"bobot\";s:1:\"0\";s:7:\"jawaban\";a:0:{}s:5:\"nilai\";s:1:\"0\";}', NULL),
(7, 6, 5, '2024/2025', 2, 'II (dua)', 2, 'PTS', 1, 11, 1, 1, '10 TJKT 1', '2025-01-10 20:45:33', '2025-01-10 20:48:21', '', 100, 'a:1:{i:0;a:2:{s:7:\"no_soal\";s:1:\"1\";s:5:\"jawab\";s:1:\"C\";}}', '100', 0, '', '', 1, 'Ilham', '2425.10.001', 'a:3:{s:5:\"bobot\";s:1:\"0\";s:7:\"jawaban\";a:0:{}s:5:\"nilai\";s:1:\"0\";}', 'a:3:{s:5:\"bobot\";s:1:\"0\";s:7:\"jawaban\";a:0:{}s:5:\"nilai\";s:1:\"0\";}', 'a:3:{s:5:\"bobot\";s:1:\"0\";s:7:\"jawaban\";a:0:{}s:5:\"nilai\";s:1:\"0\";}', 'a:3:{s:5:\"bobot\";s:1:\"0\";s:7:\"jawaban\";a:0:{}s:5:\"nilai\";s:1:\"0\";}', NULL),
(8, 6, 5, '2024/2025', 2, 'II (dua)', 2, 'PTS', 1, 11, 3, 1, '10 TJKT 1', '2025-01-09 14:20:01', '2025-01-09 14:22:04', '', 100, 'a:1:{i:0;a:2:{s:7:\"no_soal\";s:1:\"1\";s:5:\"jawab\";s:1:\"A\";}}', '100', 0, '', '', 1, 'Nandang', '2425.10.002', 'a:3:{s:5:\"bobot\";s:1:\"0\";s:7:\"jawaban\";a:0:{}s:5:\"nilai\";s:1:\"0\";}', 'a:3:{s:5:\"bobot\";s:1:\"0\";s:7:\"jawaban\";a:0:{}s:5:\"nilai\";s:1:\"0\";}', 'a:3:{s:5:\"bobot\";s:1:\"0\";s:7:\"jawaban\";a:0:{}s:5:\"nilai\";s:1:\"0\";}', 'a:3:{s:5:\"bobot\";s:1:\"0\";s:7:\"jawaban\";a:0:{}s:5:\"nilai\";s:1:\"0\";}', NULL),
(9, 6, 5, '2024/2025', 2, 'II (dua)', 2, 'PTS', 1, 11, 2, 1, '10 TJKT 1', '2025-01-09 18:12:02', '2025-01-09 18:14:51', '', 100, 'a:1:{i:0;a:2:{s:7:\"no_soal\";s:1:\"1\";s:5:\"jawab\";s:1:\"A\";}}', '100', 0, '', '', 1, 'Robby', '2425.10.003', 'a:3:{s:5:\"bobot\";s:1:\"0\";s:7:\"jawaban\";a:0:{}s:5:\"nilai\";s:1:\"0\";}', 'a:3:{s:5:\"bobot\";s:1:\"0\";s:7:\"jawaban\";a:0:{}s:5:\"nilai\";s:1:\"0\";}', 'a:3:{s:5:\"bobot\";s:1:\"0\";s:7:\"jawaban\";a:0:{}s:5:\"nilai\";s:1:\"0\";}', 'a:3:{s:5:\"bobot\";s:1:\"0\";s:7:\"jawaban\";a:0:{}s:5:\"nilai\";s:1:\"0\";}', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `cbt_ruang`
--

CREATE TABLE `cbt_ruang` (
  `id_ruang` int(11) NOT NULL,
  `nama_ruang` varchar(50) NOT NULL,
  `kode_ruang` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `cbt_ruang`
--

INSERT INTO `cbt_ruang` (`id_ruang`, `nama_ruang`, `kode_ruang`) VALUES
(1, 'Ruang 1', 'LAB-KOM'),
(2, 'Ruang 2', 'R2'),
(3, 'Ruang 3', 'R3'),
(4, 'Ruang 4', 'R4'),
(5, 'Ruang 5', 'R5');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cbt_sesi`
--

CREATE TABLE `cbt_sesi` (
  `id_sesi` int(11) NOT NULL,
  `nama_sesi` varchar(50) NOT NULL,
  `kode_sesi` varchar(10) NOT NULL,
  `waktu_mulai` time NOT NULL,
  `waktu_akhir` time NOT NULL,
  `aktif` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `cbt_sesi`
--

INSERT INTO `cbt_sesi` (`id_sesi`, `nama_sesi`, `kode_sesi`, `waktu_mulai`, `waktu_akhir`, `aktif`) VALUES
(1, 'Sesi 1', 'S1', '07:30:00', '09:30:00', 1),
(2, 'Sesi 2', 'S2', '09:00:00', '12:30:00', 1),
(3, 'Sesi 3', 'S3', '10:30:00', '14:00:00', 1),
(4, 'sesi bebas', 'sb', '06:00:40', '22:30:44', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `cbt_sesi_siswa`
--

CREATE TABLE `cbt_sesi_siswa` (
  `siswa_id` int(11) NOT NULL,
  `kelas_id` int(11) DEFAULT NULL,
  `ruang_id` int(11) NOT NULL,
  `sesi_id` int(11) NOT NULL,
  `tp_id` int(11) NOT NULL,
  `smt_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `cbt_sesi_siswa`
--

INSERT INTO `cbt_sesi_siswa` (`siswa_id`, `kelas_id`, `ruang_id`, `sesi_id`, `tp_id`, `smt_id`) VALUES
(1, 1, 1, 4, 5, 2),
(2, 1, 1, 4, 5, 2),
(3, 1, 1, 4, 5, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `cbt_soal`
--

CREATE TABLE `cbt_soal` (
  `id_soal` int(11) NOT NULL,
  `bank_id` int(11) DEFAULT NULL,
  `mapel_id` int(11) DEFAULT 0,
  `jenis` int(11) NOT NULL COMMENT '1=ganda, 2=ganda kompleks, 3=menjodohkan, 4=isian singkat, 5=uraian',
  `nomor_soal` int(11) DEFAULT 0,
  `file` varchar(255) DEFAULT NULL,
  `file1` longtext DEFAULT NULL,
  `tipe_file` varchar(50) DEFAULT NULL,
  `soal` longtext DEFAULT NULL,
  `opsi_a` longtext DEFAULT NULL,
  `opsi_b` longtext DEFAULT NULL,
  `opsi_c` longtext DEFAULT NULL,
  `opsi_d` longtext DEFAULT NULL,
  `opsi_e` longtext DEFAULT NULL,
  `file_a` varchar(255) DEFAULT NULL,
  `file_b` varchar(255) DEFAULT NULL,
  `file_c` varchar(255) DEFAULT NULL,
  `file_d` varchar(255) DEFAULT NULL,
  `file_e` varchar(255) DEFAULT NULL,
  `jawaban` longtext DEFAULT NULL,
  `created_on` int(11) DEFAULT NULL,
  `updated_on` int(11) DEFAULT NULL,
  `tampilkan` int(11) NOT NULL DEFAULT 0,
  `deskripsi` longtext NOT NULL,
  `kesulitan` int(11) NOT NULL DEFAULT 1 COMMENT 'tingkat kesulitan 1-10',
  `timer` int(11) NOT NULL DEFAULT 0 COMMENT '0=tidak, 1=ya',
  `timer_menit` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `cbt_soal`
--

INSERT INTO `cbt_soal` (`id_soal`, `bank_id`, `mapel_id`, `jenis`, `nomor_soal`, `file`, `file1`, `tipe_file`, `soal`, `opsi_a`, `opsi_b`, `opsi_c`, `opsi_d`, `opsi_e`, `file_a`, `file_b`, `file_c`, `file_d`, `file_e`, `jawaban`, `created_on`, `updated_on`, `tampilkan`, `deskripsi`, `kesulitan`, `timer`, `timer_menit`) VALUES
(1, 1, 0, 1, 1, NULL, NULL, NULL, 'Siapa Hokage Konohagakureyang ketiga?', 'Tobirama', 'Hashirama', 'Hiruzen Sarutobi', 'Danzo Shimura', 'Minato Namikaze', NULL, NULL, NULL, NULL, NULL, 'c', 1736393655, 1736516517, 1, '', 1, 0, 0),
(2, 1, 0, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1736516466, 1736516466, 0, '', 1, 0, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `cbt_soal_siswa`
--

CREATE TABLE `cbt_soal_siswa` (
  `id_soal_siswa` varchar(15) NOT NULL,
  `id_bank` int(11) DEFAULT NULL,
  `id_jadwal` int(11) DEFAULT NULL,
  `id_soal` int(11) DEFAULT NULL,
  `id_siswa` int(11) DEFAULT NULL,
  `jenis_soal` int(11) NOT NULL,
  `no_soal_alias` int(11) NOT NULL,
  `opsi_alias_a` varchar(1) DEFAULT NULL,
  `opsi_alias_b` varchar(1) DEFAULT NULL,
  `opsi_alias_c` varchar(1) DEFAULT NULL,
  `opsi_alias_d` varchar(1) DEFAULT NULL,
  `opsi_alias_e` varchar(1) DEFAULT NULL,
  `jawaban_alias` longtext DEFAULT NULL,
  `jawaban_siswa` longtext DEFAULT NULL,
  `jawaban_benar` longtext DEFAULT NULL,
  `point_essai` int(11) DEFAULT 0,
  `soal_end` int(11) NOT NULL DEFAULT 0,
  `point_soal` varchar(5) NOT NULL DEFAULT '0',
  `nilai_koreksi` varchar(5) NOT NULL DEFAULT '0',
  `nilai_otomatis` int(11) NOT NULL DEFAULT 0 COMMENT '0=otomatis, 1=dari guru',
  `time_create` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `cbt_soal_siswa`
--

INSERT INTO `cbt_soal_siswa` (`id_soal_siswa`, `id_bank`, `id_jadwal`, `id_soal`, `id_siswa`, `jenis_soal`, `no_soal_alias`, `opsi_alias_a`, `opsi_alias_b`, `opsi_alias_c`, `opsi_alias_d`, `opsi_alias_e`, `jawaban_alias`, `jawaban_siswa`, `jawaban_benar`, `point_essai`, `soal_end`, `point_soal`, `nilai_koreksi`, `nilai_otomatis`, `time_create`) VALUES
('10611', 1, 6, 1, 1, 1, 1, 'C', 'E', 'B', 'D', 'A', 'B', 'C', 'c', 0, 1, '100', '0', 0, '2025-01-10 20:48:20'),
('20611', 1, 6, 1, 2, 1, 1, 'C', 'D', 'E', 'B', 'A', 'C', 'A', 'a', 0, 1, '100', '0', 0, '2025-01-09 18:14:49'),
('30611', 1, 6, 1, 3, 1, 1, 'C', 'E', 'D', 'B', 'A', 'C', 'A', 'a', 0, 1, '100', '0', 0, '2025-01-09 14:22:02');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cbt_token`
--

CREATE TABLE `cbt_token` (
  `token` varchar(6) NOT NULL,
  `auto` int(11) NOT NULL,
  `id_token` int(11) NOT NULL,
  `jarak` int(11) NOT NULL DEFAULT 0,
  `updated` varchar(20) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `cbt_token`
--

INSERT INTO `cbt_token` (`token`, `auto`, `id_token`, `jarak`, `updated`) VALUES
('HILZCX', 0, 1, 0, '2022-03-25 08:05:15');

-- --------------------------------------------------------

--
-- Struktur dari tabel `groups`
--

CREATE TABLE `groups` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `groups`
--

INSERT INTO `groups` (`id`, `name`, `description`) VALUES
(1, 'admin', 'Administrator'),
(2, 'guru', 'Pembuat Soal dan ujian'),
(3, 'siswa', 'Peserta Ujian');

-- --------------------------------------------------------

--
-- Struktur dari tabel `hari`
--

CREATE TABLE `hari` (
  `id_hri` int(11) NOT NULL,
  `nama_hri` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `hari`
--

INSERT INTO `hari` (`id_hri`, `nama_hri`) VALUES
(1, 'Senin'),
(2, 'Selasa'),
(3, 'Rabu'),
(4, 'Kamis'),
(5, 'Jum\'at'),
(6, 'Sabtu'),
(7, 'Minggu');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jabatan_guru`
--

CREATE TABLE `jabatan_guru` (
  `id_jabatan_guru` varchar(50) NOT NULL,
  `id_guru` int(11) DEFAULT NULL,
  `id_jabatan` int(11) NOT NULL,
  `id_kelas` int(11) DEFAULT 0,
  `mapel_kelas` longtext DEFAULT NULL,
  `ekstra_kelas` longtext DEFAULT NULL,
  `id_tp` int(11) NOT NULL,
  `id_smt` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `jabatan_guru`
--

INSERT INTO `jabatan_guru` (`id_jabatan_guru`, `id_guru`, `id_jabatan`, `id_kelas`, `mapel_kelas`, `ekstra_kelas`, `id_tp`, `id_smt`) VALUES
('152', 1, 2, 0, 'a:1:{i:0;a:3:{s:8:\"id_mapel\";s:2:\"11\";s:10:\"nama_mapel\";s:40:\"Pendidikan Pancasila dan Kewarganegaraan\";s:11:\"kelas_mapel\";a:2:{i:0;a:1:{s:5:\"kelas\";s:1:\"1\";}i:1;a:1:{s:5:\"kelas\";N;}}}}', 'a:0:{}', 5, 2),
('252', 2, 4, 1, 'a:0:{}', 'a:0:{}', 5, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelas_catatan_mapel`
--

CREATE TABLE `kelas_catatan_mapel` (
  `id_catatan` int(11) NOT NULL,
  `id_tp` int(11) NOT NULL,
  `id_smt` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `id_siswa` int(11) DEFAULT NULL,
  `id_mapel` int(11) DEFAULT NULL,
  `id_kelas` int(11) DEFAULT NULL,
  `id_guru` int(11) DEFAULT NULL,
  `level` varchar(1) NOT NULL DEFAULT '0',
  `tgl` datetime NOT NULL DEFAULT current_timestamp(),
  `text` mediumtext NOT NULL,
  `readed` varchar(22) NOT NULL DEFAULT '0',
  `reading` longtext DEFAULT NULL COMMENT 'array id_siswa yang membaca',
  `jml` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelas_catatan_wali`
--

CREATE TABLE `kelas_catatan_wali` (
  `id_catatan` int(11) NOT NULL,
  `id_tp` int(11) NOT NULL,
  `id_smt` int(11) NOT NULL,
  `type` int(11) NOT NULL COMMENT '1=semua siswa, 2=per siswa',
  `level` varchar(1) NOT NULL COMMENT '1=saran, 2=teguran, 3=peringatan, 4=sangsi',
  `tgl` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `id_siswa` int(11) DEFAULT NULL,
  `id_kelas` int(11) DEFAULT NULL,
  `text` mediumtext NOT NULL,
  `readed` varchar(22) NOT NULL DEFAULT '0',
  `reading` longtext DEFAULT NULL,
  `jml` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelas_ekstra`
--

CREATE TABLE `kelas_ekstra` (
  `id_kelas_ekstra` varchar(50) NOT NULL,
  `id_tp` int(11) NOT NULL,
  `id_smt` int(11) NOT NULL,
  `id_kelas` int(11) DEFAULT NULL,
  `ekstra` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelas_jadwal_kbm`
--

CREATE TABLE `kelas_jadwal_kbm` (
  `id_kbm` int(11) NOT NULL,
  `id_tp` int(11) NOT NULL,
  `id_smt` int(11) NOT NULL,
  `id_kelas` int(11) DEFAULT NULL,
  `kbm_jam_pel` int(11) NOT NULL,
  `kbm_jam_mulai` varchar(5) NOT NULL,
  `kbm_jml_mapel_hari` int(11) NOT NULL,
  `istirahat` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `kelas_jadwal_kbm`
--

INSERT INTO `kelas_jadwal_kbm` (`id_kbm`, `id_tp`, `id_smt`, `id_kelas`, `kbm_jam_pel`, `kbm_jam_mulai`, `kbm_jml_mapel_hari`, `istirahat`) VALUES
(521, 5, 2, 1, 45, '07:15', 12, 'a:2:{i:0;a:2:{s:3:\"ist\";s:1:\"4\";s:3:\"dur\";s:2:\"30\";}i:1;a:2:{s:3:\"ist\";s:2:\"10\";s:3:\"dur\";s:2:\"60\";}}');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelas_jadwal_mapel`
--

CREATE TABLE `kelas_jadwal_mapel` (
  `id_jadwal` int(11) NOT NULL,
  `id_tp` int(11) NOT NULL,
  `id_smt` int(11) NOT NULL,
  `id_kelas` int(11) DEFAULT NULL,
  `id_hari` int(11) NOT NULL,
  `jam_ke` int(11) NOT NULL,
  `id_mapel` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelas_jadwal_materi`
--

CREATE TABLE `kelas_jadwal_materi` (
  `id_kjm` varchar(50) NOT NULL,
  `id_tp` int(11) NOT NULL,
  `id_smt` int(11) NOT NULL,
  `id_materi` int(11) DEFAULT NULL,
  `id_mapel` int(11) DEFAULT NULL,
  `id_kelas` int(11) DEFAULT NULL,
  `jadwal_materi` varchar(20) NOT NULL,
  `jenis` int(11) DEFAULT NULL COMMENT '1=materi, 2=tugas'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelas_materi`
--

CREATE TABLE `kelas_materi` (
  `id_materi` int(11) NOT NULL,
  `id_tp` int(11) NOT NULL DEFAULT 1,
  `id_smt` int(11) NOT NULL DEFAULT 1,
  `kode_materi` mediumtext NOT NULL,
  `id_guru` int(11) DEFAULT NULL,
  `materi_kelas` mediumtext NOT NULL,
  `id_mapel` int(11) DEFAULT 0,
  `kode_mapel` varchar(300) DEFAULT NULL,
  `judul_materi` mediumtext NOT NULL,
  `isi_materi` longtext NOT NULL,
  `file` longtext DEFAULT NULL,
  `link_file` varchar(255) DEFAULT NULL,
  `tgl_mulai` datetime DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `updated_on` datetime DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL,
  `youtube` varchar(255) NOT NULL,
  `jenis` int(11) NOT NULL DEFAULT 1 COMMENT '1=materi, 2=tugas'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelas_siswa`
--

CREATE TABLE `kelas_siswa` (
  `id_kelas_siswa` int(11) NOT NULL,
  `id_tp` int(11) NOT NULL,
  `id_smt` int(11) NOT NULL,
  `id_siswa` int(11) DEFAULT NULL,
  `id_kelas` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `kelas_siswa`
--

INSERT INTO `kelas_siswa` (`id_kelas_siswa`, `id_tp`, `id_smt`, `id_siswa`, `id_kelas`) VALUES
(521, 5, 2, 1, 1),
(522, 5, 2, 2, 1),
(523, 5, 2, 3, 1),
(524, 5, 2, 4, 2),
(525, 5, 2, 5, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelas_struktur`
--

CREATE TABLE `kelas_struktur` (
  `id_kelas` int(11) NOT NULL,
  `ketua` int(11) DEFAULT NULL,
  `wakil_ketua` int(11) DEFAULT NULL,
  `sekretaris_1` int(11) DEFAULT NULL,
  `sekretaris_2` int(11) DEFAULT NULL,
  `bendahara_1` int(11) DEFAULT NULL,
  `bendahara_2` int(11) DEFAULT NULL,
  `sie_ekstrakurikuler` int(11) DEFAULT NULL,
  `sie_upacara` int(11) DEFAULT NULL,
  `sie_olahraga` int(11) DEFAULT NULL,
  `sie_keagamaan` int(11) DEFAULT NULL,
  `sie_keamanan` int(11) DEFAULT NULL,
  `sie_ketertiban` int(11) DEFAULT NULL,
  `sie_kebersihan` int(11) DEFAULT NULL,
  `sie_keindahan` int(11) DEFAULT NULL,
  `sie_kesehatan` int(11) DEFAULT NULL,
  `sie_kekeluargaan` int(11) DEFAULT NULL,
  `sie_humas` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Struktur dari tabel `level_guru`
--

CREATE TABLE `level_guru` (
  `id_level` int(11) NOT NULL,
  `level` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `level_guru`
--

INSERT INTO `level_guru` (`id_level`, `level`) VALUES
(1, 'Kepala Sekolah'),
(2, 'Wakil Kepala Sekolah'),
(3, 'Bimbingan Konseling'),
(4, 'Walikelas'),
(5, 'Guru');

-- --------------------------------------------------------

--
-- Struktur dari tabel `level_kelas`
--

CREATE TABLE `level_kelas` (
  `id_level` int(11) NOT NULL,
  `level` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `level_kelas`
--

INSERT INTO `level_kelas` (`id_level`, `level`) VALUES
(1, '1'),
(2, '2'),
(3, '3'),
(4, '4'),
(5, '5'),
(6, '6'),
(7, '7'),
(8, '8'),
(9, '9'),
(10, '10'),
(11, '11'),
(12, '12');

-- --------------------------------------------------------

--
-- Struktur dari tabel `log`
--

CREATE TABLE `log` (
  `id_log` int(11) NOT NULL,
  `log_time` datetime NOT NULL DEFAULT current_timestamp(),
  `id_user` int(11) NOT NULL,
  `id_group` int(11) NOT NULL,
  `name_group` mediumtext NOT NULL,
  `log_type` int(11) NOT NULL,
  `log_desc` mediumtext NOT NULL,
  `address` mediumtext NOT NULL,
  `agent` mediumtext NOT NULL,
  `device` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `log`
--

INSERT INTO `log` (`id_log`, `log_time`, `id_user`, `id_group`, `name_group`, `log_type`, `log_desc`, `address`, `agent`, `device`) VALUES
(1, '2025-01-09 10:21:40', 1, 1, 'admin', 0, 'Login', '::1', 'Chrome 131.0.0.0', 'Windows 10'),
(2, '2025-01-09 10:24:42', 1, 1, 'admin', 0, 'menambah tahun pelajaran', '::1', 'Chrome 131.0.0.0', 'Windows 10'),
(3, '2025-01-09 10:24:43', 1, 1, 'admin', 0, 'mengganti tahun ajaran aktif', '::1', 'Chrome 131.0.0.0', 'Windows 10'),
(4, '2025-01-09 10:24:46', 1, 1, 'admin', 0, 'mengganti semester aktif', '::1', 'Chrome 131.0.0.0', 'Windows 10'),
(5, '2025-01-09 10:33:45', 1, 1, 'admin', 0, 'menambah bank soal', '::1', 'Chrome 131.0.0.0', 'Windows 10'),
(6, '2025-01-09 10:35:22', 1, 1, 'admin', 0, 'mengedit soal', '::1', 'Chrome 131.0.0.0', 'Windows 10'),
(7, '2025-01-09 10:39:09', 1, 1, 'admin', 0, 'menambah jadwal pelajaran', '::1', 'Chrome 131.0.0.0', 'Windows 10'),
(8, '2025-01-09 10:44:38', 1, 1, 'admin', 0, 'Login', '::1', 'Chrome 131.0.0.0', 'Windows 10'),
(9, '2025-01-09 10:45:56', 4, 3, 'siswa', 0, 'Login', '::1', 'Chrome 131.0.0.0', 'Windows 10'),
(10, '2025-01-09 10:46:40', 1, 1, 'admin', 0, 'mengedit jadwal pelajaran', '::1', 'Chrome 131.0.0.0', 'Windows 10'),
(11, '2025-01-09 11:13:14', 4, 3, 'siswa', 0, 'Login', '::1', 'Chrome 131.0.0.0', 'Windows 10'),
(12, '2025-01-09 12:10:14', 3, 3, 'siswa', 0, 'Login', '::1', 'Chrome 131.0.0.0', 'Windows 10'),
(13, '2025-01-09 12:35:50', 3, 3, 'siswa', 0, 'Login', '192.168.206.182', 'Chrome 120.0.0.0', 'Android'),
(14, '2025-01-09 12:36:32', 3, 3, 'siswa', 0, 'Login', '192.168.206.182', 'Chrome 120.0.0.0', 'Android'),
(15, '2025-01-09 12:36:56', 1, 1, 'admin', 0, 'Login', '192.168.206.160', 'Chrome 131.0.0.0', 'Windows 10'),
(16, '2025-01-09 12:41:45', 5, 2, 'guru', 0, 'Login', '192.168.206.160', 'Chrome 131.0.0.0', 'Windows 10'),
(17, '2025-01-09 12:47:41', 1, 1, 'admin', 0, 'merubah jadwal pelajaran', '192.168.206.160', 'Chrome 131.0.0.0', 'Windows 10'),
(18, '2025-01-09 12:48:16', 1, 1, 'admin', 0, 'merubah jadwal pelajaran', '192.168.206.160', 'Chrome 131.0.0.0', 'Windows 10'),
(19, '2025-01-09 12:48:37', 1, 1, 'admin', 0, 'merubah jadwal pelajaran', '192.168.206.160', 'Chrome 131.0.0.0', 'Windows 10'),
(20, '2025-01-09 12:52:03', 7, 2, 'guru', 0, 'Login', '192.168.206.160', 'Chrome 131.0.0.0', 'Windows 10'),
(21, '2025-01-09 12:57:16', 6, 2, 'guru', 0, 'Login', '192.168.206.160', 'Chrome 131.0.0.0', 'Windows 10'),
(22, '2025-01-09 13:04:17', 7, 2, 'guru', 0, 'Login', '192.168.206.160', 'Chrome 131.0.0.0', 'Windows 10'),
(23, '2025-01-09 14:10:38', 1, 1, 'admin', 0, 'Login', '::1', 'Chrome 131.0.0.0', 'Windows 10'),
(24, '2025-01-09 14:11:50', 1, 1, 'admin', 0, 'mengedit jadwal pelajaran', '192.168.206.160', 'Chrome 131.0.0.0', 'Windows 10'),
(25, '2025-01-09 14:12:29', 1, 1, 'admin', 0, 'mengedit jadwal pelajaran', '192.168.206.160', 'Chrome 131.0.0.0', 'Windows 10'),
(26, '2025-01-09 14:13:58', 1, 1, 'admin', 0, 'menghapus jadwal ujian', '192.168.206.160', 'Chrome 131.0.0.0', 'Windows 10'),
(27, '2025-01-09 14:14:28', 1, 1, 'admin', 0, 'menambah jadwal pelajaran', '192.168.206.160', 'Chrome 131.0.0.0', 'Windows 10'),
(28, '2025-01-09 14:17:01', 4, 3, 'siswa', 0, 'Login', '192.168.206.182', 'Chrome 120.0.0.0', 'Android'),
(29, '2025-01-09 14:19:32', 4, 3, 'siswa', 0, 'Login', '192.168.206.182', 'Chrome 120.0.0.0', 'Android'),
(30, '2025-01-09 14:22:23', 4, 3, 'siswa', 0, 'Login', '192.168.206.182', 'Chrome 120.0.0.0', 'Android'),
(31, '2025-01-09 18:11:41', 3, 3, 'siswa', 0, 'Login', '192.168.206.182', 'Chrome 120.0.0.0', 'Android'),
(32, '2025-01-10 20:40:37', 1, 1, 'admin', 0, 'Login', '192.168.118.160', 'Chrome 131.0.0.0', 'Windows 10'),
(33, '2025-01-10 20:41:57', 1, 1, 'admin', 0, 'mengedit soal', '192.168.118.160', 'Chrome 131.0.0.0', 'Windows 10'),
(34, '2025-01-10 20:42:34', 1, 1, 'admin', 0, 'mengedit jadwal pelajaran', '192.168.118.160', 'Chrome 131.0.0.0', 'Windows 10'),
(35, '2025-01-10 20:44:55', 2, 3, 'siswa', 0, 'Login', '192.168.118.81', 'Chrome 114.0.0.0', 'Android'),
(36, '2025-01-10 21:01:39', 4, 3, 'siswa', 0, 'Login', '192.168.118.160', 'Chrome 131.0.0.0', 'Windows 10'),
(37, '2025-02-02 17:17:24', 6, 2, 'guru', 0, 'Login', '::1', 'Chrome 132.0.0.0', 'Windows 10'),
(38, '2025-02-02 17:21:39', 1, 1, 'admin', 0, 'Login', '::1', 'Chrome 132.0.0.0', 'Windows 10'),
(39, '2025-02-02 17:23:04', 2, 3, 'siswa', 0, 'Login', '::1', 'Chrome 132.0.0.0', 'Windows 10'),
(40, '2025-02-02 17:23:21', 6, 2, 'guru', 0, 'Login', '::1', 'Chrome 132.0.0.0', 'Windows 10'),
(41, '2025-02-02 17:52:57', 1, 1, 'admin', 0, 'Login', '::1', 'Chrome 132.0.0.0', 'Windows 10');

-- --------------------------------------------------------

--
-- Struktur dari tabel `login_attempts`
--

CREATE TABLE `login_attempts` (
  `id` int(10) UNSIGNED NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `login_attempts`
--

INSERT INTO `login_attempts` (`id`, `ip_address`, `login`, `time`) VALUES
(11, '::1', 'smkpertiwiciasem@gmail.com', 1738491275);

-- --------------------------------------------------------

--
-- Struktur dari tabel `log_materi`
--

CREATE TABLE `log_materi` (
  `id_log` varchar(50) NOT NULL,
  `log_time` datetime NOT NULL DEFAULT current_timestamp(),
  `id_siswa` int(11) DEFAULT NULL,
  `jam_ke` int(11) NOT NULL,
  `id_materi` varchar(50) NOT NULL,
  `id_mapel` int(11) DEFAULT NULL,
  `log_type` int(11) NOT NULL,
  `log_desc` mediumtext NOT NULL,
  `text` longtext DEFAULT NULL,
  `file` longtext DEFAULT NULL,
  `nilai` varchar(3) DEFAULT NULL,
  `catatan` longtext DEFAULT NULL,
  `address` mediumtext NOT NULL,
  `agent` mediumtext NOT NULL,
  `device` mediumtext NOT NULL,
  `finish_time` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Struktur dari tabel `log_ujian`
--

CREATE TABLE `log_ujian` (
  `id_log` int(11) NOT NULL,
  `log_time` datetime NOT NULL DEFAULT current_timestamp(),
  `id_siswa` int(11) DEFAULT NULL,
  `id_jadwal` int(11) DEFAULT NULL,
  `log_type` int(11) NOT NULL,
  `log_desc` mediumtext NOT NULL,
  `address` mediumtext NOT NULL,
  `agent` mediumtext NOT NULL,
  `device` mediumtext NOT NULL,
  `reset` int(11) NOT NULL COMMENT '0=tidak reset, 1=reset',
  `finish_time` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `log_ujian`
--

INSERT INTO `log_ujian` (`id_log`, `log_time`, `id_siswa`, `id_jadwal`, `log_type`, `log_desc`, `address`, `agent`, `device`, `reset`, `finish_time`) VALUES
(1061, '2025-01-10 20:45:33', 1, 6, 1, 'Memulai Ujian', '192.168.118.81', 'Chrome 114.0.0.0', 'Android', 0, NULL),
(1062, '2025-01-10 20:48:21', 1, 6, 2, 'Menyelesaikan Ujian', '192.168.118.81', 'Chrome 114.0.0.0', 'Android', 0, NULL),
(2011, '2025-01-09 12:10:31', 2, 1, 1, 'Memulai Ujian', '::1', 'Chrome 131.0.0.0', 'Windows 10', 0, NULL),
(2012, '2025-01-09 12:20:58', 2, 1, 2, 'Menyelesaikan Ujian', '::1', 'Chrome 131.0.0.0', 'Windows 10', 0, NULL),
(2061, '2025-01-09 18:12:02', 2, 6, 1, 'Memulai Ujian', '192.168.206.182', 'Chrome 120.0.0.0', 'Android', 0, NULL),
(2062, '2025-01-09 18:14:51', 2, 6, 2, 'Menyelesaikan Ujian', '192.168.206.182', 'Chrome 120.0.0.0', 'Android', 0, NULL),
(3011, '2025-01-09 10:46:56', 3, 1, 1, 'Memulai Ujian', '::1', 'Chrome 131.0.0.0', 'Windows 10', 0, NULL),
(3012, '2025-01-09 11:13:48', 3, 1, 2, 'Menyelesaikan Ujian', '::1', 'Chrome 131.0.0.0', 'Windows 10', 0, NULL),
(3061, '2025-01-09 14:20:01', 3, 6, 1, 'Memulai Ujian', '192.168.206.182', 'Chrome 120.0.0.0', 'Android', 0, NULL),
(3062, '2025-01-09 14:22:04', 3, 6, 2, 'Menyelesaikan Ujian', '192.168.206.182', 'Chrome 120.0.0.0', 'Android', 0, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_ekstra`
--

CREATE TABLE `master_ekstra` (
  `id_ekstra` int(11) NOT NULL,
  `nama_ekstra` varchar(100) NOT NULL,
  `kode_ekstra` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `master_ekstra`
--

INSERT INTO `master_ekstra` (`id_ekstra`, `nama_ekstra`, `kode_ekstra`) VALUES
(1, 'Pramuka', 'PRAM'),
(2, 'Baca Tulis Al Quran', 'BTQ'),
(3, 'Tahfidz', 'TFZ');

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_guru`
--

CREATE TABLE `master_guru` (
  `id_guru` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `nip` char(30) NOT NULL,
  `nama_guru` varchar(50) NOT NULL,
  `email` varchar(254) DEFAULT NULL,
  `kode_guru` varchar(6) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` longtext DEFAULT NULL,
  `no_ktp` varchar(16) DEFAULT NULL,
  `tempat_lahir` varchar(30) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `jenis_kelamin` varchar(10) DEFAULT NULL,
  `agama` varchar(10) DEFAULT NULL,
  `no_hp` varchar(13) DEFAULT NULL,
  `alamat_jalan` varchar(255) DEFAULT NULL,
  `rt_rw` varchar(8) DEFAULT NULL,
  `dusun` varchar(50) DEFAULT NULL,
  `kelurahan` varchar(50) DEFAULT NULL,
  `kecamatan` varchar(30) DEFAULT NULL,
  `kabupaten` varchar(30) DEFAULT NULL,
  `provinsi` varchar(30) DEFAULT NULL,
  `kode_pos` int(11) DEFAULT NULL,
  `kewarganegaraan` varchar(10) DEFAULT NULL,
  `nuptk` varchar(20) DEFAULT NULL,
  `jenis_ptk` varchar(50) DEFAULT NULL,
  `tgs_tambahan` varchar(50) DEFAULT NULL,
  `status_pegawai` varchar(50) DEFAULT NULL,
  `status_aktif` varchar(20) DEFAULT NULL,
  `status_nikah` varchar(20) DEFAULT NULL,
  `tmt` date DEFAULT NULL,
  `keahlian_isyarat` varchar(10) DEFAULT NULL,
  `npwp` varchar(16) DEFAULT NULL,
  `foto` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `master_guru`
--

INSERT INTO `master_guru` (`id_guru`, `id_user`, `nip`, `nama_guru`, `email`, `kode_guru`, `username`, `password`, `no_ktp`, `tempat_lahir`, `tgl_lahir`, `jenis_kelamin`, `agama`, `no_hp`, `alamat_jalan`, `rt_rw`, `dusun`, `kelurahan`, `kecamatan`, `kabupaten`, `provinsi`, `kode_pos`, `kewarganegaraan`, `nuptk`, `jenis_ptk`, `tgs_tambahan`, `status_pegawai`, `status_aktif`, `status_nikah`, `tmt`, `keahlian_isyarat`, `npwp`, `foto`) VALUES
(1, 6, '00000001', 'Asep Bertian Mustopa, S.Pd.', '', NULL, 'asep12', 'asep12', '', '', '0000-00-00', 'L', 'Islam', '', '', NULL, NULL, NULL, '', '', '', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/profiles/1.jpg'),
(2, 7, '00000002', 'Firman Damayanto, S.Pd.Gr.', NULL, NULL, 'firman12', 'firman12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/profiles/00000002.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_hari_efektif`
--

CREATE TABLE `master_hari_efektif` (
  `id_hari_efektif` int(11) NOT NULL,
  `jml_hari_efektif` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_jurusan`
--

CREATE TABLE `master_jurusan` (
  `id_jurusan` int(11) NOT NULL,
  `nama_jurusan` varchar(30) NOT NULL,
  `kode_jurusan` varchar(10) DEFAULT NULL,
  `mapel_peminatan` longtext DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `deletable` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `master_jurusan`
--

INSERT INTO `master_jurusan` (`id_jurusan`, `nama_jurusan`, `kode_jurusan`, `mapel_peminatan`, `status`, `deletable`) VALUES
(0, 'NON JURUSAN', 'NON', NULL, 1, 0),
(1, 'IPA', 'IPA', NULL, 1, 0),
(2, 'IPS', 'IPS', NULL, 1, 0),
(3, 'BAHASA', 'BAHASA', NULL, 1, 0),
(4, 'KEAGAMAAN', 'AGAMA', NULL, 0, 1),
(5, 'Teknik Jaringan Komputer dan T', 'TJKT', '', 1, 1),
(6, 'Teknik Otomotif', 'TO', '', 1, 1),
(7, 'Pemasaran', 'PM', '', 1, 1),
(8, 'Manajemen Perkantoran', 'MP', '', 1, 1),
(9, 'Tata Boga', 'BOGA', '', 1, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_kelas`
--

CREATE TABLE `master_kelas` (
  `id_kelas` int(11) NOT NULL,
  `id_tp` int(11) NOT NULL,
  `id_smt` int(11) NOT NULL,
  `nama_kelas` varchar(30) NOT NULL,
  `kode_kelas` varchar(20) DEFAULT NULL,
  `jurusan_id` int(11) DEFAULT NULL,
  `level_id` int(11) NOT NULL,
  `guru_id` int(11) DEFAULT NULL,
  `siswa_id` int(11) DEFAULT NULL,
  `jumlah_siswa` longtext DEFAULT NULL,
  `set_siswa` varchar(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `master_kelas`
--

INSERT INTO `master_kelas` (`id_kelas`, `id_tp`, `id_smt`, `nama_kelas`, `kode_kelas`, `jurusan_id`, `level_id`, `guru_id`, `siswa_id`, `jumlah_siswa`, `set_siswa`) VALUES
(1, 5, 2, '10 TJKT 1', '10TJKT1', 5, 10, 0, 1, 'a:3:{i:0;a:1:{s:2:\"id\";s:1:\"1\";}i:1;a:1:{s:2:\"id\";s:1:\"3\";}i:2;a:1:{s:2:\"id\";s:1:\"2\";}}', '0'),
(2, 5, 2, '10 TJKT 2', '10TJKT2', 5, 10, 0, 4, 'a:2:{i:0;a:1:{s:2:\"id\";s:1:\"5\";}i:1;a:1:{s:2:\"id\";s:1:\"4\";}}', '0');

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_kelompok_mapel`
--

CREATE TABLE `master_kelompok_mapel` (
  `id_kel_mapel` int(11) NOT NULL,
  `kode_kel_mapel` varchar(10) DEFAULT NULL,
  `nama_kel_mapel` varchar(100) DEFAULT NULL,
  `kategori` varchar(20) DEFAULT NULL,
  `id_parent` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `master_kelompok_mapel`
--

INSERT INTO `master_kelompok_mapel` (`id_kel_mapel`, `kode_kel_mapel`, `nama_kel_mapel`, `kategori`, `id_parent`) VALUES
(1, 'A', 'Kelompok A (Wajib)', 'WAJIB', 0),
(2, 'B', 'Kelompok B', 'WAJIB', 0),
(3, 'C', 'Kelompok C', 'PEMINATAN', 0),
(4, 'MULOK', 'Muatan Lokal', 'MULOK', 0),
(5, 'C1', 'Kelompok C1', 'PEMINATAN', 3),
(6, 'PAI', 'PAI', 'PAI (Kemenag)', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_mapel`
--

CREATE TABLE `master_mapel` (
  `id_mapel` int(11) NOT NULL,
  `nama_mapel` varchar(50) NOT NULL,
  `kode` varchar(20) DEFAULT NULL,
  `kelompok` varchar(5) NOT NULL DEFAULT '-',
  `bobot_p` int(11) NOT NULL DEFAULT 0,
  `bobot_k` int(11) NOT NULL DEFAULT 0,
  `jenjang` int(11) NOT NULL DEFAULT 0,
  `urutan` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `deletable` int(11) NOT NULL DEFAULT 1,
  `urutan_tampil` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `master_mapel`
--

INSERT INTO `master_mapel` (`id_mapel`, `nama_mapel`, `kode`, `kelompok`, `bobot_p`, `bobot_k`, `jenjang`, `urutan`, `status`, `deletable`, `urutan_tampil`) VALUES
(1, 'Al Quran-Hadis', 'QH', 'PAI', 0, 0, 1, 1, 1, 0, 1),
(2, 'Fiqih', 'FQH', 'PAI', 0, 0, 1, 1, 1, 0, 3),
(3, 'Akidah Akhlak', 'AA', 'PAI', 0, 0, 1, 1, 1, 0, 2),
(4, 'Sejarah Kebudayaan Islam', 'SKI', 'PAI', 0, 0, 1, 1, 1, 0, 4),
(5, 'Bahasa Arab', 'BAR', 'A', 0, 0, 1, 2, 1, 0, 3),
(6, 'Bahasa Indonesia', 'BIND', 'A', 0, 0, 1, 2, 1, 0, 2),
(7, 'Bahasa Inggris', 'BING', 'A', 0, 0, 1, 2, 1, 0, 7),
(8, 'Matematika', 'MTK', 'A', 0, 0, 1, 2, 1, 0, 4),
(9, 'Ilmu Pengetahuan Alam', 'IPA', 'A', 0, 0, 1, 2, 1, 0, 5),
(10, 'Ilmu Pengetahuan Sosial', 'IPS', 'A', 0, 0, 1, 2, 1, 0, 6),
(11, 'Pendidikan Pancasila dan Kewarganegaraan', 'PPKn', 'A', 0, 0, 1, 2, 1, 0, 1),
(12, 'Pendidikan Jasmani Olah Raga dan Kesehatan', 'PJOK', 'B', 0, 0, 1, 3, 1, 0, 2),
(13, 'Seni Budaya', 'SB', 'B', 0, 0, 2, 3, 1, 0, 1),
(14, 'Prakarya', 'PRA', 'B', 0, 0, 2, 3, 1, 0, 3),
(15, 'SBdP', 'SBDP', 'B', 0, 0, 0, 3, 0, 0, 1),
(16, 'Akhlak', 'AK', 'C', 0, 0, 3, 0, 0, 0, 19),
(17, 'Antropologi', 'ANT', 'C1', 0, 0, 3, 0, 1, 0, 4),
(18, 'Bahasa Arab (Peminatan)', 'BAR-P', 'C', 0, 0, 3, 0, 1, 0, 3),
(19, 'Bahasa dan Sastra Asing Lainnya', 'BSAL', 'C', 0, 0, 3, 0, 1, 0, 16),
(20, 'Bahasa dan Sastra Indonesia', 'BSIN', 'C', 0, 0, 3, 0, 1, 0, 15),
(21, 'Bahasa dan Sastra Inggris', 'BSING', 'C', 0, 0, 3, 0, 1, 0, 14),
(22, 'Bahasa Jepang', 'JPN', 'C', 0, 0, 3, 0, 1, 0, 18),
(23, 'Bahasa Jerman', 'JRM', 'C', 0, 0, 3, 0, 1, 0, 12),
(24, 'Biologi', 'BIO', 'C', 0, 0, 3, 0, 1, 0, 2),
(25, 'Ekonomi', 'EKN', 'C', 0, 0, 3, 0, 1, 0, 11),
(26, 'Fikih (Peminatan)', 'FQH-P', 'C', 0, 0, 3, 0, 1, 0, 4),
(27, 'Fikih - Ushul Fikih', 'UFQH', 'C', 0, 0, 3, 0, 1, 0, 5),
(28, 'Fisika', 'FIS', 'C1', 0, 0, 3, 0, 1, 0, 3),
(29, 'Geografi', 'GEO', 'C', 0, 0, 3, 0, 1, 0, 10),
(30, 'Hadis - Ilmu Hadis', 'HA', 'C', 0, 0, 3, 0, 1, 0, 6),
(31, 'Ilmu Kalam', 'IK', 'C', 0, 0, 3, 0, 1, 0, 7),
(32, 'Informatika', 'INF', 'C', 0, 0, 3, 0, 0, 0, 13),
(33, 'Keterampilan', 'KTR', 'C', 0, 0, 3, 0, 0, 0, 17),
(34, 'Kimia', 'KIM', 'C1', 0, 0, 3, 0, 1, 0, 2),
(35, 'Prakarya dan Kewirausahaan', 'PK', 'B', 0, 0, 3, 0, 0, 0, 3),
(36, 'Sejarah', 'SEJ', 'C', 0, 0, 3, 0, 1, 0, 8),
(37, 'Sejarah Indonesia', 'SJI', 'A', 0, 0, 3, 0, 1, 0, 5),
(38, 'Sosiologi', 'SOS', 'C', 0, 0, 3, 0, 1, 0, 9),
(39, 'Tafsir - Ilmu Tafsir', 'TT', 'C1', 0, 0, 3, 0, 1, 0, 1),
(40, 'Bahasa Sunda', 'BSUND', 'MULOK', 0, 0, 1, 0, 1, 1, 1),
(41, 'Pendidikan Agama dan Budi Pekerti', 'PABP', 'A', 0, 0, 1, 1, 1, 0, 1),
(42, 'Matematika (Peminatan)', 'MTK-P', 'C', 0, 0, 3, 0, 1, 1, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_siswa`
--

CREATE TABLE `master_siswa` (
  `id_siswa` int(11) NOT NULL,
  `nisn` int(10) UNSIGNED ZEROFILL NOT NULL,
  `nis` varchar(20) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jenis_kelamin` varchar(1) DEFAULT NULL,
  `username` varchar(50) NOT NULL,
  `password` mediumtext NOT NULL,
  `kelas_awal` int(11) NOT NULL,
  `tahun_masuk` varchar(30) DEFAULT NULL,
  `sekolah_asal` varchar(100) DEFAULT NULL,
  `tempat_lahir` varchar(100) DEFAULT NULL,
  `tanggal_lahir` varchar(30) DEFAULT NULL,
  `agama` varchar(10) DEFAULT NULL,
  `hp` varchar(15) DEFAULT NULL,
  `email` varchar(254) DEFAULT NULL,
  `foto` varchar(255) DEFAULT 'siswa.png',
  `anak_ke` int(11) DEFAULT NULL,
  `status_keluarga` varchar(1) DEFAULT NULL,
  `alamat` longtext DEFAULT NULL,
  `rt` varchar(5) DEFAULT NULL,
  `rw` varchar(5) DEFAULT NULL,
  `kelurahan` varchar(100) DEFAULT NULL,
  `kecamatan` varchar(100) DEFAULT NULL,
  `kabupaten` varchar(100) DEFAULT NULL,
  `provinsi` varchar(100) DEFAULT NULL,
  `kode_pos` int(11) DEFAULT NULL,
  `nama_ayah` varchar(150) DEFAULT NULL,
  `tgl_lahir_ayah` varchar(50) DEFAULT NULL,
  `pendidikan_ayah` varchar(50) DEFAULT NULL,
  `pekerjaan_ayah` varchar(100) DEFAULT NULL,
  `nohp_ayah` varchar(20) DEFAULT NULL,
  `alamat_ayah` longtext DEFAULT NULL,
  `nama_ibu` varchar(50) DEFAULT NULL,
  `tgl_lahir_ibu` varchar(50) DEFAULT NULL,
  `pendidikan_ibu` varchar(50) DEFAULT NULL,
  `pekerjaan_ibu` varchar(100) DEFAULT NULL,
  `nohp_ibu` varchar(20) DEFAULT NULL,
  `alamat_ibu` longtext DEFAULT NULL,
  `nama_wali` varchar(150) DEFAULT NULL,
  `tgl_lahir_wali` varchar(50) DEFAULT NULL,
  `pendidikan_wali` varchar(50) DEFAULT NULL,
  `pekerjaan_wali` varchar(100) DEFAULT NULL,
  `nohp_wali` varchar(20) DEFAULT NULL,
  `alamat_wali` longtext DEFAULT NULL,
  `nik` varchar(30) NOT NULL,
  `warga_negara` varchar(20) NOT NULL,
  `uid` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `master_siswa`
--

INSERT INTO `master_siswa` (`id_siswa`, `nisn`, `nis`, `nama`, `jenis_kelamin`, `username`, `password`, `kelas_awal`, `tahun_masuk`, `sekolah_asal`, `tempat_lahir`, `tanggal_lahir`, `agama`, `hp`, `email`, `foto`, `anak_ke`, `status_keluarga`, `alamat`, `rt`, `rw`, `kelurahan`, `kecamatan`, `kabupaten`, `provinsi`, `kode_pos`, `nama_ayah`, `tgl_lahir_ayah`, `pendidikan_ayah`, `pekerjaan_ayah`, `nohp_ayah`, `alamat_ayah`, `nama_ibu`, `tgl_lahir_ibu`, `pendidikan_ibu`, `pekerjaan_ibu`, `nohp_ibu`, `alamat_ibu`, `nama_wali`, `tgl_lahir_wali`, `pendidikan_wali`, `pekerjaan_wali`, `nohp_wali`, `alamat_wali`, `nik`, `warga_negara`, `uid`) VALUES
(1, 0000001025, '0001025', 'Ilham', 'L', 'ilham12', 'ilham12', 10, '', '', '', '', '', '0', '', 'uploads/foto_siswa/0001025.jpg', 1, '1', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'c5bdc1af-ce39-11ef-bfc1-64821443b4b0'),
(2, 0000002025, '0002025', 'Robby', 'L', 'robby12', 'robby12', 10, '', '', '', '', '', '0', '', 'uploads/foto_siswa/0002025.jpg', 1, '1', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'c5be06c8-ce39-11ef-bfc1-64821443b4b0'),
(3, 0000003025, '0003025', 'Nandang', 'L', 'nandang12', 'nandang12', 10, '', '', '', '', '', '0', '', 'uploads/foto_siswa/0003025.jpg', 1, '1', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'c5be2128-ce39-11ef-bfc1-64821443b4b0'),
(4, 0000004025, '0004025', 'Ana Silvana', 'P', 'ana12', 'ana12', 10, '2025-01-27', NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/foto_siswa/0004025jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '17b04ae8-e154-11ef-862f-5a29bc38e2c4'),
(5, 0000005025, '0005025', 'Dwiki Wisnu Aji', 'L', 'dwiki12', 'dwiki12', 10, '2025-01-27', NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/foto_siswa/0005025jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '84f83447-e154-11ef-862f-5a29bc38e2c4');

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_smt`
--

CREATE TABLE `master_smt` (
  `id_smt` int(11) NOT NULL,
  `smt` varchar(10) NOT NULL,
  `nama_smt` varchar(10) NOT NULL,
  `active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `master_smt`
--

INSERT INTO `master_smt` (`id_smt`, `smt`, `nama_smt`, `active`) VALUES
(1, 'Ganjil', 'I (satu)', 0),
(2, 'Genap', 'II (dua)', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_tp`
--

CREATE TABLE `master_tp` (
  `id_tp` int(11) NOT NULL,
  `tahun` varchar(20) NOT NULL,
  `active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `master_tp`
--

INSERT INTO `master_tp` (`id_tp`, `tahun`, `active`) VALUES
(1, '2020/2021', 0),
(2, '2021/2022', 0),
(3, '2022/2023', 0),
(4, '2023/2024', 0),
(5, '2024/2025', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `post`
--

CREATE TABLE `post` (
  `id_post` int(11) NOT NULL,
  `dari` int(11) DEFAULT NULL,
  `dari_group` int(11) DEFAULT NULL,
  `kepada` varchar(50) NOT NULL COMMENT 'group',
  `text` longtext NOT NULL,
  `tanggal` datetime NOT NULL DEFAULT current_timestamp(),
  `updated` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Struktur dari tabel `post_comments`
--

CREATE TABLE `post_comments` (
  `id_comment` int(11) NOT NULL,
  `id_post` int(11) DEFAULT NULL,
  `dari` int(11) DEFAULT NULL,
  `dari_group` int(11) DEFAULT NULL,
  `text` longtext NOT NULL,
  `tanggal` datetime NOT NULL DEFAULT current_timestamp(),
  `updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `type` varchar(1) NOT NULL DEFAULT '1' COMMENT '1:pengumuman, 2:materi, 3:tugas'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Struktur dari tabel `post_reply`
--

CREATE TABLE `post_reply` (
  `id_reply` int(11) NOT NULL,
  `id_comment` int(11) DEFAULT NULL,
  `dari` int(11) DEFAULT NULL,
  `dari_group` int(11) DEFAULT NULL,
  `text` longtext NOT NULL,
  `tanggal` datetime NOT NULL DEFAULT current_timestamp(),
  `updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `type` varchar(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Struktur dari tabel `rapor_admin_setting`
--

CREATE TABLE `rapor_admin_setting` (
  `id_setting` int(11) NOT NULL,
  `id_tp` int(11) NOT NULL DEFAULT 0,
  `id_smt` int(11) NOT NULL DEFAULT 0,
  `kkm_tunggal` int(11) NOT NULL DEFAULT 0,
  `kkm` int(11) DEFAULT NULL,
  `bobot_ph` int(11) DEFAULT NULL,
  `bobot_pts` int(11) DEFAULT NULL,
  `bobot_pas` int(11) DEFAULT NULL,
  `bobot_absen` int(11) DEFAULT NULL,
  `tgl_rapor_akhir` varchar(100) DEFAULT NULL,
  `tgl_rapor_kelas_akhir` varchar(100) DEFAULT NULL,
  `tgl_rapor_pts` varchar(100) DEFAULT NULL,
  `nip_kepsek` int(11) DEFAULT 0,
  `nip_walikelas` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `rapor_admin_setting`
--

INSERT INTO `rapor_admin_setting` (`id_setting`, `id_tp`, `id_smt`, `kkm_tunggal`, `kkm`, `bobot_ph`, `bobot_pts`, `bobot_pas`, `bobot_absen`, `tgl_rapor_akhir`, `tgl_rapor_kelas_akhir`, `tgl_rapor_pts`, `nip_kepsek`, `nip_walikelas`) VALUES
(52, 5, 2, 1, 75, 50, 25, 25, NULL, '2025-01-10', '2025-01-10', '2025-01-09', 1, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `rapor_catatan_wali`
--

CREATE TABLE `rapor_catatan_wali` (
  `id_catatan_wali` int(11) NOT NULL,
  `id_tp` int(11) NOT NULL DEFAULT 0,
  `id_smt` int(11) NOT NULL DEFAULT 0,
  `id_kelas` int(11) DEFAULT NULL,
  `id_siswa` int(11) DEFAULT NULL,
  `nilai` longtext DEFAULT NULL,
  `deskripsi` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Struktur dari tabel `rapor_data_catatan`
--

CREATE TABLE `rapor_data_catatan` (
  `id_catatan` int(11) NOT NULL,
  `id_tp` int(11) NOT NULL DEFAULT 0,
  `id_smt` int(11) NOT NULL DEFAULT 0,
  `id_kelas` int(11) DEFAULT NULL,
  `jenis` int(11) NOT NULL COMMENT '1=desk absensi, 2=desk catatan, 3=desk ranking',
  `kode` int(11) NOT NULL,
  `deskripsi` varchar(150) NOT NULL,
  `rank` varchar(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Struktur dari tabel `rapor_data_fisik`
--

CREATE TABLE `rapor_data_fisik` (
  `id_fisik` int(11) NOT NULL,
  `id_tp` int(11) NOT NULL DEFAULT 0,
  `id_smt` int(11) NOT NULL DEFAULT 0,
  `id_kelas` int(11) DEFAULT NULL,
  `jenis` int(11) NOT NULL COMMENT '1=pendengaran, 2=penglihatan, 3=gigi, 4=lain-lain',
  `kode` int(11) NOT NULL,
  `deskripsi` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Struktur dari tabel `rapor_data_sikap`
--

CREATE TABLE `rapor_data_sikap` (
  `id_sikap` int(11) NOT NULL,
  `id_tp` int(11) NOT NULL DEFAULT 0,
  `id_smt` int(11) NOT NULL DEFAULT 0,
  `id_kelas` int(11) DEFAULT NULL,
  `jenis` int(11) NOT NULL COMMENT '1=spiritual, 2=sosial',
  `kode` int(11) NOT NULL,
  `sikap` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Struktur dari tabel `rapor_fisik`
--

CREATE TABLE `rapor_fisik` (
  `id_fisik` int(11) NOT NULL,
  `id_kelas` int(11) DEFAULT NULL,
  `id_siswa` int(11) DEFAULT NULL,
  `id_tp` int(11) NOT NULL,
  `id_smt` int(11) NOT NULL,
  `kondisi` longtext NOT NULL,
  `tinggi` int(11) NOT NULL,
  `berat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Struktur dari tabel `rapor_kikd`
--

CREATE TABLE `rapor_kikd` (
  `id_kikd` int(11) NOT NULL,
  `id_mapel_kelas` int(11) DEFAULT NULL,
  `aspek` int(11) NOT NULL,
  `id_tp` int(11) NOT NULL,
  `id_smt` int(11) NOT NULL,
  `materi_kikd` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Struktur dari tabel `rapor_kkm`
--

CREATE TABLE `rapor_kkm` (
  `id_kkm` int(11) NOT NULL,
  `kkm` int(11) DEFAULT 0,
  `bobot_ph` int(11) DEFAULT 0,
  `bobot_pts` int(11) DEFAULT 0,
  `bobot_pas` int(11) DEFAULT 0,
  `bobot_absen` int(11) DEFAULT 0,
  `beban_jam` int(11) DEFAULT 0,
  `id_tp` int(11) NOT NULL DEFAULT 0,
  `id_smt` int(11) NOT NULL DEFAULT 0,
  `jenis` int(11) NOT NULL,
  `id_kelas` int(11) DEFAULT NULL,
  `id_mapel` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Struktur dari tabel `rapor_naik`
--

CREATE TABLE `rapor_naik` (
  `id_naik` int(11) NOT NULL,
  `id_tp` int(11) NOT NULL,
  `id_smt` int(11) NOT NULL,
  `id_siswa` int(11) NOT NULL,
  `naik` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Struktur dari tabel `rapor_nilai_akhir`
--

CREATE TABLE `rapor_nilai_akhir` (
  `id_nilai_akhir` int(11) NOT NULL,
  `id_mapel` int(11) DEFAULT NULL,
  `id_kelas` int(11) DEFAULT NULL,
  `id_siswa` int(11) DEFAULT NULL,
  `id_tp` int(11) NOT NULL,
  `id_smt` int(11) NOT NULL,
  `nilai` int(11) DEFAULT 0,
  `akhir` int(11) DEFAULT NULL,
  `predikat` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Struktur dari tabel `rapor_nilai_ekstra`
--

CREATE TABLE `rapor_nilai_ekstra` (
  `id_nilai_ekstra` int(11) NOT NULL,
  `id_ekstra` int(11) DEFAULT NULL,
  `id_kelas` int(11) DEFAULT NULL,
  `id_siswa` int(11) DEFAULT NULL,
  `id_tp` int(11) NOT NULL,
  `id_smt` int(11) NOT NULL,
  `nilai` int(11) NOT NULL,
  `predikat` varchar(1) DEFAULT NULL,
  `deskripsi` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Struktur dari tabel `rapor_nilai_harian`
--

CREATE TABLE `rapor_nilai_harian` (
  `id_nilai_harian` int(11) NOT NULL,
  `id_siswa` int(11) DEFAULT NULL,
  `id_mapel` int(11) DEFAULT NULL,
  `id_kelas` int(11) DEFAULT NULL,
  `id_tp` int(11) NOT NULL,
  `id_smt` int(11) NOT NULL,
  `p1` varchar(3) DEFAULT NULL,
  `p2` varchar(3) DEFAULT NULL,
  `p3` varchar(3) DEFAULT NULL,
  `p4` varchar(3) DEFAULT NULL,
  `p5` varchar(3) DEFAULT NULL,
  `p6` varchar(3) DEFAULT NULL,
  `p7` varchar(3) DEFAULT NULL,
  `p8` varchar(3) DEFAULT NULL,
  `p_rata_rata` varchar(4) DEFAULT NULL,
  `p_predikat` varchar(1) DEFAULT NULL,
  `p_deskripsi` longtext DEFAULT NULL,
  `k1` varchar(3) DEFAULT NULL,
  `k2` varchar(3) DEFAULT NULL,
  `k3` varchar(3) DEFAULT NULL,
  `k4` varchar(3) DEFAULT NULL,
  `k5` varchar(3) DEFAULT NULL,
  `k6` varchar(3) DEFAULT NULL,
  `k7` varchar(3) DEFAULT NULL,
  `k8` varchar(3) DEFAULT NULL,
  `k_rata_rata` varchar(4) DEFAULT NULL,
  `k_predikat` varchar(1) DEFAULT NULL,
  `k_deskripsi` longtext DEFAULT NULL,
  `jml` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Struktur dari tabel `rapor_nilai_pts`
--

CREATE TABLE `rapor_nilai_pts` (
  `id_nilai_pts` int(11) NOT NULL,
  `id_mapel` int(11) DEFAULT NULL,
  `id_kelas` int(11) DEFAULT NULL,
  `id_siswa` int(11) DEFAULT NULL,
  `id_tp` int(11) NOT NULL,
  `id_smt` int(11) NOT NULL,
  `nilai` int(11) DEFAULT 0,
  `predikat` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Struktur dari tabel `rapor_nilai_sikap`
--

CREATE TABLE `rapor_nilai_sikap` (
  `id_nilai_sikap` int(11) NOT NULL,
  `id_siswa` int(11) DEFAULT NULL,
  `id_kelas` int(11) DEFAULT NULL,
  `id_tp` int(11) NOT NULL DEFAULT 0,
  `id_smt` int(11) NOT NULL DEFAULT 0,
  `jenis` int(11) DEFAULT NULL,
  `nilai` longtext NOT NULL,
  `deskripsi` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Struktur dari tabel `rapor_prestasi`
--

CREATE TABLE `rapor_prestasi` (
  `id_ranking` int(11) NOT NULL,
  `id_kelas` int(11) DEFAULT NULL,
  `id_siswa` int(11) DEFAULT NULL,
  `id_tp` int(11) NOT NULL,
  `id_smt` int(11) NOT NULL,
  `ranking` int(11) NOT NULL,
  `deskripsi` varchar(100) NOT NULL,
  `p1` varchar(100) NOT NULL,
  `p1_desk` varchar(100) NOT NULL,
  `p2` varchar(100) NOT NULL,
  `p2_desk` varchar(100) NOT NULL,
  `p3` varchar(100) NOT NULL,
  `p3_desk` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Struktur dari tabel `running_text`
--

CREATE TABLE `running_text` (
  `id_text` int(11) NOT NULL,
  `text` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Struktur dari tabel `setting`
--

CREATE TABLE `setting` (
  `id_setting` int(11) NOT NULL,
  `kode_sekolah` varchar(10) DEFAULT NULL,
  `sekolah` varchar(50) DEFAULT NULL,
  `npsn` varchar(10) DEFAULT NULL,
  `nss` varchar(20) DEFAULT NULL,
  `jenjang` int(11) DEFAULT NULL,
  `kepsek` varchar(50) DEFAULT NULL,
  `nip` varchar(30) DEFAULT NULL,
  `tanda_tangan` longtext DEFAULT NULL,
  `alamat` longtext DEFAULT NULL,
  `desa` varchar(100) DEFAULT NULL,
  `kecamatan` varchar(50) DEFAULT NULL,
  `kota` varchar(30) DEFAULT NULL,
  `provinsi` varchar(100) DEFAULT NULL,
  `kode_pos` int(11) DEFAULT NULL,
  `telp` varchar(20) DEFAULT NULL,
  `fax` varchar(20) DEFAULT NULL,
  `web` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `nama_aplikasi` varchar(100) DEFAULT NULL,
  `logo_kanan` longtext DEFAULT NULL,
  `logo_kiri` longtext DEFAULT NULL,
  `versi` varchar(10) DEFAULT NULL,
  `ip_server` varchar(100) DEFAULT NULL,
  `waktu` varchar(50) DEFAULT NULL,
  `server` varchar(50) DEFAULT NULL,
  `id_server` varchar(50) DEFAULT NULL,
  `sekolah_id` varchar(50) DEFAULT NULL,
  `db_versi` varchar(10) DEFAULT NULL,
  `satuan_pendidikan` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;

--
-- Dumping data untuk tabel `setting`
--

INSERT INTO `setting` (`id_setting`, `kode_sekolah`, `sekolah`, `npsn`, `nss`, `jenjang`, `kepsek`, `nip`, `tanda_tangan`, `alamat`, `desa`, `kecamatan`, `kota`, `provinsi`, `kode_pos`, `telp`, `fax`, `web`, `email`, `nama_aplikasi`, `logo_kanan`, `logo_kiri`, `versi`, `ip_server`, `waktu`, `server`, `id_server`, `sekolah_id`, `db_versi`, `satuan_pendidikan`) VALUES
(1, NULL, 'SMK PERTIWI CIASEM', '20233686', '', 3, 'Hj. HILMA RAHAYU, S.Pd.,M.Pd.', '', '', 'Jln. Margamulya G.10 Komplek BTN Sukamandi', 'Ciasem Girang', 'Ciasem', 'Subang', 'Jawa Barat', 41256, '', '', '', '', 'CBT', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(254) DEFAULT NULL,
  `activation_selector` varchar(255) DEFAULT NULL,
  `activation_code` varchar(255) DEFAULT NULL,
  `forgotten_password_selector` varchar(255) DEFAULT NULL,
  `forgotten_password_code` varchar(255) DEFAULT NULL,
  `forgotten_password_time` int(10) UNSIGNED DEFAULT NULL,
  `remember_selector` varchar(255) DEFAULT NULL,
  `remember_code` varchar(255) DEFAULT NULL,
  `created_on` int(10) UNSIGNED NOT NULL,
  `last_login` int(10) UNSIGNED DEFAULT NULL,
  `active` tinyint(3) UNSIGNED DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `ip_address`, `username`, `password`, `email`, `activation_selector`, `activation_code`, `forgotten_password_selector`, `forgotten_password_code`, `forgotten_password_time`, `remember_selector`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `company`, `phone`) VALUES
(1, '::1', 'admin', '$2y$12$gg9LpKJEI/LuW4Ufv6dGq.kkx8UMl3YnYgMgVP3AwVzlnaYHRUw1S', 'ilham rizky ramadhan@admin.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1736392886, 1738493576, 1, 'Ilham', 'Ramadhan', NULL, NULL),
(2, '::1', 'ilham12', '$2y$10$sOy0IcDIL3uPyhXvKFYuc..kFQhdgEVsAweEYSky8goKh71YcCoJG', '0001025@siswa.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1736394334, 1738491784, 1, 'Ilham', 'Ilham', NULL, NULL),
(3, '::1', 'robby12', '$2y$10$e.BU3wJmXnbrWDLl.ThG3.IznanMZrHIRbN6SrmSfLwZ7IzRgN8W2', '0002025@siswa.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1736394334, 1736421101, 1, 'Robby', 'Robby', NULL, NULL),
(4, '::1', 'nandang12', '$2y$10$LvL/D0QRYl8DvcbqT9agteY/HNB5//0KIRgQ9j6q9WQY5OYroM4Z2', '0003025@siswa.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1736394334, 1736517699, 1, 'Nandang', 'Nandang', NULL, NULL),
(6, '192.168.206.160', 'asep12', '$2y$10$6MZCzOAqUAM.Omyjtjcxcu2xiv/k5CLw/t9RmMxTr8mG/1pweTpIC', 'asep12@guru.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1736401914, 1738491801, 1, 'Asep', 'Bertian', NULL, NULL),
(7, '192.168.206.160', 'firman12', '$2y$10$p7SwKpkzt8x1KnjO3HuTGeD2PqRdCXniTz.MbYhJf0ZbKY8XY1IVC', 'firman12@guru.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1736401916, 1736402657, 1, 'Firman', 'Damayanto,', NULL, NULL),
(8, '::1', 'ana12', '$2y$10$3tARqPR4eB6rZ8lgg1a0de6D.tLQmP4psIIkC69D9c1S25/b54OUK', '0004025@siswa.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1738493712, NULL, 1, 'Ana', 'Silvana', NULL, NULL),
(9, '::1', 'dwiki12', '$2y$10$BuRZkoeUgp/bcVqKKDxZi.hAh50fthEfSBtBZcBA6Bp7m.V/GzDgm', '0005025@siswa.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1738493874, NULL, 1, 'Dwiki', 'Aji', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users_groups`
--

CREATE TABLE `users_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `group_id` mediumint(8) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `users_groups`
--

INSERT INTO `users_groups` (`id`, `user_id`, `group_id`) VALUES
(1, 1, 1),
(2, 2, 3),
(3, 3, 3),
(4, 4, 3),
(6, 6, 2),
(7, 7, 2),
(8, 8, 3),
(9, 9, 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users_profile`
--

CREATE TABLE `users_profile` (
  `id_user` int(11) NOT NULL,
  `nama_lengkap` mediumtext NOT NULL,
  `jabatan` mediumtext DEFAULT NULL,
  `level_access` int(11) NOT NULL DEFAULT 0,
  `foto` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `api_setting`
--
ALTER TABLE `api_setting`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indeks untuk tabel `api_token`
--
ALTER TABLE `api_token`
  ADD PRIMARY KEY (`id_api`) USING BTREE;

--
-- Indeks untuk tabel `buku_induk`
--
ALTER TABLE `buku_induk`
  ADD PRIMARY KEY (`id_siswa`) USING BTREE;

--
-- Indeks untuk tabel `bulan`
--
ALTER TABLE `bulan`
  ADD PRIMARY KEY (`id_bln`) USING BTREE;

--
-- Indeks untuk tabel `cbt_bank_soal`
--
ALTER TABLE `cbt_bank_soal`
  ADD PRIMARY KEY (`id_bank`) USING BTREE,
  ADD UNIQUE KEY `kode_bank_soal` (`bank_kode`(100));

--
-- Indeks untuk tabel `cbt_durasi_siswa`
--
ALTER TABLE `cbt_durasi_siswa`
  ADD PRIMARY KEY (`id_durasi`) USING BTREE,
  ADD KEY `Cbt_index_id_durasi` (`id_durasi`) USING BTREE COMMENT 'id durasi',
  ADD KEY `id_siswa` (`id_siswa`) USING BTREE;

--
-- Indeks untuk tabel `cbt_jadwal`
--
ALTER TABLE `cbt_jadwal`
  ADD PRIMARY KEY (`id_jadwal`) USING BTREE,
  ADD UNIQUE KEY `idjawal_relation` (`id_jadwal`) USING BTREE,
  ADD UNIQUE KEY `id_bank_soal` (`id_bank`) USING BTREE,
  ADD KEY `idx_jns_fc` (`id_jenis`) USING BTREE;

--
-- Indeks untuk tabel `cbt_jenis`
--
ALTER TABLE `cbt_jenis`
  ADD PRIMARY KEY (`id_jenis`) USING BTREE,
  ADD UNIQUE KEY `idx_jns` (`id_jenis`) USING BTREE;

--
-- Indeks untuk tabel `cbt_kelas_ruang`
--
ALTER TABLE `cbt_kelas_ruang`
  ADD PRIMARY KEY (`id_kelas_ruang`) USING BTREE;

--
-- Indeks untuk tabel `cbt_kop_absensi`
--
ALTER TABLE `cbt_kop_absensi`
  ADD PRIMARY KEY (`id_kop`) USING BTREE;

--
-- Indeks untuk tabel `cbt_kop_berita`
--
ALTER TABLE `cbt_kop_berita`
  ADD PRIMARY KEY (`id_kop`) USING BTREE;

--
-- Indeks untuk tabel `cbt_kop_kartu`
--
ALTER TABLE `cbt_kop_kartu`
  ADD PRIMARY KEY (`id_set_kartu`) USING BTREE;

--
-- Indeks untuk tabel `cbt_nilai`
--
ALTER TABLE `cbt_nilai`
  ADD PRIMARY KEY (`id_nilai`) USING BTREE,
  ADD UNIQUE KEY `id_nilai_idx` (`id_nilai`) USING BTREE;

--
-- Indeks untuk tabel `cbt_nomor_peserta`
--
ALTER TABLE `cbt_nomor_peserta`
  ADD PRIMARY KEY (`id_nomor`) USING BTREE;

--
-- Indeks untuk tabel `cbt_pengawas`
--
ALTER TABLE `cbt_pengawas`
  ADD PRIMARY KEY (`id_pengawas`) USING BTREE;

--
-- Indeks untuk tabel `cbt_rekap`
--
ALTER TABLE `cbt_rekap`
  ADD PRIMARY KEY (`id_rekap`) USING BTREE;

--
-- Indeks untuk tabel `cbt_rekap_nilai`
--
ALTER TABLE `cbt_rekap_nilai`
  ADD PRIMARY KEY (`id_rekap_nilai`) USING BTREE;

--
-- Indeks untuk tabel `cbt_ruang`
--
ALTER TABLE `cbt_ruang`
  ADD PRIMARY KEY (`id_ruang`) USING BTREE;

--
-- Indeks untuk tabel `cbt_sesi`
--
ALTER TABLE `cbt_sesi`
  ADD PRIMARY KEY (`id_sesi`) USING BTREE;

--
-- Indeks untuk tabel `cbt_sesi_siswa`
--
ALTER TABLE `cbt_sesi_siswa`
  ADD PRIMARY KEY (`siswa_id`) USING BTREE;

--
-- Indeks untuk tabel `cbt_soal`
--
ALTER TABLE `cbt_soal`
  ADD PRIMARY KEY (`id_soal`) USING BTREE,
  ADD UNIQUE KEY `id_soal_idx` (`id_soal`) USING BTREE,
  ADD KEY `id_bank_idx` (`bank_id`) USING BTREE;

--
-- Indeks untuk tabel `cbt_soal_siswa`
--
ALTER TABLE `cbt_soal_siswa`
  ADD PRIMARY KEY (`id_soal_siswa`) USING BTREE,
  ADD UNIQUE KEY `is_soal_siswa` (`id_soal_siswa`) USING BTREE,
  ADD KEY `id_siswa` (`id_siswa`) USING BTREE,
  ADD KEY `id_jadwal` (`id_jadwal`) USING BTREE,
  ADD KEY `id_soal_fc` (`id_soal`) USING BTREE,
  ADD KEY `id_bank_fc` (`id_bank`) USING BTREE;

--
-- Indeks untuk tabel `cbt_token`
--
ALTER TABLE `cbt_token`
  ADD PRIMARY KEY (`id_token`) USING BTREE;

--
-- Indeks untuk tabel `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indeks untuk tabel `hari`
--
ALTER TABLE `hari`
  ADD PRIMARY KEY (`id_hri`) USING BTREE;

--
-- Indeks untuk tabel `jabatan_guru`
--
ALTER TABLE `jabatan_guru`
  ADD PRIMARY KEY (`id_jabatan_guru`) USING BTREE;

--
-- Indeks untuk tabel `kelas_catatan_mapel`
--
ALTER TABLE `kelas_catatan_mapel`
  ADD PRIMARY KEY (`id_catatan`) USING BTREE;

--
-- Indeks untuk tabel `kelas_catatan_wali`
--
ALTER TABLE `kelas_catatan_wali`
  ADD PRIMARY KEY (`id_catatan`) USING BTREE;

--
-- Indeks untuk tabel `kelas_ekstra`
--
ALTER TABLE `kelas_ekstra`
  ADD PRIMARY KEY (`id_kelas_ekstra`) USING BTREE;

--
-- Indeks untuk tabel `kelas_jadwal_kbm`
--
ALTER TABLE `kelas_jadwal_kbm`
  ADD PRIMARY KEY (`id_kbm`) USING BTREE;

--
-- Indeks untuk tabel `kelas_jadwal_mapel`
--
ALTER TABLE `kelas_jadwal_mapel`
  ADD PRIMARY KEY (`id_jadwal`) USING BTREE;

--
-- Indeks untuk tabel `kelas_jadwal_materi`
--
ALTER TABLE `kelas_jadwal_materi`
  ADD PRIMARY KEY (`id_kjm`) USING BTREE;

--
-- Indeks untuk tabel `kelas_materi`
--
ALTER TABLE `kelas_materi`
  ADD PRIMARY KEY (`id_materi`) USING BTREE;

--
-- Indeks untuk tabel `kelas_siswa`
--
ALTER TABLE `kelas_siswa`
  ADD PRIMARY KEY (`id_kelas_siswa`) USING BTREE,
  ADD UNIQUE KEY `id_kelas_siswa_idx` (`id_kelas_siswa`) USING BTREE,
  ADD KEY `id_siswa_idx` (`id_siswa`) USING BTREE,
  ADD KEY `Id_kelas` (`id_kelas`) USING BTREE;

--
-- Indeks untuk tabel `kelas_struktur`
--
ALTER TABLE `kelas_struktur`
  ADD PRIMARY KEY (`id_kelas`) USING BTREE;

--
-- Indeks untuk tabel `level_guru`
--
ALTER TABLE `level_guru`
  ADD PRIMARY KEY (`id_level`) USING BTREE;

--
-- Indeks untuk tabel `level_kelas`
--
ALTER TABLE `level_kelas`
  ADD PRIMARY KEY (`id_level`) USING BTREE,
  ADD KEY `index_id_level` (`id_level`) USING BTREE;

--
-- Indeks untuk tabel `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`id_log`) USING BTREE;

--
-- Indeks untuk tabel `login_attempts`
--
ALTER TABLE `login_attempts`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indeks untuk tabel `log_materi`
--
ALTER TABLE `log_materi`
  ADD PRIMARY KEY (`id_log`) USING BTREE;

--
-- Indeks untuk tabel `log_ujian`
--
ALTER TABLE `log_ujian`
  ADD PRIMARY KEY (`id_log`) USING BTREE;

--
-- Indeks untuk tabel `master_ekstra`
--
ALTER TABLE `master_ekstra`
  ADD PRIMARY KEY (`id_ekstra`) USING BTREE;

--
-- Indeks untuk tabel `master_guru`
--
ALTER TABLE `master_guru`
  ADD PRIMARY KEY (`id_guru`) USING BTREE;

--
-- Indeks untuk tabel `master_hari_efektif`
--
ALTER TABLE `master_hari_efektif`
  ADD PRIMARY KEY (`id_hari_efektif`) USING BTREE;

--
-- Indeks untuk tabel `master_jurusan`
--
ALTER TABLE `master_jurusan`
  ADD PRIMARY KEY (`id_jurusan`) USING BTREE;

--
-- Indeks untuk tabel `master_kelas`
--
ALTER TABLE `master_kelas`
  ADD PRIMARY KEY (`id_kelas`) USING BTREE,
  ADD KEY `index_level_Id` (`level_id`) USING BTREE;

--
-- Indeks untuk tabel `master_kelompok_mapel`
--
ALTER TABLE `master_kelompok_mapel`
  ADD PRIMARY KEY (`id_kel_mapel`) USING BTREE;

--
-- Indeks untuk tabel `master_mapel`
--
ALTER TABLE `master_mapel`
  ADD PRIMARY KEY (`id_mapel`) USING BTREE;

--
-- Indeks untuk tabel `master_siswa`
--
ALTER TABLE `master_siswa`
  ADD PRIMARY KEY (`id_siswa`,`uid`,`nisn`,`nis`) USING BTREE,
  ADD UNIQUE KEY `Id_siswa_idx` (`id_siswa`) USING BTREE,
  ADD UNIQUE KEY `uid_idx` (`uid`) USING BTREE,
  ADD UNIQUE KEY `nisn` (`nisn`) USING BTREE;

--
-- Indeks untuk tabel `master_smt`
--
ALTER TABLE `master_smt`
  ADD PRIMARY KEY (`id_smt`) USING BTREE;

--
-- Indeks untuk tabel `master_tp`
--
ALTER TABLE `master_tp`
  ADD PRIMARY KEY (`id_tp`) USING BTREE;

--
-- Indeks untuk tabel `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id_post`) USING BTREE;

--
-- Indeks untuk tabel `post_comments`
--
ALTER TABLE `post_comments`
  ADD PRIMARY KEY (`id_comment`) USING BTREE;

--
-- Indeks untuk tabel `post_reply`
--
ALTER TABLE `post_reply`
  ADD PRIMARY KEY (`id_reply`) USING BTREE;

--
-- Indeks untuk tabel `rapor_admin_setting`
--
ALTER TABLE `rapor_admin_setting`
  ADD PRIMARY KEY (`id_setting`) USING BTREE;

--
-- Indeks untuk tabel `rapor_catatan_wali`
--
ALTER TABLE `rapor_catatan_wali`
  ADD PRIMARY KEY (`id_catatan_wali`) USING BTREE;

--
-- Indeks untuk tabel `rapor_data_catatan`
--
ALTER TABLE `rapor_data_catatan`
  ADD PRIMARY KEY (`id_catatan`) USING BTREE;

--
-- Indeks untuk tabel `rapor_data_fisik`
--
ALTER TABLE `rapor_data_fisik`
  ADD PRIMARY KEY (`id_fisik`) USING BTREE;

--
-- Indeks untuk tabel `rapor_data_sikap`
--
ALTER TABLE `rapor_data_sikap`
  ADD PRIMARY KEY (`id_sikap`) USING BTREE;

--
-- Indeks untuk tabel `rapor_fisik`
--
ALTER TABLE `rapor_fisik`
  ADD PRIMARY KEY (`id_fisik`) USING BTREE;

--
-- Indeks untuk tabel `rapor_kikd`
--
ALTER TABLE `rapor_kikd`
  ADD PRIMARY KEY (`id_kikd`) USING BTREE;

--
-- Indeks untuk tabel `rapor_kkm`
--
ALTER TABLE `rapor_kkm`
  ADD PRIMARY KEY (`id_kkm`) USING BTREE;

--
-- Indeks untuk tabel `rapor_naik`
--
ALTER TABLE `rapor_naik`
  ADD PRIMARY KEY (`id_naik`) USING BTREE;

--
-- Indeks untuk tabel `rapor_nilai_akhir`
--
ALTER TABLE `rapor_nilai_akhir`
  ADD PRIMARY KEY (`id_nilai_akhir`) USING BTREE;

--
-- Indeks untuk tabel `rapor_nilai_ekstra`
--
ALTER TABLE `rapor_nilai_ekstra`
  ADD PRIMARY KEY (`id_nilai_ekstra`) USING BTREE;

--
-- Indeks untuk tabel `rapor_nilai_harian`
--
ALTER TABLE `rapor_nilai_harian`
  ADD PRIMARY KEY (`id_nilai_harian`) USING BTREE;

--
-- Indeks untuk tabel `rapor_nilai_pts`
--
ALTER TABLE `rapor_nilai_pts`
  ADD PRIMARY KEY (`id_nilai_pts`) USING BTREE;

--
-- Indeks untuk tabel `rapor_nilai_sikap`
--
ALTER TABLE `rapor_nilai_sikap`
  ADD PRIMARY KEY (`id_nilai_sikap`) USING BTREE;

--
-- Indeks untuk tabel `rapor_prestasi`
--
ALTER TABLE `rapor_prestasi`
  ADD PRIMARY KEY (`id_ranking`) USING BTREE;

--
-- Indeks untuk tabel `running_text`
--
ALTER TABLE `running_text`
  ADD PRIMARY KEY (`id_text`) USING BTREE;

--
-- Indeks untuk tabel `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id_setting`) USING BTREE;

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `id_user` (`id`) USING BTREE,
  ADD UNIQUE KEY `username_idx` (`username`) USING BTREE;

--
-- Indeks untuk tabel `users_groups`
--
ALTER TABLE `users_groups`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `uc_users_groups` (`user_id`,`group_id`) USING BTREE,
  ADD KEY `fk_users_groups_users1_idx` (`user_id`) USING BTREE,
  ADD KEY `fk_users_groups_groups1_idx` (`group_id`) USING BTREE;

--
-- Indeks untuk tabel `users_profile`
--
ALTER TABLE `users_profile`
  ADD PRIMARY KEY (`id_user`) USING BTREE;

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `api_setting`
--
ALTER TABLE `api_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `api_token`
--
ALTER TABLE `api_token`
  MODIFY `id_api` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `buku_induk`
--
ALTER TABLE `buku_induk`
  MODIFY `id_siswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `bulan`
--
ALTER TABLE `bulan`
  MODIFY `id_bln` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `cbt_bank_soal`
--
ALTER TABLE `cbt_bank_soal`
  MODIFY `id_bank` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `cbt_jadwal`
--
ALTER TABLE `cbt_jadwal`
  MODIFY `id_jadwal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `cbt_jenis`
--
ALTER TABLE `cbt_jenis`
  MODIFY `id_jenis` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `cbt_rekap`
--
ALTER TABLE `cbt_rekap`
  MODIFY `id_rekap` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `cbt_rekap_nilai`
--
ALTER TABLE `cbt_rekap_nilai`
  MODIFY `id_rekap_nilai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `cbt_ruang`
--
ALTER TABLE `cbt_ruang`
  MODIFY `id_ruang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `cbt_sesi`
--
ALTER TABLE `cbt_sesi`
  MODIFY `id_sesi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `cbt_soal`
--
ALTER TABLE `cbt_soal`
  MODIFY `id_soal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `cbt_token`
--
ALTER TABLE `cbt_token`
  MODIFY `id_token` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `groups`
--
ALTER TABLE `groups`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `hari`
--
ALTER TABLE `hari`
  MODIFY `id_hri` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `kelas_catatan_mapel`
--
ALTER TABLE `kelas_catatan_mapel`
  MODIFY `id_catatan` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `kelas_catatan_wali`
--
ALTER TABLE `kelas_catatan_wali`
  MODIFY `id_catatan` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `kelas_materi`
--
ALTER TABLE `kelas_materi`
  MODIFY `id_materi` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `kelas_struktur`
--
ALTER TABLE `kelas_struktur`
  MODIFY `id_kelas` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `level_guru`
--
ALTER TABLE `level_guru`
  MODIFY `id_level` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `log`
--
ALTER TABLE `log`
  MODIFY `id_log` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT untuk tabel `login_attempts`
--
ALTER TABLE `login_attempts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `log_ujian`
--
ALTER TABLE `log_ujian`
  MODIFY `id_log` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3063;

--
-- AUTO_INCREMENT untuk tabel `master_ekstra`
--
ALTER TABLE `master_ekstra`
  MODIFY `id_ekstra` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `master_guru`
--
ALTER TABLE `master_guru`
  MODIFY `id_guru` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `master_hari_efektif`
--
ALTER TABLE `master_hari_efektif`
  MODIFY `id_hari_efektif` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `master_jurusan`
--
ALTER TABLE `master_jurusan`
  MODIFY `id_jurusan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `master_kelas`
--
ALTER TABLE `master_kelas`
  MODIFY `id_kelas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `master_kelompok_mapel`
--
ALTER TABLE `master_kelompok_mapel`
  MODIFY `id_kel_mapel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `master_mapel`
--
ALTER TABLE `master_mapel`
  MODIFY `id_mapel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT untuk tabel `master_siswa`
--
ALTER TABLE `master_siswa`
  MODIFY `id_siswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `master_smt`
--
ALTER TABLE `master_smt`
  MODIFY `id_smt` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `master_tp`
--
ALTER TABLE `master_tp`
  MODIFY `id_tp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `post`
--
ALTER TABLE `post`
  MODIFY `id_post` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `post_comments`
--
ALTER TABLE `post_comments`
  MODIFY `id_comment` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `post_reply`
--
ALTER TABLE `post_reply`
  MODIFY `id_reply` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `rapor_admin_setting`
--
ALTER TABLE `rapor_admin_setting`
  MODIFY `id_setting` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT untuk tabel `rapor_catatan_wali`
--
ALTER TABLE `rapor_catatan_wali`
  MODIFY `id_catatan_wali` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `rapor_data_catatan`
--
ALTER TABLE `rapor_data_catatan`
  MODIFY `id_catatan` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `rapor_data_fisik`
--
ALTER TABLE `rapor_data_fisik`
  MODIFY `id_fisik` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `rapor_data_sikap`
--
ALTER TABLE `rapor_data_sikap`
  MODIFY `id_sikap` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `rapor_fisik`
--
ALTER TABLE `rapor_fisik`
  MODIFY `id_fisik` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `rapor_kikd`
--
ALTER TABLE `rapor_kikd`
  MODIFY `id_kikd` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `rapor_kkm`
--
ALTER TABLE `rapor_kkm`
  MODIFY `id_kkm` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `rapor_nilai_akhir`
--
ALTER TABLE `rapor_nilai_akhir`
  MODIFY `id_nilai_akhir` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `rapor_nilai_ekstra`
--
ALTER TABLE `rapor_nilai_ekstra`
  MODIFY `id_nilai_ekstra` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `rapor_nilai_harian`
--
ALTER TABLE `rapor_nilai_harian`
  MODIFY `id_nilai_harian` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `rapor_nilai_pts`
--
ALTER TABLE `rapor_nilai_pts`
  MODIFY `id_nilai_pts` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `rapor_nilai_sikap`
--
ALTER TABLE `rapor_nilai_sikap`
  MODIFY `id_nilai_sikap` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `rapor_prestasi`
--
ALTER TABLE `rapor_prestasi`
  MODIFY `id_ranking` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `running_text`
--
ALTER TABLE `running_text`
  MODIFY `id_text` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `setting`
--
ALTER TABLE `setting`
  MODIFY `id_setting` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `users_groups`
--
ALTER TABLE `users_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `users_profile`
--
ALTER TABLE `users_profile`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `cbt_jadwal`
--
ALTER TABLE `cbt_jadwal`
  ADD CONSTRAINT `id_bank_soal` FOREIGN KEY (`id_bank`) REFERENCES `cbt_bank_soal` (`id_bank`),
  ADD CONSTRAINT `id_jns_idx_ifc` FOREIGN KEY (`id_jenis`) REFERENCES `cbt_jenis` (`id_jenis`);

--
-- Ketidakleluasaan untuk tabel `cbt_soal_siswa`
--
ALTER TABLE `cbt_soal_siswa`
  ADD CONSTRAINT `Id_siswa_fc` FOREIGN KEY (`id_siswa`) REFERENCES `master_siswa` (`id_siswa`),
  ADD CONSTRAINT `id_bank_fc` FOREIGN KEY (`id_bank`) REFERENCES `cbt_bank_soal` (`id_bank`),
  ADD CONSTRAINT `id_jadwal_fc` FOREIGN KEY (`id_jadwal`) REFERENCES `cbt_jadwal` (`id_jadwal`),
  ADD CONSTRAINT `id_soal_fc` FOREIGN KEY (`id_soal`) REFERENCES `cbt_soal` (`id_soal`);

--
-- Ketidakleluasaan untuk tabel `master_kelas`
--
ALTER TABLE `master_kelas`
  ADD CONSTRAINT `key_id_cek` FOREIGN KEY (`level_id`) REFERENCES `level_kelas` (`id_level`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
