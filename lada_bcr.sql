-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Дек 14 2020 г., 23:39
-- Версия сервера: 8.0.15
-- Версия PHP: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `lada_bcr`
--

-- --------------------------------------------------------

--
-- Структура таблицы `car`
--

CREATE TABLE `car` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `model_id` int(10) NOT NULL,
  `compl_id` varchar(10) NOT NULL DEFAULT '',
  `compl_desc` text NOT NULL,
  `vin` varchar(17) NOT NULL DEFAULT '0',
  `color_id` int(10) NOT NULL,
  `color_name` varchar(255) NOT NULL DEFAULT '',
  `color_met` tinyint(4) NOT NULL DEFAULT '0',
  `year` varchar(4) NOT NULL,
  `engine` varchar(128) NOT NULL,
  `options` text,
  `gearbox` varchar(255) NOT NULL DEFAULT '',
  `status` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) DEFAULT '',
  `keywords` varchar(255) DEFAULT '',
  `price` decimal(10,2) NOT NULL DEFAULT '0.00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `car`
--

INSERT INTO `car` (`id`, `title`, `model_id`, `compl_id`, `compl_desc`, `vin`, `color_id`, `color_name`, `color_met`, `year`, `engine`, `options`, `gearbox`, `status`, `description`, `keywords`, `price`) VALUES
(4, 'LadaGFK11', 1, '51', 'Comfort', 'XTAGFK110MY505009', 221, 'Ледниковый', 0, '2020', '16 кл. 106 л.с.', NULL, '5МТ', 'Свободен', '', '', '856700.00'),
(5, 'LadaGFK11', 1, '51', 'Comfort', 'XTAGFK110MY505010', 221, 'Ледниковый', 0, '2020', '16 кл. 106 л.с.', NULL, '5МТ', 'К распределению', '', '', '856700.00'),
(7, 'LadaGFL11', 1, '51', 'Comfort Winter', 'XTAGFL110MY505781', 221, 'Ледниковый', 0, '2020', '16 кл. 106 л.с.', NULL, '5МТ', 'Свободен', '', '', '851600.00'),
(8, 'LadaGFL11', 1, '51', 'Comfort', 'XTAGFL110MY505693', 221, 'Ледниковый', 0, '2020', '16 кл. 106 л.с.', NULL, '5МТ', 'Свободен', '', '', '815600.00'),
(9, 'LadaGFK44', 1, '51', ' Cross Comfort [BLACK]', 'XTAGFK440MY510526', 691, 'Платина', 0, '2020', '16 кл. 113 л.с.', NULL, 'Вариатор', 'Свободен', '', '', '1071900.00'),
(11, 'LadaGFLA1', 1, '51', 'Comfort', 'XTAGFLA10LY450935', 221, 'Ледниковый', 0, '2020', '16 кл. 106 л.с.', NULL, '5МТ', 'Флит', '', '', '914900.00'),
(12, 'LadaGFLA1', 1, '51', 'Comfort', 'XTAGFLA10LY450896', 221, 'Ледниковый', 0, '2020', '16 кл. 106 л.с.', NULL, '5МТ', 'Флит', '', '', '914900.00'),
(13, 'LadaGFLA1', 1, '51', 'Comfort', 'XTAGFLA10LY450863', 221, 'Ледниковый', 0, '2020', '16 кл. 106 л.с.', NULL, '5МТ', 'Флит', '', '', '914900.00'),
(14, 'LadaGFLA1', 1, '51', 'Comfort', 'XTAGFLA10LY450941', 221, 'Ледниковый', 0, '2020', '16 кл. 106 л.с.', NULL, '5МТ', 'Флит', '', '', '914900.00'),
(15, 'LadaGFLA1', 1, '51', 'Comfort', 'XTAGFLA10LY450862', 221, 'Ледниковый', 0, '2020', '16 кл. 106 л.с.', NULL, '5МТ', 'Флит', '', '', '914900.00'),
(16, 'LadaGFLA1', 1, '51', 'Comfort', 'XTAGFLA10LY450882', 221, 'Ледниковый', 0, '2020', '16 кл. 106 л.с.', NULL, '5МТ', 'Флит', '', '', '914900.00'),
(17, 'LadaGFK11', 1, '52', 'Luxe / Multimedia', 'XTAGFK110MY489409', 221, 'Ледниковый', 0, '2020', '16 кл. 106 л.с.', NULL, '5МТ', 'Флит', '', '', '893900.00'),
(18, 'LadaGFLA1', 1, '51', 'Comfort', 'XTAGFLA10LY450860', 221, 'Ледниковый', 0, '2020', '16 кл. 106 л.с.', NULL, '5МТ', 'Флит', '', '', '914900.00'),
(19, 'LadaGFLA1', 1, '51', 'Comfort', 'XTAGFLA10LY450903', 221, 'Ледниковый', 0, '2020', '16 кл. 106 л.с.', NULL, '5МТ', 'Флит', '', '', '914900.00'),
(20, 'LadaGFLA1', 1, '51', 'Comfort', 'XTAGFLA10LY450942', 221, 'Ледниковый', 0, '2020', '16 кл. 106 л.с.', NULL, '5МТ', 'Флит', '', '', '914900.00'),
(21, 'LadaGFLA1', 1, '51', 'Comfort', 'XTAGFLA10LY450906', 221, 'Ледниковый', 0, '2020', '16 кл. 106 л.с.', NULL, '5МТ', 'Флит', '', '', '914900.00'),
(22, 'LadaGFL11', 1, '51', 'Comfort Multimedia', 'XTAGFL110MY492069', 496, 'Фантом', 0, '2020', '16 кл. 106 л.с.', NULL, '5МТ', 'Свободен', '', '', '876600.00'),
(25, 'Lada21230', 1, '54', 'Comfort Off-road Plus', 'X9L212300L0718354', 633, 'Борнео', 0, '2020', '8 кл. 80 л.с.', NULL, '5МТ', 'К распределению', '', '', '884400.00'),
(26, 'Lada21230', 1, '52', 'Classic Start', 'X9L212300L0717477', 618, 'Техно', 0, '2020', '8 кл. 80 л.с.', NULL, '5МТ', 'Свободен', '', '', '841400.00'),
(27, 'Lada21230', 1, '52', 'Classic Start', 'X9L212300L0718251', 633, 'Борнео', 0, '2020', '8 кл. 80 л.с.', NULL, '5МТ', 'Свободен', '', '', '835900.00'),
(28, 'Lada21230', 1, '52', 'Classic Start', 'X9L212300L0716284', 630, 'Кварц', 0, '2020', '8 кл. 80 л.с.', NULL, '5МТ', 'Свободен', '', '', '841400.00'),
(29, 'Lada21230', 1, '52', 'Classic Start', 'X9L212300L0716495', 360, 'Сочи', 0, '2020', '8 кл. 80 л.с.', NULL, '5МТ', 'Свободен', '', '', '841400.00'),
(32, 'LadaGFL11', 1, '50', 'Classic Start', 'XTAGFL110MY502080', 221, 'Ледниковый', 0, '2020', '16 кл. 106 л.с.', NULL, '5МТ', 'Флит', '', '', '793100.00'),
(33, 'LadaGFL11', 1, '50', 'Classic Start', 'XTAGFL110MY502081', 221, 'Ледниковый', 0, '2020', '16 кл. 106 л.с.', NULL, '5МТ', 'Флит', '', '', '713900.00'),
(34, 'Lada21230', 1, '51', 'Classic', 'X9L212300L0719669', 360, 'Сочи', 0, '2020', '8 кл. 80 л.с.', NULL, '5МТ', 'Свободен', '', '', '792900.00'),
(35, 'LadaGAB11', 1, '50', 'Classic', 'XTAGAB110M1345630', 498, 'Лазурно-синий', 0, '2020', '16 кл. 106 л.с.', NULL, '5МТ', 'Свободен', '', '', '771000.00'),
(38, 'LadaGFK11', 1, '51', 'Comfort Winter', 'XTAGFK110MY505165', 246, 'Ангкор', 0, '2020', '16 кл. 106 л.с.', NULL, '5МТ', 'Свободен', '', '', '915100.00'),
(41, 'LadaGFK44', 1, '51', 'Comfort', 'XTAGFK440MY505069', 246, 'Ангкор', 0, '2020', '16 кл. 113 л.с.', NULL, 'Вариатор', 'Свободен', '', '', '971700.00'),
(43, 'Lada21230', 1, '51', 'Classic', 'X9L212300L0719865', 690, 'Снежная королева', 0, '2020', '8 кл. 80 л.с.', NULL, '5МТ', 'Свободен', '', '', '798700.00'),
(44, 'Lada21230', 1, '51', 'Classic', 'X9L212300L0719873', 690, 'Снежная королева', 0, '2020', '8 кл. 80 л.с.', NULL, '5МТ', 'Свободен', '', '', '799300.00'),
(45, 'Lada21230', 1, '52', 'Comfort', 'X9L212300L0719896', 690, 'Снежная королева', 0, '2020', '8 кл. 80 л.с.', NULL, '5МТ', 'Свободен', '', '', '849300.00'),
(50, 'LadaGFK33', 1, '52', 'Cross Luxe / Prestige', 'XTAGFK330MY505349', 130, 'Марс', 0, '2020', '16 кл. 122 л.с.', NULL, '5МТ', 'Свободен', '', '', '1099900.00'),
(51, 'LadaGFK33', 1, '52', 'Cross Luxe / Multimedia', 'XTAGFK330MY505318', 130, 'Марс', 0, '2020', '16 кл. 122 л.с.', NULL, '5МТ', 'Свободен', '', '', '1078900.00'),
(53, 'LadaGFL11', 1, '51', 'Comfort Winter', 'XTAGFL110MY505784', 476, 'Дайвинг', 0, '2020', '16 кл. 106 л.с.', NULL, '5МТ', 'Контракт', '', '', '867100.00'),
(54, 'LadaGFL11', 1, '52', 'Luxe Multimedia', 'XTAGFL110MY505795', 246, 'Ангкор', 0, '2020', '16 кл. 106 л.с.', NULL, '5МТ', 'Свободен', '', '', '936700.00'),
(55, 'LadaGFK33', 1, '52', 'Cross Luxe / Prestige', 'XTAGFK330MY505357', 195, 'Сердолик', 0, '2020', '16 кл. 122 л.с.', NULL, '5МТ', 'К распределению', '', '', '1095300.00'),
(56, 'LadaGFK33', 1, '52', 'Cross Luxe / Multimedia', 'XTAGFK330MY505327', 195, 'Сердолик', 0, '2020', '16 кл. 122 л.с.', NULL, '5МТ', 'Свободен', '', '', '1066300.00'),
(60, 'LadaKS045', 1, '52', 'Quest', 'XTAKS045LM1351602', 221, 'Ледниковый', 0, '2020', '16 кл. 106 л.с.', NULL, '5МТ', 'Воздушный контракт', '', '', '934000.00'),
(61, 'LadaKS045', 1, '52', 'Quest', 'XTAKS045LM1351594', 221, 'Ледниковый', 0, '2020', '16 кл. 106 л.с.', NULL, '5МТ', 'Свободен', '', '', '934000.00'),
(63, 'LadaRS045', 1, '52', 'Quest', 'XTARS045LM1351674', 221, 'Ледниковый', 0, '2020', '16 кл. 106 л.с.', NULL, '5МТ', 'Свободен', '', '', '954600.00'),
(64, 'LadaRS045', 1, '52', 'Quest', 'XTARS045LM1351705', 242, 'Серый базальт', 0, '2020', '16 кл. 106 л.с.', NULL, '5МТ', 'Свободен', '', '', '966600.00'),
(65, 'LadaRS045', 1, '52', 'Quest', 'XTARS045LM1351555', 676, 'Черная жемчужина', 0, '2020', '16 кл. 106 л.с.', NULL, '5МТ', 'Свободен', '', '', '966600.00'),
(66, 'Lada21230', 1, '52', 'Comfort', 'X9L212300L0720360', 618, 'Техно', 0, '2020', '8 кл. 80 л.с.', NULL, '5МТ', 'Свободен', '', '', '848800.00'),
(67, 'LadaRS045', 1, '52', 'Quest', 'XTARS045LM1351739', 676, 'Черная жемчужина', 0, '2020', '16 кл. 106 л.с.', NULL, '5МТ', 'Свободен', '', '', '966600.00'),
(68, 'LadaRS045', 1, '52', 'Quest', 'XTARS045LM1351720', 242, 'Серый базальт', 0, '2020', '16 кл. 106 л.с.', NULL, '5МТ', 'Свободен', '', '', '966600.00'),
(69, 'LadaRS045', 1, '52', 'Quest', 'XTARS045LM1351747', 676, 'Черная жемчужина', 0, '2020', '16 кл. 106 л.с.', NULL, '5МТ', 'Свободен', '', '', '966600.00'),
(70, 'LadaRS045', 1, '52', 'Quest', 'XTARS045LM1351738', 498, 'Лазурно-синий', 0, '2020', '16 кл. 106 л.с.', NULL, '5МТ', 'Свободен', '', '', '966600.00'),
(71, 'LadaRS045', 1, '52', 'Quest', 'XTARS045LM1351749', 676, 'Черная жемчужина', 0, '2020', '16 кл. 106 л.с.', NULL, '5МТ', 'Свободен', '', '', '969000.00'),
(72, 'LadaRS045', 1, '52', 'Quest', 'XTARS045LM1351711', 242, 'Серый базальт', 0, '2020', '16 кл. 106 л.с.', NULL, '5МТ', 'Свободен', '', '', '969000.00'),
(73, 'LadaGFK11', 1, '51', 'Comfort', 'XTAGFK110MY505057', 608, 'Плутон', 0, '2020', '16 кл. 106 л.с.', NULL, '5МТ', 'К распределению', '', '', '874100.00'),
(74, 'LadaGFL44', 1, '51', 'Comfort', 'XTAGFL440MY505728', 608, 'Плутон', 0, '2020', '16 кл. 113 л.с.', NULL, 'Вариатор', 'Свободен', '', '', '926100.00'),
(75, 'LadaGFL11', 1, '51', 'Comfort Winter', 'XTAGFL110MY505788', 608, 'Плутон', 0, '2020', '16 кл. 106 л.с.', NULL, '5МТ', 'К распределению', '', '', '867100.00'),
(76, 'LadaGFL11', 1, '52', 'Luxe Multimedia', 'XTAGFL110MY505794', 608, 'Плутон', 0, '2020', '16 кл. 106 л.с.', NULL, '5МТ', 'Свободен', '', '', '932200.00'),
(77, 'LadaGFK11', 1, '51', 'Cross Comfort', 'XTAGFK110MY505241', 221, 'Ледниковый', 0, '2020', '16 кл. 106 л.с.', NULL, '5МТ', 'Воздушный контракт', '', '', '945900.00'),
(78, 'LadaGFK11', 1, '51', 'Comfort Winter', 'XTAGFK110MY505154', 195, 'Сердолик', 0, '2020', '16 кл. 106 л.с.', NULL, '5МТ', 'Воздушный контракт', '', '', '910100.00'),
(80, 'LadaGFK44', 1, '51', 'Comfort', 'XTAGFK440MY505085', 476, 'Дайвинг', 0, '2020', '16 кл. 113 л.с.', NULL, 'Вариатор', 'Свободен', '', '', '961100.00'),
(81, 'LadaGFK11', 1, '51', 'Comfort', 'XTAGFK110MY505003', 195, 'Сердолик', 0, '2020', '16 кл. 106 л.с.', NULL, '5МТ', 'Свободен', '', '', '874100.00'),
(82, 'LadaGFK44', 1, '50', 'Classic Start Plus', 'XTAGFK440MY504964', 496, 'Фантом', 0, '2020', '16 кл. 113 л.с.', NULL, 'Вариатор', 'Свободен', '', '', '941100.00'),
(85, 'LadaGFK44', 1, '51', 'Comfort Winter', 'XTAGFK440MY505120', 608, 'Плутон', 0, '2020', '16 кл. 113 л.с.', NULL, 'Вариатор', 'Свободен', '', '', '1005100.00'),
(88, 'LadaGFL11', 1, '51', 'Comfort Winter', 'XTAGFL110MY505787', 608, 'Плутон', 0, '2020', '16 кл. 106 л.с.', NULL, '5МТ', 'Ремонт', '', '', '862600.00'),
(92, 'LadaRS045', 1, '51', 'Comfort', 'XTARS045LM1348387', 498, 'Лазурно-синий', 0, '2020', '16 кл. 106 л.с.', NULL, '5МТ', 'В резерве', '', '', '848300.00'),
(93, 'LadaKS045', 1, '51', 'Comfort', 'XTAKS045LM1348374', 676, 'Черная жемчужина', 0, '2020', '16 кл. 106 л.с.', NULL, '5МТ', 'Свободен', '', '', '833300.00'),
(96, 'LadaRS045', 1, '52', 'Кросс', 'XTARS045LM1348391', 136, 'Красный сплав', 0, '2020', '16 кл. 106 л.с.', NULL, '5МТ', 'Свободен', '', '', '925500.00'),
(97, 'LadaRS045', 1, '52', 'Кросс', 'XTARS045LM1348392', 242, 'Серый базальт', 0, '2020', '16 кл. 106 л.с.', NULL, '5МТ', 'Контракт', '', '', '848900.00'),
(98, 'LadaGFL11', 1, '50', 'Classic Start', 'XTAGFL110MY508164', 221, 'Ледниковый', 0, '2020', '16 кл. 106 л.с.', NULL, '5МТ', 'Контракт', '', '', '713900.00'),
(99, 'LadaGFL11', 1, '50', 'Classic Start', 'XTAGFL110MY508168', 221, 'Ледниковый', 0, '2020', '16 кл. 106 л.с.', NULL, '5МТ', 'Контракт', '', '', '713900.00'),
(100, 'LadaGFL11', 1, '50', 'Classic Start', 'XTAGFL110MY508154', 221, 'Ледниковый', 0, '2020', '16 кл. 106 л.с.', NULL, '5МТ', 'Флит', '', '', '713900.00'),
(101, 'LadaGFL11', 1, '50', 'Classic Start', 'XTAGFL110MY508183', 221, 'Ледниковый', 0, '2020', '16 кл. 106 л.с.', NULL, '5МТ', 'Флит', '', '', '713900.00'),
(102, 'LadaGFL11', 1, '50', 'Classic Start', 'XTAGFL110MY508161', 221, 'Ледниковый', 0, '2020', '16 кл. 106 л.с.', NULL, '5МТ', 'Флит', '', '', '713900.00'),
(103, 'LadaGFL11', 1, '50', 'Classic Start', 'XTAGFL110MY508165', 221, 'Ледниковый', 0, '2020', '16 кл. 106 л.с.', NULL, '5МТ', 'Флит', '', '', '713900.00'),
(104, 'LadaGFL11', 1, '50', 'Classic Start', 'XTAGFL110MY508160', 221, 'Ледниковый', 0, '2020', '16 кл. 106 л.с.', NULL, '5МТ', 'Флит', '', '', '713900.00'),
(105, 'LadaGFK11', 1, '51', ' Cross Comfort [BLACK]', 'XTAGFK110MY510146', 691, 'Платина', 0, '2020', '16 кл. 106 л.с.', NULL, '5МТ', 'Свободен', '', '', '994600.00'),
(106, 'LadaGFL11', 1, '50', 'Classic Start', 'XTAGFL110MY508167', 221, 'Ледниковый', 0, '2020', '16 кл. 106 л.с.', NULL, '5МТ', 'Флит', '', '', '713900.00'),
(107, 'LadaGFL11', 1, '50', 'Classic Start', 'XTAGFL110MY508185', 221, 'Ледниковый', 0, '2020', '16 кл. 106 л.с.', NULL, '5МТ', 'Флит', '', '', '713900.00'),
(108, 'LadaGFL11', 1, '50', 'Classic Start', 'XTAGFL110MY508187', 221, 'Ледниковый', 0, '2020', '16 кл. 106 л.с.', NULL, '5МТ', 'Флит', '', '', '713900.00'),
(109, 'LadaGFL11', 1, '50', 'Classic Start', 'XTAGFL110MY508169', 221, 'Ледниковый', 0, '2020', '16 кл. 106 л.с.', NULL, '5МТ', 'Флит', '', '', '713900.00'),
(110, 'LadaGFL11', 1, '50', 'Classic Start', 'XTAGFL110MY508173', 221, 'Ледниковый', 0, '2020', '16 кл. 106 л.с.', NULL, '5МТ', 'Флит', '', '', '713900.00'),
(111, 'LadaGFL11', 1, '50', 'Classic Start', 'XTAGFL110MY508166', 221, 'Ледниковый', 0, '2020', '16 кл. 106 л.с.', NULL, '5МТ', 'Флит', '', '', '713900.00'),
(112, 'LadaGFL11', 1, '50', 'Classic Start', 'XTAGFL110MY508186', 221, 'Ледниковый', 0, '2020', '16 кл. 106 л.с.', NULL, '5МТ', 'Флит', '', '', '713900.00'),
(113, 'LadaGFL11', 1, '50', 'Classic Start', 'XTAGFL110MY508163', 221, 'Ледниковый', 0, '2020', '16 кл. 106 л.с.', NULL, '5МТ', 'Флит', '', '', '713900.00'),
(114, 'Lada21230', 1, '54', 'Comfort Off-road Plus', 'X9L212300L0720482', 618, 'Техно', 0, '2020', '8 кл. 80 л.с.', NULL, '5МТ', 'Свободен', '', '', '876400.00'),
(115, 'Lada21230', 1, '55', 'Luxe Off-road', 'X9L212300L0720338', 618, 'Техно', 0, '2020', '8 кл. 80 л.с.', NULL, '5МТ', 'Свободен', '', '', '937300.00'),
(116, 'LadaGFLA1', 1, '51', 'Comfort', 'XTAGFLA10LY412144', 221, 'Ледниковый', 0, '2020', '16 кл. 106 л.с.', NULL, '5МТ', 'Контракт', '', '', '914900.00'),
(117, 'LadaGFLA1', 1, '51', 'Comfort', 'XTAGFLA10LY412138', 221, 'Ледниковый', 0, '2020', '16 кл. 106 л.с.', NULL, '5МТ', 'Флит', '', '', '914900.00'),
(118, 'LadaGFLA1', 1, '51', 'Comfort', 'XTAGFLA10LY412137', 221, 'Ледниковый', 0, '2020', '16 кл. 106 л.с.', NULL, '5МТ', 'Флит', '', '', '914900.00'),
(119, 'Lada21230', 1, '52', 'Comfort', 'X9L212300L0712144', 630, 'Кварц', 0, '2020', '8 кл. 80 л.с.', NULL, '5МТ', 'Ремонт', '', '', '837700.00'),
(120, 'LadaGFL44', 1, '50', 'Classic Start Plus', 'XTAGFL440LY433646', 221, 'Ледниковый', 0, '2020', '16 кл. 113 л.с.', NULL, 'Вариатор', 'Свободен', '', '', '888100.00'),
(121, 'LadaGFL11', 1, '51', 'Comfort Winter', 'XTAGFL110MY505780', 221, 'Ледниковый', 0, '2020', '16 кл. 106 л.с.', NULL, '5МТ', 'Свободен', '', '', '853500.00'),
(122, 'LadaGFK44', 1, '51', ' Cross Comfort [BLACK]', 'XTAGFK440MY510506', 691, 'Платина', 0, '2020', '16 кл. 113 л.с.', NULL, 'Вариатор', 'Свободен', '', '', '1068900.00'),
(124, 'LadaGFL11', 1, '52', 'Luxe Multimedia', 'XTAGFL110MY505789', 221, 'Ледниковый', 0, '2020', '16 кл. 106 л.с.', NULL, '5МТ', 'Свободен', '', '', '918600.00'),
(126, 'LadaRS045', 1, '51', 'Comfort', 'XTARS045LM1337927', 691, 'Платина', 0, '2020', '16 кл. 106 л.с.', NULL, '5МТ', 'Контракт', '', '', '855100.00'),
(127, 'Lada234900', 1, 'A1', 'ВИС Бортовой с удл. платформой', 'X6D234900M0742650', 240, 'Белое облако', 0, '2020', '8 кл. 87 л.с.', NULL, '5МТ', 'Контракт', '', '', '739000.00'),
(128, 'Lada21901', 1, 'A1', 'Classic', 'XTA219010M0728897', 240, 'Белое облако', 0, '2020', '8 кл. 87 л.с.', NULL, '5МТ', 'Контракт', '', '', '520500.00'),
(129, 'Lada21901', 1, 'A1', 'Comfort', 'XTA219010M0733578', 240, 'Белое облако', 0, '2020', '8 кл. 87 л.с.', NULL, '5МТ', 'Свободен', '', '', '620800.00'),
(130, 'Lada21901', 1, 'A0', 'Standard', 'XTA219010M0733281', 240, 'Белое облако', 0, '2020', '8 кл. 87 л.с.', NULL, '5МТ', 'Свободен', '', '', '540500.00'),
(131, 'Lada21901', 1, 'A0', 'Standard', 'XTA219010M0733283', 240, 'Белое облако', 0, '2020', '8 кл. 87 л.с.', NULL, '5МТ', 'Свободен', '', '', '541600.00'),
(132, 'Lada21911', 1, 'A1', 'Classic', 'XTA219110M0391369', 240, 'Белое облако', 0, '2020', '8 кл. 87 л.с.', NULL, '5МТ', 'Свободен', '', '', '586300.00'),
(133, 'Lada21911', 1, 'A0', 'Стандарт', 'XTA219110M0391347', 240, 'Белое облако', 0, '2020', '8 кл. 87 л.с.', NULL, '5МТ', 'Свободен', '', '', '560200.00'),
(134, 'Lada21911', 1, 'A1', 'Classic', 'XTA219110M0391367', 240, 'Белое облако', 0, '2020', '8 кл. 87 л.с.', NULL, '5МТ', 'Свободен', '', '', '589800.00'),
(135, 'Lada21911', 1, 'A0', 'Стандарт', 'XTA219110M0392321', 790, 'Кориандр', 0, '2020', '8 кл. 87 л.с.', NULL, '5МТ', 'Флит', '', '', '513900.00'),
(136, 'Lada21911', 1, 'A1', 'Comfort', 'XTA219110M0391394', 195, 'Сердолик', 0, '2020', '8 кл. 87 л.с.', NULL, '5МТ', 'Свободен', '', '', '643800.00'),
(138, 'Lada21911', 1, 'A0', 'Стандарт', 'XTA219110M0392322', 790, 'Кориандр', 0, '2020', '8 кл. 87 л.с.', NULL, '5МТ', 'Флит', '', '', '513900.00'),
(139, 'Lada234900', 1, 'A1', 'ВИС Промтоварный фургон,V=3,9 м3', 'X6D234900M0731715', 240, 'Белое облако', 0, '2020', '8 кл. 87 л.с.', NULL, '5МТ', 'Свободен', '', '', '770000.00'),
(140, 'Lada234900', 1, 'A1', 'ВИС Бортовой с удл. платформой', 'X6D234900M0721735', 240, 'Белое облако', 0, '2020', '8 кл. 87 л.с.', NULL, '5МТ', 'Контракт', '', '', '739000.00'),
(141, 'Lada21901', 1, 'A0', 'Standard', 'XTA219010M0747290', 672, 'Пантера', 0, '2020', '8 кл. 87 л.с.', NULL, '5МТ', 'Свободен', '', '', '542700.00'),
(142, 'Lada21901', 1, 'A0', 'Standard', 'XTA219010M0747291', 672, 'Пантера', 0, '2020', '8 кл. 87 л.с.', NULL, '5МТ', 'Свободен', '', '', '545700.00'),
(144, 'Lada21901', 1, 'A1', 'Comfort', 'XTA219010M0747364', 418, 'Голубая планета', 0, '2020', '8 кл. 87 л.с.', NULL, '5МТ', 'Свободен', '', '', '624800.00'),
(146, 'Lada21901', 1, 'A1', 'Comfort', 'XTA219010M0747358', 240, 'Белое облако', 0, '2020', '8 кл. 87 л.с.', NULL, '5МТ', 'Воздушный контракт', '', '', '617900.00'),
(147, 'Lada21901', 1, 'A1', 'Comfort', 'XTA219010M0747502', 633, 'Борнео', 0, '2020', '8 кл. 87 л.с.', NULL, '5МТ', 'Свободен', '', '', '623900.00'),
(148, 'Lada21907', 1, 'A1', 'Comfort', 'XTA219070M0747515', 790, 'Кориандр', 0, '2020', '16 кл. 106 л.с.', NULL, '5МТ', 'В резерве', '', '', '640900.00'),
(150, 'Lada21907', 1, 'A1', 'Classic Optima', 'XTA219070M0747508', 240, 'Белое облако', 0, '2020', '16 кл. 106 л.с.', NULL, '5АМТ', 'Свободен', '', '', '637900.00'),
(151, 'Lada21901', 1, 'A1', 'Classic', 'XTA219010M0747304', 418, 'Голубая планета', 0, '2020', '8 кл. 87 л.с.', NULL, '5МТ', 'Воздушный контракт', '', '', '575900.00'),
(152, 'Lada21901', 1, 'A1', 'Classic', 'XTA219010M0747298', 240, 'Белое облако', 0, '2020', '8 кл. 87 л.с.', NULL, '5МТ', 'К распределению', '', '', '569900.00'),
(153, 'Lada21907', 1, 'A1', 'Comfort', 'XTA219070M0747511', 610, 'Рислинг', 0, '2020', '16 кл. 106 л.с.', NULL, '5МТ', 'Свободен', '', '', '640900.00'),
(154, 'Lada21901', 1, 'A1', 'Comfort', 'XTA219010M0747503', 633, 'Борнео', 0, '2020', '8 кл. 87 л.с.', NULL, '5МТ', 'Воздушный контракт', '', '', '623900.00'),
(155, 'Lada21917', 1, 'A1', 'CLUB', 'XTA219170M0398069', 790, 'Кориандр', 0, '2020', '16 кл. 106 л.с.', NULL, '5МТ', 'Свободен', '', '', '673300.00'),
(156, 'Lada21917', 1, 'A1', 'CLUB', 'XTA219170M0398068', 418, 'Голубая планета', 0, '2020', '16 кл. 106 л.с.', NULL, '5МТ', 'Свободен', '', '', '673300.00'),
(157, 'Lada21911', 1, 'A1', 'Comfort', 'XTA219110M0398021', 418, 'Голубая планета', 0, '2020', '8 кл. 87 л.с.', NULL, '5МТ', 'Контракт', '', '', '641800.00'),
(158, 'Lada21911', 1, 'A1', 'Classic', 'XTA219110M0397998', 633, 'Борнео', 0, '2020', '8 кл. 87 л.с.', NULL, '5МТ', 'Свободен', '', '', '593800.00'),
(159, 'Lada21911', 1, 'A1', 'Classic', 'XTA219110M0397999', 633, 'Борнео', 0, '2020', '8 кл. 87 л.с.', NULL, '5МТ', 'Свободен', '', '', '593800.00'),
(160, 'Lada21917', 1, 'A1', 'Comfort', 'XTA219170M0398050', 418, 'Голубая планета', 0, '2020', '16 кл. 106 л.с.', NULL, '5МТ', 'Свободен', '', '', '659300.00'),
(161, 'Lada21911', 1, 'A1', 'Classic', 'XTA219110M0397993', 418, 'Голубая планета', 0, '2020', '8 кл. 87 л.с.', NULL, '5МТ', 'Свободен', '', '', '593800.00'),
(163, 'Lada21912', 1, 'A1', 'Comfort', 'XTA219120M0397276', 633, 'Борнео', 0, '2020', '16 кл. 98 л.с.', NULL, '4АТ', 'Контракт', '', '', '716600.00'),
(165, 'Lada21917', 1, 'A1', 'Comfort', 'XTA219170M0398053', 633, 'Борнео', 0, '2020', '16 кл. 106 л.с.', NULL, '5МТ', 'В резерве', '', '', '655900.00'),
(166, 'Lada21911', 1, 'A1', 'Classic', 'XTA219110M0397992', 240, 'Белое облако', 0, '2020', '8 кл. 87 л.с.', NULL, '5МТ', 'Свободен', '', '', '586900.00'),
(167, 'Lada21911', 1, 'A1', 'Classic Optima', 'XTA219110M0398002', 240, 'Белое облако', 0, '2020', '8 кл. 87 л.с.', NULL, '5МТ', 'Свободен', '', '', '612900.00'),
(168, 'Lada21911', 1, 'A1', 'CLUB', 'XTA219110M0398067', 618, 'Техно', 0, '2020', '8 кл. 87 л.с.', NULL, '5МТ', 'Свободен', '', '', '658300.00'),
(171, 'Lada21911', 1, 'A1', 'Comfort', 'XTA219110M0398026', 610, 'Рислинг', 0, '2020', '8 кл. 87 л.с.', NULL, '5МТ', 'Свободен', '', '', '641800.00'),
(172, 'Lada21911', 1, 'A1', 'Comfort', 'XTA219110M0398018', 240, 'Белое облако', 0, '2020', '8 кл. 87 л.с.', NULL, '5МТ', 'Свободен', '', '', '635800.00'),
(173, 'Lada21911', 1, 'A1', 'Comfort', 'XTA219110M0398028', 618, 'Техно', 0, '2020', '8 кл. 87 л.с.', NULL, '5МТ', 'Свободен', '', '', '641800.00'),
(174, 'Lada21911', 1, 'A1', 'Classic', 'XTA219110M0397996', 610, 'Рислинг', 0, '2020', '8 кл. 87 л.с.', NULL, '5МТ', 'Свободен', '', '', '593800.00'),
(175, 'Lada21911', 1, 'A1', 'Classic', 'XTA219110M0397991', 240, 'Белое облако', 0, '2020', '8 кл. 87 л.с.', NULL, '5МТ', 'Свободен', '', '', '587800.00'),
(177, 'Lada21911', 1, 'A1', 'Comfort', 'XTA219110M0398014', 195, 'Сердолик', 0, '2020', '8 кл. 87 л.с.', NULL, '5МТ', 'Свободен', '', '', '641800.00'),
(178, 'Lada21911', 1, 'A2', 'Luxe', 'XTA219110M0398072', 790, 'Кориандр', 0, '2020', '8 кл. 87 л.с.', NULL, '5МТ', 'Свободен', '', '', '683600.00'),
(179, 'Lada21917', 1, 'A1', 'Comfort', 'XTA219170M0398042', 195, 'Сердолик', 0, '2020', '16 кл. 106 л.с.', NULL, '5МТ', 'Свободен', '', '', '659300.00'),
(180, 'Lada21917', 1, 'A1', 'Comfort', 'XTA219170M0398043', 195, 'Сердолик', 0, '2020', '16 кл. 106 л.с.', NULL, '5МТ', 'Свободен', '', '', '656800.00'),
(181, 'Lada21911', 1, 'A1', 'Comfort', 'XTA219110M0398035', 672, 'Пантера', 0, '2020', '8 кл. 87 л.с.', NULL, '5МТ', 'К распределению', '', '', '634900.00'),
(182, 'Lada21911', 1, 'A1', 'Classic', 'XTA219110M0398000', 790, 'Кориандр', 0, '2020', '8 кл. 87 л.с.', NULL, '5МТ', 'Свободен', '', '', '592900.00'),
(184, 'Lada21941', 1, 'A1', 'Classic', 'XTA219410M0183588', 195, 'Сердолик', 0, '2020', '8 кл. 87 л.с.', NULL, '5МТ', 'Свободен', '', '', '666200.00'),
(185, 'Lada21941', 1, 'A1', 'Cross Quest', 'XTA219410M0183573', 418, 'Голубая планета', 0, '2020', '8 кл. 87 л.с.', NULL, '5МТ', 'К распределению', '', '', '713200.00'),
(186, 'Lada21911', 1, 'A0', 'Стандарт', 'XTA219110M0388618', 633, 'Борнео', 0, '2020', '8 кл. 87 л.с.', NULL, '5МТ', 'К распределению', '', '', '564200.00'),
(187, 'Lada21911', 1, 'A0', 'Стандарт', 'XTA219110M0388610', 240, 'Белое облако', 0, '2020', '8 кл. 87 л.с.', NULL, '5МТ', 'Воздушный контракт', '', '', '556700.00'),
(188, 'Lada21901', 1, 'A0', 'Standard', 'XTA219010M0731539', 418, 'Голубая планета', 0, '2020', '8 кл. 87 л.с.', NULL, '5МТ', 'Флит', '', '', '494900.00'),
(189, 'Lada21911', 1, 'A0', 'Стандарт', 'XTA219110M0388615', 610, 'Рислинг', 0, '2020', '8 кл. 87 л.с.', NULL, '5МТ', 'Воздушный контракт', '', '', '564200.00'),
(190, 'LadaGAB33', 1, '51', 'Comfort', 'XTAGAB330M1341042', 242, 'Серый базальт', 0, '2020', '16 кл. 122 л.с.', NULL, '5МТ', 'Свободен', '', '', '967300.00'),
(191, 'Lada21901', 1, 'A0', 'Standard', 'XTA219010M0753636', 240, 'Белое облако', 0, '2020', '8 кл. 87 л.с.', NULL, '5МТ', 'Флит', '', '', '488900.00'),
(192, 'LadaGFK33', 1, '52', 'Cross Luxe / Prestige', 'XTAGFK330MY505363', 221, 'Ледниковый', 0, '2020', '16 кл. 122 л.с.', NULL, '5МТ', 'Свободен', '', '', '1080600.00'),
(193, 'LadaGFK33', 1, '52', 'Cross Luxe / Multimedia', 'XTAGFK330MY505340', 608, 'Плутон', 0, '2020', '16 кл. 122 л.с.', NULL, '5МТ', 'Свободен', '', '', '1070600.00'),
(194, 'LadaGFL11', 1, '50', 'Classic Start', 'XTAGFL110MY502130', 221, 'Ледниковый', 0, '2020', '16 кл. 106 л.с.', NULL, '5МТ', 'Свободен', '', '', '787600.00'),
(195, 'LadaGFK11', 1, '51', ' Cross Comfort [BLACK]', 'XTAGFK110MY510092', 691, 'Платина', 0, '2020', '16 кл. 106 л.с.', NULL, '5МТ', 'В резерве', '', '', '986600.00'),
(196, 'LadaGFL11', 1, '51', 'Cross Comfort', 'XTAGFL110MY518175', 195, 'Сердолик', 0, '2020', '16 кл. 106 л.с.', NULL, '5МТ', 'Свободен', '', '', '909300.00'),
(197, 'LadaGFL11', 1, '51', 'Comfort Winter', 'XTAGFL110MY505778', 195, 'Сердолик', 0, '2020', '16 кл. 106 л.с.', NULL, '5МТ', 'Свободен', '', '', '866600.00'),
(199, 'LadaGFL11', 1, '51', 'Comfort', 'XTAGFL110MY505694', 221, 'Ледниковый', 0, '2020', '16 кл. 106 л.с.', NULL, '5МТ', 'В резерве', '', '', '818600.00'),
(200, 'LadaGFL11', 1, '51', 'Comfort', 'XTAGFL110MY505692', 195, 'Сердолик', 0, '2020', '16 кл. 106 л.с.', NULL, '5МТ', 'Свободен', '', '', '830600.00'),
(201, 'LadaGFK44', 1, '51', ' Cross Comfort [BLACK]', 'XTAGFK440MY510527', 691, 'Платина', 0, '2020', '16 кл. 113 л.с.', NULL, 'Вариатор', 'Свободен', '', '', '1071600.00'),
(202, 'LadaGFL11', 1, '51', 'Comfort', 'XTAGFL110MY518164', 653, 'Маэстро', 0, '2020', '16 кл. 106 л.с.', NULL, '5МТ', 'Свободен', '', '', '827600.00'),
(204, 'LadaGFL11', 1, '51', 'Comfort', 'XTAGFL110MY518162', 246, 'Ангкор', 0, '2020', '16 кл. 106 л.с.', NULL, '5МТ', 'Свободен', '', '', '827600.00'),
(205, 'LadaGFK44', 1, '51', ' Cross Comfort [BLACK]', 'XTAGFK440MY510516', 691, 'Платина', 0, '2020', '16 кл. 113 л.с.', NULL, 'Вариатор', 'Свободен', '', '', '1068900.00');

