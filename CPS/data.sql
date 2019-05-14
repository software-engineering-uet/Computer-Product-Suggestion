-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th5 14, 2019 lúc 06:55 PM
-- Phiên bản máy phục vụ: 10.1.38-MariaDB
-- Phiên bản PHP: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `laptops`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dexuat`
--

CREATE TABLE `dexuat` (
  `id` int(11) NOT NULL,
  `username` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `Name` text NOT NULL,
  `Link_sp` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `dexuat`
--

INSERT INTO `dexuat` (`id`, `username`, `Name`, `Link_sp`) VALUES
(23, 'admin', 'hello', 'https://www.thegioididong.com/laptop/hp-pavilion-15-cs1009tu-i5-8265u-4gb-1tb-win10-5j');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `diem100`
--

CREATE TABLE `diem100` (
  `id` int(11) NOT NULL DEFAULT '0',
  `diem` double(19,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `diem100`
--

INSERT INTO `diem100` (`id`, `diem`) VALUES
(1, 17.82),
(2, 11.51),
(3, 100.00),
(4, 21.28),
(6, 10.22),
(7, 4.82),
(8, 10.22),
(9, 11.51),
(11, 10.22),
(12, 10.22),
(13, 17.24),
(15, 10.92),
(16, 10.22),
(17, 9.90),
(18, 4.42),
(19, 7.92),
(21, 7.92),
(22, 9.20),
(23, 4.40),
(26, 4.40),
(27, 4.82),
(31, 7.92),
(32, 10.22),
(34, 10.22),
(35, 9.20),
(36, 9.02),
(37, 4.82),
(39, 9.20),
(40, 9.35),
(41, 9.20),
(42, 7.20),
(43, 21.28),
(46, 21.28),
(48, 15.57),
(49, 9.12),
(50, 51.55),
(51, 4.04),
(53, 11.51),
(54, 51.55),
(55, 66.15),
(56, 66.15),
(58, 15.75),
(60, 11.51),
(61, 51.55),
(62, 38.21),
(63, 4.82),
(64, 15.75),
(65, 66.15),
(69, 9.20),
(72, 8.10),
(73, 100.00),
(75, 10.22),
(77, 11.51),
(78, 11.51),
(87, 11.51),
(88, 9.35),
(91, 4.82),
(92, 3.74),
(93, 4.42),
(94, 9.20),
(95, 4.62),
(97, 5.50),
(98, 10.22),
(105, 11.51),
(107, 51.55),
(108, 23.96),
(109, 4.04),
(112, 9.03),
(113, 51.55),
(114, 66.15),
(115, 13.55),
(116, 21.53),
(125, 9.90),
(126, 2.20),
(127, 4.42),
(128, 51.55),
(129, 21.28),
(132, 10.22),
(134, 24.58),
(140, 100.00),
(143, 34.54),
(144, 66.15),
(147, 23.96),
(149, 6.60),
(150, 66.15),
(151, 51.55);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `DiemCPU`
--

CREATE TABLE `DiemCPU` (
  `id` int(11) NOT NULL,
  `Name` text,
  `Diem` int(11) DEFAULT NULL,
  `Diem100` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `DiemCPU`
--

INSERT INTO `DiemCPU` (`id`, `Name`, `Diem`, `Diem100`) VALUES
(1, 'AMD Ryzen 7 2700U 7200U', 7368, 0),
(2, 'Intel Core i7 8550U', 8296, 66.45),
(3, 'intel core i7 8750H', 12485, 100),
(4, 'Intel Core i5 8250U', 7678, 61.5),
(5, 'Intel Core i3 8130U', 5074, 40.64),
(6, 'intel Core i3 7100U', 3778, 30.26),
(7, '	 Intel Core i5 7200U', 4611, 36.93),
(10, 'intel Core i5-8250U', 7678, 61.5),
(11, 'Intel Core i5 7200U', 4611, 36.93),
(17, 'Intel Celeron N4000', 1469, 11.77),
(18, 'Intel Pentium N5000', NULL, 0),
(19, 'Intel Celeron N3350', 1107, 8.87),
(20, 'Intel Core i3 7020U', 3493, 27.98),
(22, 'Intel Core i3 6006U', 3090, 24.75),
(30, 'Intel Core i3 8145U', 4445, 35.6),
(31, 'Intel Celeron N3060', 991, 7.94),
(36, 'Intel Celeron N4100', 2334, 18.69),
(42, '	 Intel Core i3 6006U', 3090, 24.75),
(45, 'Intel core i3 7130U', 4096, 32.81),
(47, 'Intel  Core i3-7020U', 3493, 27.98),
(48, 'Intel Core i5 Dual - Core', NULL, 0),
(49, '	 Intel Core i5 Dual - Core', NULL, 0),
(50, 'Intel Core i5 8300H', 9497, 76.07),
(61, 'Intel  Core i7 8750H', 12485, 100),
(62, 'Intel Core i7 6-core', NULL, 0),
(63, ' Intel Core i5-7200U', 4611, 36.93),
(64, 'Intel  Core i7 8550U', 8296, 66.45),
(69, '	 Intel Core i5 6200U', 4020, 0),
(72, '	 Intel Core M3 Dual - Core', NULL, 0),
(90, 'Intel Core i5 8265U', 8176, 65.49),
(92, 'Intel Pentium N4200', 2028, 16.24),
(101, 'Intel  Core i3 7020U', 3493, 27.98),
(115, 'Intel  Core i5  8250U', 7678, 61.5),
(116, 'Intel Core i5 Quad-Core', 7600, 0),
(120, 'Intel Core i7 8565U', 9049, 72.48),
(121, 'Intel Core I5  8250U', 7678, 61.5),
(125, 'AMD Ryzen 5 2500U', 7331, 0),
(146, 'Intel  Core i5 8250U', 7678, 61.5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `DiemCPU_bm`
--

CREATE TABLE `DiemCPU_bm` (
  `nameCPU` text NOT NULL,
  `Diem` int(11) DEFAULT NULL,
  `Diem/100` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `DiemCPU_bm`
--

INSERT INTO `DiemCPU_bm` (`nameCPU`, `Diem`, `Diem/100`) VALUES
('Intel Core i7-8700B @ 3.20GHz', 14905, NULL),
('Intel Xeon E-2186M @ 2.90GHz', 14573, NULL),
('Intel Core i9-8950HK @ 2.90GHz', 14441, NULL),
('Intel Xeon E-2176M @ 2.70GHz', 13776, NULL),
('Intel Xeon E5-2648L v4 @ 1.80GHz', 13654, NULL),
('Intel Core i7-8850H @ 2.60GHz', 13163, NULL),
('Intel Core i5-8500B @ 3.00GHz', 12639, NULL),
('Intel Core i7-8750H @ 2.20GHz', 12485, NULL),
('Intel Core i7-8559U @ 2.70GHz', 12283, NULL),
('Intel Core i5-9400F @ 2.90GHz', 12228, NULL),
('Intel Xeon E5-4648 v3 @ 1.70GHz', 11097, NULL),
('Intel Core i7-8809G @ 3.10GHz', 11032, NULL),
('Intel Core i5-8259U @ 2.30GHz', 11003, NULL),
('Intel Xeon E3-1535M v6 @ 3.10GHz', 10618, NULL),
('Intel Core i7-8706G @ 3.10GHz', 10549, NULL),
('Intel Core i5-8400H @ 2.50GHz', 10126, NULL),
('Intel Core i7-8705G @ 3.10GHz', 10003, NULL),
('Intel Core i7-7820HK @ 2.90GHz', 9986, NULL),
('Intel Core i7-7920HQ @ 3.10GHz', 9968, NULL),
('Intel Core i7-5850EQ @ 2.70GHz', 9817, NULL),
('Intel Core i7-8709G @ 3.10GHz', 9780, NULL),
('Intel Core i7-6770HQ @ 2.60GHz', 9723, NULL),
('Intel Core i5-8300H @ 2.30GHz', 9497, NULL),
('Intel Core i7-7820HQ @ 2.90GHz', 9270, NULL),
('Intel Core i7-8565U @ 1.80GHz', 9049, NULL),
('AMD Ryzen 7 PRO 2700U', 8955, NULL),
('Intel Core i5-8305G @ 2.80GHz', 8946, NULL),
('Intel Core i7-8650U @ 1.90GHz', 8819, NULL),
('Intel Core i7-7700HQ @ 2.80GHz', 8817, NULL),
('AMD Ryzen 5 3550H', 8798, NULL),
('Intel Xeon E3-1268L v5 @ 2.40GHz', 8695, NULL),
('Intel Core i7-6820EQ @ 2.80GHz', 8626, NULL),
('AMD Ryzen 5 PRO 2500U', 8581, NULL),
('AMD Ryzen 7 2800H', 8498, NULL),
('Intel Core i3-8100B @ 3.60GHz', 8431, NULL),
('Intel Core i7-8550U @ 1.80GHz', 8296, NULL),
('Intel Core i5-8350U @ 1.70GHz', 8234, NULL),
('Intel Xeon D-1528 @ 1.90GHz', 8210, NULL),
('Intel Core i5-8265U @ 1.60GHz', 8176, NULL),
('AMD Ryzen 5 2600H', 7949, NULL),
('AMD Ryzen Embedded V1605B', 7864, NULL),
('Intel Core i5-7440HQ @ 2.80GHz', 7703, NULL),
('Intel Core i5-8250U @ 1.60GHz', 7678, NULL),
('AMD Ryzen Embedded V1807B', 7529, NULL),
('AMD Ryzen 7 2700U', 7379, NULL),
('AMD Ryzen 5 2500U', 7331, NULL),
('AMD Ryzen 5 3500U', 7194, NULL),
('AMD Ryzen 3 PRO 2300U', 7124, NULL),
('Intel Core i5-7300HQ @ 2.50GHz', 6801, NULL),
('Intel Core i7-7567U @ 3.50GHz', 6495, NULL),
('Intel Xeon E3-1505L v5 @ 2.00GHz', 6374, NULL),
('Intel Core i5-7442EQ @ 2.10GHz', 6262, NULL),
('Intel Core i5-6440EQ @ 2.70GHz', 6223, NULL),
('AMD Ryzen 3 2300U', 6197, NULL),
('Intel Core i3-8109U @ 3.00GHz', 6176, NULL),
('Intel Core i7-7660U @ 2.50GHz', 6015, NULL),
('Intel Core i7-7560U @ 2.40GHz', 5849, NULL),
('Intel Core i5-7360U @ 2.30GHz', 5823, NULL),
('Intel Core i5-7260U @ 2.20GHz', 5680, NULL),
('Intel Core i5-7287U @ 3.30GHz', 5656, NULL),
('AMD Athlon 220GE', 5346, NULL),
('AMD A8-7680', 5335, NULL),
('Intel Core i5-7300U @ 2.60GHz', 5185, NULL),
('Intel Core i7-7500U @ 2.70GHz', 5158, NULL),
('Intel Core i5-7267U @ 3.10GHz', 5098, NULL),
('Intel Core i7-7600U @ 2.80GHz', 5089, NULL),
('Intel Core i3-8130U @ 2.20GHz', 5074, NULL),
('AMD Embedded R-Series RX-418GD Radeon R6', 5068, NULL),
('AMD Ryzen Embedded V1202B', 5051, NULL),
('Intel Core i5-6267U @ 2.90GHz', 4960, NULL),
('Intel Core i5-6360U @ 2.00GHz', 4880, NULL),
('AMD FX-9830P', 4757, NULL),
('Intel Core i3-7167U @ 2.80GHz', 4757, NULL),
('Intel Core i5-6287U @ 3.10GHz', 4751, NULL),
('Intel Core i3-8121U @ 2.20GHz', 4738, NULL),
('Intel Core i3-7100H @ 3.00GHz', 4696, NULL),
('Intel Core i5-7200U @ 2.50GHz', 4611, NULL),
('Intel Core i7-6498DU @ 2.50GHz', 4538, NULL),
('AMD Ryzen 3 2200U', 4530, NULL),
('AMD A10-9630P', 4497, NULL),
('AMD A12-9730P', 4472, NULL),
('Intel Core i3-8145U @ 2.10GHz', 4445, NULL),
('AMD PRO A10-9700B', 4393, NULL),
('AMD PRO A12-8830B', 4325, NULL),
('Intel Core i5-8200Y @ 1.30GHz', 4206, NULL),
('Intel Core i5-6198DU @ 2.30GHz', 4147, NULL),
('AMD PRO A12-9800B', 4128, NULL),
('Intel Core i3-7130U @ 2.70GHz', 4096, NULL),
('Intel Core i5-8210Y @ 1.60GHz', 4057, NULL),
('AMD A12-9720P', 3996, NULL),
('AMD FX-9800P', 3985, NULL),
('AMD PRO A8-9600B', 3973, NULL),
('AMD PRO A10-8730B', 3971, NULL),
('Intel Core i7-8500Y @ 1.50GHz', 3873, NULL),
('Intel Core i3-6157U @ 2.40GHz', 3835, NULL),
('Intel Core i5-7Y57 @ 1.20GHz', 3787, NULL),
('AMD A10-9600P', 3780, NULL),
('Intel Core i3-7100U @ 2.40GHz', 3778, NULL),
('Intel Core i3-6100E @ 2.70GHz', 3769, NULL),
('Intel Core i7-7Y75 @ 1.30GHz', 3744, NULL),
('AMD A12-9700P', 3736, NULL),
('AMD A10-9620P', 3703, NULL),
('Intel Core i7-5550U @ 2.00GHz', 3686, NULL),
('Intel Core i5-7Y54 @ 1.20GHz', 3603, NULL),
('Intel Core m3-7Y30 @ 1.00GHz', 3550, NULL),
('Intel Core i3-7020U @ 2.30GHz', 3493, NULL),
('Intel Core m3-8100Y @ 1.10GHz', 3447, NULL),
('Intel Pentium 4417U @ 2.30GHz', 3246, NULL),
('Intel Pentium 4415U @ 2.30GHz', 3144, NULL),
('Intel Core i3-6006U @ 2.00GHz', 3090, NULL),
('Intel Core m3-7Y32 @ 1.10GHz', 3052, NULL),
('Intel Core i3-4120U @ 2.00GHz', 3050, NULL),
('Intel Core i5-4230U @ 1.90GHz', 2902, NULL),
('Intel Pentium G4400TE @ 2.40GHz', 2885, NULL),
('Intel Core i5-4422E @ 1.80GHz', 2806, NULL),
('AMD PRO A6-7350B', 2759, NULL),
('Intel Celeron G3900E @ 2.40GHz', 2679, NULL),
('AMD A9-9425', 2596, NULL),
('Intel Celeron G3900TE @ 2.30GHz', 2591, NULL),
('AMD A9-9410', 2556, NULL),
('AMD Embedded G-Series GX-420GI Radeon R7E', 2483, NULL),
('Intel Pentium Silver N5000 @ 1.10GHz', 2444, NULL),
('Intel Celeron 3965U @ 2.20GHz', 2411, NULL),
('AMD Embedded R-Series RX-216GD', 2409, NULL),
('AMD PRO A6-8530B', 2388, NULL),
('Intel Celeron 2000E @ 2.20GHz', 2365, NULL),
('AMD A9-9420', 2342, NULL),
('Intel Celeron N4100 @ 1.10GHz', 2334, NULL),
('AMD A9-9400', 2319, NULL),
('AMD PRO A4-3350B APU', 2274, NULL),
('Intel Pentium 4415Y @ 1.60GHz', 2228, NULL),
('AMD A6-8500P', 2202, NULL),
('AMD A6-9220', 2164, NULL),
('AMD A6-9225', 2151, NULL),
('AMD A4-5050 APU', 2113, NULL),
('AMD Embedded G-Series GX-224IJ Radeon R4E', 2088, NULL),
('Intel Atom C2538 @ 2.40GHz', 2085, NULL),
('AMD PRO A6-9500B', 2076, NULL),
('AMD A4-9125', 2075, NULL),
('Intel Pentium 4405Y @ 1.50GHz', 2059, NULL),
('Intel Pentium 4410Y @ 1.50GHz', 2047, NULL),
('Intel Atom T5700 @ 1.70GHz', 2039, NULL),
('Intel Pentium N4200 @ 1.10GHz', 2028, NULL),
('AMD A4-9120', 1991, NULL),
('Intel Celeron 3765U @ 1.90GHz', 1990, NULL),
('Intel Celeron 3865U @ 1.80GHz', 1940, NULL),
('Intel Atom x7-Z8750 @ 1.60GHz', 1902, NULL),
('Intel Atom E3940 @ 1.60GHz', 1889, NULL),
('AMD A9-9420e', 1883, NULL),
('Intel Atom E3950 @ 1.60GHz', 1855, NULL),
('Intel Celeron N3450 @ 1.10GHz', 1850, NULL),
('Intel Atom x5-Z8550 @ 1.44GHz', 1837, NULL),
('AMD A6-9210', 1781, NULL),
('AMD Embedded G-Series GX-215JJ Radeon R2E', 1758, NULL),
('AMD E2-9010', 1745, NULL),
('AMD A6-9200', 1710, NULL),
('Intel Celeron N3160 @ 1.60GHz', 1674, NULL),
('AMD E2-9000', 1673, NULL),
('Intel Celeron 3965Y @ 1.50GHz', 1630, NULL),
('AMD A6-9220e', 1608, NULL),
('Intel Celeron 2002E @ 1.50GHz', 1605, NULL),
('AMD R-260H APU', 1576, NULL),
('Intel Celeron 2981U @ 1.60GHz', 1576, NULL),
('Intel Celeron N4000 @ 1.10GHz', 1469, NULL),
('AMD E2-9000e', 1342, NULL),
('Intel Atom x5-Z8350 @ 1.44GHz', 1266, NULL),
('AMD GX-222GC SOC', 1255, NULL),
('Intel Celeron J3355 @ 2.00GHz', 1193, NULL),
('AMD GX-218GL SOC', 1115, NULL),
('Intel Celeron N3350 @ 1.10GHz', 1107, NULL),
('Intel Atom x5-Z8330 @ 1.44GHz', 1018, NULL),
('AMD E1-7010 APU', 997, NULL),
('Intel Celeron N3060 @ 1.60GHz', 991, NULL),
('Intel Celeron N3010 @ 1.04GHz', 964, NULL),
('Intel Atom C2358 @ 1.74GHz', 961, NULL),
('Intel Atom x5-E3930 @ 1.30GHz', 811, NULL),
('Intel Atom E3826 @ 1.46GHz', 489, NULL),
('AMD G-T40R', 203, NULL),
('VIA Eden 1200MHz', 142, NULL),
('VIA Eden 1000MHz', 123, NULL),
('PassMark Software © 2008-2019', 0, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `DiemHDD`
--

CREATE TABLE `DiemHDD` (
  `id` int(11) NOT NULL,
  `Name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `Diem` int(11) NOT NULL,
  `Diem100` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `DiemHDD`
