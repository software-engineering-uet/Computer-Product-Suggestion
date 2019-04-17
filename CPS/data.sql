-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th4 17, 2019 lúc 04:32 PM
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
(7, '', '1', '4'),
(8, '', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `diemCPU`
--

CREATE TABLE `diemCPU` (
  `nameCPU` text NOT NULL,
  `Diem` int(11) DEFAULT NULL,
  `Diem/100` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `diemCPU`
--

INSERT INTO `diemCPU` (`nameCPU`, `Diem`, `Diem/100`) VALUES
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
-- Cấu trúc bảng cho bảng `diemLaptop`
--

CREATE TABLE `diemLaptop` (
  `id` int(11) NOT NULL,
  `diemCPU` float DEFAULT NULL,
  `diemMH` float DEFAULT NULL,
  `diemVGA` float DEFAULT NULL,
  `diemHDD` float DEFAULT NULL,
  `diemRam` float DEFAULT NULL,
  `diem` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `DiemMH`
--

CREATE TABLE `DiemMH` (
  `id_mh` int(11) NOT NULL,
  `Ten_mh` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `Diem` float NOT NULL,
  `Diem/100` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `DiemMH`
--

INSERT INTO `DiemMH` (`id_mh`, `Ten_mh`, `Diem`, `Diem/100`) VALUES
(1, '13.3 inchs FHD Touch', 250, 0),
(2, '14.0 inchs FHD Touch', 250, 0),
(3, '15.6 inches Acer ComfyView LED-backlit TFT IPS LCD; Anti-glare', 230, 0),
(4, '15.6 inchs HD LED', 100, 0),
(5, '15.6 inchs FHD WLED-backlit', 220, 0),
(6, '14.0 inchs  HD SVA WLED-backlit multitouch', 190, 0),
(7, '14.0 inch HD LED', 100, 0),
(8, '14.0 inchs Ultra Slim 250nits', 130, 0),
(9, '14.0 inchs HD SVA micro-edge WLED-backlit', 140, 0),
(10, '14.0 inchs FullHD IPS', 280, 0),
(11, '15.6-inch HD   Anti-Glare LED-Backlit Display', 130, 0),
(12, '11.6 inchs HD Touch', 150, 0),
(13, '15.6 inchs  SVA BrightView WLED-backlit', 160, 0),
(14, '14.0 inchs IPS BrightView micro-edge WLED-backlit', 220, 0),
(15, '15.6 inch  Anti-Glare LED-Backlit Display', 130, 0),
(16, '14.0 inchs Anti-glare LED-backlit display', 130, 0),
(17, '15.6 inchs HD SVA BrightView WLED-backlit', 160, 0),
(18, '15.6 inchs Anti-Glare LED Backlit', 130, 0),
(19, '13.3 inchs IPS LCD screen', 180, 0),
(20, '14.0 inchs HD LED', 100, 0),
(21, '13.3 inch IPS/Full HD', 280, 0),
(22, '14.0 inchs HD', 100, 0),
(23, '15.6 inches   SVA BrightView WLED-backlit', 160, 0),
(24, '15.6 inchs HD Anti-Glare LED-Backlit Display', 130, 0),
(25, '15.6 inchs  HD BrightView WLED-backlit', 140, 0),
(26, '15.6 inchs FHD', 200, 0),
(27, '14.0 inchs Anti - Glare', 130, 0),
(28, '14.0 inches Anti-Glare LED-Backlit Display', 130, 0),
(29, '15.6 inches Anti-Glare LED-Backlit Display', 130, 0),
(30, '14.0 inchs LED Backlit', 100, 0),
(31, '14.0 inchs Ultra Slim 200nits', 130, 0),
(32, '14 inch Anti-Glare LED-Backlit Display', 130, 0),
(33, '15.6 inchs HD LED Backlight', 100, 0),
(34, '15.6 inchs Ultra Slim 200nits/Glare/NTSC:45%', 130, 0),
(35, '15.6 inch HD LED-Backlit,Anti-Glare', 130, 0),
(36, '13.3 inchs IPS FHD', 280, 0),
(37, '14 inchs  Full HD', 200, 0),
(38, '14.0 inchs Anti-glare LED-backlit', 130, 0),
(41, '15.6 inchs Anti-Glare LED-Backlit Display', 130, 0),
(42, '15.6 inch  HD LED', 100, 0),
(43, '15.6 inchs LED Backlit', 100, 0),
(44, '14.0 inchs Viền màn hình mỏng, WLED, LED Backlit', 120, 0),
(45, '14 inchs FHD, Touch screen', 250, 0),
(46, '15.6 inchs Ultra Slim 200nits Anti-Glare/NTSC:45%/Wide View', 160, 0),
(48, '13.3 inch 	LED-backlit', 100, 0),
(50, '15.6 inchs IPS 45% Narrow Bezel', 180, 0),
(52, '13.3 inchs FHD IPS BrightView micro-edge WLED-backlit', 320, 0),
(53, '13.3 inch FHD Anti-glare LED-Backlit Display', 230, 0),
(54, '15.6 inchs FullHD IPS', 280, 0),
(55, '15.6 inchs IPS FHD', 280, 0),
(56, '15.6 inchs 60Hz IPS 45% Narrow Bezel', 180, 0),
(58, '15.6 inch FHD Anti Glare LED Backlit Display', 230, 0),
(60, '13.3 inchs WLED touch screen IPS', 250, 0),
(61, '15.6 inchs InfinityEdge display', 130, 0),
(62, '15.4 inch Công nghệ True Tone, Công nghệ IPS, LED Backlit', 220, 0),
(63, '13.3 inch FHD IPS', 280, 0),
(65, '15.6 inchs IPS Anti-Glare LED-Backlit Display', 210, 0),
(66, '15.6 inch HD SVA BrightView WLED-backlit', 160, 0),
(68, '15.6 inchs Full HD', 200, 0),
(69, '14 inch Full HD', 200, 0),
(70, '13.3‐inchs  FullHD InfinityEdge display', 230, 0),
(72, '12 inch 	LED-backlit', 100, 0),
(74, '15.6 inchs FHD LED', 200, 0),
(75, '15.6 inchs Anti - Glare', 130, 0),
(78, '14.0 inchs HD Touch', 150, 0),
(79, '15.6 inches HD LED', 100, 0),
(80, '14.0 inches FHD', 200, 0),
(81, '14.0 inchs HD LED backlit', 100, 0),
(83, '14.0 inchs FHD', 200, 0),
(85, '14.0 inchs  IPS BrightView micro-edge WLED-backlit', 220, 0),
(86, '13.3 inchs Anti -glare LED-Backlit Display', 130, 0),
(87, '15.6 inchs IPS LCD', 180, 0),
(89, '14.0 inchs FHD Anti-Glare', 230, 0),
(97, '15.6 inchs HD LED backlit', 100, 0),
(103, '14.0 inchs IPS FHD', 280, 0),
(104, '15.6 inchs Không', 100, 0),
(105, '15.6 inchs Anti-Glare', 130, 0),
(108, '13.3 inchs FullHD Anti-Glare', 230, 0),
(110, '15.6 inchs FHD IPS  Non-Glare LED Backlit', 280, 0),
(112, '13.3 inchs LED Backlit', 100, 0),
(114, '15.6 inches Full HD IPS Anti-Glare, Acer ComfyView LED-backlit TFT LCD', 330, 0),
(115, '15.6 Inches WLED', 120, 0),
(116, '13.3 inch Công nghệ True Tone, Công nghệ IPS, LED Backlit', 220, 0),
(118, '15.6 inchs Anti-Glare LED-backlit', 130, 0),
(121, '15.6 inchs Anti Glare LED Backlit Display', 130, 0),
(122, '13.3 inchs FHD', 200, 0),
(124, '15.6 inchs FHD WV 250nits Anti-Glare NTSC 45%', 230, 0),
(126, '14.0 inchs IPS 72% Narrow Bezel', 180, 0),
(127, '15.6 inchs HD Touch', 150, 0),
(129, '15.6 inchs FHD Anti-Glare Panel with 45% NTSC', 230, 0),
(137, '15.6 inches FHD LED', 200, 0),
(140, '15.6 inches High-brightness Acer ComfyView LED-backlit TFT LCD; Anti-glare', 250, 0),
(142, '13.3 inchs IPS Truelife LED-Backlit Narrow Border Touch Display', 240, 0),
(144, '15.6 inchs (16:9) FHD (1920x1080) 120Hz Anti-Glare Panel 94% NTSC', 230, 0),
(145, '15.6 inchs FHD Anti-Glare', 230, 0),
(146, '15.6 inch Anti-Glare LED-Blacklit', 130, 0),
(149, '13.3 inchs IPS Full HD', 280, 0),
(153, '15.6 inchs FHD SVA Anti-glare WLED-backlit', 270, 0),
(156, '15.6 inchs UWVA', 120, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `DiemRAM`
--

CREATE TABLE `DiemRAM` (
  `NameRAM` text NOT NULL,
  `Diem` float NOT NULL,
  `Diem/100` float NOT NULL,
  `id_ram` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `DiemRAM`
--

INSERT INTO `DiemRAM` (`NameRAM`, `Diem`, `Diem/100`, `id_ram`) VALUES
('8 GB DDR4 2400 MHz', 370, 0, 1),
('8 GB LPDDR3 1866 MHz', 310, 0, 2),
('16 GB DDR4 2666 MHz', 580, 0, 3),
('4 GB DDR4 2400 MHz', 270, 0, 4),
('4 GB DDR4  2400 MHz ', 270, 0, 6),
('4 GB DDR4 2400MHz', 270, 0, 7),
('4 GB DDR4 2133 MHz', 260, 0, 8),
('4GB DDR4 2400MHz', 270, 0, 11),
('3 GB DDR3L 1600 MHz', 165, 0, 19),
('3GB LPDDR3 1600 MHz', 175, 0, 21),
('4GB DDR4 2133 MHz', 260, 0, 22),
('4GB + 16GB Optane DDR4 2400 MHz', 300, 0, 27),
('2 GB DDR3 1600 MHz', 110, 0, 31),
('4GB DDR4 2400 MHz', 270, 0, 38),
('4 GB 	DDR3L 1600 Mhz', 190, 0, 42),
('8 GB LPDDR3 2133MHz', 320, 0, 48),
('8 GB LPDDR3 1600 Mhz', 300, 0, 49),
('8 GB DDR4 2666 MHz', 380, 0, 50),
('8 GB LPDDR3 2133 MHz', 320, 0, 52),
('8 GB LPDDR3 2400 MHz', 330, 0, 57),
('16GB DDR4 2400MHz', 570, 0, 62),
(' 4 GB DDR4 2133 MHz', 260, 0, 63),
('8GB DDR4 2400 MHz', 370, 0, 64),
('16 GB (2 x 8 GB) DDR4 2666 MHz', 580, 0, 73),
('4 GB DDR3L 1600 MHz', 190, 0, 74),
('4 GB DDR4 2666 MHz', 280, 0, 78),
('6 GB DDR3L 1600 MHz', 240, 0, 92),
('8GB + 16GB Optane DDR4 2666 MHz', 410, 0, 113),
('8GB LPDDR3 2133MHz', 320, 0, 116),
('8 GB DDR3L 2133 MHz', 310, 0, 136),
('3 GB LPDDR3 1600 MHz', 175, 0, 149),
('8 GB DDR4 2133 MHz', 360, 0, 151),
('4 GB  DDR4 2400 MHz', 270, 0, 153);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `diemVGA`
--

CREATE TABLE `diemVGA` (
  `Ten_vga` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `id_vga` int(11) NOT NULL,
  `diem_vga` float NOT NULL,
  `diem/100` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `diemVGA`
--

INSERT INTO `diemVGA` (`Ten_vga`, `id_vga`, `diem_vga`, `diem/100`) VALUES
('15DD', 1, 1580, 0),
('7900 MOD - Radeon HD 6520G', 2, 610, 0),
('ASUS EAH4870x2', 3, 496, 0),
('Barco MXRT 5400', 4, 1161, 0),
('Barco MXRT 5450', 5, 992, 0),
('Barco MXRT 7500', 6, 4319, 0),
('DameWare Development Mirror Driver 64-bit', 7, 1653, 0),
('Device', 8, 3545, 0),
('Embedded Radeon E9173', 9, 1996, 0),
('FireGL V5600', 10, 341, 0),
('FireGL V7600', 11, 615, 0),
('FireGL V7700', 12, 660, 0),
('FireGL V8650', 13, 550, 0),
('FirePro 3D V3750', 14, 343, 0),
('FirePro 3D V3800', 15, 473, 0),
('FirePro 3D V4800', 16, 1164, 0),
('FirePro 3D V5700', 17, 546, 0),
('FirePro 3D V5800', 18, 1476, 0),
('FirePro 3D V7750', 19, 540, 0),
('FirePro 3D V7800', 20, 1809, 0),
('FirePro 3D V8700', 21, 1206, 0),
('FirePro 3D V8750', 22, 1271, 0),
('FirePro 3D V8800', 23, 2437, 0),
('FirePro 3D V9800', 24, 2811, 0),
('FirePro M2000', 25, 616, 0),
('FirePro M4000', 26, 1612, 0),
('FirePro M4000 Mobility Pro', 27, 1702, 0),
('FirePro M40003', 28, 1364, 0),
('Firepro M4100', 29, 1059, 0),
('FirePro M4150', 30, 1113, 0),
('FirePro M4170', 31, 1086, 0),
('FirePro M5100', 32, 2102, 0),
('FirePro M5950', 33, 1314, 0),
('FirePro M6000 Mobility Pro', 34, 1711, 0),
('FirePro M6100', 35, 2967, 0),
('FirePro M7740', 36, 665, 0),
('FirePro S7000', 37, 4166, 0),
('FirePro S9000', 38, 5022, 0),
('FirePro V3900', 39, 871, 0),
('FirePro V4900', 40, 1300, 0),
('FirePro V5700', 41, 464, 0),
('FirePro V5900', 42, 1526, 0),
('FirePro V7000 Adapter', 43, 3161, 0),
('FirePro V7900', 44, 2717, 0),
('FirePro V9800 Adapter', 45, 2761, 0),
('FirePro W2100', 46, 902, 0),
('FirePro W4100', 47, 1594, 0),
('FirePro W4100 Adapter', 48, 1663, 0),
('FirePro W4170M', 49, 1371, 0),
('Firepro W4190M', 50, 1280, 0),
('FirePro W4300', 51, 2921, 0),
('FirePro W5000', 52, 3084, 0),
('FirePro W5100', 53, 3010, 0),
('FirePro W5130M', 54, 1628, 0),
('Firepro W5170M', 55, 2191, 0),
('FirePro W600', 56, 1734, 0),
('FirePro W7000', 57, 4329, 0),
('FirePro W7000 Adapter', 58, 4084, 0),
('FirePro W7100', 59, 5424, 0),
('FirePro W7100 Adapter', 60, 5661, 0),
('FirePro W7170M', 61, 4643, 0),
('FirePro W8000', 62, 4618, 0),
('FirePro W8000 Adapter', 63, 4751, 0),
('FirePro W8100', 64, 6066, 0),
('FirePro W9000', 65, 5304, 0),
('FirePro W9100', 66, 7189, 0),
('FireStream 9250', 67, 1164, 0),
('FireStream 9270', 68, 1341, 0),
('GeForce 410M', 69, 352, 0),
('GeForce 510', 70, 310, 0),
('GeForce 605', 71, 321, 0),
('GeForce 610M', 72, 404, 0),
('GeForce 615', 73, 548, 0),
('GeForce 705M', 74, 449, 0),
('GeForce 710A', 75, 532, 0),
('GeForce 710M', 76, 570, 0),
('GeForce 730A', 77, 804, 0),
('GeForce 7900 GTX', 78, 306, 0),
('GeForce 800A', 79, 428, 0),
('GeForce 800M', 80, 559, 0),
('GeForce 810A', 81, 638, 0),
('GeForce 810M', 82, 483, 0),
('GeForce 820A', 83, 700, 0),
('GeForce 820M', 84, 618, 0),
('GeForce 825M', 85, 759, 0),
('GeForce 830A', 86, 1004, 0),
('GeForce 830M', 87, 895, 0),
('GeForce 840A', 88, 869, 0),
('GeForce 840M', 89, 918, 0),
('GeForce 845M', 90, 1128, 0),
('GeForce 8800 GS', 91, 545, 0),
('GeForce 8800 GT', 92, 748, 0),
('GeForce 8800 GTS', 93, 605, 0),
('GeForce 8800 GTS 512', 94, 833, 0),
('GeForce 8800 GTX', 95, 763, 0),
('GeForce 8800 Ultra', 96, 769, 0),
('GeForce 8800M GTS', 97, 474, 0),
('GeForce 8800M GTX', 98, 542, 0),
('GeForce 910M', 99, 475, 0),
('GeForce 920A', 100, 919, 0),
('GeForce 920M', 101, 734, 0),
('GeForce 920MX', 102, 1075, 0),
('GeForce 930A', 103, 1212, 0),
('GeForce 930M', 104, 948, 0),
('GeForce 930MX', 105, 1217, 0),
('GeForce 940A', 106, 1031, 0),
('GeForce 940M', 107, 992, 0),
('GeForce 940MX', 108, 1354, 0),
('GeForce 945M', 109, 1462, 0),
('GeForce 9600 GS', 110, 445, 0),
('GeForce 9600 GSO', 111, 516, 0),
('GeForce 9600 GSO 512', 112, 503, 0),
('GeForce 9600 GT', 113, 729, 0),
('GeForce 9700M GT', 114, 317, 0),
('GeForce 9700M GTS', 115, 478, 0),
('GeForce 9800 GT', 116, 707, 0),
('GeForce 9800 GTX', 117, 769, 0),
('GeForce 9800 GTX+', 118, 897, 0),
('GeForce 9800 GTX/9800 GTX+', 119, 879, 0),
('GeForce 9800 GX2', 120, 797, 0),
('GeForce 9800 S', 121, 635, 0),
('GeForce 9800M GS', 122, 547, 0),
('GeForce 9800M GT', 123, 475, 0),
('GeForce 9800M GTS', 124, 645, 0),
('GeForce 9800M GTX', 125, 517, 0),
('GeForce GPU', 126, 1166, 0),
('GeForce GT 1030', 127, 2213, 0),
('GeForce GT 130', 128, 457, 0),
('GeForce GT 140', 129, 747, 0),
('GeForce GT 220', 130, 349, 0),
('GeForce GT 230', 131, 471, 0),
('GeForce GT 230M', 132, 332, 0),
('GeForce GT 240', 133, 649, 0),
('GeForce GT 240M', 134, 350, 0),
('GeForce GT 320', 135, 552, 0),
('GeForce GT 330', 136, 555, 0),
('GeForce GT 330M', 137, 361, 0),
('GeForce GT 335M', 138, 502, 0),
('GeForce GT 340', 139, 775, 0),
('GeForce GT 415M', 140, 319, 0),
('GeForce GT 420', 141, 473, 0),
('GeForce GT 420M', 142, 543, 0),
('GeForce GT 425M', 143, 626, 0),
('GeForce GT 430', 144, 661, 0),
('GeForce GT 435M', 145, 666, 0),
('GeForce GT 440', 146, 842, 0),
('GeForce GT 445M', 147, 1054, 0),
('GeForce GT 520', 148, 365, 0),
('GeForce GT 520M', 149, 381, 0),
('GeForce GT 520MX', 150, 405, 0),
('GeForce GT 525M', 151, 600, 0),
('GeForce GT 530', 152, 744, 0),
('GeForce GT 540M', 153, 649, 0),
('GeForce GT 545', 154, 1293, 0),
('GeForce GT 550M', 155, 719, 0),
('GeForce GT 555M', 156, 894, 0),
('GeForce GT 610', 157, 350, 0),
('GeForce GT 620', 158, 430, 0),
('GeForce GT 620M', 159, 571, 0),
('GeForce GT 625', 160, 437, 0),
('GeForce GT 625M', 161, 500, 0),
('GeForce GT 630', 162, 746, 0),
('GeForce GT 630M', 163, 689, 0),
('GeForce GT 635', 164, 915, 0),
('GeForce GT 635M', 165, 697, 0),
('GeForce GT 640', 166, 1280, 0),
('GeForce GT 640M', 167, 962, 0),
('GeForce GT 640M LE', 168, 785, 0),
('GeForce GT 645', 169, 2250, 0),
('GeForce GT 645M', 170, 893, 0),
('GeForce GT 650M', 171, 1232, 0),
('GeForce GT 705', 172, 421, 0),
('GeForce GT 710', 173, 680, 0),
('GeForce GT 710M', 174, 551, 0),
('GeForce GT 720', 175, 716, 0),
('GeForce GT 720A', 176, 661, 0),
('GeForce GT 720M', 177, 561, 0),
('GeForce GT 730', 178, 921, 0),
('GeForce GT 730A', 179, 742, 0),
('GeForce GT 730M', 180, 836, 0),
('GeForce GT 735M', 181, 669, 0),
('GeForce GT 740', 182, 1570, 0),
('GeForce GT 740M', 183, 785, 0),
('GeForce GT 745A', 184, 1179, 0),
('GeForce GT 745M', 185, 975, 0),
('GeForce GT 750M', 186, 1295, 0),
('GeForce GT 755M', 187, 1596, 0),
('GeForce GT 820M', 188, 703, 0),
('GeForce GT625M', 189, 528, 0),
('GeForce GTS 160M', 190, 678, 0),
('GeForce GTS 240', 191, 818, 0),
('GeForce GTS 250', 192, 876, 0),
('GeForce GTS 250M', 193, 567, 0),
('GeForce GTS 350M', 194, 556, 0),
('GeForce GTS 360M', 195, 757, 0),
('GeForce GTS 450', 196, 1557, 0),
('GeForce GTX 1050', 197, 4685, 0),
('GeForce GTX 1050 Ti', 198, 6010, 0),
('GeForce GTX 1050 Ti with Max-Q Design', 199, 5735, 0),
('GeForce GTX 1050 with Max-Q Design', 200, 3926, 0),
('GeForce GTX 1060', 201, 9095, 0),
('GeForce GTX 1060 3GB', 202, 8968, 0),
('GeForce GTX 1060 5GB', 203, 5856, 0),
('GeForce GTX 1060 with Max-Q Design', 204, 7828, 0),
('GeForce GTX 1070', 205, 11341, 0),
('GeForce GTX 1070 Ti', 206, 12351, 0),
('GeForce GTX 1070 with Max-Q Design', 207, 9508, 0),
('GeForce GTX 1080', 208, 12436, 0),
('GeForce GTX 1080 Ti', 209, 14255, 0),
('GeForce GTX 1080 with Max-Q Design', 210, 10297, 0),
('GeForce GTX 1660', 211, 10874, 0),
('GeForce GTX 1660 Ti', 212, 11818, 0),
('GeForce GTX 260', 213, 1135, 0),
('GeForce GTX 260M', 214, 589, 0),
('GeForce GTX 275', 215, 1244, 0),
('GeForce GTX 280', 216, 1206, 0),
('GeForce GTX 280M', 217, 620, 0),
('GeForce GTX 285', 218, 1272, 0),
('GeForce GTX 285M', 219, 734, 0),
('GeForce GTX 295', 220, 1053, 0),
('GeForce GTX 460', 221, 2653, 0),
('GeForce GTX 460 SE', 222, 2257, 0),
('GeForce GTX 460 v2', 223, 2489, 0),
('GeForce GTX 460M', 224, 1393, 0),
('GeForce GTX 465', 225, 2947, 0),
('GeForce GTX 470', 226, 3601, 0),
('GeForce GTX 470M', 227, 1949, 0),
('GeForce GTX 480', 228, 4362, 0),
('GeForce GTX 480M', 229, 2039, 0),
('GeForce GTX 485M', 230, 2400, 0),
('GeForce GTX 550 Ti', 231, 1923, 0),
('GeForce GTX 555', 232, 2159, 0),
('GeForce GTX 560', 233, 3119, 0),
('GeForce GTX 560 SE', 234, 2194, 0),
('GeForce GTX 560 Ti', 235, 3529, 0),
('GeForce GTX 560M', 236, 1545, 0),
('GeForce GTX 570', 237, 4416, 0),
('GeForce GTX 570M', 238, 2024, 0),
('GeForce GTX 580', 239, 5018, 0),
('GeForce GTX 580M', 240, 2279, 0),
('GeForce GTX 590', 241, 4216, 0),
('GeForce GTX 645', 242, 1930, 0),
('GeForce GTX 650', 243, 1835, 0),
('GeForce GTX 650 Ti', 244, 2659, 0),
('GeForce GTX 650 Ti BOOST', 245, 3536, 0),
('GeForce GTX 660', 246, 4129, 0),
('GeForce GTX 660 Ti', 247, 4662, 0),
('GeForce GTX 660M', 248, 1440, 0),
('GeForce GTX 670', 249, 5366, 0),
('GeForce GTX 670M', 250, 1942, 0),
('GeForce GTX 670MX', 251, 2076, 0),
('GeForce GTX 675M', 252, 2147, 0),
('GeForce GTX 675MX', 253, 2447, 0),
('GeForce GTX 680', 254, 5670, 0),
('GeForce GTX 680M', 255, 3345, 0),
('GeForce GTX 680MX', 256, 4274, 0),
('GeForce GTX 690', 257, 5390, 0),
('GeForce GTX 745', 258, 2185, 0),
('GeForce GTX 750', 259, 3319, 0),
('GeForce GTX 750 Ti', 260, 3752, 0),
('GeForce GTX 760', 261, 4938, 0),
('GeForce GTX 760 Ti', 262, 5118, 0),
('GeForce GTX 760A', 263, 1281, 0),
('GeForce GTX 760M', 264, 1434, 0),
('GeForce GTX 765M', 265, 1888, 0),
('GeForce GTX 770', 266, 6069, 0),
('GeForce GTX 770M', 267, 2653, 0),
('GeForce GTX 775M', 268, 4166, 0),
('GeForce GTX 780', 269, 7959, 0),
('GeForce GTX 780 Ti', 270, 8888, 0),
('GeForce GTX 780M', 271, 4018, 0),
('GeForce GTX 850A', 272, 802, 0),
('GeForce GTX 850M', 273, 1616, 0),
('GeForce GTX 860M', 274, 1929, 0),
('GeForce GTX 870M', 275, 2425, 0),
('GeForce GTX 880M', 276, 3705, 0),
('GeForce GTX 950', 277, 5228, 0),
('GeForce GTX 950A', 278, 1683, 0),
('GeForce GTX 950M', 279, 1890, 0),
('GeForce GTX 960', 280, 5817, 0),
('GeForce GTX 960A', 281, 2358, 0),
('GeForce GTX 960M', 282, 2323, 0),
('GeForce GTX 965M', 283, 3221, 0),
('GeForce GTX 970', 284, 8625, 0),
('GeForce GTX 970M', 285, 4188, 0),
('GeForce GTX 980', 286, 9641, 0),
('GeForce GTX 980 Ti', 287, 11384, 0),
('GeForce GTX 980M', 288, 5932, 0),
('GeForce GTX Titan', 289, 7941, 0),
('GeForce GTX TITAN Black', 290, 8622, 0),
('GeForce GTX TITAN X', 291, 10699, 0),
('GeForce GTX TITAN Z', 292, 7690, 0),
('GeForce MX110', 293, 1582, 0),
('GeForce MX130', 294, 1929, 0),
('GeForce MX150', 295, 2172, 0),
('GeForce RTX 2060', 296, 13161, 0),
('GeForce RTX 2070', 297, 14429, 0),
('GeForce RTX 2070 with Max-Q Design', 298, 11877, 0),
('GeForce RTX 2080', 299, 15740, 0),
('GeForce RTX 2080 Ti', 300, 17025, 0),
('GeForce RTX 2080 with Max-Q Design', 301, 13228, 0),
('GF117', 302, 554, 0),
('GRID K1', 303, 880, 0),
('GRID K140Q', 304, 727, 0),
('GRID K160Q', 305, 701, 0),
('GRID K180Q', 306, 778, 0),
('GRID K2', 307, 3772, 0),
('GRID K220Q', 308, 912, 0),
('GRID K240Q', 309, 2143, 0),
('GRID K260Q', 310, 2940, 0),
('GRID K280Q', 311, 2322, 0),
('GRID K520', 312, 4384, 0),
('GRID M10-1B', 313, 2024, 0),
('GRID M6-1Q', 314, 2069, 0),
('GRID M60-1Q', 315, 4680, 0),
('GRID M60-2Q', 316, 5904, 0),
('GRID M60-4Q', 317, 3188, 0),
('GRID M60-8Q', 318, 3883, 0),
('GRID P40-2Q', 319, 3962, 0),
('GRID P6-4Q', 320, 4429, 0),
('IncrediblE HD 4000', 321, 517, 0),
('Intel 4th Generation Haswell HD', 322, 419, 0),
('Intel Coffee Lake UHD', 323, 1158, 0),
('Intel HD 3000', 324, 314, 0),
('Intel HD 4000', 325, 456, 0),
('Intel HD 4400', 326, 568, 0),
('Intel HD 4600', 327, 712, 0),
('Intel HD 5000', 328, 600, 0),
('Intel HD 510', 329, 621, 0),
('Intel HD 515', 330, 646, 0),
('Intel HD 520', 331, 836, 0),
('Intel HD 5200', 332, 830, 0),
('Intel HD 530', 333, 998, 0),
('Intel HD 5300', 334, 401, 0),
('Intel HD 5500', 335, 590, 0),
('Intel HD 5600', 336, 663, 0),
('Intel HD 6000', 337, 829, 0),
('Intel HD 610', 338, 717, 0),
('Intel HD 615', 339, 735, 0),
('Intel HD 630', 340, 1121, 0),
('Intel HD Family', 341, 437, 0),
('Intel HD Graphics 620', 342, 928, 0),
('Intel HD P3000', 343, 349, 0),
('Intel HD P4000', 344, 516, 0),
('Intel HD P4600', 345, 604, 0),
('Intel HD P4600/P4700', 346, 670, 0),
('Intel HD P530', 347, 1064, 0),
('Intel HD P630', 348, 1318, 0),
('Intel Iris 5100', 349, 749, 0),
('Intel Iris 540', 350, 1344, 0),
('Intel Iris 550', 351, 1606, 0),
('Intel Iris 6100', 352, 978, 0),
('Intel Iris Plus 640', 353, 1414, 0),
('Intel Iris Plus 650', 354, 1554, 0),
('Intel Iris Plus 655', 355, 1960, 0),
('Intel Iris Pro 5200', 356, 1173, 0),
('Intel Iris Pro 580', 357, 1871, 0),
('Intel Iris Pro Graphics 6200', 358, 1543, 0),
('Intel Iris Pro P580', 359, 2118, 0),
('Intel Poison Ivy', 360, 738, 0),
('Intel Skylake HD DT GT2', 361, 576, 0),
('Intel UHD', 362, 1321, 0),
('Intel UHD 600', 363, 365, 0),
('Intel UHD 605', 364, 401, 0),
('Intel UHD 610', 365, 788, 0),
('Intel UHD 615', 366, 749, 0),
('Intel UHD 630', 367, 1200, 0),
('Intel UHD Graphics 620', 368, 1043, 0),
('Intel UHD P630', 369, 1181, 0),
('Matrox C420 LP PCIe x16', 370, 635, 0),
('Matrox C680 PCIe x16', 371, 1977, 0),
('Matrox C900 PCIe x16', 372, 1812, 0),
('Mobile Intel HD', 373, 410, 0),
('Mobility Radeon HD 3850', 374, 365, 0),
('Mobility Radeon HD 3870', 375, 547, 0),
('Mobility Radeon HD 3870 X2', 376, 564, 0),
('Mobility Radeon HD 4650', 377, 401, 0),
('Mobility Radeon HD 4670', 378, 463, 0),
('Mobility Radeon HD 4830', 379, 511, 0),
('Mobility Radeon HD 4850', 380, 866, 0),
('Mobility Radeon HD 4870', 381, 719, 0),
('Mobility Radeon HD 5000', 382, 773, 0),
('Mobility Radeon HD 5000 Serisi', 383, 478, 0),
('Mobility Radeon HD 5570', 384, 715, 0),
('Mobility Radeon HD 560v', 385, 318, 0),
('Mobility Radeon HD 5650', 386, 553, 0),
('Mobility Radeon HD 565v', 387, 353, 0),
('Mobility Radeon HD 5730', 388, 677, 0),
('Mobility Radeon HD 5850', 389, 763, 0),
('Mobility Radeon HD 5870', 390, 1246, 0),
('MxGPU', 391, 1826, 0),
('NVIDIA TITAN X', 392, 13670, 0),
('NVIDIA TITAN Xp', 393, 14300, 0),
('NVS 315', 394, 347, 0),
('NVS 4200M', 395, 365, 0),
('NVS 510', 396, 764, 0),
('NVS 5100M', 397, 356, 0),
('NVS 5200M', 398, 663, 0),
('NVS 5400M', 399, 785, 0),
('NVS 810', 400, 975, 0),
('PHDGD Ivy 4', 401, 394, 0),
('Quadro 1000M', 402, 752, 0),
('Quadro 1100M', 403, 755, 0),
('Quadro 2000', 404, 1316, 0),
('Quadro 2000 D', 405, 1182, 0),
('Quadro 2000D', 406, 1282, 0),
('Quadro 2000M', 407, 1036, 0),
('Quadro 3000M', 408, 1462, 0),
('Quadro 4000', 409, 2049, 0),
('Quadro 4000M', 410, 1801, 0),
('Quadro 410', 411, 402, 0),
('Quadro 5000', 412, 2855, 0),
('Quadro 5000M', 413, 2059, 0),
('Quadro 500M', 414, 672, 0),
('Quadro 5010M', 415, 1810, 0),
('Quadro 600', 416, 698, 0),
('Quadro 6000', 417, 3520, 0),
('Quadro CX', 418, 947, 0),
('Quadro FX 1800', 419, 580, 0),
('Quadro FX 1800M', 420, 478, 0),
('Quadro FX 2700M', 421, 529, 0),
('Quadro FX 2800M', 422, 659, 0),
('Quadro FX 3500M', 423, 306, 0),
('Quadro FX 3600M', 424, 467, 0),
('Quadro FX 3700', 425, 628, 0),
('Quadro FX 3700M', 426, 633, 0),
('Quadro FX 3800', 427, 839, 0),
('Quadro FX 3800M', 428, 803, 0),
('Quadro FX 4600', 429, 600, 0),
('Quadro FX 4700 X2', 430, 665, 0),
('Quadro FX 4800', 431, 1003, 0),
('Quadro FX 5600', 432, 681, 0),
('Quadro FX 5800', 433, 1108, 0),
('Quadro FX 880M', 434, 354, 0),
('Quadro GP100', 435, 12843, 0),
('Quadro GV100', 436, 12699, 0),
('Quadro K1000M', 437, 793, 0);

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
(1, 'HP ENVY X360 13-AG0046AU/R7-2700U/8GB/256G SSD/WIN10', 26890000, 'AMD Ryzen™ 7 2700U 7200U', 'Radeon™ RX Vega 10 Graphics 2 GB', '8 GB DDR4 2400 MHz', ' ', '13.3 inchs FHD Touch', 'http://fptshop.com.vn/may-tinh-xach-tay/hp-envy-x360-13-ag0046au-r7-2700u-8gb', 'img/laptop/1.png'),
(2, 'Acer Swift 5 SF514-52T-87TF/Core i7-8550U/8Gb/256Gb/Win 10 SL', 28790000, 'Intel Core i7 8550U', 'Intel UHD Graphics 620 Shared ', '8 GB LPDDR3 1866 MHz', ' ', '14.0 inchs FHD Touch', 'http://fptshop.com.vn/may-tinh-xach-tay/acer-swift-5-sf514-52t-87tf-core-i7-8550u', 'img/laptop/2.png'),
(3, 'Acer Predator Helios 300 PH315-51-759Y', 40999000, 'intel core i7 8750H', 'NVIDIA GeForce GTX 1060 (GDDR5 SDRAM, Bus Width: 128 Bit) - Intel UHD Graphics 630 6 GB', '16 GB DDR4 2666 MHz', ' ', '15.6 inches Acer ComfyView LED-backlit TFT IPS LCD; Anti-glare', 'http://fptshop.com.vn/may-tinh-xach-tay/acer-predator-helios-300-ph315-51-759y', 'img/laptop/3.png'),
(4, 'Acer A315-53G-5790', 12990000, 'Intel Core i5 8250U', 'NVIDIA® GeForce® MX130 2 GB', '4 GB DDR4 2400 MHz', ' ', '15.6 inchs HD LED', 'http://fptshop.com.vn/may-tinh-xach-tay/acer-a315-53g-5790', 'img/laptop/4.png'),
(5, 'HP Pavilion 15-cs0016TU', 12990000, 'Intel Core i3 8130U', 'Intel UHD Graphics 620 Shared ', '4 GB DDR4 2400 MHz', ' ', '15.6 inchs FHD WLED-backlit', 'http://fptshop.com.vn/may-tinh-xach-tay/hp-pavilion-15-cs0016tu', 'img/laptop/5.png'),
(6, 'HP Pavilion X360 14-ba080TU', 12690000, 'intel Core i3 7100U', 'Intel HD Graphics 620 Shared', '4 GB DDR4  2400 MHz ', ' ', '14.0 inchs  HD SVA WLED-backlit multitouch', 'http://fptshop.com.vn/may-tinh-xach-tay/hp-pavilion-x360-14-ba080tu', 'img/laptop/6.png'),
(7, 'Dell V3468/Core i5-7200U', 13190000, '	 Intel Core i5 7200U', 'Intel(R) HD Graphics Share', '4 GB DDR4 2400MHz', ' ', '14.0 inch HD LED', 'http://fptshop.com.vn/may-tinh-xach-tay/dell-v3468core-i5-7200u', 'img/laptop/7.png'),
(8, 'Asus Vivobook Flip TP410UA-EC227T', 12990000, 'Intel Core i3 7100U', 'Intel® HD graphics 620 Shared', '4 GB DDR4 2133 MHz', ' ', '14.0 inchs Ultra Slim 250nits', 'http://fptshop.com.vn/may-tinh-xach-tay/Asus-Vivobook-Flip-TP410UA-EC227T', 'img/laptop/8.png'),
(9, 'HP Pavilion x360 14-cd0082TU/i3-8130U', 13490000, 'Intel® Core™ i3 8130U', 'Intel® UHD Graphics 620 Shared', '4 GB DDR4 2400 MHz', ' ', '14.0 inchs HD SVA micro-edge WLED-backlit', 'http://fptshop.com.vn/may-tinh-xach-tay/hp-pavilion-x360-14-cd0082tu-i3-8130u', 'img/laptop/9.png'),
(10, 'Lenovo Ideapad 330S-14IKBR', 12990000, 'Intel Kaby Lake R Core i5-8250U', 'Intel® UHD Graphics 620 Shared', '4 GB DDR4 2400 MHz', ' ', '14.0 inchs FullHD IPS', 'http://fptshop.com.vn/may-tinh-xach-tay/lenovo-ideapad-330s-14ikbr', 'img/laptop/10.png'),
(11, 'Dell Vostro V5568/i5-7200U (2.5GHz)', 14990000, 'Intel(R) Core i5 7200U', 'Intel(R) HD 620 Graphics Share', '4GB DDR4 2400MHz', ' ', '15.6-inch HD   Anti-Glare LED-Backlit Display', 'http://fptshop.com.vn/may-tinh-xach-tay/dell-vostro-v5568i5-7200u-25ghz', 'img/laptop/11.png'),
(12, 'HP Pavilion X360 11-ad104TU', 13490000, 'Intel Core i3 8130U', 'Intel® HD Graphics 620 Share', '4 GB DDR4 2133 MHz', ' ', '11.6 inchs HD Touch', 'http://fptshop.com.vn/may-tinh-xach-tay/hp-pavilion-x360-11-ad104tu', 'img/laptop/12.png'),
(13, 'HP 15-da0033TX/Core i5-8250U', 14490000, 'Intel Core i5 8250U ', 'NVIDIA® GeForce® MX110 2 GB', '4 GB DDR4 2400 MHz', ' ', '15.6 inchs  SVA BrightView WLED-backlit', 'http://fptshop.com.vn/may-tinh-xach-tay/hp-15-da0033tx-core-i5-8250u', 'img/laptop/13.png'),
(14, 'HP Pavilion 14-ce0024TU', 14990000, 'Intel Core i5 8250U ', 'Intel® UHD Graphics 620 Shared', '4 GB DDR4 2400 MHz', ' ', '14.0 inchs IPS BrightView micro-edge WLED-backlit', 'http://fptshop.com.vn/may-tinh-xach-tay/HP-Pavilion-14-ce0024TU', 'img/laptop/14.png'),
(15, 'Lenovo ThinkPad E570', 15990000, '	 Intel Core i5 7200U', 'NVIDIA Geforce 940M (2G) 2 GB', '4 GB DDR4 2133 MHz', ' ', '	15.6 inch  Anti-Glare LED-Backlit Display', 'http://fptshop.com.vn/may-tinh-xach-tay/lenovo-thinkpad-e570', 'img/laptop/15.png'),
(16, 'Dell Vostro 5471', 17990000, 'Intel Core i5 8250U ', 'Intel(R) HD Graphics 620 Shared', '4 GB DDR4 2400 MHz', ' ', '14.0 inchs Anti-glare LED-backlit display', 'http://fptshop.com.vn/may-tinh-xach-tay/Dell-Vostro-5471', 'img/laptop/16.png'),
(17, 'HP 15-da0107TU/Celeron N4000', 6190000, 'Intel Celeron N4000', 'Intel® HD Graphics 600 Shared', '4 GB DDR4 2400 MHz', ' ', '15.6 inchs HD SVA BrightView WLED-backlit', 'http://fptshop.com.vn/may-tinh-xach-tay/hp-15-da0107tu-celeron-n4000', 'img/laptop/17.png'),
(18, 'Asus Vivobook X507MA-BR211T/Pentium N5000', 7690000, 'Intel Pentium N5000', 'Intel UHD Graphics 605 Shared', '4 GB DDR4 2400 MHz', ' ', '15.6 inchs Anti-Glare LED Backlit', 'http://fptshop.com.vn/may-tinh-xach-tay/asus-vivobook-x507ma-br211t-pentium-n5000', 'img/laptop/18.png'),
(19, 'Haier S1 HR-13M/Celeron N3350', 4699000, 'Intel Celeron N3350', 'Intel® HD Graphics 500 Shared', '3 GB DDR3L 1600 MHz', ' ', '13.3 inchs IPS LCD screen', 'http://fptshop.com.vn/may-tinh-xach-tay/haier-hr-13m-celeron-n3350', 'img/laptop/19.png'),
(20, 'Acer E5-476-33BQ', 8690000, 'Intel Core i3 7020U', 'Intel® HD Graphics 620 Shared', '4 GB DDR4 2400 MHz', ' ', '14.0 inchs HD LED', 'http://fptshop.com.vn/may-tinh-xach-tay/acer-e5-476-33bq', 'img/laptop/20.png'),
(21, 'Masstel L133 Celeron N3350 128GB', 5690000, 'Intel Celeron N3350 Celeron N3350', 'Intel (R) HD Graphics 500 Share', '3GB LPDDR3 1600 MHz', ' ', '13.3 inch IPS/Full HD', 'http://fptshop.com.vn/may-tinh-xach-tay/masstel-l133-celeron-n3350-128gb', 'img/laptop/21.png'),
(22, 'Lenovo Ideapad 320-14ISK 80XG009TVN', 8490000, 'Intel Core i3 6006U', ' Intel® HD Graphics 520 Shared', '4GB DDR4 2133 MHz', ' ', '14.0 inchs HD', 'http://fptshop.com.vn/may-tinh-xach-tay/lenovo-ideapad-320-14isk-80xg009tvn', 'img/laptop/22.png'),
(23, 'HP 15-da0051TU/Core i3-7020U', 9990000, 'intel Core i3 7020U', 'Intel® UHD Graphics Shared', '4 GB DDR4 2133 MHz', ' ', '15.6 inches   SVA BrightView WLED-backlit', 'http://fptshop.com.vn/may-tinh-xach-tay/hp-15-da0051tu-core-i3-7020u', 'img/laptop/23.png'),
(24, 'Dell Inspiron N3567S', 10590000, 'Intel Core i3 7020U', 'Intel HD Graphics 620 Shared', '4 GB DDR4 2133 MHz', ' ', '15.6 inchs HD Anti-Glare LED-Backlit Display', 'http://fptshop.com.vn/may-tinh-xach-tay/dell-inspiron-n3576s', 'img/laptop/24.png'),
(25, 'HP 15-da0037TX/i3 7020U', 10990000, 'Intel Core i3 7020U', 'NVIDIA® GeForce® MX110 2 GB', '4 GB DDR4 2133 MHz', ' ', '15.6 inchs  HD BrightView WLED-backlit', 'http://fptshop.com.vn/may-tinh-xach-tay/hp-15-da0037tx-i3-7020U', 'img/laptop/25.png'),
(26, 'Asus VIVOBOOK X507UA-EJ234T/Core i3-7020U', 10590000, 'Intel Core i3 7020U', 'Intel® HD graphics 2 GB', '4 GB DDR4 2400 MHz', ' ', '15.6 inchs FHD', 'http://fptshop.com.vn/may-tinh-xach-tay/asus-vivobook-x507ua-ej234t-core-i3-7020u', 'img/laptop/26.png'),
(27, 'Asus Vivobook X407UA-BV488T/i3-7020U/4G+16GB Optane/1TB/WIN10', 10690000, 'Intel Core i3 7020U', 'Intel HD Graphics Shared ', '4GB + 16GB Optane DDR4 2400 MHz', ' ', '14.0 inchs Anti - Glare', 'http://fptshop.com.vn/may-tinh-xach-tay/asus-vivobook-x407ua-bv488t', 'img/laptop/27.png'),
(28, 'Dell Inspiron N3476/i5-8250U/4GB/1000GB/DVDRW/Intel HD 620', 12890000, 'Intel Core i5 8250U', 'Intel® UHD Graphics 620 Shared', '4 GB DDR4 2400 MHZ', ' ', '14.0 inches Anti-Glare LED-Backlit Display', 'http://fptshop.com.vn/may-tinh-xach-tay/dell-inspiron-n3476i5-8250u4gb1000gbdvdrwintel-hd-620', 'img/laptop/28.png'),
(29, 'Dell Vostro 3568/Core i3-7020U/VTI32072W', 11590000, 'Intel Core i3 7020U ', 'Intel® UHD Graphics 620 Shared', '4 GB DDR4 2400 MHz', ' ', '15.6 inches Anti-Glare LED-Backlit Display', 'http://fptshop.com.vn/may-tinh-xach-tay/dell-vostro-3568-core-i3-7020u-vti32072w', 'img/laptop/29.png'),
(30, 'HP Pavilion 14-ce1014TU/Core i3-8145U/4GB/500GB/WIN10', 12990000, 'Intel Core i3 8145U', 'Intel® HD Graphics 600 Shared ', '4 GB DDR4 2400 MHz', ' ', '14.0 inchs LED Backlit', 'http://fptshop.com.vn/may-tinh-xach-tay/hp-pavilion-14-ce1014tu-core-i3-8145u', 'img/laptop/30.png'),
(31, 'Asus Vivobook E406SA-BV001T', 5290000, 'Intel Celeron N3060', 'Intel HD Graphics 500 Shared', '2 GB DDR3 1600 MHz', ' ', '14.0 inchs Ultra Slim 200nits', 'http://fptshop.com.vn/may-tinh-xach-tay/Asus-Vivobook-E406SA-BV001T', 'img/laptop/31.png'),
(32, 'Dell Ins N3467/i5-7200U', 12990000, '	 Intel Core i5 7200U', 'Intel HD Graphics 620 Share', '4 GB DDR4 2133 MHz', ' ', '	14 inch Anti-Glare LED-Backlit Display', 'http://fptshop.com.vn/may-tinh-xach-tay/dell-ins-n3467i5-7200u', 'img/laptop/32.png'),
(33, 'Acer AS A315-51-325E', 8690000, 'Intel core i3 7020U', 'Intel® HD Graphics 620 Shared', '4 GB DDR4 2133 MHz', ' ', '15.6 inchs HD LED Backlight', 'http://fptshop.com.vn/may-tinh-xach-tay/acer-as-a315-51-325e', 'img/laptop/33.png'),
(34, 'Asus X541UA-GO1372T/Core i3 7100U', 9290000, 'Intel Core i3 7100U', 'Đồ họa HD Intel® 620  Shared', '4 GB DDR4 2400MHz', ' ', '15.6 inchs Ultra Slim 200nits/Glare/NTSC:45%', 'http://fptshop.com.vn/may-tinh-xach-tay/asus-x541ua-go1372t-core-i3-7100u', 'img/laptop/34.png'),
(35, 'Asus Vivobook X507UA-BR167T/Core I3-6006U', 9790000, 'Intel Core i3 6006', 'Intel® HD graphics 520 share', '4 GB DDR4 2133 MHz', ' ', '15.6 inch HD LED-Backlit,Anti-Glare', 'http://fptshop.com.vn/may-tinh-xach-tay/Asus-X507UA-BR167TCore-I3-6006U', 'img/laptop/35.png'),
(36, 'Masstel L133 Pro/Celeron N4100/4GB/64GB+128GB SSD', 6990000, 'Intel Celeron N4100', 'Intel (R) UHD Graphics 600 Shared ', '4 GB DDR4 2400 MHz', ' ', '13.3 inchs IPS FHD', 'http://fptshop.com.vn/may-tinh-xach-tay/masstel-l133-pro-celeron-n41004gb-64GB-128gb-ssd', 'img/laptop/36.png'),
(37, 'Lenovo Ideapad 320-14ISK/ Windows 10', 9690000, 'intel Core i3 6006U', 'Intel HD Graphics Share', '4 GB DDR4 2133 MHz', ' ', '14 inchs  Full HD', 'http://fptshop.com.vn/may-tinh-xach-tay/lenovo-ideapad-320-14isk-windows-10', 'img/laptop/37.png'),
(38, 'Dell Inspiron N3467/M20NR3', 10190000, 'intel core i3 7020U', 'Intel HD Graphics 620 Shared', '4GB DDR4 2400 MHz', ' ', '14.0 inchs Anti-glare LED-backlit', 'http://fptshop.com.vn/may-tinh-xach-tay/dell-inspiron-n3467-m20nr3', 'img/laptop/38.png'),
(39, 'HP 15-bs642TU/Core i3-6006U', 9490000, 'intel Core i3 6006U', 'Intel® HD Graphics 520 Shared', '4 GB DDR4 2133 MHz', ' ', '15.6 inchs HD SVA BrightView WLED-backlit ', 'http://fptshop.com.vn/may-tinh-xach-tay/HP-15-bs642TUCore-i3-6006U', 'img/laptop/39.png'),
(40, 'HP 15-bs666TX/Core i3 6006U', 10490000, 'intel Core i3 6006U', 'AMD Radeon™ 520 2 GB', '4 GB DDR4 2133 MHz', ' ', '15.6 inchs HD SVA BrightView WLED-backlit ', 'http://fptshop.com.vn/may-tinh-xach-tay/HP-15-bs666TXCore-i3-6006U', 'img/laptop/40.png'),
(41, 'Dell Vostro 3568', 10990000, 'Intel Core i3 6006U ', 'Intel HD Graphics 520 Shared', '4 GB DDR4 2400 MHz', ' ', '15.6 inchs Anti-Glare LED-Backlit Display', 'http://fptshop.com.vn/may-tinh-xach-tay/Dell-Vostro-3568', 'img/laptop/41.png'),
(42, 'Dell Ins N3567', 11190000, '	 Intel Core i3 6006U', 'AMD R5 430 DDR3 2 GB', '4 GB 	DDR3L 1600 Mhz', ' ', '	15.6 inch  HD LED', 'http://fptshop.com.vn/may-tinh-xach-tay/dell-n3567', 'img/laptop/42.png'),
(43, 'Asus Vivobook X507UF-BR204T/Core i3-8130U', 11990000, 'Intel Core i3 8130U', 'NVIDIA GeForce MX130 2 GB', '4 GB DDR4 2400 MHz', ' ', '15.6 inchs LED Backlit', 'http://fptshop.com.vn/may-tinh-xach-tay/asus-vivobook-x507uf-br204t-core-i3-8130u', 'img/laptop/43.png'),
(44, 'HP Pavilion 14-ce0027TU', 12490000, 'Intel® Core i3 8130U', 'Intel® HD Graphics 620 Share', '4 GB DDR4 2133 MHz', ' ', '14.0 inchs Viền màn hình mỏng, WLED, LED Backlit', 'http://fptshop.com.vn/may-tinh-xach-tay/hp-pavilion-14-ce0027tu', 'img/laptop/44.png'),
(45, 'Lenovo Yoga 520-14IKB i3-7130U', 11990000, 'Intel core i3 7130U', 'Intel HD Graphics 620 Shared', '4 GB DDR4 2400 MHz', ' ', '14 inchs FHD, Touch screen', 'http://fptshop.com.vn/may-tinh-xach-tay/Lenovo-Yoga-520-14IKB-i3-7130U', 'img/laptop/45.png'),
(46, 'Asus Vivobook A510UF-BR485T', 11990000, 'Intel Core i3 8130U', 'NVIDIA GeForce MX130 GDDR5 2GB', '4 GB DDR4 2400 MHz', ' ', '15.6 inchs Ultra Slim 200nits Anti-Glare/NTSC:45%/Wide View', 'http://fptshop.com.vn/may-tinh-xach-tay/Asus-Vivobook-A510UF-BR485T', 'img/laptop/46.png'),
(47, 'Lenovo Ideapad 330S-14IKB 81F400NMVN', 10990000, 'Intel Kaby Lake R Core i3-7020U', 'Intel® UHD Graphics 620 Shared', '4 GB DDR4 2133 MHz', ' ', '14.0 inchs FullHD IPS ', 'http://fptshop.com.vn/may-tinh-xach-tay/lenovo-Ideapad-330s-14ikb-81f400nmvn', 'img/laptop/47.png'),
(48, 'Macbook Pro 13 inch 128GB (2017)', 33990000, 'Intel Core i5 Dual - Core', 'Intel Iris Plus Graphics 640', '8 GB LPDDR3 2133MHz', ' ', '13.3 inch 	LED-backlit', 'http://fptshop.com.vn/may-tinh-xach-tay/macbook-pro-13-inch-128gb-2017', 'img/laptop/48.png'),
(49, 'Macbook Air 13 128GB MQD32SA/A (2017)', 22990000, '	 Intel Core i5 Dual - Core', 'Intel HD Graphics 6000', '8 GB LPDDR3 1600 Mhz', ' ', '13.3 inch 	LED-backlit', 'http://fptshop.com.vn/may-tinh-xach-tay/macbook-air-13-128gb-mqd32saa', 'img/laptop/49.png'),
(50, 'MSI GF63 8RC-203VN/I5-8300H', 21990000, 'Intel Core i5 8300H', 'NVIDIA GeForce GTX 1050 4 GB GDDR5', '8 GB DDR4 2666 MHz', ' ', '15.6 inchs IPS 45% Narrow Bezel ', 'http://fptshop.com.vn/may-tinh-xach-tay/msi-gf63-8rc-230vn-i5-8300h', 'img/laptop/50.png'),
(51, 'Asus Vivobook X507MA-BR208T/Celeron N4000', 6690000, 'Intel Celeron N4000', 'Intel® UHD Graphics 600  Shared', '4 GB DDR4 2400 MHz', ' ', '15.6 inchs Anti-Glare LED Backlit', 'http://fptshop.com.vn/may-tinh-xach-tay/asus-vivobook-x507ma-br208t-celeron-n4000', 'img/laptop/51.png'),
(52, 'HP Envy 13-ah0026TU', 21990000, 'Intel Core i5 8250U', 'Intel® UHD Graphics 620 Shared', '8 GB LPDDR3 2133 MHz', ' ', '13.3 inchs FHD IPS BrightView micro-edge WLED-backlit', 'http://fptshop.com.vn/may-tinh-xach-tay/HP-Envy-13-ah0026TU', 'img/laptop/52.png'),
(53, 'Dell N5370A', 19190000, 'Intel Core i5 8250U', 'Intel UHD Graphics 620 Shared system memory', '4 GB DDR4 2400 MHz', ' ', '13.3 inch FHD Anti-glare LED-Backlit Display', 'http://fptshop.com.vn/may-tinh-xach-tay/Dell-N5370A', 'img/laptop/53.png'),
(54, 'Lenovo Legion Y530-15ICH', 22990000, 'Intel Core i5 8300H ', 'NVIDIA® GEFORCE® GTX 1050 4 GB GDDR5', '8 GB DDR4 2666 MHz', ' ', '15.6 inchs FullHD IPS', 'http://fptshop.com.vn/may-tinh-xach-tay/lenovo-legion-y530-15ich', 'img/laptop/54.png'),
(55, 'Dell Inspiron N7588', 29790000, 'Intel Core i7 8750H', 'NVIDIA GeForce GTX 1050 Ti 4 GB', '8 GB DDR4 2400 MHz', ' ', '15.6 inchs IPS FHD', 'http://fptshop.com.vn/may-tinh-xach-tay/dell-inspiron-n7588', 'img/laptop/55.png'),
(56, 'MSI GF63 8RD-218VN/i7-8750H', 25490000, 'Intel Core i7 8750H', 'NVIDIA GeForce GTX 1050Ti 4 GB', '8 GB DDR4 2666 MHz', ' ', '15.6 inchs 60Hz IPS 45% Narrow Bezel ', 'http://fptshop.com.vn/may-tinh-xach-tay/msi-gf63-8rd-218vn-i7-8750h', 'img/laptop/56.png'),
(57, 'HP Envy 13-ah0027TU/Core i7-8550U', 26490000, 'Intel Core i7 8550U', 'Intel® UHD Graphics 620 Shared', '8 GB LPDDR3 2400 MHz', ' ', '13.3 inchs FHD IPS BrightView micro-edge WLED-backlit', 'http://fptshop.com.vn/may-tinh-xach-tay/HP-Envy-13-ah0027TUCore-i7-8550U', 'img/laptop/57.png'),
(58, 'Dell N5570A', 24690000, 'Intel Core i7 8550U', 'AMD Radeon 530 4GB GDDR5', '8 GB DDR4 2400 MHz', ' ', '15.6 inch FHD Anti Glare LED Backlit Display', 'http://fptshop.com.vn/may-tinh-xach-tay/Dell-N5570A', 'img/laptop/58.png'),
(59, 'Macbook Pro 13 inch 256GB (2017)', 38990000, 'Intel Core i5 Dual - Core', 'Intel Iris Plus Graphics 640', '8 GB LPDDR3 2133 MHz', ' ', '13.3 inch 	LED-backlit', 'http://fptshop.com.vn/may-tinh-xach-tay/macbook-pro-13-inch-256gb-2017', 'img/laptop/59.png'),
(60, 'Dell INS N5379', 22990000, 'Intel Core i5 8250U', 'intel UHD Graphics 620  Shared', '8 GB DDR4 2400 MHz', ' ', '13.3 inchs WLED touch screen IPS ', 'http://fptshop.com.vn/may-tinh-xach-tay/Dell-INS-N5379', 'img/laptop/60.png'),
(61, 'Dell XPS15/i7-8750H', 52990000, 'Intel  Core i7 8750H', 'NVIDIA GEFORCE GTX 1050 4GB GDDR5 4 GB', '16 GB DDR4 2666 MHz', ' ', '15.6 inchs InfinityEdge display', 'http://fptshop.com.vn/may-tinh-xach-tay/dell-xps15-i7-8750h', 'img/laptop/61.png'),
(62, 'Macbook Pro 15 Touch Bar 512 GB (2018)', 69990000, 'Intel Core i7 6-core', 'Radeon Pro 560X 4GB of GDDR5 ', '16GB DDR4 2400MHz', ' ', '15.4 inch Công nghệ True Tone, Công nghệ IPS, LED Backlit', 'http://fptshop.com.vn/may-tinh-xach-tay/macbook-pro-15-touch-bar-512gb-2018', 'img/laptop/62.png'),
(63, 'Xiaomi Mi NoteBook Air 13', 10690000, ' Intel Core i5-7200U', ' Intel HD Graphics', ' 4 GB DDR4 2133 MHz', ' ', ' 13.3 inch FHD IPS', 'http://fptshop.com.vn/may-tinh-xach-tay/xiaomi-mi-notebook-air-13', 'img/laptop/63.png'),
(64, 'Dell Vostro V5471/i7-8550U', 29990000, 'Intel  Core i7 8550U', 'AMD Radeon 530 4 GB GDDR5', '8GB DDR4 2400 MHz', ' ', '14.0 inchs Anti-Glare LED-Backlit Display', 'http://fptshop.com.vn/may-tinh-xach-tay/dell-vostro-v5471-i7-8550u', 'img/laptop/64.png'),
(65, 'Dell N7588A', 33990000, 'Intel Core i7 8750H', 'NVIDIA GeForce GTX 1050 Ti 4GB GDDR5 ', '8 GB DDR4 2666 MHz', ' ', '15.6 inchs IPS Anti-Glare LED-Backlit Display', 'http://fptshop.com.vn/may-tinh-xach-tay/dell-n7588a', 'img/laptop/65.png'),
(66, 'HP 15-bs153TU/Core i5-8250U', 26990000, 'Intel Core i5 8250U', 'Intel® UHD Graphics 620 Shared', '4 GB DDR4 2400 MHz', ' ', '15.6 inch HD SVA BrightView WLED-backlit ', 'http://fptshop.com.vn/may-tinh-xach-tay/HP-15-bs153TUCore-i5-8250U', 'img/laptop/66.png'),
(67, 'Lenovo Ideapad 330-14IKBR', 11490000, 'Intel Kaby Lake R Core i5-8250U', 'Intel® UHD Graphics 620 Shared', '4 GB DDR4 2133 MHz', ' ', '14.0 inchs HD LED', 'http://fptshop.com.vn/may-tinh-xach-tay/lenovo-ideapad-330-14ikbr', 'img/laptop/67.png'),
(68, 'Asus ROG GL503GE-EN021T/i7-8750H', 32790000, 'INTEL Core i7 8750H', 'NVIDIA GeForce GTX 1050Ti 4 GB', '8 GB DDR4 2666 MHz', ' ', '15.6 inchs Full HD', 'http://fptshop.com.vn/may-tinh-xach-tay/asus-rog-gl503ge-en021t-i7-8750h', 'img/laptop/68.png'),
(69, 'Lenovo IdeaPad 310-14ISK', 13990000, '	 Intel Core i5 6200U', 'Intel HD Graphics 520 Share', '4 GB DDR4 2133 MHz', ' ', '	14 inch Full HD', 'http://fptshop.com.vn/may-tinh-xach-tay/lenovo-ideapad-310-14isk-core-i5', 'img/laptop/69.png'),
(70, 'Dell XPS13 9370', 10990000, 'Intel Core i7 8550U', 'Intel UHD Graphics 620  Shared', '8 GB LPDDR3 1866 MHz', ' ', '13.3‐inchs  FullHD InfinityEdge display', 'http://fptshop.com.vn/may-tinh-xach-tay/dell-xps13-9370', 'img/laptop/70.png'),
(71, 'Dell Ins N7370/Core i7-8550U', 27490000, 'Intel Core i7 8550U', 'Intel UHD Graphics 620  Shared', '8 GB DDR4 2400 MHz', ' ', '13.3 inchs IPS FHD', 'http://fptshop.com.vn/may-tinh-xach-tay/Dell-Ins-13-7370-core-i7-8550u', 'img/laptop/71.png'),
(72, 'Macbook 12 256GB (2017)', 41290000, '	 Intel Core M3 Dual - Core', 'Intel HD Graphics 615', '8 GB LPDDR3 1866 MHz', ' ', '12 inch 	LED-backlit', 'http://fptshop.com.vn/may-tinh-xach-tay/macbook-12-256gb', 'img/laptop/72.png'),
(73, 'Dell N7588B', 44990000, 'Intel Core i7 8750H', 'NVIDIA GeForce GTX 1060  6 GB GDDR5 ', '16 GB (2 x 8 GB) DDR4 2666 MHz', ' ', '15.6 inchs IPS Anti-Glare LED-Backlit Display', 'http://fptshop.com.vn/may-tinh-xach-tay/dell-n7588b', 'img/laptop/73.png'),
(74, 'Acer Aspire A315-53-54T3', 11990000, 'Intel Core i5 7200U', 'Intel HD Graphics Shared', '4 GB DDR3L 1600 MHz', ' ', '15.6 inchs FHD LED', 'http://fptshop.com.vn/may-tinh-xach-tay/acer-aspire-a315-53-54t3', 'img/laptop/74.png'),
(75, 'IdeaPad 330-15IKB/Core i3-8130U/1TB+16Gb Optane/Win 10', 11899000, 'Intel Core i3 8130U', 'Intel® HD Graphics 620 Không', '4 GB DDR4 2133 MHz', ' ', '15.6 inchs Anti - Glare', 'http://fptshop.com.vn/may-tinh-xach-tay/ideapad-330-15ikb-core-i3-8130u', 'img/laptop/75.png'),
(76, 'Vostro 3468/Core i3-7020U/4Gb/1000Gb/Win 10', 0, 'Intel Core i3 7020U', 'Intel® HD Graphics 620 Shared ', '4 GB DDR4 2400 MHz', ' ', '14.0 inchs Anti - Glare', 'http://fptshop.com.vn/may-tinh-xach-tay/vostro-3468-core-i3-7020Uu-4gb', 'img/laptop/76.png'),
(77, 'Dell N3576/i3-8130U/4GB/1TB/DVDRW/Win10', 12290000, 'Intel Core i3 8130U', 'Intel(R) UHD Graphics 620 Shared ', '4 GB DDR4 2400 MHz', ' ', '15.6 inchs LED Backlit', 'http://fptshop.com.vn/may-tinh-xach-tay/dell-n3576-i3-8130u', 'img/laptop/77.png'),
(78, 'HP Pavilion x360 14-cd1018TUCore i3 8145U/4GB/1TB/14.0HDTouch/WIN10', 13490000, 'Intel Core i3 8145U', 'Intel UHD Graphics 620  Không', '4 GB DDR4 2666 MHz', ' ', '14.0 inchs HD Touch', 'http://fptshop.com.vn/may-tinh-xach-tay/hp-pavilion-x360-14-cd1018tu-core-i3-8145u', 'img/laptop/78.png'),
(79, 'Asus X542UA-GO1136T/Core i5-8250U', 12690000, 'Intel Core i5 8250U', 'Intel UHD Graphics 620 Shared', '4 GB DDR4 2133 MHz', ' ', '15.6 inches HD LED', 'http://fptshop.com.vn/may-tinh-xach-tay/asus-x542ua-go1136t-core-i5-8250u', 'img/laptop/79.png'),
(80, 'Asus Vivobook Flip TP412UA-EC173T/Core I3-7020U', 13890000, 'Intel Core i3 7020U', 'Intel® HD graphics 620 Shared', '4 GB DDR4 2400 MHz ', ' ', '14.0 inches FHD ', 'http://fptshop.com.vn/may-tinh-xach-tay/asus-vivobook-flip-tp412ua-ec173t-core-i3-7020u', 'img/laptop/80.png'),
(81, 'Asus Vivobook X407UA-BV489T/Core i5 8250U/4GB+16GB Optane/1TB/WIN10', 13390000, 'Intel Core i5 8250U', 'Intel UHD Graphics 620 Shared ', '4GB + 16GB Optane DDR4 2400 MHz', ' ', '14.0 inchs HD LED backlit', 'http://fptshop.com.vn/may-tinh-xach-tay/asus-vivobook-x407ua-bv489t-core-i5-8250u', 'img/laptop/81.png'),
(82, 'Inspiron N3576F/Core i5-8250U/4Gb/1000Gb/DVWRW/Win 10', 14690000, 'Intel Core i5 8250U', 'Intel(R) UHD Graphics 620 Shared ', '4 GB DDR4 2400 MHz', ' ', '15.6 inchs LED Backlit', 'http://fptshop.com.vn/may-tinh-xach-tay/inspiron-n3576f-core-i5-8250u', 'img/laptop/82.png'),
(83, 'Asus Vivobook S430FA-EB033T/Core I3-8145U/4GB/256GB SSD/WIN10', 14390000, 'Intel Core i3 8145U', 'Intel UHD Graphics 620 Shared ', '4 GB DDR4 2400 MHz', ' ', '14.0 inchs FHD', 'http://fptshop.com.vn/may-tinh-xach-tay/asus-vivobook-s430fa-eb033t-core-i3-8145u', 'img/laptop/83.png'),
(84, 'Dell Vostro V3578', 13990000, 'intel core i5 8250U', 'Intel UHD Graphics 620  Shared', '4 GB DDR4 2400 MHz', ' ', '15.6 inches Anti-glare LED-backlit display', 'http://fptshop.com.vn/may-tinh-xach-tay/dell-vostro-v3578', 'img/laptop/84.png'),
(85, 'HP Pavilion 14-ce0031TU', 14990000, 'intel Core i5 8250U ', 'Intel® UHD Graphics 620 Shared', '4 GB DDR4 2400 MHz', ' ', '14.0 inchs  IPS BrightView micro-edge WLED-backlit', 'http://fptshop.com.vn/may-tinh-xach-tay/hp-pavilion-14-ce0031tu-core-i5-8250u', 'img/laptop/85.png'),
(86, 'Dell Ins N5370/Core i3-8130U/4GB/128GB SSD', 15690000, 'Intel Core i3 8130U', 'Intel UHD Graphics 620 Shared ', '4 GB DDR4 2400 MHz', ' ', '13.3 inchs Anti -glare LED-Backlit Display', 'http://fptshop.com.vn/may-tinh-xach-tay/dell-ins-n5370core-i3-8130u4gb128gb-ssd', 'img/laptop/86.png'),
(87, 'Swift SF315-52-38YQ/Core i3- 8130/4Gb/1000Gb/15.6\"FHD/Win10', 14990000, 'Intel Core i3 8130U', 'Intel® UHD Graphics 620 Không', '4 GB DDR4 2400MHz', ' ', '15.6 inchs IPS LCD', 'http://fptshop.com.vn/may-tinh-xach-tay/swift-sf315-52-38yq-core-i3-8130', 'img/laptop/87.png'),
(88, 'Vostro 3578B/Core i5-8250U/4GB/1TB/AMD Radeon520 2GB/Win 10', 16490000, 'Intel Core i5 8250U', 'AMD Radeon 520 2 GB', '4 GB DDR4 2400 MHz', ' ', '15.6 inchs LED Backlit', 'http://fptshop.com.vn/may-tinh-xach-tay/vostro-3578b-core-i5-8250u', 'img/laptop/88.png'),
(89, 'Asus Vivobook S430UA-EB099T/Core i5-8250U', 16390000, 'Intel Core i5 8250U', 'Intel UHD Graphics 620 Shared ', '4 GB DDR4 2400 MHz', ' ', '14.0 inchs FHD Anti-Glare', 'http://fptshop.com.vn/may-tinh-xach-tay/asus-vivobook-s430ua-eb099t-core-i5-8250u', 'img/laptop/89.png'),
(90, 'HP 15-da1031TX/Core i5-8265U/4GB/1TB/NVIDIA MX110 2GB/Win10', 14990000, 'Intel Core i5 8265U', 'NVIDIA® GeForce® MX110 2 GB', '4 GB DDR4 2400 MHz', ' ', '15.6 inchs LED Backlit', 'http://fptshop.com.vn/may-tinh-xach-tay/hp-15-da1031tx-core-i5-8265u', 'img/laptop/90.png'),
(91, 'HP Pavilion 14-ce1016TU/Core i5-8265U/4GB/1TB/WIN10', 15290000, 'Intel Core i5 8265U', 'intel Shared ', '4 GB DDR4 2400 MHz', ' ', '14.0 inchs LED Backlit', 'http://fptshop.com.vn/may-tinh-xach-tay/hp-pavilion-14-ce1016tu-core-i5-8265u', 'img/laptop/91.png'),
(92, 'Haier S1 HR-13MZ/Pentium N4200', 6990000, 'Intel Pentium N4200', 'Intel® UHD Graphics 505 Shared', '6 GB DDR3L 1600 MHz', ' ', '13.3 inchs IPS LCD screen', 'http://fptshop.com.vn/may-tinh-xach-tay/haier-hr-13mz-pentium-n4200', 'img/laptop/92.png'),
(93, 'Asus Vivobook X507MA-BR317T/Celeron N4000/4GB/256GB SSD/WIN10', 6790000, 'Intel Celeron N4000', 'Intel UHD Graphics Shared ', '4 GB DDR4 2400 MHz', ' ', '15.6 inchs LED Backlit', 'http://fptshop.com.vn/may-tinh-xach-tay/asus-vivobook-x507ma-br317t-celeron-n4000', 'img/laptop/93.png'),
(94, 'IdeaPad 320- 14ISK/Core i3-6006U/Win 10', 9190000, 'Intel Core i3 6006U', 'Intel® HD Graphics 520 Không', '4 GB DDR4 2133 MHz', ' ', '14.0 inchs Anti - Glare', 'http://fptshop.com.vn/may-tinh-xach-tay/ideapad-320--14isk-core-i3-6006u-win-10', 'img/laptop/94.png'),
(95, 'HP 15-da0047TU/Pentium N5000', 7290000, 'intel Pentium N5000', 'Intel® UHD Graphics 605 Shared', '4 GB DDR4 2400 MHz', ' ', '15.6 inchs HD SVA BrightView WLED-backlit ', 'http://fptshop.com.vn/may-tinh-xach-tay/hp-15-da0047tu-pentium-n5000', 'img/laptop/95.png'),
(96, 'Asus Vivobook X507MA-BR316T/Pentium N5000//4G/256GB SSD/WIN10', 7790000, 'Intel Pentium N5000', 'Intel UHD Graphics Shared ', '4 GB DDR4 2400 MHz', ' ', '15.6 inchs LED Backlit', 'http://fptshop.com.vn/may-tinh-xach-tay/asus-vivobook-x507ma-br316t-pentium-n5000', 'img/laptop/96.png'),
(97, 'HP 15-da0108TU/Pentium N5000/4GB/500GB/WIN10', 7390000, 'Intel Pentium N5000', 'Intel® HD Graphics Shared ', '4 GB DDR4 2400 MHz', ' ', '15.6 inchs HD LED backlit', 'http://fptshop.com.vn/may-tinh-xach-tay/hp-15-da0108tu-pentium-n5000', 'img/laptop/97.png'),
(98, 'Acer A315-53-30E7/Core i3- 7020U/4Gb/1000Gb/Win 10', 9190000, 'Intel Core i3 7020U', 'Intel HD Graphics 620 2 GB', '4 GB DDR4 2400 MHz', ' ', '15.6 inchs Anti - Glare', 'http://fptshop.com.vn/may-tinh-xach-tay/acer-a315-53-30e7-core-i3-7020u', 'img/laptop/98.png'),
(99, 'Lenovo Ideapad 330-15IKB 81DC00ENVN', 9990000, 'Intel Core i3 7130U ', 'Intel® HD Graphics 620 Shared', '4 GB DDR4 2133 MHz', ' ', '15.6 inchs HD LED', 'http://fptshop.com.vn/may-tinh-xach-tay/lenovo-ideapad-330-15ikb-81dc00envn', 'img/laptop/99.png'),
(100, 'Asus Vivobook X407UA-BV537T/Core i3-7020U/4GB/1TB/WIN10', 9990000, 'Intel Core i3 7020U', 'Intel® HD graphics Shared ', '4 GB DDR4 2400 MHz', ' ', '14.0 inchs HD LED backlit', 'http://fptshop.com.vn/may-tinh-xach-tay/asus-vivobook-x407ua-bv537t-core-i3-7020u', 'img/laptop/100.png'),
(101, 'Dell Vostro 3468/Core i3-7020U', 10990000, 'Intel  Core i3 7020U', 'Intel® HD Graphics 620 Shared', '4 GB DDR4 2400 MHz', ' ', '14.0 inchs Anti-Glare LED-Backlit Display', 'http://fptshop.com.vn/may-tinh-xach-tay/dell-vostro-3468-core-i3-7020U', 'img/laptop/101.png'),
(102, 'Dell Inspiron N3576/Core i3-7020U/4Gb/1000Gb/DVDRW/AMD R5 520 2Gb', 11590000, 'Intel Core i3 7020U', 'AMD Radeon 520 2 GB', '4 GB DDR4 2400 MHZ', ' ', '15.6 inchs FHD', 'http://fptshop.com.vn/may-tinh-xach-tay/dell-inspiron-n3576-core-i3-7020u', 'img/laptop/102.png'),
(103, 'Ideapad 330s-14IKB/Core i3-8130/4Gb/256Gb/Win 10', 11790000, 'Intel Core i3 8130U', 'Intel® UHD Graphics 620 Shared ', '4 GB DDR4 2666 MHz', ' ', '14.0 inchs IPS FHD', 'http://fptshop.com.vn/may-tinh-xach-tay/ideapad-330s-14ikb-core-i3-8130', 'img/laptop/103.png'),
(104, 'Asus Vivobook X507UA-EJ736T/Core i3-7020U/4GB/256G SSD/WIN10', 10890000, 'Intel Core i3 7020U', 'Intel® HD graphics 520 Shared ', '4 GB DDR4 2400 MHz', ' ', '15.6 inchs Không', 'http://fptshop.com.vn/may-tinh-xach-tay/asus-vivobook-x507ua-ej736t-core-i3-7020u', 'img/laptop/104.png'),
(105, 'Asus Vivobook A510UA-EJ1123T/Core i3 8130U', 10990000, 'Intel Core i3 8130U', 'Intel UHD Graphics 620 Share', '4 GB DDR4 2400 MHz', ' ', '15.6 inchs Anti-Glare', 'http://fptshop.com.vn/may-tinh-xach-tay/asus-vivobook-a510ua-ej1123t-core-i3-8130u', 'img/laptop/105.png'),
(106, 'Dell Inspiron N3576', 11590000, 'Intel Core i3 7020U', 'AMD Radeon 520 2 GB', '4 GB DDR4 2400 MHZ', ' ', '15.6 inchs Anti-Glare LED-Backlit Display', 'http://fptshop.com.vn/may-tinh-xach-tay/dell-inspiron-n3576', 'img/laptop/106.png'),
(107, 'Acer Nitro AN515-52-51GF', 20990000, 'Intel Core i5 8300H', 'NVIDIA GeForce GTX 1050 4 GB', '8 GB DDR4 2666 MHz', ' HDD, HDD: 1 TB SATA3, Hỗ trợ khe cắm SSD M.2 SATA3  ', '15.6 inchs FHD LED', 'http://fptshop.com.vn/may-tinh-xach-tay/acer-nitro-an515-52-51gf', 'img/laptop/107.png'),
(108, 'Asus Zenbook UX331UN-EG129TS/i5-8250U', 21790000, 'Intel Core™ i5 8250U ', 'NVIDIA GEFORCE MX150  2 GB', '8 GB LPDDR3 1866 MHz', ' SSD, 256 GB  ', '13.3 inchs FullHD Anti-Glare', 'http://fptshop.com.vn/may-tinh-xach-tay/asus-zenbook-ux331un-eg129ts-i5-8250u', 'img/laptop/108.png'),
(109, 'Acer A315-32-C9A4', 5990000, 'Intel Celeron N4000', ' Intel® UHD Graphics 600 Shared', '4 GB DDR4 2133 MHz', ' HDD, 500 GB  ', '15.6 inchs HD LED Backlight', 'http://fptshop.com.vn/may-tinh-xach-tay/acer-a315-32-c9a4', 'img/laptop/109.png'),
(110, 'Asus TUF FX504GD-E4571T/i5-8300H', 19990000, 'Intel Core i5 8300H', 'NVIDIA Geforce GTX 1050 4 GB', '8 GB DDR4 2666 MHz', ' HDD, HDD: 1 TB SATA3, Hỗ trợ khe SSD M2 PCIe  ', '15.6 inchs FHD IPS  Non-Glare LED Backlit', 'http://fptshop.com.vn/may-tinh-xach-tay/Asus-TUF-FX504GD-E4571Ti5-8300H', 'img/laptop/110.png'),
(111, 'Asus Vivobook S430FA-EB069T/Core I3-8145U/4GB/1TB/WIN10', 13890000, 'Intel Core i3 8145U', 'Intel UHD Graphics 620 Shared ', '4 GB DDR4 2666 MHz', ' HDD 5400rpm, 1024 GB  ', '14.0 inchs FHD', 'http://fptshop.com.vn/may-tinh-xach-tay/asus-vivobook-s430fa-eb069t-core-i3-8145u', 'img/laptop/111.png'),
(112, 'Macbook Air 13 256GB 2018', 36990000, 'Intel Core i5 Dual - Core', 'Intel UHD Graphics 617 Shared ', '8 GB LPDDR3 2133 MHz', ' SSD, 256 GB  ', '13.3 inchs LED Backlit', 'http://fptshop.com.vn/may-tinh-xach-tay/macbook-air-13-256gb-2018', 'img/laptop/112.png'),
(113, 'MSI GF63 8RC-452VN/CORE I5-8300H/8GB+16GB Optane/1TB/1050 4GB/WIN10', 22390000, 'Intel Core i5 8300H', 'NVIDIA GeForce® GTX 1050 4 GB', '8GB + 16GB Optane DDR4 2666 MHz', ' HDD 5400rpm, 1000 GB  ', '15.6 inchs IPS FHD', 'http://fptshop.com.vn/may-tinh-xach-tay/msi-gf63-8rc-452vn-core-i5-8300h', 'img/laptop/113.png'),
(114, 'Acer Nitro 5-AN515-52-75FT', 23990000, 'intel core i7 8750H', 'NVIDIA GeForce GTX 1050Ti 4 GB GDDR5', '8 GB DDR4 2666 MHz', ' SSD(M.2 2280) + HDD SATA3 (5400rpm), 128 GB + 1 TB  ', '15.6 inches Full HD IPS Anti-Glare, Acer ComfyView LED-backlit TFT LCD', 'http://fptshop.com.vn/may-tinh-xach-tay/acer-nitro-5-an515-52-75ft', 'img/laptop/114.png'),
(115, 'Dell Inspiron 5570', 17990000, 'Intel  Core i5  8250U', 'AMD Radeon 530 2 GB', '4 GB DDR4 2400 MHz', ' HDD, HDD: 1 TB SATA3,SSD  Hỗ trợ khe SSD M2 PCIe  ', '15.6 Inches WLED ', 'http://fptshop.com.vn/may-tinh-xach-tay/Dell-Inspiron-5570', 'img/laptop/115.png'),
(116, 'Macbook Pro 13 Touch Bar 512 GB (2018)', 49990000, 'Intel Core i5 Quad-Core', 'Intel Iris Plus Graphics 655 System Shared', '8GB LPDDR3 2133MHz', ' SSD, 512GB  ', '13.3 inch Công nghệ True Tone, Công nghệ IPS, LED Backlit', 'http://fptshop.com.vn/may-tinh-xach-tay/macbook-pro-13-touch-bar-512gb-2018', 'img/laptop/116.png'),
(117, 'Macbook Air 13 128GB 2018', 31990000, 'Intel Core i5 Dual - Core', 'Intel UHD Graphics 617 Shared ', '8 GB LPDDR3 2133 MHz', ' SSD, 128 GB  ', '13.3 inchs LED Backlit', 'http://fptshop.com.vn/may-tinh-xach-tay/macbook-air-13-128gb-2018', 'img/laptop/117.png'),
(118, 'Dell Vostro 3578', 18690000, 'Intel Core i7 8550U', 'AMD Radeon 520 2 GB', '8 GB DDR4 2400 MHz', ' HDD SATA3 (5400rpm), 1000 GB  ', '15.6 inchs Anti-Glare LED-backlit', 'http://fptshop.com.vn/may-tinh-xach-tay/dell-vostro-3578', 'img/laptop/118.png'),
(119, 'HP Pavilion 14-ce1008TU/Core i5-8265U/4GB/1TB/14.0FHD/WIN10', 15290000, 'Intel Core i5 8265U', 'intel Shared ', '4 GB DDR4 2400 MHz', ' HDD 5400rpm, 1000 GB  ', '14.0 inchs LED Backlit', 'http://fptshop.com.vn/may-tinh-xach-tay/hp-pavilion-14-ce1008tu-core-i5-8265u', 'img/laptop/119.png'),
(120, 'HP Envy 13-ah1012TU/Core i7-8565U/8GB/256GSSD/WIN10', 27490000, 'Intel Core i7 Không', 'Intel® UHD Graphics 620 Shared ', '8 GB LPDDR3 2133 MHz', ' SSD, 256 GB  ', '13.3 inchs LED Backlit', 'http://fptshop.com.vn/may-tinh-xach-tay/hp-envy-13-ah1012tu-core-i7-8565u', 'img/laptop/120.png'),
(121, 'Dell Vostro 3578A', 15390000, 'Intel Core I5  8250U', 'AMD Radeon 520 2 GB', '4 GB DDR4 2400 MHz', ' ', '15.6 inchs Anti Glare LED Backlit Display', 'http://fptshop.com.vn/may-tinh-xach-tay/Dell-Vostro-3578A', 'img/laptop/121.png'),
(122, 'Asus Zenbook UX333FA-A4011T/Core i5-8265U/8GB/256GSSD/WIN10', 22490000, 'Intel Core i5 8265', 'Intel UHD Graphics Shared ', '8 GB LPDDR3 2133 MHz', ' SSD, 256 GB  ', '13.3 inchs FHD', 'http://fptshop.com.vn/may-tinh-xach-tay/asus-zenbook-ux333fa-a4011t-core-i5-8265u', 'img/laptop/122.png'),
(123, 'Swift SF314-54-58KB/Core i5-8250U/4Gb/256Gb/14FHD/WIn10', 17990000, 'Intel Core i5 8250U', 'Intel® UHD Graphics 620 Không', '4 GB DDR4 2133 MHz', ' SSD, 256 GB  ', '14.0 inchs IPS FHD', 'http://fptshop.com.vn/may-tinh-xach-tay/swift-sf314-54-58kb-core-i5-8250u', 'img/laptop/123.png'),
(124, 'Asus Vivobook S530UA-BQ100T/Core i5 8250U', 16690000, 'Intel Core i5 8250U', 'Intel UHD Graphics 620 Shared', '4 GB DDR4 2400 MHz', ' HDD, HDD: 1 TB SATA3, Hỗ trợ khe cắm SSD M.2 SATA3  ', '15.6 inchs FHD WV 250nits Anti-Glare NTSC 45%', 'http://fptshop.com.vn/may-tinh-xach-tay/asus-vivobook-s530ua-bq100t-core-i5-8250u', 'img/laptop/124.png'),
(125, 'HP ENVY X360-AG0045AU/R5-2500U/8GB/256G SSD/WIN10', 22890000, 'AMD R5 2500U', 'AMD Radeon Graphics 2 GB', '8 GB DDR4 2400 MHz', ' SSD, 256 GB  ', '13.3 inchs IPS FHD', 'http://fptshop.com.vn/may-tinh-xach-tay/hp-envy-x360-ag0045au-r5-2500u-8gb', 'img/laptop/125.png'),
(126, 'MSI PS42 8M-296VN/i5-8250U', 20990000, 'Intel Core i5 8250U', 'UMA Share', '8 GB DDR4 2666 MHz', ' SSD, 128 GB  ', '14.0 inchs IPS 72% Narrow Bezel ', 'http://fptshop.com.vn/may-tinh-xach-tay/msi-ps42-8m-296vn-i5-8250u', 'img/laptop/126.png'),
(127, 'Asus Vivobook X507UA-BR426T/Core I5-8250U/4GB/1TB/WIN10', 13290000, 'Intel Core i5 Không', 'Intel UHD Graphics  Shared ', '4 GB DDR4 2400 MHz', ' HDD 5400rpm, 1024 GB  ', '15.6 inchs HD Touch', 'http://fptshop.com.vn/may-tinh-xach-tay/asus-vivobook-x507ua-br426t-core-i5-8250u', 'img/laptop/127.png'),
(128, 'Asus TUF FX505GD-BQ324T/Core i5-8300H/8GB/1TB/1050 4GB/WIN10', 22390000, 'Intel Core i5 8300H', 'GTX 1050 4 GB', '8 GB DDR4 2666 MHz', ' HDD 5400rpm, HDD: 1 TB SATA3, Hỗ trợ khe SSD M2 PCIe  ', '15.6 inchs FHD', 'http://fptshop.com.vn/may-tinh-xach-tay/asus-tuf-fx505gd-bq324t-core-i5-8300h', 'img/laptop/128.png'),
(129, 'Asus Vivobook X507UF-EJ074T/i7-8550U', 17190000, 'Intel Core i7 8550U', 'NVIDIA GeForce MX130 2 GB_GDDR5', '4 GB DDR4 2400 MHz', ' HDD, 1 TB  ', '15.6 inchs FHD Anti-Glare Panel with 45% NTSC', 'http://fptshop.com.vn/may-tinh-xach-tay/asus-vivobook-x507uf-ej074t-i7-8550U', 'img/laptop/129.png'),
(130, 'Macbook Pro 13 Touch Bar 256 GB (2018)', 44990000, 'Intel Core i5 Quad-Core', 'Intel Iris Plus Graphics 655 System Shared', '8GB LPDDR3 2133MHz', ' SSD, 256GB  ', '13.3 inch Công nghệ True Tone, Công nghệ IPS, LED Backlit', 'http://fptshop.com.vn/may-tinh-xach-tay/macbook-pro-13-touch-bar-256gb-2018', 'img/laptop/130.png'),
(131, 'Asus Vivobook X507UF-EJ121T/i5-8250U', 14590000, 'Intel Core i5 8250U', 'NVIDIA GeForce MX130 2 GB', '4 GB DDR4 2400 MHz', ' HDD 5400rpm, HDD: 1 TB SATA3, Hỗ trợ khe cắm SSD M.2 SATA3  ', '15.6 inchs LED Backlit', 'http://fptshop.com.vn/may-tinh-xach-tay/asus-vivobook-x507uf-ej121t-i5-8250u', 'img/laptop/131.png'),
(132, 'Dell Vostro V5568/i5-7200U/4GB/1000GB', 14990000, 'Intel Core i5 7200U', 'Intel HD 620 Graphics Shared ', '4 GB DDR4 2400 MHz', ' HDD 5400rpm, HDD: 1 TB SATA3, Hỗ trợ khe cắm SSD M.2 SATA3  ', '15.6 inchs Anti - Glare', 'http://fptshop.com.vn/may-tinh-xach-tay/dell-vostro-v5568-core-i5-7200u', 'img/laptop/132.png'),
(133, 'Asus ZenBook FLIP UX461UA-E1147T/i5-8250U/4GB/256GB SSD/PEN/WIN10', 20290000, 'Intel Core i5 8250U', 'Intel® UHD Graphics 620 Shared ', '4 GB DDR4 2133 MHz', ' SSD, 256 GB  ', '14.0 inchs IPS FHD', 'http://fptshop.com.vn/may-tinh-xach-tay/asus-zenbook-flip-ux461ua-e1147t', 'img/laptop/133.png'),
(134, 'Asus Vivobook X507UF-EJ257T/Core i7-8550U/4G/1TB/MX130_2GB/WIN10', 17090000, 'Intel Core i7 8550U', 'NVIDIA GeForce MX130 ; Intel UHD Graphics 620 2 GB', '4 GB DDR4 2400 MHz', ' HDD 5400rpm, HDD: 1 TB SATA3, Hỗ trợ khe cắm SSD M.2 SATA3  ', '15.6 inchs FHD', 'http://fptshop.com.vn/may-tinh-xach-tay/asus-vivobook-x507uf-ej257t-core-i7-8550u', 'img/laptop/134.png'),
(135, 'Asus Zenbook UX333FA-A4181T/Core i5-8265U/8GB/256GSSD/WIN10', 22990000, 'Intel Core i5 Không', 'Intel UHD Graphics 620 Shared ', '8 GB LPDDR3 2133 MHz', ' SSD, 256 GB  ', '13.3 inchs IPS FHD', 'http://fptshop.com.vn/may-tinh-xach-tay/asus-zenbook-ux333fa-a4181t-core-i5-8265u', 'img/laptop/135.png'),
(136, 'HP Envy 13-ah1011TU/Core i5-8265U/8GB/256GB SSD/13.3FHD/WIN10', 22490000, 'Intel Core i5 8265U', 'intel Shared ', '8 GB DDR3L 2133 MHz', ' SSD, 256 GB  ', '13.3 inchs LED Backlit', 'http://fptshop.com.vn/may-tinh-xach-tay/hp-envy-13-ah1011tu-core-i5-8265u', 'img/laptop/136.png'),
(137, 'Lenovo Legion Y530-15ICH/Core i7-8750H/8GB/1TB+128GB SSD/GTX 1050 4GB/81FV00SUVN', 24990000, 'Intel Core i7 8750H', 'NVIDIA® GeForce® GTX 1050 4 GB GDDR5', '8 GB DDR4 2666 MHz', ' SDD + HDD, 128 GB + 1 TB  ', '15.6 inches FHD LED', 'http://fptshop.com.vn/may-tinh-xach-tay/lenovo-legion-y530-15ich-core-i7-8750h-8gb-1tb-128gb-ssd-gtx-1050ti-4gb-81fv00suvn', 'img/laptop/137.png'),
(138, 'Asus Zenbook UX333FA-A4046T/Core i5-8265U/8GB/256GSSD/WIN10', 22490000, 'Intel Core i5 8265U', 'Intel UHD Graphics 620 Shared ', '8 GB LPDDR3 2133 MHz', ' SSD, 256 GB  ', '13.3 inchs FHD', 'http://fptshop.com.vn/may-tinh-xach-tay/asus-zenbook-ux333fa-a4046t-core-i5-8265u', 'img/laptop/138.png'),
(139, 'HP Pavilion 15-cs1045TX/i5-8265U/4GB/1TB/15.6FHD/MX130 2GB/WIN10', 16290000, 'Intel Core i5 8265U', 'NVIDIA GeForce MX130 2 GB', '4 GB DDR4 2400 MHz', ' HDD 5400rpm, 1000 GB  ', '15.6 inchs LED Backlit', 'http://fptshop.com.vn/may-tinh-xach-tay/hp-pavilion-15-cs1045tx-i5-8265u', 'img/laptop/139.png'),
(140, 'Acer Predator Helios 300 PH315-51-7533', 31990000, 'intel core i7 8750H', 'NVIDIA GeForce GTX 1060 (GDDR5 SDRAM, Bus Width: 192 Bit); Intel UHD Graphics 630 6 GB', '8 GB DDR4 2666 MHz', ' SSD + HDD, 128GB SSD (M.2 2280) + 1TB SATA3 (5400rpm)  ', '15.6 inches High-brightness Acer ComfyView LED-backlit TFT LCD; Anti-glare', 'http://fptshop.com.vn/may-tinh-xach-tay/acer-predator-helios-300-ph315-51-7533', 'img/laptop/140.png'),
(141, 'HP Pavilion 14-ce0027TU', 12490000, 'Intel® Core i3 8130U', 'Intel® HD Graphics 620 Share', '4 GB DDR4 2133 MHz', ' HDD, 500 GB 5400 rpm   ', '14.0 inchs Viền màn hình mỏng, WLED, LED Backlit', 'http://fptshop.com.vn/may-tinh-xach-tay/hp-pavilion-14-ce0027tu', 'img/laptop/141.png'),
(142, 'Dell Inspiron T7373A', 30290000, 'Intel Core i7 8550U', 'Intel UHD Graphics 620 Shared', '8 GB DDR4 2400 MHz', ' SSD, 256 GB  ', '13.3 inchs IPS Truelife LED-Backlit Narrow Border Touch Display', 'http://fptshop.com.vn/may-tinh-xach-tay/dell-inspiron-t7373a', 'img/laptop/142.png'),
(143, 'Macbook Pro 15 Touch Bar 256 GB (2018)', 57490000, 'Intel Core i7 6-core', 'Radeon Pro 555X 4GB of GDDR5 ', '16GB DDR4 2400MHz', ' SSD, 256GB  ', '15.4 inch Công nghệ True Tone, Công nghệ IPS, LED Backlit', 'http://fptshop.com.vn/may-tinh-xach-tay/macbook-pro-15-touch-bar-256gb-2018', 'img/laptop/143.png'),
(144, 'Asus TUF FX504GE-EN047T/i7-8750', 26990000, 'Intel Core i7 i7-8750H', 'NVIDIA GeForce GTX1050Ti 4 GB DDR5', '8 GB DDR4 2400 MHz', ' SSHD, 1 TB SATA3 SSHD_with 8GB SSD Flash Drive (5400rpm)  ', '15.6 inchs (16:9) FHD (1920x1080) 120Hz Anti-Glare Panel 94% NTSC', 'http://fptshop.com.vn/may-tinh-xach-tay/asus-tuf-fx504ge-en047ti7-8750', 'img/laptop/144.png'),
(145, 'Asus Vivobook S530UA-BQ072T/Core i3-8130U', 13390000, 'Intel Core i3 8130U', 'Intel UHD Graphics 620 Shared ', '4 GB DDR4 2400 MHz', ' HDD, HDD: 1 TB SATA3, Hỗ trợ khe cắm SSD M.2 SATA3  ', '15.6 inchs FHD Anti-Glare', 'http://fptshop.com.vn/may-tinh-xach-tay/asus-vivobook-s530ua-bq072t-core-i3-8130u', 'img/laptop/145.png'),
(146, 'Dell Inspiron N3576/i5-8250U', 14690000, 'Intel  Core i5 8250U', 'AMD Radeon 520 2 GB', '4 GB DDR4 2400 MHz', ' HDD, 1 TB  ', '15.6 inch Anti-Glare LED-Blacklit', 'http://fptshop.com.vn/may-tinh-xach-tay/Dell-Inspiron-N3576i5-8250U', 'img/laptop/146.png'),
(147, 'Asus Vivobook S530UN-BQ026T/Core i5 8250U', 18090000, 'Intel Core i5 8250U', 'NVIDIA GeForce MX150 2 GB_GDDR5', '4 GB DDR4 2400 MHz', ' HDD, HDD: 1 TB SATA3, Hỗ trợ khe cắm SSD M.2 SATA3  ', '15.6 inchs FHD WV 250nits Anti-Glare NTSC 45%', 'http://fptshop.com.vn/may-tinh-xach-tay/asus-vivobook-s530un-bq026t-core-i5-8250u', 'img/laptop/147.png'),
(148, 'Asus TUF FX505GE-BQ308T-G/Core I7-8750H/8GB/1TB/15.6FHD/Nvidia GTX1050Ti 4G', 26190000, 'Intel Core i7 8750H', 'NVIDIA GeForce GTX 1050 Ti 4 GB', '8 GB DDR4 2666 MHz', ' HDD 5400rpm, HDD: 1 TB SATA3, Hỗ trợ khe SSD M2 PCIe  ', '15.6 inchs IPS FHD', 'http://fptshop.com.vn/may-tinh-xach-tay/asus-tuf-fx505ge-bq308t-g-core-i7-8750h', 'img/laptop/148.png'),
(149, 'Masstel L133', 4990000, 'Intel Celeron  N3350', 'Intel (R) HD Graphics Share', '3 GB LPDDR3 1600 MHz', ' eMMC, 32 GB  ', '13.3 inchs IPS Full HD', 'http://fptshop.com.vn/may-tinh-xach-tay/Masstel-L133', 'img/laptop/149.png'),
(150, 'MSI GF63 8RD-447VN/i7-8750H/8GB+16GB Optane/1TB/GTX1050TI 4GB/WIN10', 25890000, 'Intel Core i7 8750H', 'GeForce® GTX 1050 Ti 4 GB', '8GB + 16GB Optane DDR4 2666 MHz', ' HDD 5400rpm, 1000 GB  ', '15.6 inchs IPS FHD', 'http://fptshop.com.vn/may-tinh-xach-tay/msi-gf63-8rd-447vn-i7-8750h', 'img/laptop/150.png'),
(151, 'Asus F560UD-BQ327T/Core i5-8250U/8GB/1TB/GTX1050 2G/WIN10', 16990000, 'Intel Core i5 8250U', 'Geforce GTX 1050 2 GB', '8 GB DDR4 2133 MHz', ' HDD 5400rpm, HDD: 1 TB SATA3, Hỗ trợ khe cắm SSD M.2 SATA3  ', '15.6 inchs IPS FHD', 'http://fptshop.com.vn/may-tinh-xach-tay/asus-f560ud-bq327t-core-i5-8250u', 'img/laptop/151.png'),
(152, 'Masstel L133/Celeron N3350/RAM 3GB/32GB/WIN10_Bạc', 5290000, 'Intel Celeron N3350 Celeron N3350', 'Intel (R) HD Graphics 500 Share', '3 GB LPDDR3 1600 MHz', ' eMMC, 32 GB  ', '13.3 inch IPS/Full HD', 'http://fptshop.com.vn/may-tinh-xach-tay/masstel-l133celeron-n3350ram-3gb32gbwin10-bac', 'img/laptop/152.png'),
(153, 'HP Pavilion 15-cs0104TX/i7-8550U', 19990000, 'Intel Core™ i7 8550U', 'NVIDIA GeForce MX130 2 GB', '4 GB  DDR4 2400 MHz', ' HDD + SSD Optane™, 1 TB + 16 GB  ', '15.6 inchs FHD SVA Anti-glare WLED-backlit', 'http://fptshop.com.vn/may-tinh-xach-tay/hp-pavilion-15-cs0104tx-i7-8550u', 'img/laptop/153.png'),
(154, 'Asus Vivobook E406SA-BV043T', 5290000, 'Intel Celeron N3060', 'Intel HD Graphics 500 Shared', '2 GB DDR3 1600 MHz', ' EMMC, 32 GB  ', '14.0 inchs Ultra Slim 200nits', 'http://fptshop.com.vn/may-tinh-xach-tay/Asus-Vivobook-E406SA-BV043T', 'img/laptop/154.png'),
(155, 'Dell Inspiron N5570/Core i5-8250U/4GB/1TB/AMD R5 530/Windows 10', 17990000, 'Intel Core i5 8250U', 'AMD Radeon 530 2 GB', '4 GB DDR4  2400 MHz', ' HDD, 1000 GB  ', '15.6 inchs FHD', 'http://fptshop.com.vn/may-tinh-xach-tay/dell-inspiron-n5570-core-i5-8250u-4gb-1tb-amd-r5-530-windows-10', 'img/laptop/155.png'),
(156, 'HP Pavilion Power 15-cx0179TX/i5-8300H', 23990000, 'IIntel® Core i5 8300H', 'NVIDIA GEFORCE GTX 1050 4 GB', '8 GB DDR4 2666 MHz', ' HDD, 1 TB 7200 rpm   ', '15.6 inchs UWVA', 'http://fptshop.com.vn/may-tinh-xach-tay/hp-pavilion-power-15-cx0179txi5-8300h', 'img/laptop/156.png');

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
  `lap1` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`username`, `password`, `email`, `lap3`, `lap2`, `lap1`) VALUES
('', '', '', NULL, 6, 2),
('1', '2', 'hieunguyena6@gmail.com', 2, 6, 3),
('3', '4', '', 6, 5, 6),
('a', 'a', '', NULL, 1, 1),
('admin', 'admin', 'admin', 1, 2, 4),
('b', 'b', '', 1, 3, 2),
('f', '5', 'hieunguyena6@gmail.com', 3, 3, 2),
('hi', 'qqq', 'qqq', 1, NULL, NULL),
('hieunguyen', '1', '2', 4, 5, NULL),
('hieunguyen1', '2', '2', NULL, 4, 3);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `dexuat`
--
ALTER TABLE `dexuat`
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
-- Chỉ mục cho bảng `diemVGA`
--
ALTER TABLE `diemVGA`
  ADD PRIMARY KEY (`id_vga`);

--
-- Chỉ mục cho bảng `laptop_details`
--
ALTER TABLE `laptop_details`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `dexuat`
--
ALTER TABLE `dexuat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `DiemMH`
--
ALTER TABLE `DiemMH`
  MODIFY `id_mh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;

--
-- AUTO_INCREMENT cho bảng `DiemRAM`
--
ALTER TABLE `DiemRAM`
  MODIFY `id_ram` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=154;

--
-- AUTO_INCREMENT cho bảng `diemVGA`
--
ALTER TABLE `diemVGA`
  MODIFY `id_vga` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=438;

--
-- AUTO_INCREMENT cho bảng `laptop_details`
--
ALTER TABLE `laptop_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `diemLaptop`
--
ALTER TABLE `diemLaptop`
  ADD CONSTRAINT `diemLaptop_ibfk_1` FOREIGN KEY (`id`) REFERENCES `laptop_details` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