-- --------------------------------------------------------

--
-- Структура таблицы `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1606650547),
('m130524_201442_init', 1606650560);

-- --------------------------------------------------------

--
-- Структура таблицы `model`
--

CREATE TABLE `model` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `img` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `keywords` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `model`
--

INSERT INTO `model` (`id`, `title`, `img`, `code`, `description`, `keywords`) VALUES
(1, 'Granta седан', 'Granta', '2190', 'Granta', 'Granta'),
(2, 'Granta лифтбек', '', '2191', '', ''),
(3, 'Granta хэтчбек', '', '2192', '', ''),
(4, 'Granta универсал', '', '2194', '', ''),
(5, 'Granta Cross', '', '', '', ''),
(6, 'Granta учебная', '', '', '', ''),
(7, 'Granta Drive Active', '', '', '', ''),
(8, 'Vesta седан', '', '', '', ''),
(9, 'Vesta Cross', '', '', '', ''),
(10, 'Vesta SW', '', '', '', ''),
(11, 'Vesta SW Cross', '', '', '', ''),
(12, 'Vesta CNG', '', '', '', ''),
(13, 'Vesta Sport', '', '', '', ''),
(14, 'XRAY', '', '', '', ''),
(15, 'XRAY Cross', '', '', '', ''),
(16, 'Largus универсал', '', '', '', ''),
(17, 'Largus Cross', '', '', '', ''),
(18, 'Largus фургон', '', '', '', ''),
(19, 'Largus фургон CNG', '', '', '', ''),
(20, 'Largus Cross CNG', '', '', '', ''),
(21, 'Largus фургон CNG', '', '', '', ''),
(22, 'Niva', '', '', '', ''),
(23, 'Niva Off-road', '', '', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `created_at`, `updated_at`) VALUES
(1, 'admin', '45Vr7HDlFmBNQUe5Uma__-_woNn7dzGJ', '$2y$13$ZcZ79Fj7uSgc43A9PSlKjeMEIiODfqVGNDbvyHm2fXneo9o3UP4qK', NULL, 'm@shilov.pro', 10, 1606650732, 1606650732),
(2, 'jamike', 'R0qTXWZkosymtXMrBUYm0IUAcfCnD9xW', '$2y$13$bTmqHBAGcQKpo5c162p8YuxxuytLlLew73mSMy.coeq9FQk5qnjZe', NULL, 'shilov.m.o@yandex.ru', 10, 1606850513, 1606850513);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `car`
--
ALTER TABLE `car`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Индексы таблицы `model`
--
ALTER TABLE `model`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `password_reset_token` (`password_reset_token`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `car`
--
ALTER TABLE `car`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=206;

--
-- AUTO_INCREMENT для таблицы `model`
--
ALTER TABLE `model`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