--

INSERT INTO `DiemHDD` (`id`, `Name`, `Diem`, `Diem100`) VALUES
(1, 'SSD, 256 GB', 500, 83.33),
(3, 'SSD + HDD, 256GB SSD PCIe NVMe (M.2 2280) + 1TB SATA3 (5400rpm)', 600, 100),
(4, 'HDD, 500 GB', 200, 33.33),
(5, 'HDD, 1 TB', 300, 50),
(9, 'HDD, 1 TB 5400 rpm', 300, 50),
(10, 'HDD, HDD: 1 TB SATA3,SSD  Hỗ trợ khe SSD M2 PCIe', 400, 66.67),
(11, '1TB 5400 rpm SATA, HDD: 1 TB SATA3, Hỗ trợ khe cắm SSD M.2 SATA3', 400, 66.67),
(12, 'HDD, 500 GB 5400 rpm', 200, 33.33),
(16, 'HDD, HDD: 1 TB SATA3, Hỗ trợ khe cắm SSD M.2 SATA3', 400, 66.67),
(19, 'eMMC, 32 GB', 100, 16.67),
(20, 'eMMC + SSD, 32GB  + SSD 128GB', 450, 75),
(25, 'HDD 5400rpm, HDD: 1 TB SATA3, Hỗ trợ khe cắm SSD M.2 SATA3', 400, 66.67),
(26, 'HDD 5400rpm, 1000 GB', 300, 50),
(29, 'HDD 5400rpm, 500 GB', 200, 33.33),
(31, 'HDD, 1000 GB', 300, 50),
(34, 'HDD, 1 TB 5400rpm', 300, 50),
(35, 'SSD, 64GB + 128GB SSD', 450, 75),
(44, 'HDD, 1000Gb', 300, 50),
(46, 'HDD, HDD: 1 TB SATA3, Hỗ trợ khe SSD M2 PCIe', 400, 66.67),
(47, 'SSD, 128 GB', 450, 75),
(52, 'SSD, 128', 400, 66.67),
(53, 'SSD+ HDD, 128Gb+ 1Tb', 600, 100),
(54, 'HDD + SSD, 1 TB + 128 GB', 600, 100),
(55, 'HDD , HDD: 1 TB SATA3, Hỗ trợ khe SSD M2 PCIe', 400, 66.67),
(58, 'SSD + HDD, 128 GB + 1 TB', 600, 100),
(59, 'HDD SATA3 (5400rpm), 1000 GB', 300, 50),
(60, 'SSD PCLE, 512 GB', 600, 100),
(61, 'SSD, 512GB', 600, 100),
(62, '', 100, 16.67),
(65, 'HDD + SSD, 1TB HDD + 128GB SSD', 600, 100),
(69, 'SSD PCIe (M2 2280), 256 GB', 500, 83.33),
(79, 'SSD, SATA3 256G M.2 SSD', 400, 66.67),
(85, 'SSD PCIe NVMe, 128 GB', 450, 75),
(113, 'SSD(M.2 2280) + HDD SATA3 (5400rpm), 128 GB + 1 TB', 450, 75),
(127, 'HDD 5400rpm, HDD: 1 TB SATA3, Hỗ trợ khe SSD M2 PCIe', 400, 66.67),
(136, 'SDD + HDD, 128 GB + 1 TB', 300, 50),
(139, 'SSD + HDD, 128GB SSD (M.2 2280) + 1TB SATA3 (5400rpm)', 600, 100),
(142, 'SSD, 256GB', 500, 83.33),
(143, 'SSHD, 1 TB SATA3 SSHD_with 8GB SSD Flash Drive (5400rpm)', 400, 66.67),
(144, 'HDD,500GB test', 200, 33.33);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `diemLaptop`
--

CREATE TABLE `diemLaptop` (
  `id` int(11) NOT NULL,
  `diemCPU` float DEFAULT NULL,
  `diemMH` float DEFAULT NULL,
  `diemVGA` float DEFAULT NULL,
  `diemHDD` float DEFAULT NULL,
  `diemRam` float DEFAULT NULL,
  `diemTong` float DEFAULT NULL,
  `diem100` int(11) DEFAULT NULL,
  `diem1Point` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `diemLaptop`
--

INSERT INTO `diemLaptop` (`id`, `diemCPU`, `diemMH`, `diemVGA`, `diemHDD`, `diemRam`, `diemTong`, `diem100`, `diem1Point`) VALUES
(1, 0, 75.76, 17.82, 83.33, 63.79, 36.93, 0, NULL),
(2, 66.45, 75.76, 11.51, 83.33, 53.45, 52.64, 0, NULL),
(3, 100, 69.7, 100, 100, 100, 95.67, 0, NULL),
(4, 61.5, 30.3, 21.28, 33.33, 46.55, 39.39, 0, NULL),
(5, 40.64, 66.67, 11.51, 50, 46.55, 38.22, 0, NULL),
(6, 30.26, 57.58, 10.22, 50, 46.55, 33.58, 0, NULL),
(7, 36.93, 30.3, 4.82, 50, 46.55, 30.05, 0, NULL),
(8, 30.26, 39.39, 10.22, 50, 44.83, 30.74, 0, NULL),
(9, 40.64, 42.42, 11.51, 50, 46.55, 34.75, 0, NULL),
(10, 61.5, 84.85, 11.51, 66.67, 46.55, 49.16, 0, NULL),
(11, 36.93, 39.39, 10.22, 66.67, 46.55, 35.27, 0, NULL),
(12, 40.64, 45.45, 10.22, 33.33, 44.83, 32.19, 0, NULL),
(13, 61.5, 48.48, 17.24, 50, 46.55, 43.22, 0, NULL),
(14, 61.5, 66.67, 11.51, 50, 46.55, 44.18, 0, NULL),
(15, 36.93, NULL, 10.92, 33.33, 44.83, NULL, 0, NULL),
(16, 61.5, 39.39, 10.22, 66.67, 46.55, 42.29, 0, NULL),
(17, 11.77, 48.48, 9.9, 33.33, 46.55, 24.53, 0, NULL),
(18, 0, 39.39, 4.42, 66.67, 46.55, 23.06, 0, NULL),
(19, 8.87, 54.55, 7.92, 16.67, 28.45, 19.04, 0, NULL),
(21, 8.87, 84.85, 7.92, 75, 30.17, 31.94, 0, NULL),
(22, 24.75, 30.3, 9.2, 33.33, 44.83, 25.19, 0, NULL),
(23, 27.98, 48.48, 4.4, 33.33, 44.83, 27.34, 0, NULL),
(24, 27.98, 39.39, 10.22, 50, 44.83, 30.09, 0, NULL),
(25, 27.98, 42.42, 17.24, 33.33, 44.83, 30.15, 0, NULL),
(26, 27.98, 60.61, 4.4, 66.67, 46.55, 34.08, 0, NULL),
(27, 27.98, 39.39, 4.82, 50, 51.72, 29.53, 0, NULL),
(28, 61.5, 39.39, 11.51, 50, 46.55, 40.28, 0, NULL),
(29, 27.98, 39.39, 11.51, 50, 46.55, 30.7, 0, NULL),
(30, 35.6, 30.3, 9.9, 33.33, 46.55, 28.74, 0, NULL),
(31, 7.94, 39.39, 7.92, 16.67, 18.97, 15.25, 0, NULL),
(32, 36.93, NULL, 10.22, 50, 44.83, NULL, 0, NULL),
(33, 27.98, 30.3, 10.22, 50, 44.83, 28.79, 0, NULL),
(34, 30.26, 39.39, 10.22, 50, 46.55, 30.99, 0, NULL),
(35, 24.75, 39.39, 9.2, 50, 44.83, 28.87, 0, NULL),
(36, 18.69, 84.85, 9.02, 75, 46.55, 37.4, 0, NULL),
(37, 24.75, 60.61, 4.82, 50, 44.83, 30.65, 0, NULL),
(38, 27.98, 39.39, 10.22, 50, 46.55, 30.33, 0, NULL),
(39, 24.75, 48.48, 9.2, 33.33, 44.83, 27.79, 0, NULL),
(40, 24.75, 48.48, 9.35, 33.33, 44.83, 27.83, 0, NULL),
(41, 24.75, 39.39, 9.2, 50, 46.55, 29.12, 0, NULL),
(42, 24.75, NULL, 7.2, 50, 32.76, NULL, 0, NULL),
(43, 40.64, 30.3, 21.28, 66.67, 46.55, 38.19, 0, NULL),
(44, 40.64, 36.36, 10.22, 33.33, 44.83, 30.89, 0, NULL),
(45, 32.81, 75.76, 10.22, 50, 46.55, 36.91, 0, NULL),
(46, 40.64, 48.48, 21.28, 50, 46.55, 38.41, 0, NULL),
(47, 27.98, 84.85, 11.51, 66.67, 44.83, 39.33, 0, NULL),
(48, 0, 30.3, 15.57, 75, 55.17, 27.37, 0, NULL),
(49, 0, 30.3, 9.12, 75, 51.72, 25.04, 0, NULL),
(50, 76.07, 54.55, 51.55, 66.67, 65.52, 63.14, 0, NULL),
(51, 11.77, 39.39, 4.04, 66.67, 46.55, 26.32, 0, NULL),
(52, 61.5, 96.97, 11.51, 83.33, 55.17, 54.5, 0, NULL),
(53, 61.5, 69.7, 11.51, 66.67, 46.55, 46.99, 0, NULL),
(54, 76.07, 84.85, 51.55, 100, 65.52, 72.23, 0, NULL),
(55, 100, 84.85, 66.15, 100, 63.79, 82.99, 0, NULL),
(56, 100, 54.55, 66.15, 66.67, 65.52, 74.15, 0, NULL),
(57, 66.45, 96.97, 11.51, 83.33, 56.9, 56.16, 0, NULL),
(58, 66.45, 69.7, 15.75, 83.33, 63.79, 54.46, 0, NULL),
(59, 0, 30.3, 15.57, 100, 55.17, 30.94, 0, NULL),
(60, 61.5, 75.76, 11.51, 50, 63.79, 47.94, 0, NULL),
(61, 100, 39.39, 51.55, 100, 100, 77.5, 0, NULL),
(62, 0, 66.67, 38.21, 100, 98.28, 48.77, 0, NULL),
(63, 36.93, NULL, 4.82, 16.67, 44.83, NULL, 0, NULL),
(64, 66.45, 39.39, 15.75, 100, 63.79, 52.51, 0, NULL),
(65, 100, 63.64, 66.15, 16.67, 65.52, 68.3, 0, NULL),
(66, 61.5, 48.48, 11.51, 100, 46.55, 48.72, 0, NULL),
(67, 61.5, 30.3, 11.51, 50, 44.83, 38.74, 0, NULL),
(68, 100, 60.61, 66.15, 16.67, 65.52, 67.87, 0, NULL),
(69, 0, NULL, 9.2, 50, 44.83, NULL, 0, NULL),
(70, 66.45, 69.7, 11.51, 83.33, 53.45, 51.77, 0, NULL),
(71, 66.45, 84.85, 11.51, 66.67, 63.79, 53.03, 0, NULL),
(72, 0, 30.3, 8.1, 50, 53.45, 21.42, 0, NULL),
(73, 100, 63.64, 100, 33.33, 100, 85.28, 0, NULL),
(74, 36.93, 60.61, 4.82, 16.67, 32.76, 27.65, 0, NULL),
(75, 40.64, 39.39, 10.22, 83.33, 44.83, 38.47, 0, NULL),
(76, 27.98, 39.39, 10.22, 50, 46.55, 30.33, 0, NULL),
(77, 40.64, 30.3, 11.51, 50, 46.55, 33.02, 0, NULL),
(78, 35.6, 45.45, 11.51, 50, 48.28, 33.99, 0, NULL),
(79, 61.5, 30.3, 11.51, 50, 44.83, 38.74, 0, NULL),
(80, 27.98, 60.61, 10.22, 66.67, 46.55, 35.75, 0, NULL),
(81, 61.5, 30.3, 11.51, 50, 51.72, 39.72, 0, NULL),
(82, 61.5, 30.3, 11.51, 50, 46.55, 38.98, 0, NULL),
(83, 35.6, 60.61, 11.51, 50, 46.55, 35.91, 0, NULL),
(84, 61.5, 39.39, 11.51, 50, 46.55, 40.28, 0, NULL),
(85, 61.5, 66.67, 11.51, 50, 46.55, 44.18, 0, NULL),
(86, 40.64, 39.39, 11.51, 75, 46.55, 37.89, 0, NULL),
(87, 40.64, 54.55, 11.51, 50, 46.55, 36.49, 0, NULL),
(88, 61.5, 30.3, 9.35, 50, 46.55, 38.36, 0, NULL),
(89, 61.5, 69.7, 11.51, 66.67, 46.55, 46.99, 0, NULL),
(90, 65.49, 30.3, 17.24, 50, 46.55, 41.76, 0, NULL),
(91, 65.49, 30.3, 4.82, 50, 46.55, 38.21, 0, NULL),
(92, 16.24, 54.55, 3.74, 75, 41.38, 30.13, 0, NULL),
(93, 11.77, 30.3, 4.42, 83.33, 46.55, 27.51, 0, NULL),
(94, 24.75, 39.39, 9.2, 50, 44.83, 28.87, 0, NULL),
(95, 0, 48.48, 4.62, 33.33, 46.55, 19.66, 0, NULL),
(96, 0, 30.3, 4.42, 66.67, 46.55, 21.77, 0, NULL),
(97, 0, 30.3, 5.5, 33.33, 46.55, 17.31, 0, NULL),
(98, 27.98, 39.39, 10.22, 50, 46.55, 30.33, 0, NULL),
(99, 32.81, 30.3, 10.22, 33.33, 44.83, 27.79, 0, NULL),
(100, 27.98, 30.3, 5.5, 33.33, 46.55, 25.31, 0, NULL),
(101, 27.98, 39.39, 10.22, 83.33, 46.55, 35.1, 0, NULL),
(102, 27.98, 60.61, 9.35, 33.33, 46.55, 30.74, 0, NULL),
(103, 40.64, 84.85, 11.51, 50, 48.28, 41.06, 0, NULL),
(104, 27.98, 30.3, 9.2, 83.33, 46.55, 33.51, 0, NULL),
(105, 40.64, 39.39, 11.51, 50, 46.55, 34.32, 0, NULL),
(106, 27.98, 39.39, 9.35, 50, 46.55, 30.09, 0, NULL),
(107, 76.07, 60.61, 51.55, 50, 65.52, 61.62, 0, NULL),
(108, 61.5, 69.7, 23.96, 83.33, 53.45, 53.91, 0, NULL),
(109, 11.77, 30.3, 4.04, 33.33, 44.83, 20.01, 0, NULL),
(110, 76.07, 84.85, 51.55, 66.67, 65.52, 67.47, 0, NULL),
(111, 35.6, 60.61, 11.51, 66.67, 48.28, 38.54, 0, NULL),
(112, 0, 30.3, 9.03, 83.33, 55.17, 26.69, 0, NULL),
(113, 76.07, 84.85, 51.55, 50, 70.69, 65.83, 0, NULL),
(114, 100, 100, 66.15, 75, 65.52, 81.83, 0, NULL),
(115, 61.5, 36.36, 13.55, 83.33, 46.55, 45.19, 0, NULL),
(116, 0, 66.67, 21.53, 66.67, 55.17, 33.08, 0, NULL),
(117, 0, 30.3, 9.03, 75, 55.17, 25.5, 0, NULL),
(118, 66.45, 39.39, 9.35, 50, 63.79, 43.54, 0, NULL),
(119, 65.49, 30.3, 4.82, 50, 46.55, 38.21, 0, NULL),
(120, 72.48, 30.3, 11.51, 50, 55.17, 43.35, 0, NULL),
(121, 61.5, 39.39, 9.35, 83.33, 46.55, 44.42, 0, NULL),
(122, 65.49, 60.61, 4.42, 83.33, 55.17, 48.42, 0, NULL),
(123, 61.5, 84.85, 11.51, 83.33, 44.83, 51.29, 0, NULL),
(124, 61.5, 69.7, 11.51, 66.67, 46.55, 46.99, 0, NULL),
(125, 0, 84.85, 9.9, 83.33, 63.79, 35.97, 0, NULL),
(126, 61.5, 54.55, 2.2, 75, 65.52, 46.07, 0, NULL),
(127, 61.5, 45.45, 4.42, 50, 46.55, 39.12, 0, NULL),
(128, 76.07, 60.61, 51.55, 66.67, 65.52, 64.01, 0, NULL),
(129, 66.45, 69.7, 21.28, 83.33, 46.55, 53.58, 0, NULL),
(130, 0, 66.67, 21.53, 50, 55.17, 30.7, 0, NULL),
(131, 61.5, 30.3, 21.28, 66.67, 46.55, 44.15, 0, NULL),
(132, 36.93, 39.39, 10.22, 66.67, 46.55, 35.27, 0, NULL),
(133, 61.5, 84.85, 11.51, 83.33, 44.83, 51.29, 0, NULL),
(134, 66.45, 60.61, 24.58, 66.67, 46.55, 50.84, 0, NULL),
(135, 65.49, 84.85, 11.51, 83.33, 55.17, 53.91, 0, NULL),
(136, 65.49, 30.3, 4.82, 83.33, 53.45, 43.96, 0, NULL),
(137, 100, 60.61, 51.55, 50, 65.52, 68.46, 0, NULL),
(138, 65.49, 60.61, 11.51, 83.33, 55.17, 50.44, 0, NULL),
(139, 65.49, 30.3, 21.28, 50, 46.55, 42.91, 0, NULL),
(140, 100, 75.76, 100, 100, 65.52, 91.61, 0, NULL),
(141, 40.64, 36.36, 10.22, 33.33, 44.83, 30.89, 0, NULL),
(142, 66.45, 72.73, 11.51, 83.33, 63.79, 53.68, 0, NULL),
(143, 0, 66.67, 34.54, 83.33, 98.28, 45.34, 0, NULL),
(144, 100, 69.7, 66.15, 66.67, 63.79, 76.07, 0, NULL),
(145, 40.64, 69.7, 11.51, 66.67, 46.55, 41.03, 0, NULL),
(146, 61.5, 39.39, 9.35, 50, 46.55, 39.66, 0, NULL),
(147, 61.5, 69.7, 23.96, 66.67, 46.55, 50.55, 0, NULL),
(148, 100, 84.85, 66.15, 66.67, 65.52, 78.48, 0, NULL),
(149, NULL, 84.85, 6.6, 16.67, 30.17, NULL, 0, NULL),
(150, 100, 84.85, 66.15, 50, 70.69, 76.83, 0, NULL),
(151, 61.5, 84.85, 51.55, 66.67, 62.07, 62.81, 0, NULL),
(152, 8.87, 84.85, 7.92, 16.67, 30.17, 23.61, 0, NULL),
(153, 66.45, 81.82, 21.28, 16.67, 46.55, 45.79, 0, NULL),
(154, 7.94, 39.39, 7.92, 66.67, 18.97, 22.39, 0, NULL),
(155, 61.5, 60.61, 13.55, 16.67, 46.55, 39.13, 0, NULL),
(156, 76.07, 36.36, 51.55, 16.67, 65.52, 53.4, 0, NULL),
(174, NULL, 30.3, NULL, 16.67, 0, NULL, NULL, NULL),
(175, NULL, 30.3, NULL, 16.67, 0, NULL, NULL, NULL),
(176, NULL, 60.61, NULL, 33.33, 25.86, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `DiemMH`
--

CREATE TABLE `DiemMH` (
  `id_mh` int(11) NOT NULL,
  `Ten_mh` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `Diem` float NOT NULL,
  `Diem100` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `DiemMH`
--

INSERT INTO `DiemMH` (`id_mh`, `Ten_mh`, `Diem`, `Diem100`) VALUES
(1, '13.3 inchs FHD Touch', 250, 75.76),
(2, '14.0 inchs FHD Touch', 250, 75.76),
(3, '15.6 inches Acer ComfyView LED-backlit TFT IPS LCD; Anti-glare', 230, 69.7),
(4, '15.6 inchs HD LED', 100, 30.3),
(5, '15.6 inchs FHD WLED-backlit', 220, 66.67),
(6, '14.0 inchs  HD SVA WLED-backlit multitouch', 190, 57.58),
(7, '14.0 inch HD LED', 100, 30.3),
(8, '14.0 inchs Ultra Slim 250nits', 130, 39.39),
(9, '14.0 inchs HD SVA micro-edge WLED-backlit', 140, 42.42),
(10, '14.0 inchs FullHD IPS', 280, 84.85),
(11, '15.6-inch HD   Anti-Glare LED-Backlit Display', 130, 39.39),
(12, '11.6 inchs HD Touch', 150, 45.45),
(13, '15.6 inchs  SVA BrightView WLED-backlit', 160, 48.48),
(14, '14.0 inchs IPS BrightView micro-edge WLED-backlit', 220, 66.67),
(15, '15.6 inch  Anti-Glare LED-Backlit Display', 130, 39.39),
(16, '14.0 inchs Anti-glare LED-backlit display', 130, 39.39),
(17, '15.6 inchs HD SVA BrightView WLED-backlit', 160, 48.48),
(18, '15.6 inchs Anti-Glare LED Backlit', 130, 39.39),
(19, '13.3 inchs IPS LCD screen', 180, 54.55),
(20, '14.0 inchs HD LED', 100, 30.3),
(21, '13.3 inch IPS/Full HD', 280, 84.85),
(22, '14.0 inchs HD', 100, 30.3),
(23, '15.6 inches   SVA BrightView WLED-backlit', 160, 48.48),
(24, '15.6 inchs HD Anti-Glare LED-Backlit Display', 130, 39.39),
(25, '15.6 inchs  HD BrightView WLED-backlit', 140, 42.42),
(26, '15.6 inchs FHD', 200, 60.61),
(27, '14.0 inchs Anti - Glare', 130, 39.39),
(28, '14.0 inches Anti-Glare LED-Backlit Display', 130, 39.39),
(29, '15.6 inches Anti-Glare LED-Backlit Display', 130, 39.39),
(30, '14.0 inchs LED Backlit', 100, 30.3),
(31, '14.0 inchs Ultra Slim 200nits', 130, 39.39),
(32, '14 inch Anti-Glare LED-Backlit Display', 130, 39.39),
(33, '15.6 inchs HD LED Backlight', 100, 30.3),
(34, '15.6 inchs Ultra Slim 200nits/Glare/NTSC:45%', 130, 39.39),
(35, '15.6 inch HD LED-Backlit,Anti-Glare', 130, 39.39),
(36, '13.3 inchs IPS FHD', 280, 84.85),
(37, '14 inchs  Full HD', 200, 60.61),
(38, '14.0 inchs Anti-glare LED-backlit', 130, 39.39),
(41, '15.6 inchs Anti-Glare LED-Backlit Display', 130, 39.39),
(42, '15.6 inch  HD LED', 100, 30.3),
(43, '15.6 inchs LED Backlit', 100, 30.3),
(44, '14.0 inchs Viền màn hình mỏng, WLED, LED Backlit', 120, 36.36),
(45, '14 inchs FHD, Touch screen', 250, 75.76),
(46, '15.6 inchs Ultra Slim 200nits Anti-Glare/NTSC:45%/Wide View', 160, 48.48),
(48, '13.3 inch 	LED-backlit', 100, 30.3),
(50, '15.6 inchs IPS 45% Narrow Bezel', 180, 54.55),
(52, '13.3 inchs FHD IPS BrightView micro-edge WLED-backlit', 320, 96.97),
(53, '13.3 inch FHD Anti-glare LED-Backlit Display', 230, 69.7),
(54, '15.6 inchs FullHD IPS', 280, 84.85),
(55, '15.6 inchs IPS FHD', 280, 84.85),
(56, '15.6 inchs 60Hz IPS 45% Narrow Bezel', 180, 54.55),
(58, '15.6 inch FHD Anti Glare LED Backlit Display', 230, 69.7),
(60, '13.3 inchs WLED touch screen IPS', 250, 75.76),
(61, '15.6 inchs InfinityEdge display', 130, 39.39),
(62, '15.4 inch Công nghệ True Tone, Công nghệ IPS, LED Backlit', 220, 66.67),
(63, '13.3 inch FHD IPS', 280, 84.85),
(65, '15.6 inchs IPS Anti-Glare LED-Backlit Display', 210, 63.64),
(66, '15.6 inch HD SVA BrightView WLED-backlit', 160, 48.48),
(68, '15.6 inchs Full HD', 200, 60.61),
(69, '14 inch Full HD', 200, 60.61),
(70, '13.3‐inchs  FullHD InfinityEdge display', 230, 69.7),
(72, '12 inch 	LED-backlit', 100, 30.3),
(74, '15.6 inchs FHD LED', 200, 60.61),
(75, '15.6 inchs Anti - Glare', 130, 39.39),
(78, '14.0 inchs HD Touch', 150, 45.45),
(79, '15.6 inches HD LED', 100, 30.3),
(80, '14.0 inches FHD', 200, 60.61),
(81, '14.0 inchs HD LED backlit', 100, 30.3),
(83, '14.0 inchs FHD', 200, 60.61),
(85, '14.0 inchs  IPS BrightView micro-edge WLED-backlit', 220, 66.67),
(86, '13.3 inchs Anti -glare LED-Backlit Display', 130, 39.39),
(87, '15.6 inchs IPS LCD', 180, 54.55),
(89, '14.0 inchs FHD Anti-Glare', 230, 69.7),
(97, '15.6 inchs HD LED backlit', 100, 30.3),
(103, '14.0 inchs IPS FHD', 280, 84.85),
(104, '15.6 inchs Không', 100, 30.3),
(105, '15.6 inchs Anti-Glare', 130, 39.39),
(108, '13.3 inchs FullHD Anti-Glare', 230, 69.7),
(110, '15.6 inchs FHD IPS  Non-Glare LED Backlit', 280, 84.85),
(112, '13.3 inchs LED Backlit', 100, 30.3),
(114, '15.6 inches Full HD IPS Anti-Glare, Acer ComfyView LED-backlit TFT LCD', 330, 100),
(115, '15.6 Inches WLED', 120, 36.36),
(116, '13.3 inch Công nghệ True Tone, Công nghệ IPS, LED Backlit', 220, 66.67),
(118, '15.6 inchs Anti-Glare LED-backlit', 130, 39.39),
(121, '15.6 inchs Anti Glare LED Backlit Display', 130, 39.39),
(122, '13.3 inchs FHD', 200, 60.61),
(124, '15.6 inchs FHD WV 250nits Anti-Glare NTSC 45%', 230, 69.7),
(126, '14.0 inchs IPS 72% Narrow Bezel', 180, 54.55),
(127, '15.6 inchs HD Touch', 150, 45.45),
(129, '15.6 inchs FHD Anti-Glare Panel with 45% NTSC', 230, 69.7),
(137, '15.6 inches FHD LED', 200, 60.61),
(140, '15.6 inches High-brightness Acer ComfyView LED-backlit TFT LCD; Anti-glare', 250, 75.76),
(142, '13.3 inchs IPS Truelife LED-Backlit Narrow Border Touch Display', 240, 72.73),
(144, '15.6 inchs (16:9) FHD (1920x1080) 120Hz Anti-Glare Panel 94% NTSC', 230, 69.7),
(145, '15.6 inchs FHD Anti-Glare', 230, 69.7),
(146, '15.6 inch Anti-Glare LED-Blacklit', 130, 39.39),
(149, '13.3 inchs IPS Full HD', 280, 84.85),
(153, '15.6 inchs FHD SVA Anti-glare WLED-backlit', 270, 81.82),
(156, '15.6 inchs UWVA', 120, 36.36),
(157, 'test FHD', 200, 60.61),
(166, '', 100, 30.3),
(182, 'FHD 15.6', 200, 60.61);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `DiemRAM`
--

CREATE TABLE `DiemRAM` (
  `NameRAM` text NOT NULL,
  `Diem` float NOT NULL,
  `Diem100` float NOT NULL,
  `id_ram` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `DiemRAM`
--

INSERT INTO `DiemRAM` (`NameRAM`, `Diem`, `Diem100`, `id_ram`) VALUES
('8 GB DDR4 2400 MHz', 370, 63.79, 1),
('8 GB LPDDR3 1866 MHz', 310, 53.45, 2),
('16 GB DDR4 2666 MHz', 580, 100, 3),
('4 GB DDR4 2400 MHz', 270, 46.55, 4),
('4 GB DDR4  2400 MHz ', 270, 46.55, 6),
('4 GB DDR4 2400MHz', 270, 46.55, 7),
('4 GB DDR4 2133 MHz', 260, 44.83, 8),
('4GB DDR4 2400MHz', 270, 46.55, 11),
('3 GB DDR3L 1600 MHz', 165, 28.45, 19),
('3GB LPDDR3 1600 MHz', 175, 30.17, 21),
('4GB DDR4 2133 MHz', 260, 44.83, 22),
('4GB + 16GB Optane DDR4 2400 MHz', 300, 51.72, 27),
('2 GB DDR3 1600 MHz', 110, 18.97, 31),
('4GB DDR4 2400 MHz', 270, 46.55, 38),
('4 GB 	DDR3L 1600 Mhz', 190, 32.76, 42),
('8 GB LPDDR3 2133MHz', 320, 55.17, 48),
('8 GB LPDDR3 1600 Mhz', 300, 51.72, 49),
('8 GB DDR4 2666 MHz', 380, 65.52, 50),
('8 GB LPDDR3 2133 MHz', 320, 55.17, 52),
('8 GB LPDDR3 2400 MHz', 330, 56.9, 57),
('16GB DDR4 2400MHz', 570, 98.28, 62),
(' 4 GB DDR4 2133 MHz', 260, 44.83, 63),
('8GB DDR4 2400 MHz', 370, 63.79, 64),
('16 GB (2 x 8 GB) DDR4 2666 MHz', 580, 100, 73),
('4 GB DDR3L 1600 MHz', 190, 32.76, 74),
('4 GB DDR4 2666 MHz', 280, 48.28, 78),
('6 GB DDR3L 1600 MHz', 240, 41.38, 92),
('8GB + 16GB Optane DDR4 2666 MHz', 410, 70.69, 113),
('8GB LPDDR3 2133MHz', 320, 55.17, 116),
('8 GB DDR3L 2133 MHz', 310, 53.45, 136),
('3 GB LPDDR3 1600 MHz', 175, 30.17, 149),
('8 GB DDR4 2133 MHz', 360, 62.07, 151),
('4 GB  DDR4 2400 MHz', 270, 46.55, 153),
('	 16 GB DDR4 2666 MHz', 205, 35.34, 154),
('         16GB DDR4 2400MHz', 170, 29.31, 159),
('8 GB DDR3 2133MHz test', 280, 48.28, 161),
('', 0, 0, 180),
('6', 150, 25.86, 183);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `DiemVGA`
--

CREATE TABLE `DiemVGA` (
  `Name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `id` int(11) NOT NULL,
  `Diem` float NOT NULL,
  `Diem100` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `DiemVGA`
--

INSERT INTO `DiemVGA` (`Name`, `id`, `Diem`, `Diem100`) VALUES
('Radeon™ RX Vega 10 Graphics 2 GB', 1, 1621, 17.82),
('Intel UHD Graphics 620 Shared ', 2, 1047, 11.51),
('NVIDIA GeForce GTX 1060 (GDDR5 SDRAM, Bus Width: 128 Bit) - Intel UHD Graphics 630 6 GB', 3, 9094, 100),
('NVIDIA® GeForce® MX130 2 GB', 4, 1935, 21.28),
('Intel HD Graphics 620 Shared', 6, 929, 10.22),
('Intel(R) HD Graphics Share', 7, 438, 4.82),
('Intel® HD graphics 620 Shared', 8, 929, 10.22),
('Intel® UHD Graphics 620 Shared', 9, 1047, 11.51),
('Intel(R) HD 620 Graphics Share', 11, 929, 10.22),
('Intel® HD Graphics 620 Share', 12, 929, 10.22),
('NVIDIA® GeForce® MX110 2 GB', 13, 1568, 17.24),
('NVIDIA Geforce 940M (2G) 2 GB', 15, 993, 10.92),
('Intel(R) HD Graphics 620 Shared', 16, 929, 10.22),
('Intel® HD Graphics 600 Shared', 17, 900, 9.9),
('Intel UHD Graphics 605 Shared', 18, 402, 4.42),
('Intel® HD Graphics 500 Shared', 19, 720, 7.92),
('Intel (R) HD Graphics 500 Share', 21, 720, 7.92),
(' Intel® HD Graphics 520 Shared', 22, 837, 9.2),
('Intel® UHD Graphics Shared', 23, 400, 4.4),
('Intel® HD graphics 2 GB', 26, 400, 4.4),
('Intel HD Graphics Shared ', 27, 438, 4.82),
('Intel HD Graphics 500 Shared', 31, 720, 7.92),
('Intel HD Graphics 620 Share', 32, 929, 10.22),
('Đồ họa HD Intel® 620  Shared', 34, 929, 10.22),
('Intel® HD graphics 520 share', 35, 837, 9.2),
('Intel (R) UHD Graphics 600 Shared ', 36, 820, 9.02),
('Intel HD Graphics Share', 37, 438, 4.82),
('Intel® HD Graphics 520 Shared', 39, 837, 9.2),
('AMD Radeon™ 520 2 GB', 40, 850, 9.35),
('Intel HD Graphics 520 Shared', 41, 837, 9.2),
('AMD R5 430 DDR3 2 GB', 42, 655, 7.2),
('NVIDIA GeForce MX130 2 GB', 43, 1935, 21.28),
('NVIDIA GeForce MX130 GDDR5 2GB', 46, 1935, 21.28),
('Intel Iris Plus Graphics 640', 48, 1416, 15.57),
('Intel HD Graphics 6000', 49, 829, 9.12),
('NVIDIA GeForce GTX 1050 4 GB GDDR5', 50, 4688, 51.55),
('Intel® UHD Graphics 600  Shared', 51, 367, 4.04),
('Intel UHD Graphics 620 Shared system memory', 53, 1047, 11.51),
('NVIDIA® GEFORCE® GTX 1050 4 GB GDDR5', 54, 4688, 51.55),
('NVIDIA GeForce GTX 1050 Ti 4 GB', 55, 6016, 66.15),
('NVIDIA GeForce GTX 1050Ti 4 GB', 56, 6016, 66.15),
('AMD Radeon 530 4GB GDDR5', 58, 1432, 15.75),
('intel UHD Graphics 620  Shared', 60, 1047, 11.51),
('NVIDIA GEFORCE GTX 1050 4GB GDDR5 4 GB', 61, 4688, 51.55),
('Radeon Pro 560X 4GB of GDDR5 ', 62, 3475, 38.21),
(' Intel HD Graphics', 63, 438, 4.82),
('AMD Radeon 530 4 GB GDDR5', 64, 1432, 15.75),
('NVIDIA GeForce GTX 1050 Ti 4GB GDDR5 ', 65, 6016, 66.15),
('Intel HD Graphics 520 Share', 69, 837, 9.2),
('Intel HD Graphics 615', 72, 737, 8.1),
('NVIDIA GeForce GTX 1060  6 GB GDDR5 ', 73, 9094, 100),
('Intel® HD Graphics 620 Không', 75, 929, 10.22),
('Intel(R) UHD Graphics 620 Shared ', 77, 1047, 11.51),
('Intel UHD Graphics 620  Không', 78, 1047, 11.51),
('Intel® UHD Graphics 620 Không', 87, 1047, 11.51),
('AMD Radeon 520 2 GB', 88, 850, 9.35),
('intel Shared ', 91, 438, 4.82),
('Intel® UHD Graphics 505 Shared', 92, 340, 3.74),
('Intel UHD Graphics Shared ', 93, 402, 4.42),
('Intel® HD Graphics 520 Không', 94, 837, 9.2),
('Intel® UHD Graphics 605 Shared', 95, 420, 4.62),
('Intel® HD Graphics Shared ', 97, 500, 5.5),
('Intel HD Graphics 620 2 GB', 98, 929, 10.22),
('Intel UHD Graphics 620 Share', 105, 1047, 11.51),
('NVIDIA GeForce GTX 1050 4 GB', 107, 4688, 51.55),
('NVIDIA GEFORCE MX150  2 GB', 108, 2179, 23.96),
(' Intel® UHD Graphics 600 Shared', 109, 367, 4.04),
('Intel UHD Graphics 617 Shared ', 112, 821, 9.03),
('NVIDIA GeForce® GTX 1050 4 GB', 113, 4688, 51.55),
('NVIDIA GeForce GTX 1050Ti 4 GB GDDR5', 114, 6016, 66.15),
('AMD Radeon 530 2 GB', 115, 1232, 13.55),
('Intel Iris Plus Graphics 655 System Shared', 116, 1958, 21.53),
('AMD Radeon Graphics 2 GB', 125, 900, 9.9),
('UMA Share', 126, 200, 2.2),
('Intel UHD Graphics  Shared ', 127, 402, 4.42),
('GTX 1050 4 GB', 128, 4688, 51.55),
('NVIDIA GeForce MX130 2 GB_GDDR5', 129, 1935, 21.28),
('Intel HD 620 Graphics Shared ', 132, 929, 10.22),
('NVIDIA GeForce MX130 ; Intel UHD Graphics 620 2 GB', 134, 2235, 24.58),
('NVIDIA GeForce GTX 1060 (GDDR5 SDRAM, Bus Width: 192 Bit); Intel UHD Graphics 630 6 GB', 140, 9094, 100),
('Radeon Pro 555X 4GB of GDDR5 ', 143, 3141, 34.54),
('NVIDIA GeForce GTX1050Ti 4 GB DDR5', 144, 6016, 66.15),
('NVIDIA GeForce MX150 2 GB_GDDR5', 147, 2179, 23.96),
('Intel (R) HD Graphics Share', 149, 600, 6.6),
('GeForce® GTX 1050 Ti 4 GB', 150, 6016, 66.15),
('Geforce GTX 1050 2 GB', 151, 4688, 51.55);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `laptop_details`
--

CREATE TABLE `laptop_details` (
  `id` int(11) NOT NULL,
  `Name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `Price` int(11) DEFAULT NULL,
  `CPU` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `VGA` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci,
  `RAM` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `HDD` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci,
  `Display` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `Link_sp` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `Src_img` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `laptop_details`
--

INSERT INTO `laptop_details` (`id`, `Name`, `Price`, `CPU`, `VGA`, `RAM`, `HDD`, `Display`, `Link_sp`, `Src_img`) VALUES
(1, 'HP ENVY X360 13-AG0046AU/R7-2700U/8GB/256G SSD/WIN10', 26890000, 'AMD Ryzen 7 2700U 7200U', 'Radeon™ RX Vega 10 Graphics 2 GB', '8 GB DDR4 2400 MHz', 'SSD, 256 GB', '13.3 inchs FHD Touch', 'http://fptshop.com.vn/may-tinh-xach-tay/hp-envy-x360-13-ag0046au-r7-2700u-8gb', 'img/laptop/1.png'),
(2, 'Acer Swift 5 SF514-52T-87TF/Core i7-8550U/8Gb/256Gb/Win 10 SL', 28790000, 'Intel Core i7 8550U', 'Intel UHD Graphics 620 Shared ', '8 GB LPDDR3 1866 MHz', 'SSD, 256 GB', '14.0 inchs FHD Touch', 'http://fptshop.com.vn/may-tinh-xach-tay/acer-swift-5-sf514-52t-87tf-core-i7-8550u', 'img/laptop/2.png'),
(3, 'Acer Predator Helios 300 PH315-51-759Y', 40999000, 'intel core i7 8750H', 'NVIDIA GeForce GTX 1060 (GDDR5 SDRAM, Bus Width: 128 Bit) - Intel UHD Graphics 630 6 GB', '16 GB DDR4 2666 MHz', 'SSD + HDD, 256GB SSD PCIe NVMe (M.2 2280) + 1TB SATA3 (5400rpm)', '15.6 inches Acer ComfyView LED-backlit TFT IPS LCD; Anti-glare', 'http://fptshop.com.vn/may-tinh-xach-tay/acer-predator-helios-300-ph315-51-759y', 'img/laptop/3.png'),
(4, 'Acer A315-53G-5790', 12990000, 'Intel Core i5 8250U', 'NVIDIA® GeForce® MX130 2 GB', '4 GB DDR4 2400 MHz', 'HDD, 500 GB', '15.6 inchs HD LED', 'http://fptshop.com.vn/may-tinh-xach-tay/acer-a315-53g-5790', 'img/laptop/4.png'),
(5, 'HP Pavilion 15-cs0016TU', 12990000, 'Intel Core i3 8130U', 'Intel UHD Graphics 620 Shared ', '4 GB DDR4 2400 MHz', 'HDD, 1 TB', '15.6 inchs FHD WLED-backlit', 'http://fptshop.com.vn/may-tinh-xach-tay/hp-pavilion-15-cs0016tu', 'img/laptop/5.png'),
(6, 'HP Pavilion X360 14-ba080TU', 12690000, 'intel Core i3 7100U', 'Intel HD Graphics 620 Shared', '4 GB DDR4  2400 MHz ', 'HDD, 1 TB', '14.0 inchs  HD SVA WLED-backlit multitouch', 'http://fptshop.com.vn/may-tinh-xach-tay/hp-pavilion-x360-14-ba080tu', 'img/laptop/6.png'),
(7, 'Dell V3468/Core i5-7200U', 13190000, '	 Intel Core i5 7200U', 'Intel(R) HD Graphics Share', '4 GB DDR4 2400MHz', 'HDD, 1 TB', '14.0 inch HD LED', 'http://fptshop.com.vn/may-tinh-xach-tay/dell-v3468core-i5-7200u', 'img/laptop/7.png'),
(8, 'Asus Vivobook Flip TP410UA-EC227T', 12990000, 'Intel Core i3 7100U', 'Intel® HD graphics 620 Shared', '4 GB DDR4 2133 MHz', 'HDD, 1 TB', '14.0 inchs Ultra Slim 250nits', 'http://fptshop.com.vn/may-tinh-xach-tay/Asus-Vivobook-Flip-TP410UA-EC227T', 'img/laptop/8.png'),
(9, 'HP Pavilion x360 14-cd0082TU/i3-8130U', 13490000, 'Intel Core i3 8130U', 'Intel® UHD Graphics 620 Shared', '4 GB DDR4 2400 MHz', 'HDD, 1 TB 5400 rpm', '14.0 inchs HD SVA micro-edge WLED-backlit', 'http://fptshop.com.vn/may-tinh-xach-tay/hp-pavilion-x360-14-cd0082tu-i3-8130u', 'img/laptop/9.png'),
(10, 'Lenovo Ideapad 330S-14IKBR', 12990000, 'intel Core i5-8250U', 'Intel® UHD Graphics 620 Shared', '4 GB DDR4 2400 MHz', 'HDD, HDD: 1 TB SATA3,SSD  Hỗ trợ khe SSD M2 PCIe', '14.0 inchs FullHD IPS', 'http://fptshop.com.vn/may-tinh-xach-tay/lenovo-ideapad-330s-14ikbr', 'img/laptop/10.png'),
(11, 'Dell Vostro V5568/i5-7200U (2.5GHz)', 14990000, 'Intel Core i5 7200U', 'Intel(R) HD 620 Graphics Share', '4GB DDR4 2400MHz', '1TB 5400 rpm SATA, HDD: 1 TB SATA3, Hỗ trợ khe cắm SSD M.2 SATA3', '15.6-inch HD   Anti-Glare LED-Backlit Display', 'http://fptshop.com.vn/may-tinh-xach-tay/dell-vostro-v5568i5-7200u-25ghz', 'img/laptop/11.png'),
(12, 'HP Pavilion X360 11-ad104TU', 13490000, 'Intel Core i3 8130U', 'Intel® HD Graphics 620 Share', '4 GB DDR4 2133 MHz', 'HDD, 500 GB 5400 rpm', '11.6 inchs HD Touch', 'http://fptshop.com.vn/may-tinh-xach-tay/hp-pavilion-x360-11-ad104tu', 'img/laptop/12.png'),
(13, 'HP 15-da0033TX/Core i5-8250U', 14490000, 'Intel Core i5 8250U ', 'NVIDIA® GeForce® MX110 2 GB', '4 GB DDR4 2400 MHz', 'HDD, 1 TB', '15.6 inchs  SVA BrightView WLED-backlit', 'http://fptshop.com.vn/may-tinh-xach-tay/hp-15-da0033tx-core-i5-8250u', 'img/laptop/13.png'),
(14, 'HP Pavilion 14-ce0024TU', 14990000, 'Intel Core i5 8250U ', 'Intel® UHD Graphics 620 Shared', '4 GB DDR4 2400 MHz', 'HDD, 1 TB', '14.0 inchs IPS BrightView micro-edge WLED-backlit', 'http://fptshop.com.vn/may-tinh-xach-tay/HP-Pavilion-14-ce0024TU', 'img/laptop/14.png'),
(15, 'Lenovo ThinkPad E570', 15990000, '	 Intel Core i5 7200U', 'NVIDIA Geforce 940M (2G) 2 GB', '4 GB DDR4 2133 MHz', 'HDD, 500 GB', '	15.6 inch  Anti-Glare LED-Backlit Display', 'http://fptshop.com.vn/may-tinh-xach-tay/lenovo-thinkpad-e570', 'img/laptop/15.png'),
(16, 'Dell Vostro 5471', 17990000, 'Intel Core i5 8250U ', 'Intel(R) HD Graphics 620 Shared', '4 GB DDR4 2400 MHz', 'HDD, HDD: 1 TB SATA3, Hỗ trợ khe cắm SSD M.2 SATA3', '14.0 inchs Anti-glare LED-backlit display', 'http://fptshop.com.vn/may-tinh-xach-tay/Dell-Vostro-5471', 'img/laptop/16.png'),
(17, 'HP 15-da0107TU/Celeron N4000', 6190000, 'Intel Celeron N4000', 'Intel® HD Graphics 600 Shared', '4 GB DDR4 2400 MHz', 'HDD, 500 GB 5400 rpm', '15.6 inchs HD SVA BrightView WLED-backlit', 'http://fptshop.com.vn/may-tinh-xach-tay/hp-15-da0107tu-celeron-n4000', 'img/laptop/17.png'),
(18, 'Asus Vivobook X507MA-BR211T/Pentium N5000', 7690000, 'Intel Pentium N5000', 'Intel UHD Graphics 605 Shared', '4 GB DDR4 2400 MHz', 'HDD, HDD: 1 TB SATA3, Hỗ trợ khe cắm SSD M.2 SATA3', '15.6 inchs Anti-Glare LED Backlit', 'http://fptshop.com.vn/may-tinh-xach-tay/asus-vivobook-x507ma-br211t-pentium-n5000', 'img/laptop/18.png'),
(19, 'Haier S1 HR-13M/Celeron N3350', 4699000, 'Intel Celeron N3350', 'Intel® HD Graphics 500 Shared', '3 GB DDR3L 1600 MHz', 'eMMC, 32 GB', '13.3 inchs IPS LCD screen', 'http://fptshop.com.vn/may-tinh-xach-tay/haier-hr-13m-celeron-n3350', 'img/laptop/19.png'),
(21, 'Masstel L133 Celeron N3350 128GB', 5690000, 'Intel Celeron N3350 ', 'Intel (R) HD Graphics 500 Share', '3GB LPDDR3 1600 MHz', 'eMMC + SSD, 32GB  + SSD 128GB', '13.3 inch IPS/Full HD', 'http://fptshop.com.vn/may-tinh-xach-tay/masstel-l133-celeron-n3350-128gb', 'img/laptop/21.png'),
(22, 'Lenovo Ideapad 320-14ISK 80XG009TVN', 8490000, 'Intel Core i3 6006U', ' Intel® HD Graphics 520 Shared', '4GB DDR4 2133 MHz', 'HDD, 500 GB', '14.0 inchs HD', 'http://fptshop.com.vn/may-tinh-xach-tay/lenovo-ideapad-320-14isk-80xg009tvn', 'img/laptop/22.png'),
(23, 'HP 15-da0051TU/Core i3-7020U', 9990000, 'intel Core i3 7020U', 'Intel® UHD Graphics Shared', '4 GB DDR4 2133 MHz', 'HDD, 500 GB', '15.6 inches   SVA BrightView WLED-backlit', 'http://fptshop.com.vn/may-tinh-xach-tay/hp-15-da0051tu-core-i3-7020u', 'img/laptop/23.png'),
(24, 'Dell Inspiron N3567S', 10590000, 'Intel Core i3 7020U', 'Intel HD Graphics 620 Shared', '4 GB DDR4 2133 MHz', 'HDD, 1 TB', '15.6 inchs HD Anti-Glare LED-Backlit Display', 'http://fptshop.com.vn/may-tinh-xach-tay/dell-inspiron-n3576s', 'img/laptop/24.png'),
(25, 'HP 15-da0037TX/i3 7020U', 10990000, 'Intel Core i3 7020U', 'NVIDIA® GeForce® MX110 2 GB', '4 GB DDR4 2133 MHz', 'HDD, 500 GB', '15.6 inchs  HD BrightView WLED-backlit', 'http://fptshop.com.vn/may-tinh-xach-tay/hp-15-da0037tx-i3-7020U', 'img/laptop/25.png'),
(26, 'Asus VIVOBOOK X507UA-EJ234T/Core i3-7020U', 10590000, 'Intel Core i3 7020U', 'Intel® HD graphics 2 GB', '4 GB DDR4 2400 MHz', 'HDD 5400rpm, HDD: 1 TB SATA3, Hỗ trợ khe cắm SSD M.2 SATA3', '15.6 inchs FHD', 'http://fptshop.com.vn/may-tinh-xach-tay/asus-vivobook-x507ua-ej234t-core-i3-7020u', 'img/laptop/26.png'),
(27, 'Asus Vivobook X407UA-BV488T/i3-7020U/4G+16GB Optane/1TB/WIN10', 10690000, 'Intel Core i3 7020U', 'Intel HD Graphics Shared ', '4GB + 16GB Optane DDR4 2400 MHz', 'HDD 5400rpm, 1000 GB', '14.0 inchs Anti - Glare', 'http://fptshop.com.vn/may-tinh-xach-tay/asus-vivobook-x407ua-bv488t', 'img/laptop/27.png'),
(28, 'Dell Inspiron N3476/i5-8250U/4GB/1000GB/DVDRW/Intel HD 620', 12890000, 'Intel Core i5 8250U', 'Intel® UHD Graphics 620 Shared', '4 GB DDR4 2400 MHZ', 'HDD, 1 TB', '14.0 inches Anti-Glare LED-Backlit Display', 'http://fptshop.com.vn/may-tinh-xach-tay/dell-inspiron-n3476i5-8250u4gb1000gbdvdrwintel-hd-620', 'img/laptop/28.png'),
(29, 'Dell Vostro 3568/Core i3-7020U/VTI32072W', 11590000, 'Intel Core i3 7020U ', 'Intel® UHD Graphics 620 Shared', '4 GB DDR4 2400 MHz', 'HDD, 1 TB', '15.6 inches Anti-Glare LED-Backlit Display', 'http://fptshop.com.vn/may-tinh-xach-tay/dell-vostro-3568-core-i3-7020u-vti32072w', 'img/laptop/29.png'),
(30, 'HP Pavilion 14-ce1014TU/Core i3-8145U/4GB/500GB/WIN10', 12990000, 'Intel Core i3 8145U', 'Intel® HD Graphics 600 Shared ', '4 GB DDR4 2400 MHz', 'HDD 5400rpm, 500 GB', '14.0 inchs LED Backlit', 'http://fptshop.com.vn/may-tinh-xach-tay/hp-pavilion-14-ce1014tu-core-i3-8145u', 'img/laptop/30.png'),
(31, 'Asus Vivobook E406SA-BV001T', 5290000, 'Intel Celeron N3060', 'Intel HD Graphics 500 Shared', '2 GB DDR3 1600 MHz', 'EMMC, 32 GB', '14.0 inchs Ultra Slim 200nits', 'http://fptshop.com.vn/may-tinh-xach-tay/Asus-Vivobook-E406SA-BV001T', 'img/laptop/31.png'),
(32, 'Dell Ins N3467/i5-7200U', 12990000, '	 Intel Core i5 7200U', 'Intel HD Graphics 620 Share', '4 GB DDR4 2133 MHz', 'HDD, 1000 GB', '	14 inch Anti-Glare LED-Backlit Display', 'http://fptshop.com.vn/may-tinh-xach-tay/dell-ins-n3467i5-7200u', 'img/laptop/32.png'),
(33, 'Acer AS A315-51-325E', 8690000, 'Intel core i3 7020U', 'Intel® HD Graphics 620 Shared', '4 GB DDR4 2133 MHz', 'HDD, 1 TB', '15.6 inchs HD LED Backlight', 'http://fptshop.com.vn/may-tinh-xach-tay/acer-as-a315-51-325e', 'img/laptop/33.png'),
(34, 'Asus X541UA-GO1372T/Core i3 7100U', 9290000, 'Intel Core i3 7100U', 'Đồ họa HD Intel® 620  Shared', '4 GB DDR4 2400MHz', 'HDD, 1 TB', '15.6 inchs Ultra Slim 200nits/Glare/NTSC:45%', 'http://fptshop.com.vn/may-tinh-xach-tay/asus-x541ua-go1372t-core-i3-7100u', 'img/laptop/34.png'),
(35, 'Asus Vivobook X507UA-BR167T/Core I3-6006U', 9790000, 'Intel Core i3 6006U', 'Intel® HD graphics 520 share', '4 GB DDR4 2133 MHz', 'HDD, 1 TB 5400rpm', '15.6 inch HD LED-Backlit,Anti-Glare', 'http://fptshop.com.vn/may-tinh-xach-tay/Asus-X507UA-BR167TCore-I3-6006U', 'img/laptop/35.png'),
(36, 'Masstel L133 Pro/Celeron N4100/4GB/64GB+128GB SSD', 6990000, 'Intel Celeron N4100', 'Intel (R) UHD Graphics 600 Shared ', '4 GB DDR4 2400 MHz', 'SSD, 64GB + 128GB SSD', '13.3 inchs IPS FHD', 'http://fptshop.com.vn/may-tinh-xach-tay/masstel-l133-pro-celeron-n41004gb-64GB-128gb-ssd', 'img/laptop/36.png'),
(37, 'Lenovo Ideapad 320-14ISK/ Windows 10', 9690000, 'intel Core i3 6006U', 'Intel HD Graphics Share', '4 GB DDR4 2133 MHz', 'HDD, 1000 GB', '14 inchs  Full HD', 'http://fptshop.com.vn/may-tinh-xach-tay/lenovo-ideapad-320-14isk-windows-10', 'img/laptop/37.png'),
(38, 'Dell Inspiron N3467/M20NR3', 10190000, 'intel core i3 7020U', 'Intel HD Graphics 620 Shared', '4GB DDR4 2400 MHz', 'HDD, 1 TB', '14.0 inchs Anti-glare LED-backlit', 'http://fptshop.com.vn/may-tinh-xach-tay/dell-inspiron-n3467-m20nr3', 'img/laptop/38.png'),
(39, 'HP 15-bs642TU/Core i3-6006U', 9490000, 'intel Core i3 6006U', 'Intel® HD Graphics 520 Shared', '4 GB DDR4 2133 MHz', 'HDD, 500 GB', '15.6 inchs HD SVA BrightView WLED-backlit ', 'http://fptshop.com.vn/may-tinh-xach-tay/HP-15-bs642TUCore-i3-6006U', 'img/laptop/39.png'),
(40, 'HP 15-bs666TX/Core i3 6006U', 10490000, 'intel Core i3 6006U', 'AMD Radeon™ 520 2 GB', '4 GB DDR4 2133 MHz', 'HDD, 500 GB', '15.6 inchs HD SVA BrightView WLED-backlit ', 'http://fptshop.com.vn/may-tinh-xach-tay/HP-15-bs666TXCore-i3-6006U', 'img/laptop/40.png'),
(41, 'Dell Vostro 3568', 10990000, 'Intel Core i3 6006U ', 'Intel HD Graphics 520 Shared', '4 GB DDR4 2400 MHz', 'HDD, 1000 GB', '15.6 inchs Anti-Glare LED-Backlit Display', 'http://fptshop.com.vn/may-tinh-xach-tay/Dell-Vostro-3568', 'img/laptop/41.png'),
(42, 'Dell Ins N3567', 11190000, '	 Intel Core i3 6006U', 'AMD R5 430 DDR3 2 GB', '4 GB 	DDR3L 1600 Mhz', 'HDD, 1000 GB', '	15.6 inch  HD LED', 'http://fptshop.com.vn/may-tinh-xach-tay/dell-n3567', 'img/laptop/42.png'),
(43, 'Asus Vivobook X507UF-BR204T/Core i3-8130U', 11990000, 'Intel Core i3 8130U', 'NVIDIA GeForce MX130 2 GB', '4 GB DDR4 2400 MHz', 'HDD 5400rpm, HDD: 1 TB SATA3, Hỗ trợ khe cắm SSD M.2 SATA3', '15.6 inchs LED Backlit', 'http://fptshop.com.vn/may-tinh-xach-tay/asus-vivobook-x507uf-br204t-core-i3-8130u', 'img/laptop/43.png'),
(44, 'HP Pavilion 14-ce0027TU', 12490000, 'Intel Core i3 8130U', 'Intel® HD Graphics 620 Share', '4 GB DDR4 2133 MHz', 'HDD, 500 GB 5400 rpm ', '14.0 inchs Viền màn hình mỏng, WLED, LED Backlit', 'http://fptshop.com.vn/may-tinh-xach-tay/hp-pavilion-14-ce0027tu', 'img/laptop/44.png'),
(45, 'Lenovo Yoga 520-14IKB i3-7130U', 11990000, 'Intel core i3 7130U', 'Intel HD Graphics 620 Shared', '4 GB DDR4 2400 MHz', 'HDD, 1000Gb', '14 inchs FHD, Touch screen', 'http://fptshop.com.vn/may-tinh-xach-tay/Lenovo-Yoga-520-14IKB-i3-7130U', 'img/laptop/45.png'),
(46, 'Asus Vivobook A510UF-BR485T', 11990000, 'Intel Core i3 8130U', 'NVIDIA GeForce MX130 GDDR5 2GB', '4 GB DDR4 2400 MHz', 'HDD, 1 TB 5400rpm', '15.6 inchs Ultra Slim 200nits Anti-Glare/NTSC:45%/Wide View', 'http://fptshop.com.vn/may-tinh-xach-tay/Asus-Vivobook-A510UF-BR485T', 'img/laptop/46.png'),
(47, 'Lenovo Ideapad 330S-14IKB 81F400NMVN', 10990000, 'Intel  Core i3-7020U', 'Intel® UHD Graphics 620 Shared', '4 GB DDR4 2133 MHz', 'HDD, HDD: 1 TB SATA3, Hỗ trợ khe SSD M2 PCIe', '14.0 inchs FullHD IPS ', 'http://fptshop.com.vn/may-tinh-xach-tay/lenovo-Ideapad-330s-14ikb-81f400nmvn', 'img/laptop/47.png'),
(48, 'Macbook Pro 13 inch 128GB (2017)', 33990000, 'Intel Core i5 Dual - Core', 'Intel Iris Plus Graphics 640', '8 GB LPDDR3 2133MHz', 'SSD, 128 GB', '13.3 inch 	LED-backlit', 'http://fptshop.com.vn/may-tinh-xach-tay/macbook-pro-13-inch-128gb-2017', 'img/laptop/48.png'),
(49, 'Macbook Air 13 128GB MQD32SA/A (2017)', 22990000, '	 Intel Core i5 Dual - Core', 'Intel HD Graphics 6000', '8 GB LPDDR3 1600 Mhz', 'SSD, 128 GB', '13.3 inch 	LED-backlit', 'http://fptshop.com.vn/may-tinh-xach-tay/macbook-air-13-128gb-mqd32saa', 'img/laptop/49.png'),
(50, 'MSI GF63 8RC-203VN/I5-8300H', 21990000, 'Intel Core i5 8300H', 'NVIDIA GeForce GTX 1050 4 GB GDDR5', '8 GB DDR4 2666 MHz', 'HDD, HDD: 1 TB SATA3, Hỗ trợ khe cắm SSD M.2 SATA3', '15.6 inchs IPS 45% Narrow Bezel ', 'http://fptshop.com.vn/may-tinh-xach-tay/msi-gf63-8rc-230vn-i5-8300h', 'img/laptop/50.png'),
(51, 'Asus Vivobook X507MA-BR208T/Celeron N4000', 6690000, 'Intel Celeron N4000', 'Intel® UHD Graphics 600  Shared', '4 GB DDR4 2400 MHz', 'HDD, HDD: 1 TB SATA3, Hỗ trợ khe cắm SSD M.2 SATA3', '15.6 inchs Anti-Glare LED Backlit', 'http://fptshop.com.vn/may-tinh-xach-tay/asus-vivobook-x507ma-br208t-celeron-n4000', 'img/laptop/51.png'),
(52, 'HP Envy 13-ah0026TU', 21990000, 'Intel Core i5 8250U', 'Intel® UHD Graphics 620 Shared', '8 GB LPDDR3 2133 MHz', 'SSD, 256 GB', '13.3 inchs FHD IPS BrightView micro-edge WLED-backlit', 'http://fptshop.com.vn/may-tinh-xach-tay/HP-Envy-13-ah0026TU', 'img/laptop/52.png'),
(53, 'Dell N5370A', 19190000, 'Intel Core i5 8250U', 'Intel UHD Graphics 620 Shared system memory', '4 GB DDR4 2400 MHz', 'SSD, 128', '13.3 inch FHD Anti-glare LED-Backlit Display', 'http://fptshop.com.vn/may-tinh-xach-tay/Dell-N5370A', 'img/laptop/53.png'),
(54, 'Lenovo Legion Y530-15ICH', 22990000, 'Intel Core i5 8300H ', 'NVIDIA® GEFORCE® GTX 1050 4 GB GDDR5', '8 GB DDR4 2666 MHz', 'SSD+ HDD, 128Gb+ 1Tb', '15.6 inchs FullHD IPS', 'http://fptshop.com.vn/may-tinh-xach-tay/lenovo-legion-y530-15ich', 'img/laptop/54.png'),
(55, 'Dell Inspiron N7588', 29790000, 'Intel Core i7 8750H', 'NVIDIA GeForce GTX 1050 Ti 4 GB', '8 GB DDR4 2400 MHz', 'HDD + SSD, 1 TB + 128 GB', '15.6 inchs IPS FHD', 'http://fptshop.com.vn/may-tinh-xach-tay/dell-inspiron-n7588', 'img/laptop/55.png'),
(56, 'MSI GF63 8RD-218VN/i7-8750H', 25490000, 'Intel Core i7 8750H', 'NVIDIA GeForce GTX 1050Ti 4 GB', '8 GB DDR4 2666 MHz', 'HDD , HDD: 1 TB SATA3, Hỗ trợ khe SSD M2 PCIe', '15.6 inchs 60Hz IPS 45% Narrow Bezel ', 'http://fptshop.com.vn/may-tinh-xach-tay/msi-gf63-8rd-218vn-i7-8750h', 'img/laptop/56.png'),
(57, 'HP Envy 13-ah0027TU/Core i7-8550U', 26490000, 'Intel Core i7 8550U', 'Intel® UHD Graphics 620 Shared', '8 GB LPDDR3 2400 MHz', 'SSD, 256 GB', '13.3 inchs FHD IPS BrightView micro-edge WLED-backlit', 'http://fptshop.com.vn/may-tinh-xach-tay/HP-Envy-13-ah0027TUCore-i7-8550U', 'img/laptop/57.png'),
(58, 'Dell N5570A', 24690000, 'Intel Core i7 8550U', 'AMD Radeon 530 4GB GDDR5', '8 GB DDR4 2400 MHz', 'SSD, 256 GB', '15.6 inch FHD Anti Glare LED Backlit Display', 'http://fptshop.com.vn/may-tinh-xach-tay/Dell-N5570A', 'img/laptop/58.png'),
(59, 'Macbook Pro 13 inch 256GB (2017)', 38990000, 'Intel Core i5 Dual - Core', 'Intel Iris Plus Graphics 640', '8 GB LPDDR3 2133 MHz', 'SSD + HDD, 128 GB + 1 TB ', '13.3 inch 	LED-backlit', 'http://fptshop.com.vn/may-tinh-xach-tay/macbook-pro-13-inch-256gb-2017', 'img/laptop/59.png'),
(60, 'Dell INS N5379', 22990000, 'Intel Core i5 8250U', 'intel UHD Graphics 620  Shared', '8 GB DDR4 2400 MHz', 'HDD SATA3 (5400rpm), 1000 GB', '13.3 inchs WLED touch screen IPS ', 'http://fptshop.com.vn/may-tinh-xach-tay/Dell-INS-N5379', 'img/laptop/60.png'),
(61, 'Dell XPS15/i7-8750H', 52990000, 'Intel  Core i7 8750H', 'NVIDIA GEFORCE GTX 1050 4GB GDDR5 4 GB', '16 GB DDR4 2666 MHz', 'SSD PCLE, 512 GB', '15.6 inchs InfinityEdge display', 'http://fptshop.com.vn/may-tinh-xach-tay/dell-xps15-i7-8750h', 'img/laptop/61.png'),
(62, 'Macbook Pro 15 Touch Bar 512 GB (2018)', 69990000, 'Intel Core i7 6-core', 'Radeon Pro 560X 4GB of GDDR5 ', '16GB DDR4 2400MHz', 'SSD, 512GB', '15.4 inch Công nghệ True Tone, Công nghệ IPS, LED Backlit', 'http://fptshop.com.vn/may-tinh-xach-tay/macbook-pro-15-touch-bar-512gb-2018', 'img/laptop/62.png'),
(63, 'Xiaomi Mi NoteBook Air 13', 10690000, ' Intel Core i5-7200U', ' Intel HD Graphics', ' 4 GB DDR4 2133 MHz', '', ' 13.3 inch FHD IPS', 'http://fptshop.com.vn/may-tinh-xach-tay/xiaomi-mi-notebook-air-13', 'img/laptop/63.png'),
(64, 'Dell Vostro V5471/i7-8550U', 29990000, 'Intel  Core i7 8550U', 'AMD Radeon 530 4 GB GDDR5', '8GB DDR4 2400 MHz', 'SSD, 512GB', '14.0 inchs Anti-Glare LED-Backlit Display', 'http://fptshop.com.vn/may-tinh-xach-tay/dell-vostro-v5471-i7-8550u', 'img/laptop/64.png'),
(65, 'Dell N7588A', 33990000, 'Intel Core i7 8750H', 'NVIDIA GeForce GTX 1050 Ti 4GB GDDR5 ', '8 GB DDR4 2666 MHz', '', '15.6 inchs IPS Anti-Glare LED-Backlit Display', 'http://fptshop.com.vn/may-tinh-xach-tay/dell-n7588a', 'img/laptop/65.png'),
(66, 'HP 15-bs153TU/Core i5-8250U', 26990000, 'Intel Core i5 8250U', 'Intel® UHD Graphics 620 Shared', '4 GB DDR4 2400 MHz', 'HDD + SSD, 1TB HDD + 128GB SSD', '15.6 inch HD SVA BrightView WLED-backlit ', 'http://fptshop.com.vn/may-tinh-xach-tay/HP-15-bs153TUCore-i5-8250U', 'img/laptop/66.png'),
(67, 'Lenovo Ideapad 330-14IKBR', 11490000, 'Intel Core i5-8250U', 'Intel® UHD Graphics 620 Shared', '4 GB DDR4 2133 MHz', 'HDD, 1 TB', '14.0 inchs HD LED', 'http://fptshop.com.vn/may-tinh-xach-tay/lenovo-ideapad-330-14ikbr', 'img/laptop/67.png'),
(68, 'Asus ROG GL503GE-EN021T/i7-8750H', 32790000, 'INTEL Core i7 8750H', 'NVIDIA GeForce GTX 1050Ti 4 GB', '8 GB DDR4 2666 MHz', '', '15.6 inchs Full HD', 'http://fptshop.com.vn/may-tinh-xach-tay/asus-rog-gl503ge-en021t-i7-8750h', 'img/laptop/68.png'),
(69, 'Lenovo IdeaPad 310-14ISK', 13990000, '	 Intel Core i5 6200U', 'Intel HD Graphics 520 Share', '4 GB DDR4 2133 MHz', 'HDD, 1 TB', '	14 inch Full HD', 'http://fptshop.com.vn/may-tinh-xach-tay/lenovo-ideapad-310-14isk-core-i5', 'img/laptop/69.png'),
(70, 'Dell XPS13 9370', 10990000, 'Intel Core i7 8550U', 'Intel UHD Graphics 620  Shared', '8 GB LPDDR3 1866 MHz', 'SSD PCIe (M2 2280), 256 GB', '13.3‐inchs  FullHD InfinityEdge display', 'http://fptshop.com.vn/may-tinh-xach-tay/dell-xps13-9370', 'img/laptop/70.png'),
(71, 'Dell Ins N7370/Core i7-8550U', 27490000, 'Intel Core i7 8550U', 'Intel UHD Graphics 620  Shared', '8 GB DDR4 2400 MHz', 'HDD , HDD: 1 TB SATA3, Hỗ trợ khe SSD M2 PCIe', '13.3 inchs IPS FHD', 'http://fptshop.com.vn/may-tinh-xach-tay/Dell-Ins-13-7370-core-i7-8550u', 'img/laptop/71.png'),
(72, 'Macbook 12 256GB (2017)', 41290000, '	 Intel Core M3 Dual - Core', 'Intel HD Graphics 615', '8 GB LPDDR3 1866 MHz', 'HDD, 1 TB', '12 inch 	LED-backlit', 'http://fptshop.com.vn/may-tinh-xach-tay/macbook-12-256gb', 'img/laptop/72.png'),
(73, 'Dell N7588B', 44990000, 'Intel Core i7 8750H', 'NVIDIA GeForce GTX 1060  6 GB GDDR5 ', '16 GB (2 x 8 GB) DDR4 2666 MHz', 'HDD, 500 GB', '15.6 inchs IPS Anti-Glare LED-Backlit Display', 'http://fptshop.com.vn/may-tinh-xach-tay/dell-n7588b', 'img/laptop/73.png'),
(74, 'Acer Aspire A315-53-54T3', 11990000, 'Intel Core i5 7200U', 'Intel HD Graphics Shared', '4 GB DDR3L 1600 MHz', '', '15.6 inchs FHD LED', 'http://fptshop.com.vn/may-tinh-xach-tay/acer-aspire-a315-53-54t3', 'img/laptop/74.png'),
(75, 'IdeaPad 330-15IKB/Core i3-8130U/1TB+16Gb Optane/Win 10', 11899000, 'Intel Core i3 8130U', 'Intel® HD Graphics 620 Không', '4 GB DDR4 2133 MHz', 'SSD, 256 GB', '15.6 inchs Anti - Glare', 'http://fptshop.com.vn/may-tinh-xach-tay/ideapad-330-15ikb-core-i3-8130u', 'img/laptop/75.png'),
(76, 'Vostro 3468/Core i3-7020U/4Gb/1000Gb/Win 10', 0, 'Intel Core i3 7020U', 'Intel® HD Graphics 620 Shared ', '4 GB DDR4 2400 MHz', 'HDD, 1 TB', '14.0 inchs Anti - Glare', 'http://fptshop.com.vn/may-tinh-xach-tay/vostro-3468-core-i3-7020Uu-4gb', 'img/laptop/76.png'),
(77, 'Dell N3576/i3-8130U/4GB/1TB/DVDRW/Win10', 12290000, 'Intel Core i3 8130U', 'Intel(R) UHD Graphics 620 Shared ', '4 GB DDR4 2400 MHz', 'HDD 5400rpm, 1000 GB', '15.6 inchs LED Backlit', 'http://fptshop.com.vn/may-tinh-xach-tay/dell-n3576-i3-8130u', 'img/laptop/77.png'),
(78, 'HP Pavilion x360 14-cd1018TUCore i3 8145U/4GB/1TB/14.0HDTouch/WIN10', 13490000, 'Intel Core i3 8145U', 'Intel UHD Graphics 620  Không', '4 GB DDR4 2666 MHz', 'HDD 5400rpm, 1000 GB', '14.0 inchs HD Touch', 'http://fptshop.com.vn/may-tinh-xach-tay/hp-pavilion-x360-14-cd1018tu-core-i3-8145u', 'img/laptop/78.png'),
(79, 'Asus X542UA-GO1136T/Core i5-8250U', 12690000, 'Intel Core i5 8250U', 'Intel UHD Graphics 620 Shared', '4 GB DDR4 2133 MHz', 'HDD, 1 TB', '15.6 inches HD LED', 'http://fptshop.com.vn/may-tinh-xach-tay/asus-x542ua-go1136t-core-i5-8250u', 'img/laptop/79.png'),
(80, 'Asus Vivobook Flip TP412UA-EC173T/Core I3-7020U', 13890000, 'Intel Core i3 7020U', 'Intel® HD graphics 620 Shared', '4 GB DDR4 2400 MHz ', 'SSD, SATA3 256G M.2 SSD', '14.0 inches FHD ', 'http://fptshop.com.vn/may-tinh-xach-tay/asus-vivobook-flip-tp412ua-ec173t-core-i3-7020u', 'img/laptop/80.png'),
(81, 'Asus Vivobook X407UA-BV489T/Core i5 8250U/4GB+16GB Optane/1TB/WIN10', 13390000, 'Intel Core i5 8250U', 'Intel UHD Graphics 620 Shared ', '4GB + 16GB Optane DDR4 2400 MHz', 'HDD 5400rpm, 1000 GB', '14.0 inchs HD LED backlit', 'http://fptshop.com.vn/may-tinh-xach-tay/asus-vivobook-x407ua-bv489t-core-i5-8250u', 'img/laptop/81.png'),
(82, 'Inspiron N3576F/Core i5-8250U/4Gb/1000Gb/DVWRW/Win 10', 14690000, 'Intel Core i5 8250U', 'Intel(R) UHD Graphics 620 Shared ', '4 GB DDR4 2400 MHz', 'HDD 5400rpm, 1000 GB', '15.6 inchs LED Backlit', 'http://fptshop.com.vn/may-tinh-xach-tay/inspiron-n3576f-core-i5-8250u', 'img/laptop/82.png'),
(83, 'Asus Vivobook S430FA-EB033T/Core I3-8145U/4GB/256GB SSD/WIN10', 14390000, 'Intel Core i3 8145U', 'Intel UHD Graphics 620 Shared ', '4 GB DDR4 2400 MHz', 'HDD 5400rpm, 1000 GB', '14.0 inchs FHD', 'http://fptshop.com.vn/may-tinh-xach-tay/asus-vivobook-s430fa-eb033t-core-i3-8145u', 'img/laptop/83.png'),
(84, 'Dell Vostro V3578', 13990000, 'intel core i5 8250U', 'Intel UHD Graphics 620  Shared', '4 GB DDR4 2400 MHz', 'HDD 5400rpm, 1000 GB', '15.6 inches Anti-glare LED-backlit display', 'http://fptshop.com.vn/may-tinh-xach-tay/dell-vostro-v3578', 'img/laptop/84.png'),
(85, 'HP Pavilion 14-ce0031TU', 14990000, 'intel Core i5 8250U ', 'Intel® UHD Graphics 620 Shared', '4 GB DDR4 2400 MHz', 'HDD, 1 TB', '14.0 inchs  IPS BrightView micro-edge WLED-backlit', 'http://fptshop.com.vn/may-tinh-xach-tay/hp-pavilion-14-ce0031tu-core-i5-8250u', 'img/laptop/85.png'),
(86, 'Dell Ins N5370/Core i3-8130U/4GB/128GB SSD', 15690000, 'Intel Core i3 8130U', 'Intel UHD Graphics 620 Shared ', '4 GB DDR4 2400 MHz', 'SSD PCIe NVMe, 128 GB', '13.3 inchs Anti -glare LED-Backlit Display', 'http://fptshop.com.vn/may-tinh-xach-tay/dell-ins-n5370core-i3-8130u4gb128gb-ssd', 'img/laptop/86.png'),
(87, 'Swift SF315-52-38YQ/Core i3- 8130/4Gb/1000Gb/15.6\"FHD/Win10', 14990000, 'Intel Core i3 8130U', 'Intel® UHD Graphics 620 Không', '4 GB DDR4 2400MHz', 'HDD 5400rpm, 1000 GB', '15.6 inchs IPS LCD', 'http://fptshop.com.vn/may-tinh-xach-tay/swift-sf315-52-38yq-core-i3-8130', 'img/laptop/87.png'),
(88, 'Vostro 3578B/Core i5-8250U/4GB/1TB/AMD Radeon520 2GB/Win 10', 16490000, 'Intel Core i5 8250U', 'AMD Radeon 520 2 GB', '4 GB DDR4 2400 MHz', 'HDD 5400rpm, 1000 GB', '15.6 inchs LED Backlit', 'http://fptshop.com.vn/may-tinh-xach-tay/vostro-3578b-core-i5-8250u', 'img/laptop/88.png'),
(89, 'Asus Vivobook S430UA-EB099T/Core i5-8250U', 16390000, 'Intel Core i5 8250U', 'Intel UHD Graphics 620 Shared ', '4 GB DDR4 2400 MHz', 'HDD 5400rpm, HDD: 1 TB SATA3, Hỗ trợ khe cắm SSD M.2 SATA3', '14.0 inchs FHD Anti-Glare', 'http://fptshop.com.vn/may-tinh-xach-tay/asus-vivobook-s430ua-eb099t-core-i5-8250u', 'img/laptop/89.png'),
(90, 'HP 15-da1031TX/Core i5-8265U/4GB/1TB/NVIDIA MX110 2GB/Win10', 14990000, 'Intel Core i5 8265U', 'NVIDIA® GeForce® MX110 2 GB', '4 GB DDR4 2400 MHz', 'HDD 5400rpm, 1000 GB', '15.6 inchs LED Backlit', 'http://fptshop.com.vn/may-tinh-xach-tay/hp-15-da1031tx-core-i5-8265u', 'img/laptop/90.png'),
(91, 'HP Pavilion 14-ce1016TU/Core i5-8265U/4GB/1TB/WIN10', 15290000, 'Intel Core i5 8265U', 'intel Shared ', '4 GB DDR4 2400 MHz', 'HDD 5400rpm, 1000 GB', '14.0 inchs LED Backlit', 'http://fptshop.com.vn/may-tinh-xach-tay/hp-pavilion-14-ce1016tu-core-i5-8265u', 'img/laptop/91.png'),
(92, 'Haier S1 HR-13MZ/Pentium N4200', 6990000, 'Intel Pentium N4200', 'Intel® UHD Graphics 505 Shared', '6 GB DDR3L 1600 MHz', 'SSD, 128 GB', '13.3 inchs IPS LCD screen', 'http://fptshop.com.vn/may-tinh-xach-tay/haier-hr-13mz-pentium-n4200', 'img/laptop/92.png'),
(93, 'Asus Vivobook X507MA-BR317T/Celeron N4000/4GB/256GB SSD/WIN10', 6790000, 'Intel Celeron N4000', 'Intel UHD Graphics Shared ', '4 GB DDR4 2400 MHz', 'SSD, 256 GB', '15.6 inchs LED Backlit', 'http://fptshop.com.vn/may-tinh-xach-tay/asus-vivobook-x507ma-br317t-celeron-n4000', 'img/laptop/93.png'),
(94, 'IdeaPad 320- 14ISK/Core i3-6006U/Win 10', 9190000, 'Intel Core i3 6006U', 'Intel® HD Graphics 520 Không', '4 GB DDR4 2133 MHz', 'HDD 5400rpm, 1000 GB', '14.0 inchs Anti - Glare', 'http://fptshop.com.vn/may-tinh-xach-tay/ideapad-320--14isk-core-i3-6006u-win-10', 'img/laptop/94.png'),
(95, 'HP 15-da0047TU/Pentium N5000', 7290000, 'intel Pentium N5000', 'Intel® UHD Graphics 605 Shared', '4 GB DDR4 2400 MHz', 'HDD, 500 GB', '15.6 inchs HD SVA BrightView WLED-backlit ', 'http://fptshop.com.vn/may-tinh-xach-tay/hp-15-da0047tu-pentium-n5000', 'img/laptop/95.png'),
(96, 'Asus Vivobook X507MA-BR316T/Pentium N5000//4G/256GB SSD/WIN10', 7790000, 'Intel Pentium N5000', 'Intel UHD Graphics Shared ', '4 GB DDR4 2400 MHz', 'HDD 5400rpm, HDD: 1 TB SATA3, Hỗ trợ khe cắm SSD M.2 SATA3', '15.6 inchs LED Backlit', 'http://fptshop.com.vn/may-tinh-xach-tay/asus-vivobook-x507ma-br316t-pentium-n5000', 'img/laptop/96.png'),
(97, 'HP 15-da0108TU/Pentium N5000/4GB/500GB/WIN10', 7390000, 'Intel Pentium N5000', 'Intel® HD Graphics Shared ', '4 GB DDR4 2400 MHz', 'HDD 5400rpm, 500 GB', '15.6 inchs HD LED backlit', 'http://fptshop.com.vn/may-tinh-xach-tay/hp-15-da0108tu-pentium-n5000', 'img/laptop/97.png'),
(98, 'Acer A315-53-30E7/Core i3- 7020U/4Gb/1000Gb/Win 10', 9190000, 'Intel Core i3 7020U', 'Intel HD Graphics 620 2 GB', '4 GB DDR4 2400 MHz', 'HDD 5400rpm, 1000 GB', '15.6 inchs Anti - Glare', 'http://fptshop.com.vn/may-tinh-xach-tay/acer-a315-53-30e7-core-i3-7020u', 'img/laptop/98.png'),
(99, 'Lenovo Ideapad 330-15IKB 81DC00ENVN', 9990000, 'Intel Core i3 7130U ', 'Intel® HD Graphics 620 Shared', '4 GB DDR4 2133 MHz', 'HDD, 500 GB', '15.6 inchs HD LED', 'http://fptshop.com.vn/may-tinh-xach-tay/lenovo-ideapad-330-15ikb-81dc00envn', 'img/laptop/99.png'),
(100, 'Asus Vivobook X407UA-BV537T/Core i3-7020U/4GB/1TB/WIN10', 9990000, 'Intel Core i3 7020U', 'Intel® HD graphics Shared ', '4 GB DDR4 2400 MHz', 'HDD, 500 GB', '14.0 inchs HD LED backlit', 'http://fptshop.com.vn/may-tinh-xach-tay/asus-vivobook-x407ua-bv537t-core-i3-7020u', 'img/laptop/100.png'),
(101, 'Dell Vostro 3468/Core i3-7020U', 10990000, 'Intel  Core i3 7020U', 'Intel® HD Graphics 620 Shared', '4 GB DDR4 2400 MHz', 'SSD, 256 GB', '14.0 inchs Anti-Glare LED-Backlit Display', 'http://fptshop.com.vn/may-tinh-xach-tay/dell-vostro-3468-core-i3-7020U', 'img/laptop/101.png'),
(102, 'Dell Inspiron N3576/Core i3-7020U/4Gb/1000Gb/DVDRW/AMD R5 520 2Gb', 11590000, 'Intel Core i3 7020U', 'AMD Radeon 520 2 GB', '4 GB DDR4 2400 MHZ', 'HDD 5400rpm, 500 GB', '15.6 inchs FHD', 'http://fptshop.com.vn/may-tinh-xach-tay/dell-inspiron-n3576-core-i3-7020u', 'img/laptop/102.png'),
(103, 'Ideapad 330s-14IKB/Core i3-8130/4Gb/256Gb/Win 10', 11790000, 'Intel Core i3 8130U', 'Intel® UHD Graphics 620 Shared ', '4 GB DDR4 2666 MHz', 'HDD, 1 TB 5400 rpm', '14.0 inchs IPS FHD', 'http://fptshop.com.vn/may-tinh-xach-tay/ideapad-330s-14ikb-core-i3-8130', 'img/laptop/103.png'),
(104, 'Asus Vivobook X507UA-EJ736T/Core i3-7020U/4GB/256G SSD/WIN10', 10890000, 'Intel Core i3 7020U', 'Intel® HD graphics 520 Shared ', '4 GB DDR4 2400 MHz', 'SSD, 256 GB', '15.6 inchs Không', 'http://fptshop.com.vn/may-tinh-xach-tay/asus-vivobook-x507ua-ej736t-core-i3-7020u', 'img/laptop/104.png'),
(105, 'Asus Vivobook A510UA-EJ1123T/Core i3 8130U', 10990000, 'Intel Core i3 8130U', 'Intel UHD Graphics 620 Share', '4 GB DDR4 2400 MHz', 'HDD, 1 TB', '15.6 inchs Anti-Glare', 'http://fptshop.com.vn/may-tinh-xach-tay/asus-vivobook-a510ua-ej1123t-core-i3-8130u', 'img/laptop/105.png'),
(106, 'Dell Inspiron N3576', 11590000, 'Intel Core i3 7020U', 'AMD Radeon 520 2 GB', '4 GB DDR4 2400 MHZ', 'HDD, 1 TB 5400rpm', '15.6 inchs Anti-Glare LED-Backlit Display', 'http://fptshop.com.vn/may-tinh-xach-tay/dell-inspiron-n3576', 'img/laptop/106.png'),
(107, 'Acer Nitro AN515-52-51GF', 20990000, 'Intel Core i5 8300H', 'NVIDIA GeForce GTX 1050 4 GB', '8 GB DDR4 2666 MHz', 'HDD, 1 TB 5400 rpm', '15.6 inchs FHD LED', 'http://fptshop.com.vn/may-tinh-xach-tay/acer-nitro-an515-52-51gf', 'img/laptop/107.png'),
(108, 'Asus Zenbook UX331UN-EG129TS/i5-8250U', 21790000, 'Intel Core i5 8250U ', 'NVIDIA GEFORCE MX150  2 GB', '8 GB LPDDR3 1866 MHz', 'SSD, 256 GB', '13.3 inchs FullHD Anti-Glare', 'http://fptshop.com.vn/may-tinh-xach-tay/asus-zenbook-ux331un-eg129ts-i5-8250u', 'img/laptop/108.png'),
(109, 'Acer A315-32-C9A4', 5990000, 'Intel Celeron N4000', ' Intel® UHD Graphics 600 Shared', '4 GB DDR4 2133 MHz', 'HDD, 500 GB', '15.6 inchs HD LED Backlight', 'http://fptshop.com.vn/may-tinh-xach-tay/acer-a315-32-c9a4', 'img/laptop/109.png'),
(110, 'Asus TUF FX504GD-E4571T/i5-8300H', 19990000, 'Intel Core i5 8300H', 'NVIDIA Geforce GTX 1050 4 GB', '8 GB DDR4 2666 MHz', 'HDD, HDD: 1 TB SATA3, Hỗ trợ khe SSD M2 PCIe', '15.6 inchs FHD IPS  Non-Glare LED Backlit', 'http://fptshop.com.vn/may-tinh-xach-tay/Asus-TUF-FX504GD-E4571Ti5-8300H', 'img/laptop/110.png'),
(111, 'Asus Vivobook S430FA-EB069T/Core I3-8145U/4GB/1TB/WIN10', 13890000, 'Intel Core i3 8145U', 'Intel UHD Graphics 620 Shared ', '4 GB DDR4 2666 MHz', 'HDD 5400rpm, HDD: 1 TB SATA3, Hỗ trợ khe cắm SSD M.2 SATA3', '14.0 inchs FHD', 'http://fptshop.com.vn/may-tinh-xach-tay/asus-vivobook-s430fa-eb069t-core-i3-8145u', 'img/laptop/111.png'),
(112, 'Macbook Air 13 256GB 2018', 36990000, 'Intel Core i5 Dual - Core', 'Intel UHD Graphics 617 Shared ', '8 GB LPDDR3 2133 MHz', 'SSD, 256 GB', '13.3 inchs LED Backlit', 'http://fptshop.com.vn/may-tinh-xach-tay/macbook-air-13-256gb-2018', 'img/laptop/112.png'),
(113, 'MSI GF63 8RC-452VN/CORE I5-8300H/8GB+16GB Optane/1TB/1050 4GB/WIN10', 22390000, 'Intel Core i5 8300H', 'NVIDIA GeForce® GTX 1050 4 GB', '8GB + 16GB Optane DDR4 2666 MHz', 'HDD, 1 TB 5400rpm', '15.6 inchs IPS FHD', 'http://fptshop.com.vn/may-tinh-xach-tay/msi-gf63-8rc-452vn-core-i5-8300h', 'img/laptop/113.png'),
(114, 'Acer Nitro 5-AN515-52-75FT', 23990000, 'intel core i7 8750H', 'NVIDIA GeForce GTX 1050Ti 4 GB GDDR5', '8 GB DDR4 2666 MHz', 'SSD(M.2 2280) + HDD SATA3 (5400rpm), 128 GB + 1 TB', '15.6 inches Full HD IPS Anti-Glare, Acer ComfyView LED-backlit TFT LCD', 'http://fptshop.com.vn/may-tinh-xach-tay/acer-nitro-5-an515-52-75ft', 'img/laptop/114.png'),
(115, 'Dell Inspiron 5570', 17990000, 'Intel  Core i5  8250U', 'AMD Radeon 530 2 GB', '4 GB DDR4 2400 MHz', 'SSD, 256 GB', '15.6 Inches WLED ', 'http://fptshop.com.vn/may-tinh-xach-tay/Dell-Inspiron-5570', 'img/laptop/115.png'),
(116, 'Macbook Pro 13 Touch Bar 512 GB (2018)', 49990000, 'Intel Core i5 Quad-Core', 'Intel Iris Plus Graphics 655 System Shared', '8GB LPDDR3 2133MHz', 'HDD, HDD: 1 TB SATA3,SSD  Hỗ trợ khe SSD M2 PCIe', '13.3 inch Công nghệ True Tone, Công nghệ IPS, LED Backlit', 'http://fptshop.com.vn/may-tinh-xach-tay/macbook-pro-13-touch-bar-512gb-2018', 'img/laptop/116.png'),
(117, 'Macbook Air 13 128GB 2018', 31990000, 'Intel Core i5 Dual - Core', 'Intel UHD Graphics 617 Shared ', '8 GB LPDDR3 2133 MHz', 'SSD, 128 GB', '13.3 inchs LED Backlit', 'http://fptshop.com.vn/may-tinh-xach-tay/macbook-air-13-128gb-2018', 'img/laptop/117.png'),
(118, 'Dell Vostro 3578', 18690000, 'Intel Core i7 8550U', 'AMD Radeon 520 2 GB', '8 GB DDR4 2400 MHz', 'HDD SATA3 (5400rpm), 1000 GB', '15.6 inchs Anti-Glare LED-backlit', 'http://fptshop.com.vn/may-tinh-xach-tay/dell-vostro-3578', 'img/laptop/118.png'),
(119, 'HP Pavilion 14-ce1008TU/Core i5-8265U/4GB/1TB/14.0FHD/WIN10', 15290000, 'Intel Core i5 8265U', 'intel Shared ', '4 GB DDR4 2400 MHz', 'HDD 5400rpm, 1000 GB', '14.0 inchs LED Backlit', 'http://fptshop.com.vn/may-tinh-xach-tay/hp-pavilion-14-ce1008tu-core-i5-8265u', 'img/laptop/119.png'),
(120, 'HP Envy 13-ah1012TU/Core i7-8565U/8GB/256GSSD/WIN10', 27490000, 'Intel Core i7 8565U', 'Intel® UHD Graphics 620 Shared ', '8 GB LPDDR3 2133 MHz', 'HDD 5400rpm, 1000 GB', '13.3 inchs LED Backlit', 'http://fptshop.com.vn/may-tinh-xach-tay/hp-envy-13-ah1012tu-core-i7-8565u', 'img/laptop/120.png'),
(121, 'Dell Vostro 3578A', 15390000, 'Intel Core I5  8250U', 'AMD Radeon 520 2 GB', '4 GB DDR4 2400 MHz', 'SSD, 256 GB', '15.6 inchs Anti Glare LED Backlit Display', 'http://fptshop.com.vn/may-tinh-xach-tay/Dell-Vostro-3578A', 'img/laptop/121.png'),
(122, 'Asus Zenbook UX333FA-A4011T/Core i5-8265U/8GB/256GSSD/WIN10', 22490000, 'Intel Core i5 8265U', 'Intel UHD Graphics Shared ', '8 GB LPDDR3 2133 MHz', 'SSD, 256 GB', '13.3 inchs FHD', 'http://fptshop.com.vn/may-tinh-xach-tay/asus-zenbook-ux333fa-a4011t-core-i5-8265u', 'img/laptop/122.png'),
(123, 'Swift SF314-54-58KB/Core i5-8250U/4Gb/256Gb/14FHD/WIn10', 17990000, 'Intel Core i5 8250U', 'Intel® UHD Graphics 620 Không', '4 GB DDR4 2133 MHz', 'SSD, 256 GB', '14.0 inchs IPS FHD', 'http://fptshop.com.vn/may-tinh-xach-tay/swift-sf314-54-58kb-core-i5-8250u', 'img/laptop/123.png'),
(124, 'Asus Vivobook S530UA-BQ100T/Core i5 8250U', 16690000, 'Intel Core i5 8250U', 'Intel UHD Graphics 620 Shared', '4 GB DDR4 2400 MHz', 'HDD, HDD: 1 TB SATA3, Hỗ trợ khe cắm SSD M.2 SATA3', '15.6 inchs FHD WV 250nits Anti-Glare NTSC 45%', 'http://fptshop.com.vn/may-tinh-xach-tay/asus-vivobook-s530ua-bq100t-core-i5-8250u', 'img/laptop/124.png'),
(125, 'HP ENVY X360-AG0045AU/R5-2500U/8GB/256G SSD/WIN10', 22890000, 'AMD Ryzen 5 2500U', 'AMD Radeon Graphics 2 GB', '8 GB DDR4 2400 MHz', 'SSD, 256 GB', '13.3 inchs IPS FHD', 'http://fptshop.com.vn/may-tinh-xach-tay/hp-envy-x360-ag0045au-r5-2500u-8gb', 'img/laptop/125.png'),
(126, 'MSI PS42 8M-296VN/i5-8250U', 20990000, 'Intel Core i5 8250U', 'UMA Share', '8 GB DDR4 2666 MHz', 'SSD, 128 GB', '14.0 inchs IPS 72% Narrow Bezel ', 'http://fptshop.com.vn/may-tinh-xach-tay/msi-ps42-8m-296vn-i5-8250u', 'img/laptop/126.png'),
(127, 'Asus Vivobook X507UA-BR426T/Core I5-8250U/4GB/1TB/WIN10', 13290000, 'Intel Core i5 8250U', 'Intel UHD Graphics  Shared ', '4 GB DDR4 2400 MHz', 'HDD, 1000 GB', '15.6 inchs HD Touch', 'http://fptshop.com.vn/may-tinh-xach-tay/asus-vivobook-x507ua-br426t-core-i5-8250u', 'img/laptop/127.png'),
(128, 'Asus TUF FX505GD-BQ324T/Core i5-8300H/8GB/1TB/1050 4GB/WIN10', 22390000, 'Intel Core i5 8300H', 'GTX 1050 4 GB', '8 GB DDR4 2666 MHz', 'HDD 5400rpm, HDD: 1 TB SATA3, Hỗ trợ khe SSD M2 PCIe', '15.6 inchs FHD', 'http://fptshop.com.vn/may-tinh-xach-tay/asus-tuf-fx505gd-bq324t-core-i5-8300h', 'img/laptop/128.png'),
(129, 'Asus Vivobook X507UF-EJ074T/i7-8550U', 17190000, 'Intel Core i7 8550U', 'NVIDIA GeForce MX130 2 GB_GDDR5', '4 GB DDR4 2400 MHz', 'SSD, 256 GB', '15.6 inchs FHD Anti-Glare Panel with 45% NTSC', 'http://fptshop.com.vn/may-tinh-xach-tay/asus-vivobook-x507uf-ej074t-i7-8550U', 'img/laptop/129.png'),
(130, 'Macbook Pro 13 Touch Bar 256 GB (2018)', 44990000, 'Intel Core i5 Quad-Core', 'Intel Iris Plus Graphics 655 System Shared', '8GB LPDDR3 2133MHz', 'HDD, 1 TB', '13.3 inch Công nghệ True Tone, Công nghệ IPS, LED Backlit', 'http://fptshop.com.vn/may-tinh-xach-tay/macbook-pro-13-touch-bar-256gb-2018', 'img/laptop/130.png'),
(131, 'Asus Vivobook X507UF-EJ121T/i5-8250U', 14590000, 'Intel Core i5 8250U', 'NVIDIA GeForce MX130 2 GB', '4 GB DDR4 2400 MHz', 'HDD 5400rpm, HDD: 1 TB SATA3, Hỗ trợ khe cắm SSD M.2 SATA3', '15.6 inchs LED Backlit', 'http://fptshop.com.vn/may-tinh-xach-tay/asus-vivobook-x507uf-ej121t-i5-8250u', 'img/laptop/131.png'),
(132, 'Dell Vostro V5568/i5-7200U/4GB/1000GB', 14990000, 'Intel Core i5 7200U', 'Intel HD 620 Graphics Shared ', '4 GB DDR4 2400 MHz', 'HDD 5400rpm, HDD: 1 TB SATA3, Hỗ trợ khe cắm SSD M.2 SATA3', '15.6 inchs Anti - Glare', 'http://fptshop.com.vn/may-tinh-xach-tay/dell-vostro-v5568-core-i5-7200u', 'img/laptop/132.png'),
(133, 'Asus ZenBook FLIP UX461UA-E1147T/i5-8250U/4GB/256GB SSD/PEN/WIN10', 20290000, 'Intel Core i5 8250U', 'Intel® UHD Graphics 620 Shared ', '4 GB DDR4 2133 MHz', 'SSD, 256 GB', '14.0 inchs IPS FHD', 'http://fptshop.com.vn/may-tinh-xach-tay/asus-zenbook-flip-ux461ua-e1147t', 'img/laptop/133.png'),
(134, 'Asus Vivobook X507UF-EJ257T/Core i7-8550U/4G/1TB/MX130_2GB/WIN10', 17090000, 'Intel Core i7 8550U', 'NVIDIA GeForce MX130 ; Intel UHD Graphics 620 2 GB', '4 GB DDR4 2400 MHz', 'HDD 5400rpm, HDD: 1 TB SATA3, Hỗ trợ khe cắm SSD M.2 SATA3', '15.6 inchs FHD', 'http://fptshop.com.vn/may-tinh-xach-tay/asus-vivobook-x507uf-ej257t-core-i7-8550u', 'img/laptop/134.png'),
(135, 'Asus Zenbook UX333FA-A4181T/Core i5-8265U/8GB/256GSSD/WIN10', 22990000, 'Intel Core i5 8265U', 'Intel UHD Graphics 620 Shared ', '8 GB LPDDR3 2133 MHz', 'SSD, 256 GB', '13.3 inchs IPS FHD', 'http://fptshop.com.vn/may-tinh-xach-tay/asus-zenbook-ux333fa-a4181t-core-i5-8265u', 'img/laptop/135.png'),
(136, 'HP Envy 13-ah1011TU/Core i5-8265U/8GB/256GB SSD/13.3FHD/WIN10', 22490000, 'Intel Core i5 8265U', 'intel Shared ', '8 GB DDR3L 2133 MHz', 'SSD, 256 GB', '13.3 inchs LED Backlit', 'http://fptshop.com.vn/may-tinh-xach-tay/hp-envy-13-ah1011tu-core-i5-8265u', 'img/laptop/136.png'),
(137, 'Lenovo Legion Y530-15ICH/Core i7-8750H/8GB/1TB+128GB SSD/GTX 1050 4GB/81FV00SUVN', 24990000, 'Intel Core i7 8750H', 'NVIDIA® GeForce® GTX 1050 4 GB GDDR5', '8 GB DDR4 2666 MHz', 'SDD + HDD, 128 GB + 1 TB', '15.6 inches FHD LED', 'http://fptshop.com.vn/may-tinh-xach-tay/lenovo-legion-y530-15ich-core-i7-8750h-8gb-1tb-128gb-ssd-gtx-1050ti-4gb-81fv00suvn', 'img/laptop/137.png'),
(138, 'Asus Zenbook UX333FA-A4046T/Core i5-8265U/8GB/256GSSD/WIN10', 22490000, 'Intel Core i5 8265U', 'Intel UHD Graphics 620 Shared ', '8 GB LPDDR3 2133 MHz', 'SSD, 256 GB', '13.3 inchs FHD', 'http://fptshop.com.vn/may-tinh-xach-tay/asus-zenbook-ux333fa-a4046t-core-i5-8265u', 'img/laptop/138.png'),
(139, 'HP Pavilion 15-cs1045TX/i5-8265U/4GB/1TB/15.6FHD/MX130 2GB/WIN10', 16290000, 'Intel Core i5 8265U', 'NVIDIA GeForce MX130 2 GB', '4 GB DDR4 2400 MHz', 'HDD 5400rpm, 1000 GB', '15.6 inchs LED Backlit', 'http://fptshop.com.vn/may-tinh-xach-tay/hp-pavilion-15-cs1045tx-i5-8265u', 'img/laptop/139.png'),
(140, 'Acer Predator Helios 300 PH315-51-7533', 31990000, 'intel core i7 8750H', 'NVIDIA GeForce GTX 1060 (GDDR5 SDRAM, Bus Width: 192 Bit); Intel UHD Graphics 630 6 GB', '8 GB DDR4 2666 MHz', 'SSD + HDD, 128GB SSD (M.2 2280) + 1TB SATA3 (5400rpm)', '15.6 inches High-brightness Acer ComfyView LED-backlit TFT LCD; Anti-glare', 'http://fptshop.com.vn/may-tinh-xach-tay/acer-predator-helios-300-ph315-51-7533', 'img/laptop/140.png'),
(141, 'HP Pavilion 14-ce0027TU', 12490000, 'Intel Core i3 8130U', 'Intel® HD Graphics 620 Share', '4 GB DDR4 2133 MHz', 'HDD, 500 GB 5400 rpm ', '14.0 inchs Viền màn hình mỏng, WLED, LED Backlit', 'http://fptshop.com.vn/may-tinh-xach-tay/hp-pavilion-14-ce0027tu', 'img/laptop/141.png'),
(142, 'Dell Inspiron T7373A', 30290000, 'Intel Core i7 8550U', 'Intel UHD Graphics 620 Shared', '8 GB DDR4 2400 MHz', 'SSD, 256 GB', '13.3 inchs IPS Truelife LED-Backlit Narrow Border Touch Display', 'http://fptshop.com.vn/may-tinh-xach-tay/dell-inspiron-t7373a', 'img/laptop/142.png'),
(143, 'Macbook Pro 15 Touch Bar 256 GB (2018)', 57490000, 'Intel Core i7 6-core', 'Radeon Pro 555X 4GB of GDDR5 ', '16GB DDR4 2400MHz', 'SSD, 256GB', '15.4 inch Công nghệ True Tone, Công nghệ IPS, LED Backlit', 'http://fptshop.com.vn/may-tinh-xach-tay/macbook-pro-15-touch-bar-256gb-2018', 'img/laptop/143.png'),
(144, 'Asus TUF FX504GE-EN047T/i7-8750', 26990000, 'Intel Core i7 8750H', 'NVIDIA GeForce GTX1050Ti 4 GB DDR5', '8 GB DDR4 2400 MHz', 'SSHD, 1 TB SATA3 SSHD_with 8GB SSD Flash Drive (5400rpm)', '15.6 inchs (16:9) FHD (1920x1080) 120Hz Anti-Glare Panel 94% NTSC', 'http://fptshop.com.vn/may-tinh-xach-tay/asus-tuf-fx504ge-en047ti7-8750', 'img/laptop/144.png'),
(145, 'Asus Vivobook S530UA-BQ072T/Core i3-8130U', 13390000, 'Intel Core i3 8130U', 'Intel UHD Graphics 620 Shared ', '4 GB DDR4 2400 MHz', 'HDD, HDD: 1 TB SATA3, Hỗ trợ khe cắm SSD M.2 SATA3', '15.6 inchs FHD Anti-Glare', 'http://fptshop.com.vn/may-tinh-xach-tay/asus-vivobook-s530ua-bq072t-core-i3-8130u', 'img/laptop/145.png'),
(146, 'Dell Inspiron N3576/i5-8250U', 14690000, 'Intel  Core i5 8250U', 'AMD Radeon 520 2 GB', '4 GB DDR4 2400 MHz', 'HDD, 1 TB', '15.6 inch Anti-Glare LED-Blacklit', 'http://fptshop.com.vn/may-tinh-xach-tay/Dell-Inspiron-N3576i5-8250U', 'img/laptop/146.png'),
(147, 'Asus Vivobook S530UN-BQ026T/Core i5 8250U', 18090000, 'Intel Core i5 8250U', 'NVIDIA GeForce MX150 2 GB_GDDR5', '4 GB DDR4 2400 MHz', 'HDD, HDD: 1 TB SATA3, Hỗ trợ khe cắm SSD M.2 SATA3', '15.6 inchs FHD WV 250nits Anti-Glare NTSC 45%', 'http://fptshop.com.vn/may-tinh-xach-tay/asus-vivobook-s530un-bq026t-core-i5-8250u', 'img/laptop/147.png'),
(148, 'Asus TUF FX505GE-BQ308T-G/Core I7-8750H/8GB/1TB/15.6FHD/Nvidia GTX1050Ti 4G', 26190000, 'Intel Core i7 8750H', 'NVIDIA GeForce GTX 1050 Ti 4 GB', '8 GB DDR4 2666 MHz', 'HDD 5400rpm, HDD: 1 TB SATA3, Hỗ trợ khe SSD M2 PCIe', '15.6 inchs IPS FHD', 'http://fptshop.com.vn/may-tinh-xach-tay/asus-tuf-fx505ge-bq308t-g-core-i7-8750h', 'img/laptop/148.png'),
(149, 'Masstel L133', 4990000, 'Intel Celeron  N3350', 'Intel (R) HD Graphics Share', '3 GB LPDDR3 1600 MHz', 'eMMC, 32 GB', '13.3 inchs IPS Full HD', 'http://fptshop.com.vn/may-tinh-xach-tay/Masstel-L133', 'img/laptop/149.png'),
(150, 'MSI GF63 8RD-447VN/i7-8750H/8GB+16GB Optane/1TB/GTX1050TI 4GB/WIN10', 25890000, 'Intel Core i7 8750H', 'GeForce® GTX 1050 Ti 4 GB', '8GB + 16GB Optane DDR4 2666 MHz', 'HDD 5400rpm, 1000 GB', '15.6 inchs IPS FHD', 'http://fptshop.com.vn/may-tinh-xach-tay/msi-gf63-8rd-447vn-i7-8750h', 'img/laptop/150.png'),
(151, 'Asus F560UD-BQ327T/Core i5-8250U/8GB/1TB/GTX1050 2G/WIN10', 16990000, 'Intel Core i5 8250U', 'Geforce GTX 1050 2 GB', '8 GB DDR4 2133 MHz', 'HDD 5400rpm, HDD: 1 TB SATA3, Hỗ trợ khe cắm SSD M.2 SATA3', '15.6 inchs IPS FHD', 'http://fptshop.com.vn/may-tinh-xach-tay/asus-f560ud-bq327t-core-i5-8250u', 'img/laptop/151.png'),
(152, 'Masstel L133/Celeron N3350/RAM 3GB/32GB/WIN10_Bạc', 5290000, 'Intel Celeron N3350', 'Intel (R) HD Graphics 500 Share', '3 GB LPDDR3 1600 MHz', 'eMMC, 32 GB', '13.3 inch IPS/Full HD', 'http://fptshop.com.vn/may-tinh-xach-tay/masstel-l133celeron-n3350ram-3gb32gbwin10-bac', 'img/laptop/152.png'),
(153, 'HP Pavilion 15-cs0104TX/i7-8550U', 19990000, 'Intel Core i7 8550U', 'NVIDIA GeForce MX130 2 GB', '4 GB  DDR4 2400 MHz', 'eMMC, 32 GB', '15.6 inchs FHD SVA Anti-glare WLED-backlit', 'http://fptshop.com.vn/may-tinh-xach-tay/hp-pavilion-15-cs0104tx-i7-8550u', 'img/laptop/153.png'),
(154, 'Asus Vivobook E406SA-BV043T', 5290000, 'Intel Celeron N3060', 'Intel HD Graphics 500 Shared', '2 GB DDR3 1600 MHz', 'HDD, HDD: 1 TB SATA3, Hỗ trợ khe cắm SSD M.2 SATA3', '14.0 inchs Ultra Slim 200nits', 'http://fptshop.com.vn/may-tinh-xach-tay/Asus-Vivobook-E406SA-BV043T', 'img/laptop/154.png'),
(155, 'Dell Inspiron N5570/Core i5-8250U/4GB/1TB/AMD R5 530/Windows 10', 17990000, 'Intel Core i5 8250U', 'AMD Radeon 530 2 GB', '4 GB DDR4  2400 MHz', 'eMMC, 32 GB', '15.6 inchs FHD', 'http://fptshop.com.vn/may-tinh-xach-tay/dell-inspiron-n5570-core-i5-8250u-4gb-1tb-amd-r5-530-windows-10', 'img/laptop/155.png'),
(156, 'HP Pavilion Power 15-cx0179TX/i5-8300H', 23990000, 'Intel Core i5 8300H', 'NVIDIA GEFORCE GTX 1050 4 GB', '8 GB DDR4 2666 MHz', 'eMMC, 32 GB', '15.6 inchs UWVA', 'http://fptshop.com.vn/may-tinh-xach-tay/hp-pavilion-power-15-cx0179txi5-8300h', 'img/laptop/156.png'),
(174, '', 0, '', '', '', '', '', '', 'NO'),
(175, 'test', 0, '', '', '', '', '', '2', 'NO'),
(176, 'test', 222, '', '', '6', 'HDD,500GB test', 'test FHD', '2', 'NO');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `username` varchar(20) NOT NULL,
  `password` varchar(15) NOT NULL,
  `email` text NOT NULL,
  `lap3` smallint(6) DEFAULT NULL,
  `lap2` smallint(6) DEFAULT NULL,
  `lap1` smallint(6) DEFAULT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`username`, `password`, `email`, `lap3`, `lap2`, `lap1`, `id`) VALUES
('admin', 'admin', 'admin', 3, 27, 38, 11),
('member1', 'member1', 'member1@gmail.com', NULL, NULL, NULL, 13),
('member2', 'member2', 'member2@gmail.com', NULL, NULL, NULL, 14);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `dexuat`
--
ALTER TABLE `dexuat`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `DiemCPU`
--
ALTER TABLE `DiemCPU`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `DiemHDD`
--
ALTER TABLE `DiemHDD`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `diemLaptop`
--
ALTER TABLE `diemLaptop`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `DiemMH`
--
ALTER TABLE `DiemMH`
  ADD PRIMARY KEY (`id_mh`);

--
-- Chỉ mục cho bảng `DiemRAM`
--
ALTER TABLE `DiemRAM`
  ADD PRIMARY KEY (`id_ram`);

--
-- Chỉ mục cho bảng `DiemVGA`
--
ALTER TABLE `DiemVGA`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `laptop_details`
--
ALTER TABLE `laptop_details`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`),
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `dexuat`
--
ALTER TABLE `dexuat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT cho bảng `DiemCPU`
--
ALTER TABLE `DiemCPU`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;

--
-- AUTO_INCREMENT cho bảng `DiemHDD`
--
ALTER TABLE `DiemHDD`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=167;

--
-- AUTO_INCREMENT cho bảng `DiemMH`
--
ALTER TABLE `DiemMH`
  MODIFY `id_mh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=203;

--
-- AUTO_INCREMENT cho bảng `DiemRAM`
--
ALTER TABLE `DiemRAM`
  MODIFY `id_ram` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=184;

--
-- AUTO_INCREMENT cho bảng `DiemVGA`
--
ALTER TABLE `DiemVGA`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=152;

--
-- AUTO_INCREMENT cho bảng `laptop_details`
--
ALTER TABLE `laptop_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=177;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
