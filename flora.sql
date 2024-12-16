-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 16, 2024 at 04:20 AM
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
-- Database: `flora`
--

-- --------------------------------------------------------

--
-- Table structure for table `citymaster`
--

CREATE TABLE `citymaster` (
  `CityID` varchar(5) NOT NULL,
  `City` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `citymaster`
--

INSERT INTO `citymaster` (`CityID`, `City`) VALUES
('GJ1', 'Ahemdabad'),
('GJ2', 'Vadodra'),
('GJ3', 'Surat'),
('GJ4', 'Bhavnagar'),
('MH1', 'Mumbai'),
('MH2', 'Pune'),
('MH3', 'Nashik'),
('MH4', 'Thane'),
('MP1', 'Bhopal'),
('MP2', 'Ujjain'),
('MP3', 'Rewa'),
('MP4', 'Ratlam'),
('NCR1', 'Noida'),
('NCR2', 'Gurugram'),
('NCR3', 'Dwarka'),
('TN1', 'Chennai'),
('TN2', 'Coimbatore'),
('TN3', 'Vellore'),
('TN4', 'Madurai'),
('UP1', 'Lucknow'),
('UP2', 'Varanasi'),
('UP3', 'Kanpur'),
('UP4', 'Prayagraj'),
('WB1', 'Kolkata'),
('WB2', 'Darjeeling'),
('WB3', 'Howrah'),
('WB4', 'Siliguri');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `PlantID` int(11) NOT NULL,
  `GF_ID` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`PlantID`, `GF_ID`) VALUES
(1, 'BD'),
(8, 'BD'),
(18, 'AN'),
(19, 'WP'),
(27, 'FS'),
(39, 'HW'),
(40, 'WP'),
(42, 'WP'),
(45, 'HW'),
(50, 'HW'),
(53, 'HW'),
(55, 'AN'),
(56, 'FS'),
(57, 'AN'),
(58, 'FS'),
(59, 'FS'),
(60, 'HW'),
(60, 'WP'),
(61, 'BD'),
(61, 'FS'),
(62, 'FS'),
(62, 'HW'),
(62, 'WP'),
(63, 'BD'),
(63, 'WP'),
(64, 'AN'),
(64, 'HW');

-- --------------------------------------------------------

--
-- Table structure for table `gifting_purpose`
--

CREATE TABLE `gifting_purpose` (
  `GF_ID` varchar(10) NOT NULL,
  `purpose` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gifting_purpose`
--

INSERT INTO `gifting_purpose` (`GF_ID`, `purpose`) VALUES
('AN', 'anniversary'),
('BD', 'birthday'),
('FS', 'festival'),
('HW', 'housewarming'),
('WP', 'workplace');

-- --------------------------------------------------------

--
-- Table structure for table `masterplantstable`
--

CREATE TABLE `masterplantstable` (
  `PlantID` int(11) NOT NULL,
  `plantType` char(2) NOT NULL,
  `PlantName` varchar(35) NOT NULL,
  `Flowering` char(1) NOT NULL,
  `Indoor` char(1) NOT NULL,
  `Winter` char(1) DEFAULT NULL,
  `Summer` char(1) DEFAULT NULL,
  `Monsoon` char(1) DEFAULT NULL,
  `Fall` char(1) DEFAULT NULL,
  `Spring` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `masterplantstable`
--

INSERT INTO `masterplantstable` (`PlantID`, `plantType`, `PlantName`, `Flowering`, `Indoor`, `Winter`, `Summer`, `Monsoon`, `Fall`, `Spring`) VALUES
(1, 'SH', 'rose', 'Y', 'N', 'Y', NULL, NULL, NULL, NULL),
(2, 'SH', 'hibiscus', 'Y', 'N', NULL, 'Y', NULL, NULL, NULL),
(3, 'CL', 'bougainvillea', 'Y', 'N', NULL, 'Y', NULL, NULL, NULL),
(4, 'SH', 'jasmine', 'Y', 'N', NULL, 'Y', NULL, NULL, NULL),
(5, 'SH', 'marigold', 'Y', 'N', NULL, 'Y', NULL, NULL, NULL),
(6, 'SH', 'petunia', 'Y', 'N', 'Y', NULL, NULL, NULL, NULL),
(7, 'SH', 'dahlia', 'Y', 'N', NULL, 'Y', NULL, 'Y', NULL),
(8, 'HB', 'orchid', 'Y', 'Y', NULL, 'Y', NULL, NULL, NULL),
(9, 'SH', 'sunflower', 'Y', 'N', NULL, 'Y', NULL, NULL, NULL),
(10, 'SH', 'geranium', 'Y', 'N', 'Y', 'Y', NULL, NULL, NULL),
(11, 'SH', 'gladiolus', 'Y', 'N', NULL, NULL, 'Y', NULL, NULL),
(12, 'SH', 'begonia', 'Y', 'Y', 'Y', NULL, NULL, NULL, NULL),
(13, 'SH', 'pansy', 'Y', 'N', 'Y', NULL, NULL, NULL, NULL),
(14, 'SH', 'chrysanthemum', 'Y', 'N', 'Y', NULL, NULL, NULL, NULL),
(15, 'HB', 'lily', 'Y', 'Y', NULL, 'Y', NULL, NULL, 'Y'),
(16, 'SH', 'tulip', 'Y', 'N', 'Y', NULL, NULL, NULL, NULL),
(17, 'TR', 'bird of paradise', 'Y', 'Y', NULL, 'Y', NULL, NULL, NULL),
(18, 'CL', 'peace lily', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y'),
(19, 'CL', 'spider plant', 'N', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y'),
(20, 'TR', 'areca palm', 'N', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y'),
(21, 'HB', 'aloe vera(succulent)', 'N', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y'),
(22, 'TR', 'neem', 'N', 'N', 'Y', NULL, NULL, NULL, NULL),
(23, 'HB', 'tulsi/holy basil', 'N', 'N', 'Y', 'Y', 'Y', 'Y', 'Y'),
(24, 'HB', 'ashwagandha', 'Y', 'N', 'Y', 'Y', 'Y', 'Y', 'Y'),
(25, 'HB', 'peppermint', 'N', 'Y', NULL, 'Y', NULL, NULL, NULL),
(26, 'TR', 'eucalyptus', 'Y', 'N', NULL, 'Y', NULL, NULL, NULL),
(27, 'HB', 'lavender', 'Y', 'N', NULL, 'Y', NULL, NULL, NULL),
(28, 'HB', 'chamomile', 'Y', 'N', 'Y', 'Y', 'Y', 'Y', 'Y'),
(29, 'HB', 'fenugreek', 'N', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y'),
(30, 'HB', 'sage', 'N', 'Y', NULL, NULL, 'Y', NULL, NULL),
(31, 'HB', 'arnica', 'Y', 'N', NULL, NULL, 'Y', NULL, NULL),
(32, 'HB', 'brahmi', 'N', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y'),
(33, 'HB', 'lemon balm', 'N', 'Y', NULL, NULL, 'Y', NULL, NULL),
(34, 'TR', 'banyan bonsai', 'N', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y'),
(35, 'TR', 'amla/indian gooseberry', 'N', 'Y', NULL, 'Y', NULL, NULL, NULL),
(36, 'HB', 'basil', 'N', 'Y', NULL, 'Y', NULL, NULL, NULL),
(37, 'HB', 'oregano', 'N', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y'),
(38, 'HB', 'rosemary', 'N', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y'),
(39, 'CL', 'money plant', 'N', 'Y', 'Y', NULL, NULL, NULL, NULL),
(40, 'CR', 'snake plant(succulent)', 'N', 'Y', 'Y', NULL, NULL, NULL, NULL),
(41, 'CR', 'zz plant', 'N', 'N', 'Y', 'Y', 'Y', 'Y', 'Y'),
(42, 'CR', 'philodendron', 'N', 'N', 'Y', 'Y', 'Y', 'Y', 'Y'),
(43, 'SH', 'heliconia', 'N', 'Y', NULL, 'Y', NULL, NULL, NULL),
(44, 'SH', 'ixora', 'Y', 'N', 'Y', NULL, NULL, NULL, NULL),
(45, 'TR', 'lucky bamboo', 'N', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y'),
(46, 'HB', 'water lettuce', 'N', 'N', 'Y', NULL, NULL, NULL, NULL),
(47, 'CL', 'chinese evergreen', 'N', 'N', 'Y', 'Y', 'Y', 'Y', 'Y'),
(48, 'CR', 'anubias', 'N', 'N', 'Y', 'Y', 'Y', 'Y', 'Y'),
(49, 'CL', 'arrowhead plant', 'N', 'N', 'Y', 'Y', 'Y', 'Y', 'Y'),
(50, 'HB', 'fluffy fern', 'N', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y'),
(51, 'CL', 'water wisteria', 'N', 'N', 'Y', 'Y', 'Y', 'Y', 'Y'),
(52, 'HB', 'pennywort', 'N', 'N', NULL, NULL, 'Y', NULL, NULL),
(53, 'TR', 'jade plant(succulent)', 'N', 'N', 'Y', 'Y', 'Y', 'Y', 'Y'),
(54, 'HB', 'calatheas', 'N', 'N', 'Y', NULL, NULL, NULL, NULL),
(55, 'CL', 'hoya', 'N', 'N', 'Y', NULL, NULL, NULL, NULL),
(56, 'CL', 'christmas cactus', 'N', 'N', 'Y', NULL, NULL, NULL, NULL),
(57, 'TR', 'ficus bonsai', 'N', 'Y', NULL, 'Y', NULL, NULL, 'Y'),
(58, 'HB', 'golden ferns', 'N', 'N', 'Y', NULL, 'Y', NULL, NULL),
(59, 'HB', 'boston ferns', 'N', 'Y', NULL, 'Y', NULL, NULL, 'Y'),
(60, 'HB', 'burro’s tail(succulent)', 'Y', 'Y', NULL, 'Y', NULL, NULL, 'Y'),
(61, 'HB', 'flaming katy(succulent)', 'Y', 'Y', 'Y', NULL, NULL, NULL, 'Y'),
(62, 'HB', 'hens and chicks(succulent)', 'Y', 'Y', NULL, 'Y', NULL, NULL, 'Y'),
(63, 'HB', 'plush plant(succulents)', 'Y', 'N', 'Y', NULL, NULL, NULL, 'Y'),
(64, 'HB', 'sunburst (succulent)', 'Y', 'N', 'Y', NULL, NULL, NULL, 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `plantsimages`
--

CREATE TABLE `plantsimages` (
  `PlantID` int(11) NOT NULL,
  `Color_code` varchar(20) NOT NULL,
  `Image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `plantsimages`
--

INSERT INTO `plantsimages` (`PlantID`, `Color_code`, `Image`) VALUES
(1, 'PK', 'PinkRose.jpg'),
(1, 'RD', 'RedRose.jpg'),
(1, 'YL', 'YellowRose.jpeg'),
(2, 'PC', 'PeachHibiscus.jpg'),
(2, 'WH', 'WhiteHibiscus.jpg'),
(2, 'YL', 'YellowHibiscus.jpg'),
(3, 'RD', 'RedBouganvilla.jpg'),
(3, 'WH', 'WhiteBouganvilla.jpg'),
(3, 'YL', 'YellowBougainvillea.jpg'),
(4, 'WH', 'WhiteJasmine.jpg'),
(4, 'YL', 'YellowJasmine.jpg'),
(5, 'OR', 'orangeMarigold.jpg'),
(5, 'WH', 'whiteMarigold.jpg'),
(5, 'YL', 'YellowMarigold.jpg'),
(6, 'PU', 'purplePetunia.jpg'),
(6, 'RD', 'redPetunia.jpg'),
(6, 'WH', 'whitePetunia.jpg'),
(6, 'YL', 'yellowPetunia.jpg'),
(7, 'OR', 'orangeDahlia.jpg'),
(7, 'PC', 'peachDahlia.jpg'),
(7, 'PK', 'pinkDahlia.jpg'),
(7, 'PU', 'purpleDahlia.jpg'),
(7, 'RD', 'redDahlia.jpg'),
(7, 'WH', 'whiteDahlia.jpg'),
(7, 'YL', 'yellowDahlia.jpg'),
(8, 'BL', 'blueOrchid.jpg'),
(8, 'OR', 'orangeOrchid.jpg'),
(8, 'PK', 'pinkOrchid.jpg'),
(8, 'PU', 'purpleOrchid.jpg'),
(8, 'RD', 'redOrchid.jpg'),
(8, 'WH', 'whiteOrchid.jpg'),
(8, 'YL', 'yellowOrchid.jpg'),
(9, 'RD', 'redSunflower.jpg'),
(9, 'YL', 'yellowSunflower.jpg'),
(10, 'PK', 'pinkGeranium.jpg'),
(10, 'RD', 'redGeranium.jpg'),
(10, 'WH', 'whiteGeranium.jpg'),
(11, 'PK', 'pinkGladiolus.jpg'),
(11, 'WH', 'whiteGladiolus.jpg'),
(11, 'YL', 'yellowGladiolus.jpg'),
(12, 'PK', 'pinkBegonia.jpg'),
(12, 'WH', 'whiteBegonia.jpg'),
(13, 'BL', 'bluePansy.jpg'),
(13, 'PK', 'pinkPansy.jpg'),
(13, 'PU', 'purplePansy.jpg'),
(13, 'RD', 'redPansy.jpg'),
(13, 'WH', 'whitePansy.jpg'),
(13, 'YL', 'yellowPansy.jpg'),
(14, 'OR', 'orangeChrysanthemum.jpg'),
(14, 'PU', 'purpleChrysanthemum.jpg'),
(14, 'RD', 'redChrysanthemum.jpg'),
(14, 'WH', 'whiteChrysanthemum.jpg'),
(14, 'YL', 'yellowChrysanthemum.jpg'),
(15, 'OR', 'orangeLily.jpg'),
(15, 'PK', 'pinkLily.jpg'),
(15, 'RD', 'redLily.jpg'),
(15, 'WH', 'whiteLily.jpg'),
(15, 'YL', 'yellowLily.jpg'),
(16, 'OR', 'orangeTulip.jpg'),
(16, 'PK', 'pinkTulip.jpg'),
(16, 'RD', 'redTulip.jpg'),
(16, 'WH', 'whiteTulip.jpg'),
(16, 'YL', 'yellowTulip.jpg'),
(17, 'NULL', 'birdOfParadise.jpg'),
(18, 'OR', 'orangePeaceLily.jpg'),
(18, 'PK', 'pinkPeaceLily.jpg'),
(18, 'WH', 'whitePeaceLily.jpg'),
(18, 'YL', 'yellowPeaceLily.jpg'),
(19, 'NULL', 'SpiderPlant.jpg'),
(20, 'NULL', 'ArecaPalm.jpg'),
(21, 'NULL', 'AloeVera.png'),
(22, 'NULL', 'Neem.jpg'),
(23, 'NULL', 'Tulsi (Holy Basil).jpg'),
(24, 'NULL', 'Ashwagandha.jpg'),
(25, 'NULL', 'Peppermint.jpg'),
(26, 'NULL', 'Eucalyptus.jpg'),
(27, 'PU', 'Lavender.jpg'),
(28, 'NULL', 'Chamomile.jpg'),
(29, 'NULL', 'fenugreek.jpg'),
(30, 'NULL', 'sage.jpg'),
(31, 'NULL', 'Arnica.jpg'),
(32, 'NULL', 'Brahmi.jpg'),
(33, 'NULL', 'LemonBalm.jpg'),
(34, 'NULL', 'banyan.png'),
(35, 'NULL', 'amla.jpg'),
(36, 'NULL', 'Basil.jpg'),
(37, 'NULL', 'oregano.jpg'),
(38, 'NULL', 'rosemary.jpg'),
(39, 'NULL', 'moneyPlant.jpg'),
(40, 'NULL', 'snakePlant.jpg'),
(41, 'NULL', 'zzPlant.jpg'),
(42, 'NULL', 'Philodendron.jpg'),
(43, 'NULL', 'heliconia.jpg'),
(44, 'OR', 'orangeIxora.jpg'),
(44, 'PK', 'pinkIxora.jpg'),
(44, 'RD', 'redIxora.jpg'),
(44, 'WH', 'whiteIxora.jpg'),
(44, 'YL', 'yellowIxora.jpg'),
(45, 'NULL', 'luckyBamboo.jpg'),
(46, 'NULL', 'waterLettuce.jpg'),
(47, 'NULL', 'chineseEvergreen.jpg'),
(48, 'NULL', 'anubiasPlant.jpg'),
(49, 'NULL', 'ArrowheadPlant.jpg'),
(50, 'NULL', 'FluffyFern.jpg'),
(51, 'NULL', 'waterWisteria.jpg'),
(52, 'NULL', 'pennywortPlant.jpg'),
(53, 'NULL', 'jadePlant.jpg'),
(54, 'NULL', 'catheleas.jpg'),
(55, 'NULL', 'hoyaPlant.jpg'),
(56, 'NULL', 'ChristmasCactus.jpg'),
(57, 'NULL', 'ficusBonsai.jpg'),
(58, 'NULL', 'goldenFern.jpg'),
(59, 'NULL', 'bostonFern.jpg'),
(60, 'NULL', 'BurroTail.jpg'),
(61, 'NULL', 'FlamingKaty.jpg'),
(62, 'NULL', 'Hens&Chicks.jpg'),
(63, 'NULL', 'plushPlants.jpg'),
(64, 'NULL', 'sunburstPlant.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `planttype`
--

CREATE TABLE `planttype` (
  `typeID` char(2) NOT NULL,
  `type` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `planttype`
--

INSERT INTO `planttype` (`typeID`, `type`) VALUES
('CL', 'climbers'),
('CR', 'creepers'),
('HB', 'herbs'),
('SH', 'shrubs'),
('TR', 'trees');

-- --------------------------------------------------------

--
-- Table structure for table `plant_colors`
--

CREATE TABLE `plant_colors` (
  `Color_Code` varchar(10) NOT NULL,
  `Color_Name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `plant_colors`
--

INSERT INTO `plant_colors` (`Color_Code`, `Color_Name`) VALUES
('', ''),
('BL', 'Blue'),
('NULL', ''),
('OR', 'Orange'),
('PC', 'Peach'),
('PK', 'Pink'),
('PU', 'Purple'),
('RD', 'Red'),
('S_OF', 'Shades of'),
('WH', 'White'),
('YL', 'Yellow');

-- --------------------------------------------------------

--
-- Table structure for table `s1`
--

CREATE TABLE `s1` (
  `PlantID` int(11) NOT NULL,
  `Color` varchar(7) NOT NULL,
  `Price` int(11) DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `s1`
--

INSERT INTO `s1` (`PlantID`, `Color`, `Price`, `Quantity`) VALUES
(1, 'PK', 25, 90),
(1, 'RD', 25, 100),
(1, 'YL', 25, 80),
(2, 'PC', 30, 70),
(2, 'WH', 30, 60),
(2, 'YL', 30, 50),
(3, 'RD', 20, 140),
(3, 'WH', 20, 150),
(3, 'YL', 20, 130),
(4, 'WH', 15, 220),
(4, 'YL', 15, 200),
(5, 'OR', 10, 280),
(5, 'WH', 10, 250),
(5, 'YL', 10, 300),
(6, 'PU', 35, 70),
(6, 'RD', 35, 90),
(6, 'WH', 35, 100),
(6, 'YL', 35, 80),
(7, 'OR', 50, 50),
(7, 'PC', 50, 50),
(7, 'PK', 50, 50),
(7, 'PU', 50, 50),
(7, 'RD', 50, 50),
(7, 'WH', 50, 50),
(7, 'YL', 50, 50),
(8, 'BL', 100, 20),
(8, 'OR', 100, 20),
(8, 'PK', 100, 20),
(8, 'PU', 100, 20),
(8, 'RD', 100, 20),
(8, 'WH', 100, 20),
(8, 'YL', 100, 20),
(9, 'RD', 15, 140),
(9, 'YL', 15, 150),
(10, 'PK', 10, 160),
(10, 'RD', 10, 180),
(10, 'WH', 10, 200),
(11, 'PK', 20, 120),
(11, 'WH', 20, 130),
(11, 'YL', 20, 110),
(12, 'PK', 25, 90),
(12, 'WH', 25, 80),
(13, 'BL', 10, 100),
(13, 'PK', 10, 140),
(13, 'PU', 10, 130),
(13, 'RD', 10, 150),
(13, 'WH', 10, 110),
(13, 'YL', 10, 120),
(14, 'OR', 30, 70),
(14, 'PU', 30, 60),
(14, 'RD', 30, 80),
(14, 'WH', 30, 40),
(14, 'YL', 30, 50),
(15, 'OR', 20, 100),
(15, 'PK', 20, 90),
(15, 'RD', 20, 110),
(15, 'WH', 20, 70),
(15, 'YL', 20, 80),
(16, 'OR', 25, 50),
(16, 'PK', 25, 40),
(16, 'RD', 25, 60),
(16, 'WH', 25, 20),
(16, 'YL', 25, 30),
(17, 'NULL', 15, 90),
(18, 'OR', 30, 40),
(18, 'PK', 30, 30),
(18, 'WH', 30, 20),
(18, 'YL', 30, 50),
(19, 'NULL', 10, 150),
(20, 'NULL', 15, 100),
(21, 'NULL', 20, 80),
(22, 'NULL', 20, 70),
(23, 'NULL', 10, 90),
(24, 'NULL', 25, 60),
(25, 'NULL', 10, 120),
(26, 'NULL', 15, 110),
(27, 'PU', 30, 50),
(28, 'NULL', 20, 80),
(29, 'NULL', 15, 70),
(30, 'NULL', 10, 90),
(31, 'NULL', 20, 60),
(32, 'NULL', 25, 50),
(33, 'NULL', 15, 80),
(34, 'NULL', 20, 70),
(35, 'NULL', 10, 100),
(36, 'NULL', 30, 40),
(37, 'NULL', 25, 30),
(38, 'NULL', 20, 20),
(39, 'NULL', 10, 10),
(40, 'NULL', 50, 5),
(41, 'NULL', 15, 40),
(42, 'NULL', 20, 30),
(43, 'NULL', 25, 20),
(44, 'OR', 20, 10),
(44, 'PK', 20, 20),
(44, 'RD', 20, 5),
(44, 'WH', 20, 40),
(44, 'YL', 20, 30),
(45, 'NULL', 15, 50),
(46, 'NULL', 20, 40),
(47, 'NULL', 25, 30),
(48, 'NULL', 30, 20),
(49, 'NULL', 35, 10),
(50, 'NULL', 40, 5),
(51, 'NULL', 45, 5),
(52, 'NULL', 50, 5),
(53, 'NULL', 55, 5),
(54, 'NULL', 60, 5),
(55, 'NULL', 65, 5),
(56, 'NULL', 70, 5),
(57, 'NULL', 75, 5),
(58, 'NULL', 80, 5),
(59, 'NULL', 85, 5),
(60, 'NULL', 90, 5),
(61, 'NULL', 95, 5),
(62, 'NULL', 100, 5),
(63, 'NULL', 105, 5),
(64, 'NULL', 110, 5);

-- --------------------------------------------------------

--
-- Table structure for table `s2`
--

CREATE TABLE `s2` (
  `PlantID` int(11) NOT NULL,
  `Color` varchar(7) NOT NULL,
  `Price` int(11) DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `s2`
--

INSERT INTO `s2` (`PlantID`, `Color`, `Price`, `Quantity`) VALUES
(1, 'PK', 25, 90),
(1, 'RD', 25, 100),
(1, 'YL', 25, 80),
(2, 'PC', 30, 70),
(2, 'WH', 30, 60),
(2, 'YL', 30, 50),
(3, 'RD', 20, 140),
(3, 'WH', 20, 150),
(3, 'YL', 20, 130),
(4, 'WH', 15, 220),
(4, 'YL', 15, 200),
(5, 'OR', 10, 280),
(5, 'WH', 10, 250),
(5, 'YL', 10, 300),
(6, 'PU', 35, 70),
(6, 'RD', 35, 90),
(6, 'WH', 35, 100),
(6, 'YL', 35, 80),
(7, 'OR', 50, 50),
(7, 'PC', 50, 50),
(7, 'PK', 50, 50),
(7, 'PU', 50, 50),
(7, 'RD', 50, 50),
(7, 'WH', 50, 50),
(7, 'YL', 50, 50),
(8, 'BL', 100, 20),
(8, 'OR', 100, 20),
(8, 'PK', 100, 20),
(8, 'PU', 100, 20),
(8, 'RD', 100, 20),
(8, 'WH', 100, 20),
(8, 'YL', 100, 20),
(9, 'RD', 15, 140),
(9, 'YL', 15, 150),
(10, 'PK', 10, 160),
(10, 'RD', 10, 180),
(10, 'WH', 10, 200),
(11, 'PK', 20, 120),
(11, 'WH', 20, 130),
(11, 'YL', 20, 110),
(12, 'PK', 25, 90),
(12, 'WH', 25, 80),
(13, 'BL', 10, 100),
(13, 'PK', 10, 140),
(13, 'PU', 10, 130),
(13, 'RD', 10, 150),
(13, 'WH', 10, 110),
(13, 'YL', 10, 120),
(14, 'OR', 30, 70),
(14, 'PU', 30, 60),
(14, 'RD', 30, 80),
(14, 'WH', 30, 40),
(14, 'YL', 30, 50),
(15, 'OR', 20, 100),
(15, 'PK', 20, 90),
(15, 'RD', 20, 110),
(15, 'WH', 20, 70),
(15, 'YL', 20, 80),
(16, 'OR', 25, 50),
(16, 'PK', 25, 40),
(16, 'RD', 25, 60),
(16, 'WH', 25, 20),
(16, 'YL', 25, 30),
(17, 'NULL', 15, 90),
(18, 'OR', 30, 40),
(18, 'PK', 30, 30),
(18, 'WH', 30, 20),
(18, 'YL', 30, 50),
(19, 'NULL', 10, 150),
(20, 'NULL', 15, 100),
(21, 'NULL', 20, 80),
(22, 'NULL', 20, 70),
(23, 'NULL', 10, 90),
(24, 'NULL', 25, 60),
(25, 'NULL', 10, 120),
(26, 'NULL', 15, 110),
(27, 'PU', 30, 50),
(28, 'NULL', 20, 80),
(29, 'NULL', 15, 70),
(30, 'NULL', 10, 90),
(31, 'NULL', 20, 60),
(32, 'NULL', 25, 50),
(33, 'NULL', 15, 80),
(34, 'NULL', 20, 70),
(35, 'NULL', 10, 100),
(36, 'NULL', 30, 40),
(37, 'NULL', 25, 30),
(38, 'NULL', 20, 20),
(39, 'NULL', 10, 10),
(40, 'NULL', 50, 5),
(41, 'NULL', 15, 40),
(42, 'NULL', 20, 30),
(43, 'NULL', 25, 20),
(44, 'OR', 20, 10),
(44, 'PK', 20, 20),
(44, 'RD', 20, 5),
(44, 'WH', 20, 40),
(44, 'YL', 20, 30),
(45, 'NULL', 15, 50),
(46, 'NULL', 20, 40),
(47, 'NULL', 25, 30),
(48, 'NULL', 30, 20),
(49, 'NULL', 35, 10),
(50, 'NULL', 40, 5),
(51, 'NULL', 45, 5),
(52, 'NULL', 50, 5),
(53, 'NULL', 55, 5),
(54, 'NULL', 60, 5),
(55, 'NULL', 65, 5),
(56, 'NULL', 70, 5),
(57, 'NULL', 75, 5),
(58, 'NULL', 80, 5),
(59, 'NULL', 85, 5),
(60, 'NULL', 90, 5),
(61, 'NULL', 95, 5),
(62, 'NULL', 100, 5),
(63, 'NULL', 105, 5),
(64, 'NULL', 110, 5);

-- --------------------------------------------------------

--
-- Table structure for table `s3`
--

CREATE TABLE `s3` (
  `PlantID` int(11) NOT NULL,
  `Color` varchar(7) NOT NULL,
  `Price` int(11) DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `s3`
--

INSERT INTO `s3` (`PlantID`, `Color`, `Price`, `Quantity`) VALUES
(1, 'PK', 25, 90),
(1, 'RD', 25, 100),
(1, 'YL', 25, 80),
(2, 'PC', 30, 70),
(2, 'WH', 30, 60),
(2, 'YL', 30, 50),
(3, 'RD', 20, 140),
(3, 'WH', 20, 150),
(3, 'YL', 20, 130),
(4, 'WH', 15, 220),
(4, 'YL', 15, 200),
(5, 'OR', 10, 280),
(5, 'WH', 10, 250),
(5, 'YL', 10, 300),
(6, 'PU', 35, 70),
(6, 'RD', 35, 90),
(6, 'WH', 35, 100),
(6, 'YL', 35, 80),
(7, 'OR', 50, 50),
(7, 'PC', 50, 50),
(7, 'PK', 50, 50),
(7, 'PU', 50, 50),
(7, 'RD', 50, 50),
(7, 'WH', 50, 50),
(7, 'YL', 50, 50),
(8, 'BL', 100, 20),
(8, 'OR', 100, 20),
(8, 'PK', 100, 20),
(8, 'PU', 100, 20),
(8, 'RD', 100, 20),
(8, 'WH', 100, 20),
(8, 'YL', 100, 20),
(9, 'RD', 15, 140),
(9, 'YL', 15, 150),
(10, 'PK', 10, 160),
(10, 'RD', 10, 180),
(10, 'WH', 10, 200),
(11, 'PK', 20, 120),
(11, 'WH', 20, 130),
(11, 'YL', 20, 110),
(12, 'PK', 25, 90),
(12, 'WH', 25, 80),
(13, 'BL', 10, 100),
(13, 'PK', 10, 140),
(13, 'PU', 10, 130),
(13, 'RD', 10, 150),
(13, 'WH', 10, 110),
(13, 'YL', 10, 120),
(14, 'OR', 30, 70),
(14, 'PU', 30, 60),
(14, 'RD', 30, 80),
(14, 'WH', 30, 40),
(14, 'YL', 30, 50),
(15, 'OR', 20, 100),
(15, 'PK', 20, 90),
(15, 'RD', 20, 110),
(15, 'WH', 20, 70),
(15, 'YL', 20, 80),
(16, 'OR', 25, 50),
(16, 'PK', 25, 40),
(16, 'RD', 25, 60),
(16, 'WH', 25, 20),
(16, 'YL', 25, 30),
(17, 'NULL', 15, 90),
(18, 'OR', 30, 40),
(18, 'PK', 30, 30),
(18, 'WH', 30, 20),
(18, 'YL', 30, 50),
(19, 'NULL', 10, 150),
(20, 'NULL', 15, 100),
(21, 'NULL', 20, 80),
(22, 'NULL', 20, 70),
(23, 'NULL', 10, 90),
(24, 'NULL', 25, 60),
(25, 'NULL', 10, 120),
(26, 'NULL', 15, 110),
(27, 'PU', 30, 50),
(28, 'NULL', 20, 80),
(29, 'NULL', 15, 70),
(30, 'NULL', 10, 90),
(31, 'NULL', 20, 60),
(32, 'NULL', 25, 50),
(33, 'NULL', 15, 80),
(34, 'NULL', 20, 70),
(35, 'NULL', 10, 100),
(36, 'NULL', 30, 40),
(37, 'NULL', 25, 30),
(38, 'NULL', 20, 20),
(39, 'NULL', 10, 10),
(40, 'NULL', 50, 5),
(41, 'NULL', 15, 40),
(42, 'NULL', 20, 30),
(43, 'NULL', 25, 20),
(44, 'OR', 20, 10),
(44, 'PK', 20, 20),
(44, 'RD', 20, 5),
(44, 'WH', 20, 40),
(44, 'YL', 20, 30),
(45, 'NULL', 15, 50),
(46, 'NULL', 20, 40),
(47, 'NULL', 25, 30),
(48, 'NULL', 30, 20),
(49, 'NULL', 35, 10),
(50, 'NULL', 40, 5),
(51, 'NULL', 45, 5),
(52, 'NULL', 50, 5),
(53, 'NULL', 55, 5),
(54, 'NULL', 60, 5),
(55, 'NULL', 65, 5),
(56, 'NULL', 70, 5),
(57, 'NULL', 75, 5),
(58, 'NULL', 80, 5),
(59, 'NULL', 85, 5),
(60, 'NULL', 90, 5),
(61, 'NULL', 95, 5),
(62, 'NULL', 100, 5),
(63, 'NULL', 105, 5),
(64, 'NULL', 110, 5);

-- --------------------------------------------------------

--
-- Table structure for table `s4`
--

CREATE TABLE `s4` (
  `PlantID` int(11) NOT NULL,
  `Color` varchar(7) NOT NULL,
  `Price` int(11) DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `s4`
--

INSERT INTO `s4` (`PlantID`, `Color`, `Price`, `Quantity`) VALUES
(1, 'PK', 25, 90),
(1, 'RD', 25, 100),
(1, 'YL', 25, 80),
(2, 'PC', 30, 70),
(2, 'WH', 30, 60),
(2, 'YL', 30, 50),
(3, 'RD', 20, 140),
(3, 'WH', 20, 150),
(3, 'YL', 20, 130),
(4, 'WH', 15, 220),
(4, 'YL', 15, 200),
(5, 'OR', 10, 280),
(5, 'WH', 10, 250),
(5, 'YL', 10, 300),
(6, 'PU', 35, 70),
(6, 'RD', 35, 90),
(6, 'WH', 35, 100),
(6, 'YL', 35, 80),
(7, 'OR', 50, 50),
(7, 'PC', 50, 50),
(7, 'PK', 50, 50),
(7, 'PU', 50, 50),
(7, 'RD', 50, 50),
(7, 'WH', 50, 50),
(7, 'YL', 50, 50),
(8, 'BL', 100, 20),
(8, 'OR', 100, 20),
(8, 'PK', 100, 20),
(8, 'PU', 100, 20),
(8, 'RD', 100, 20),
(8, 'WH', 100, 20),
(8, 'YL', 100, 20),
(9, 'RD', 15, 140),
(9, 'YL', 15, 150),
(10, 'PK', 10, 160),
(10, 'RD', 10, 180),
(10, 'WH', 10, 200),
(11, 'PK', 20, 120),
(11, 'WH', 20, 130),
(11, 'YL', 20, 110),
(12, 'PK', 25, 90),
(12, 'WH', 25, 80),
(13, 'BL', 10, 100),
(13, 'PK', 10, 140),
(13, 'PU', 10, 130),
(13, 'RD', 10, 150),
(13, 'WH', 10, 110),
(13, 'YL', 10, 120),
(14, 'OR', 30, 70),
(14, 'PU', 30, 60),
(14, 'RD', 30, 80),
(14, 'WH', 30, 40),
(14, 'YL', 30, 50),
(15, 'OR', 20, 100),
(15, 'PK', 20, 90),
(15, 'RD', 20, 110),
(15, 'WH', 20, 70),
(15, 'YL', 20, 80),
(16, 'OR', 25, 50),
(16, 'PK', 25, 40),
(16, 'RD', 25, 60),
(16, 'WH', 25, 20),
(16, 'YL', 25, 30),
(17, 'NULL', 15, 90),
(18, 'OR', 30, 40),
(18, 'PK', 30, 30),
(18, 'WH', 30, 20),
(18, 'YL', 30, 50),
(19, 'NULL', 10, 150),
(20, 'NULL', 15, 100),
(21, 'NULL', 20, 80),
(22, 'NULL', 20, 70),
(23, 'NULL', 10, 90),
(24, 'NULL', 25, 60),
(25, 'NULL', 10, 120),
(26, 'NULL', 15, 110),
(27, 'PU', 30, 50),
(28, 'NULL', 20, 80),
(29, 'NULL', 15, 70),
(30, 'NULL', 10, 90),
(31, 'NULL', 20, 60),
(32, 'NULL', 25, 50),
(33, 'NULL', 15, 80),
(34, 'NULL', 20, 70),
(35, 'NULL', 10, 100),
(36, 'NULL', 30, 40),
(37, 'NULL', 25, 30),
(38, 'NULL', 20, 20),
(39, 'NULL', 10, 10),
(40, 'NULL', 50, 5),
(41, 'NULL', 15, 40),
(42, 'NULL', 20, 30),
(43, 'NULL', 25, 20),
(44, 'OR', 20, 10),
(44, 'PK', 20, 20),
(44, 'RD', 20, 5),
(44, 'WH', 20, 40),
(44, 'YL', 20, 30),
(45, 'NULL', 15, 50),
(46, 'NULL', 20, 40),
(47, 'NULL', 25, 30),
(48, 'NULL', 30, 20),
(49, 'NULL', 35, 10),
(50, 'NULL', 40, 5),
(51, 'NULL', 45, 5),
(52, 'NULL', 50, 5),
(53, 'NULL', 55, 5),
(54, 'NULL', 60, 5),
(55, 'NULL', 65, 5),
(56, 'NULL', 70, 5),
(57, 'NULL', 75, 5),
(58, 'NULL', 80, 5),
(59, 'NULL', 85, 5),
(60, 'NULL', 90, 5),
(61, 'NULL', 95, 5),
(62, 'NULL', 100, 5),
(63, 'NULL', 105, 5),
(64, 'NULL', 110, 5);

-- --------------------------------------------------------

--
-- Table structure for table `s5`
--

CREATE TABLE `s5` (
  `PlantID` int(11) NOT NULL,
  `Color` varchar(7) NOT NULL,
  `Price` int(11) DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `s5`
--

INSERT INTO `s5` (`PlantID`, `Color`, `Price`, `Quantity`) VALUES
(1, 'PK', 25, 90),
(1, 'RD', 25, 100),
(1, 'YL', 25, 80),
(2, 'PC', 30, 70),
(2, 'WH', 30, 60),
(2, 'YL', 30, 50),
(3, 'RD', 20, 140),
(3, 'WH', 20, 150),
(3, 'YL', 20, 130),
(4, 'WH', 15, 220),
(4, 'YL', 15, 200),
(5, 'OR', 10, 280),
(5, 'WH', 10, 250),
(5, 'YL', 10, 300),
(6, 'PU', 35, 70),
(6, 'RD', 35, 90),
(6, 'WH', 35, 100),
(6, 'YL', 35, 80),
(7, 'OR', 50, 50),
(7, 'PC', 50, 50),
(7, 'PK', 50, 50),
(7, 'PU', 50, 50),
(7, 'RD', 50, 50),
(7, 'WH', 50, 50),
(7, 'YL', 50, 50),
(8, 'BL', 100, 20),
(8, 'OR', 100, 20),
(8, 'PK', 100, 20),
(8, 'PU', 100, 20),
(8, 'RD', 100, 20),
(8, 'WH', 100, 20),
(8, 'YL', 100, 20),
(9, 'RD', 15, 140),
(9, 'YL', 15, 150),
(10, 'PK', 10, 160),
(10, 'RD', 10, 180),
(10, 'WH', 10, 200),
(11, 'PK', 20, 120),
(11, 'WH', 20, 130),
(11, 'YL', 20, 110),
(12, 'PK', 25, 90),
(12, 'WH', 25, 80),
(13, 'BL', 10, 100),
(13, 'PK', 10, 140),
(13, 'PU', 10, 130),
(13, 'RD', 10, 150),
(13, 'WH', 10, 110),
(13, 'YL', 10, 120),
(14, 'OR', 30, 70),
(14, 'PU', 30, 60),
(14, 'RD', 30, 80),
(14, 'WH', 30, 40),
(14, 'YL', 30, 50),
(15, 'OR', 20, 100),
(15, 'PK', 20, 90),
(15, 'RD', 20, 110),
(15, 'WH', 20, 70),
(15, 'YL', 20, 80),
(16, 'OR', 25, 50),
(16, 'PK', 25, 40),
(16, 'RD', 25, 60),
(16, 'WH', 25, 20),
(16, 'YL', 25, 30),
(17, 'NULL', 15, 90),
(18, 'OR', 30, 40),
(18, 'PK', 30, 30),
(18, 'WH', 30, 20),
(18, 'YL', 30, 50),
(19, 'NULL', 10, 150),
(20, 'NULL', 15, 100),
(21, 'NULL', 20, 80),
(22, 'NULL', 20, 70),
(23, 'NULL', 10, 90),
(24, 'NULL', 25, 60),
(25, 'NULL', 10, 120),
(26, 'NULL', 15, 110),
(27, 'PU', 30, 50),
(28, 'NULL', 20, 80),
(29, 'NULL', 15, 70),
(30, 'NULL', 10, 90),
(31, 'NULL', 20, 60),
(32, 'NULL', 25, 50),
(33, 'NULL', 15, 80),
(34, 'NULL', 20, 70),
(35, 'NULL', 10, 100),
(36, 'NULL', 30, 40),
(37, 'NULL', 25, 30),
(38, 'NULL', 20, 20),
(39, 'NULL', 10, 10),
(40, 'NULL', 50, 5),
(41, 'NULL', 15, 40),
(42, 'NULL', 20, 30),
(43, 'NULL', 25, 20),
(44, 'OR', 20, 10),
(44, 'PK', 20, 20),
(44, 'RD', 20, 5),
(44, 'WH', 20, 40),
(44, 'YL', 20, 30),
(45, 'NULL', 15, 50),
(46, 'NULL', 20, 40),
(47, 'NULL', 25, 30),
(48, 'NULL', 30, 20),
(49, 'NULL', 35, 10),
(50, 'NULL', 40, 5),
(51, 'NULL', 45, 5),
(52, 'NULL', 50, 5),
(53, 'NULL', 55, 5),
(54, 'NULL', 60, 5),
(55, 'NULL', 65, 5),
(56, 'NULL', 70, 5),
(57, 'NULL', 75, 5),
(58, 'NULL', 80, 5),
(59, 'NULL', 85, 5),
(60, 'NULL', 90, 5),
(61, 'NULL', 95, 5),
(62, 'NULL', 100, 5),
(63, 'NULL', 105, 5),
(64, 'NULL', 110, 5);

-- --------------------------------------------------------

--
-- Table structure for table `s6`
--

CREATE TABLE `s6` (
  `PlantID` int(11) NOT NULL,
  `Color` varchar(7) NOT NULL,
  `Price` int(11) DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `s6`
--

INSERT INTO `s6` (`PlantID`, `Color`, `Price`, `Quantity`) VALUES
(1, 'PK', 25, 90),
(1, 'RD', 25, 100),
(1, 'YL', 25, 80),
(2, 'PC', 30, 70),
(2, 'WH', 30, 60),
(2, 'YL', 30, 50),
(3, 'RD', 20, 140),
(3, 'WH', 20, 150),
(3, 'YL', 20, 130),
(4, 'WH', 15, 220),
(4, 'YL', 15, 200),
(5, 'OR', 10, 280),
(5, 'WH', 10, 250),
(5, 'YL', 10, 300),
(6, 'PU', 35, 70),
(6, 'RD', 35, 90),
(6, 'WH', 35, 100),
(6, 'YL', 35, 80),
(7, 'OR', 50, 50),
(7, 'PC', 50, 50),
(7, 'PK', 50, 50),
(7, 'PU', 50, 50),
(7, 'RD', 50, 50),
(7, 'WH', 50, 50),
(7, 'YL', 50, 50),
(8, 'BL', 100, 20),
(8, 'OR', 100, 20),
(8, 'PK', 100, 20),
(8, 'PU', 100, 20),
(8, 'RD', 100, 20),
(8, 'WH', 100, 20),
(8, 'YL', 100, 20),
(9, 'RD', 15, 140),
(9, 'YL', 15, 150),
(10, 'PK', 10, 160),
(10, 'RD', 10, 180),
(10, 'WH', 10, 200),
(11, 'PK', 20, 120),
(11, 'WH', 20, 130),
(11, 'YL', 20, 110),
(12, 'PK', 25, 90),
(12, 'WH', 25, 80),
(13, 'BL', 10, 100),
(13, 'PK', 10, 140),
(13, 'PU', 10, 130),
(13, 'RD', 10, 150),
(13, 'WH', 10, 110),
(13, 'YL', 10, 120),
(14, 'OR', 30, 70),
(14, 'PU', 30, 60),
(14, 'RD', 30, 80),
(14, 'WH', 30, 40),
(14, 'YL', 30, 50),
(15, 'OR', 20, 100),
(15, 'PK', 20, 90),
(15, 'RD', 20, 110),
(15, 'WH', 20, 70),
(15, 'YL', 20, 80),
(16, 'OR', 25, 50),
(16, 'PK', 25, 40),
(16, 'RD', 25, 60),
(16, 'WH', 25, 20),
(16, 'YL', 25, 30),
(17, 'NULL', 15, 90),
(18, 'OR', 30, 40),
(18, 'PK', 30, 30),
(18, 'WH', 30, 20),
(18, 'YL', 30, 50),
(19, 'NULL', 10, 150),
(20, 'NULL', 15, 100),
(21, 'NULL', 20, 80),
(22, 'NULL', 20, 70),
(23, 'NULL', 10, 90),
(24, 'NULL', 25, 60),
(25, 'NULL', 10, 120),
(26, 'NULL', 15, 110),
(27, 'PU', 30, 50),
(28, 'NULL', 20, 80),
(29, 'NULL', 15, 70),
(30, 'NULL', 10, 90),
(31, 'NULL', 20, 60),
(32, 'NULL', 25, 50),
(33, 'NULL', 15, 80),
(34, 'NULL', 20, 70),
(35, 'NULL', 10, 100),
(36, 'NULL', 30, 40),
(37, 'NULL', 25, 30),
(38, 'NULL', 20, 20),
(39, 'NULL', 10, 10),
(40, 'NULL', 50, 5),
(41, 'NULL', 15, 40),
(42, 'NULL', 20, 30),
(43, 'NULL', 25, 20),
(44, 'OR', 20, 10),
(44, 'PK', 20, 20),
(44, 'RD', 20, 5),
(44, 'WH', 20, 40),
(44, 'YL', 20, 30),
(45, 'NULL', 15, 50),
(46, 'NULL', 20, 40),
(47, 'NULL', 25, 30),
(48, 'NULL', 30, 20),
(49, 'NULL', 35, 10),
(50, 'NULL', 40, 5),
(51, 'NULL', 45, 5),
(52, 'NULL', 50, 5),
(53, 'NULL', 55, 5),
(54, 'NULL', 60, 5),
(55, 'NULL', 65, 5),
(56, 'NULL', 70, 5),
(57, 'NULL', 75, 5),
(58, 'NULL', 80, 5),
(59, 'NULL', 85, 5),
(60, 'NULL', 90, 5),
(61, 'NULL', 95, 5),
(62, 'NULL', 100, 5),
(63, 'NULL', 105, 5),
(64, 'NULL', 110, 5);

-- --------------------------------------------------------

--
-- Table structure for table `s7`
--

CREATE TABLE `s7` (
  `PlantID` int(11) NOT NULL,
  `Color` varchar(7) NOT NULL,
  `Price` int(11) DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `s7`
--

INSERT INTO `s7` (`PlantID`, `Color`, `Price`, `Quantity`) VALUES
(1, 'PK', 25, 90),
(1, 'RD', 25, 100),
(1, 'YL', 25, 80),
(2, 'PC', 30, 70),
(2, 'WH', 30, 60),
(2, 'YL', 30, 50),
(3, 'RD', 20, 140),
(3, 'WH', 20, 150),
(3, 'YL', 20, 130),
(4, 'WH', 15, 220),
(4, 'YL', 15, 200),
(5, 'OR', 10, 280),
(5, 'WH', 10, 250),
(5, 'YL', 10, 300),
(6, 'PU', 35, 70),
(6, 'RD', 35, 90),
(6, 'WH', 35, 100),
(6, 'YL', 35, 80),
(7, 'OR', 50, 50),
(7, 'PC', 50, 50),
(7, 'PK', 50, 50),
(7, 'PU', 50, 50),
(7, 'RD', 50, 50),
(7, 'WH', 50, 50),
(7, 'YL', 50, 50),
(8, 'BL', 100, 20),
(8, 'OR', 100, 20),
(8, 'PK', 100, 20),
(8, 'PU', 100, 20),
(8, 'RD', 100, 20),
(8, 'WH', 100, 20),
(8, 'YL', 100, 20),
(9, 'RD', 15, 140),
(9, 'YL', 15, 150),
(10, 'PK', 10, 160),
(10, 'RD', 10, 180),
(10, 'WH', 10, 200),
(11, 'PK', 20, 120),
(11, 'WH', 20, 130),
(11, 'YL', 20, 110),
(12, 'PK', 25, 90),
(12, 'WH', 25, 80),
(13, 'BL', 10, 100),
(13, 'PK', 10, 140),
(13, 'PU', 10, 130),
(13, 'RD', 10, 150),
(13, 'WH', 10, 110),
(13, 'YL', 10, 120),
(14, 'OR', 30, 70),
(14, 'PU', 30, 60),
(14, 'RD', 30, 80),
(14, 'WH', 30, 40),
(14, 'YL', 30, 50),
(15, 'OR', 20, 100),
(15, 'PK', 20, 90),
(15, 'RD', 20, 110),
(15, 'WH', 20, 70),
(15, 'YL', 20, 80),
(16, 'OR', 25, 50),
(16, 'PK', 25, 40),
(16, 'RD', 25, 60),
(16, 'WH', 25, 20),
(16, 'YL', 25, 30),
(17, 'NULL', 15, 90),
(18, 'OR', 30, 40),
(18, 'PK', 30, 30),
(18, 'WH', 30, 20),
(18, 'YL', 30, 50),
(19, 'NULL', 10, 150),
(20, 'NULL', 15, 100),
(21, 'NULL', 20, 80),
(22, 'NULL', 20, 70),
(23, 'NULL', 10, 90),
(24, 'NULL', 25, 60),
(25, 'NULL', 10, 120),
(26, 'NULL', 15, 110),
(27, 'PU', 30, 50),
(28, 'NULL', 20, 80),
(29, 'NULL', 15, 70),
(30, 'NULL', 10, 90),
(31, 'NULL', 20, 60),
(32, 'NULL', 25, 50),
(33, 'NULL', 15, 80),
(34, 'NULL', 20, 70),
(35, 'NULL', 10, 100),
(36, 'NULL', 30, 40),
(37, 'NULL', 25, 30),
(38, 'NULL', 20, 20),
(39, 'NULL', 10, 10),
(40, 'NULL', 50, 5),
(41, 'NULL', 15, 40),
(42, 'NULL', 20, 30),
(43, 'NULL', 25, 20),
(44, 'OR', 20, 10),
(44, 'PK', 20, 20),
(44, 'RD', 20, 5),
(44, 'WH', 20, 40),
(44, 'YL', 20, 30),
(45, 'NULL', 15, 50),
(46, 'NULL', 20, 40),
(47, 'NULL', 25, 30),
(48, 'NULL', 30, 20),
(49, 'NULL', 35, 10),
(50, 'NULL', 40, 5),
(51, 'NULL', 45, 5),
(52, 'NULL', 50, 5),
(53, 'NULL', 55, 5),
(54, 'NULL', 60, 5),
(55, 'NULL', 65, 5),
(56, 'NULL', 70, 5),
(57, 'NULL', 75, 5),
(58, 'NULL', 80, 5),
(59, 'NULL', 85, 5),
(60, 'NULL', 90, 5),
(61, 'NULL', 95, 5),
(62, 'NULL', 100, 5),
(63, 'NULL', 105, 5),
(64, 'NULL', 110, 5);

-- --------------------------------------------------------

--
-- Table structure for table `s8`
--

CREATE TABLE `s8` (
  `PlantID` int(11) NOT NULL,
  `Color` varchar(7) NOT NULL,
  `Price` int(11) DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `s8`
--

INSERT INTO `s8` (`PlantID`, `Color`, `Price`, `Quantity`) VALUES
(1, 'PK', 25, 90),
(1, 'RD', 25, 100),
(1, 'YL', 25, 80),
(2, 'PC', 30, 70),
(2, 'WH', 30, 60),
(2, 'YL', 30, 50),
(3, 'RD', 20, 140),
(3, 'WH', 20, 150),
(3, 'YL', 20, 130),
(4, 'WH', 15, 220),
(4, 'YL', 15, 200),
(5, 'OR', 10, 280),
(5, 'WH', 10, 250),
(5, 'YL', 10, 300),
(6, 'PU', 35, 70),
(6, 'RD', 35, 90),
(6, 'WH', 35, 100),
(6, 'YL', 35, 80),
(7, 'OR', 50, 50),
(7, 'PC', 50, 50),
(7, 'PK', 50, 50),
(7, 'PU', 50, 50),
(7, 'RD', 50, 50),
(7, 'WH', 50, 50),
(7, 'YL', 50, 50),
(8, 'BL', 100, 20),
(8, 'OR', 100, 20),
(8, 'PK', 100, 20),
(8, 'PU', 100, 20),
(8, 'RD', 100, 20),
(8, 'WH', 100, 20),
(8, 'YL', 100, 20),
(9, 'RD', 15, 140),
(9, 'YL', 15, 150),
(10, 'PK', 10, 160),
(10, 'RD', 10, 180),
(10, 'WH', 10, 200),
(11, 'PK', 20, 120),
(11, 'WH', 20, 130),
(11, 'YL', 20, 110),
(12, 'PK', 25, 90),
(12, 'WH', 25, 80),
(13, 'BL', 10, 100),
(13, 'PK', 10, 140),
(13, 'PU', 10, 130),
(13, 'RD', 10, 150),
(13, 'WH', 10, 110),
(13, 'YL', 10, 120),
(14, 'OR', 30, 70),
(14, 'PU', 30, 60),
(14, 'RD', 30, 80),
(14, 'WH', 30, 40),
(14, 'YL', 30, 50),
(15, 'OR', 20, 100),
(15, 'PK', 20, 90),
(15, 'RD', 20, 110),
(15, 'WH', 20, 70),
(15, 'YL', 20, 80),
(16, 'OR', 25, 50),
(16, 'PK', 25, 40),
(16, 'RD', 25, 60),
(16, 'WH', 25, 20),
(16, 'YL', 25, 30),
(17, 'NULL', 15, 90),
(18, 'OR', 30, 40),
(18, 'PK', 30, 30),
(18, 'WH', 30, 20),
(18, 'YL', 30, 50),
(19, 'NULL', 10, 150),
(20, 'NULL', 15, 100),
(21, 'NULL', 20, 80),
(22, 'NULL', 20, 70),
(23, 'NULL', 10, 90),
(24, 'NULL', 25, 60),
(25, 'NULL', 10, 120),
(26, 'NULL', 15, 110),
(27, 'PU', 30, 50),
(28, 'NULL', 20, 80),
(29, 'NULL', 15, 70),
(30, 'NULL', 10, 90),
(31, 'NULL', 20, 60),
(32, 'NULL', 25, 50),
(33, 'NULL', 15, 80),
(34, 'NULL', 20, 70),
(35, 'NULL', 10, 100),
(36, 'NULL', 30, 40),
(37, 'NULL', 25, 30),
(38, 'NULL', 20, 20),
(39, 'NULL', 10, 10),
(40, 'NULL', 50, 5),
(41, 'NULL', 15, 40),
(42, 'NULL', 20, 30),
(43, 'NULL', 25, 20),
(44, 'OR', 20, 10),
(44, 'PK', 20, 20),
(44, 'RD', 20, 5),
(44, 'WH', 20, 40),
(44, 'YL', 20, 30),
(45, 'NULL', 15, 50),
(46, 'NULL', 20, 40),
(47, 'NULL', 25, 30),
(48, 'NULL', 30, 20),
(49, 'NULL', 35, 10),
(50, 'NULL', 40, 5),
(51, 'NULL', 45, 5),
(52, 'NULL', 50, 5),
(53, 'NULL', 55, 5),
(54, 'NULL', 60, 5),
(55, 'NULL', 65, 5),
(56, 'NULL', 70, 5),
(57, 'NULL', 75, 5),
(58, 'NULL', 80, 5),
(59, 'NULL', 85, 5),
(60, 'NULL', 90, 5),
(61, 'NULL', 95, 5),
(62, 'NULL', 100, 5),
(63, 'NULL', 105, 5),
(64, 'NULL', 110, 5);

-- --------------------------------------------------------

--
-- Table structure for table `s9`
--

CREATE TABLE `s9` (
  `PlantID` int(11) NOT NULL,
  `Color` varchar(7) NOT NULL,
  `Price` int(11) DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `s9`
--

INSERT INTO `s9` (`PlantID`, `Color`, `Price`, `Quantity`) VALUES
(1, 'PK', 25, 90),
(1, 'RD', 25, 100),
(1, 'YL', 25, 80),
(2, 'PC', 30, 70),
(2, 'WH', 30, 60),
(2, 'YL', 30, 50),
(3, 'RD', 20, 140),
(3, 'WH', 20, 150),
(3, 'YL', 20, 130),
(4, 'WH', 15, 220),
(4, 'YL', 15, 200),
(5, 'OR', 10, 280),
(5, 'WH', 10, 250),
(5, 'YL', 10, 300),
(6, 'PU', 35, 70),
(6, 'RD', 35, 90),
(6, 'WH', 35, 100),
(6, 'YL', 35, 80),
(7, 'OR', 50, 50),
(7, 'PC', 50, 50),
(7, 'PK', 50, 50),
(7, 'PU', 50, 50),
(7, 'RD', 50, 50),
(7, 'WH', 50, 50),
(7, 'YL', 50, 50),
(8, 'BL', 100, 20),
(8, 'OR', 100, 20),
(8, 'PK', 100, 20),
(8, 'PU', 100, 20),
(8, 'RD', 100, 20),
(8, 'WH', 100, 20),
(8, 'YL', 100, 20),
(9, 'RD', 15, 140),
(9, 'YL', 15, 150),
(10, 'PK', 10, 160),
(10, 'RD', 10, 180),
(10, 'WH', 10, 200),
(11, 'PK', 20, 120),
(11, 'WH', 20, 130),
(11, 'YL', 20, 110),
(12, 'PK', 25, 90),
(12, 'WH', 25, 80),
(13, 'BL', 10, 100),
(13, 'PK', 10, 140),
(13, 'PU', 10, 130),
(13, 'RD', 10, 150),
(13, 'WH', 10, 110),
(13, 'YL', 10, 120),
(14, 'OR', 30, 70),
(14, 'PU', 30, 60),
(14, 'RD', 30, 80),
(14, 'WH', 30, 40),
(14, 'YL', 30, 50),
(15, 'OR', 20, 100),
(15, 'PK', 20, 90),
(15, 'RD', 20, 110),
(15, 'WH', 20, 70),
(15, 'YL', 20, 80),
(16, 'OR', 25, 50),
(16, 'PK', 25, 40),
(16, 'RD', 25, 60),
(16, 'WH', 25, 20),
(16, 'YL', 25, 30),
(17, 'NULL', 15, 90),
(18, 'OR', 30, 40),
(18, 'PK', 30, 30),
(18, 'WH', 30, 20),
(18, 'YL', 30, 50),
(19, 'NULL', 10, 150),
(20, 'NULL', 15, 100),
(21, 'NULL', 20, 80),
(22, 'NULL', 20, 70),
(23, 'NULL', 10, 90),
(24, 'NULL', 25, 60),
(25, 'NULL', 10, 120),
(26, 'NULL', 15, 110),
(27, 'PU', 30, 50),
(28, 'NULL', 20, 80),
(29, 'NULL', 15, 70),
(30, 'NULL', 10, 90),
(31, 'NULL', 20, 60),
(32, 'NULL', 25, 50),
(33, 'NULL', 15, 80),
(34, 'NULL', 20, 70),
(35, 'NULL', 10, 100),
(36, 'NULL', 30, 40),
(37, 'NULL', 25, 30),
(38, 'NULL', 20, 20),
(39, 'NULL', 10, 10),
(40, 'NULL', 50, 5),
(41, 'NULL', 15, 40),
(42, 'NULL', 20, 30),
(43, 'NULL', 25, 20),
(44, 'OR', 20, 10),
(44, 'PK', 20, 20),
(44, 'RD', 20, 5),
(44, 'WH', 20, 40),
(44, 'YL', 20, 30),
(45, 'NULL', 15, 50),
(46, 'NULL', 20, 40),
(47, 'NULL', 25, 30),
(48, 'NULL', 30, 20),
(49, 'NULL', 35, 10),
(50, 'NULL', 40, 5),
(51, 'NULL', 45, 5),
(52, 'NULL', 50, 5),
(53, 'NULL', 55, 5),
(54, 'NULL', 60, 5),
(55, 'NULL', 65, 5),
(56, 'NULL', 70, 5),
(57, 'NULL', 75, 5),
(58, 'NULL', 80, 5),
(59, 'NULL', 85, 5),
(60, 'NULL', 90, 5),
(61, 'NULL', 95, 5),
(62, 'NULL', 100, 5),
(63, 'NULL', 105, 5),
(64, 'NULL', 110, 5);

-- --------------------------------------------------------

--
-- Table structure for table `s10`
--

CREATE TABLE `s10` (
  `PlantID` int(11) NOT NULL,
  `Color` varchar(7) NOT NULL,
  `Price` int(11) DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `s10`
--

INSERT INTO `s10` (`PlantID`, `Color`, `Price`, `Quantity`) VALUES
(1, 'PK', 25, 90),
(1, 'RD', 25, 100),
(1, 'YL', 25, 80),
(2, 'PC', 30, 70),
(2, 'WH', 30, 60),
(2, 'YL', 30, 50),
(3, 'RD', 20, 140),
(3, 'WH', 20, 150),
(3, 'YL', 20, 130),
(4, 'WH', 15, 220),
(4, 'YL', 15, 200),
(5, 'OR', 10, 280),
(5, 'WH', 10, 250),
(5, 'YL', 10, 300),
(6, 'PU', 35, 70),
(6, 'RD', 35, 90),
(6, 'WH', 35, 100),
(6, 'YL', 35, 80),
(7, 'OR', 50, 50),
(7, 'PC', 50, 50),
(7, 'PK', 50, 50),
(7, 'PU', 50, 50),
(7, 'RD', 50, 50),
(7, 'WH', 50, 50),
(7, 'YL', 50, 50),
(8, 'BL', 100, 20),
(8, 'OR', 100, 20),
(8, 'PK', 100, 20),
(8, 'PU', 100, 20),
(8, 'RD', 100, 20),
(8, 'WH', 100, 20),
(8, 'YL', 100, 20),
(9, 'RD', 15, 140),
(9, 'YL', 15, 150),
(10, 'PK', 10, 160),
(10, 'RD', 10, 180),
(10, 'WH', 10, 200),
(11, 'PK', 20, 120),
(11, 'WH', 20, 130),
(11, 'YL', 20, 110),
(12, 'PK', 25, 90),
(12, 'WH', 25, 80),
(13, 'BL', 10, 100),
(13, 'PK', 10, 140),
(13, 'PU', 10, 130),
(13, 'RD', 10, 150),
(13, 'WH', 10, 110),
(13, 'YL', 10, 120),
(14, 'OR', 30, 70),
(14, 'PU', 30, 60),
(14, 'RD', 30, 80),
(14, 'WH', 30, 40),
(14, 'YL', 30, 50),
(15, 'OR', 20, 100),
(15, 'PK', 20, 90),
(15, 'RD', 20, 110),
(15, 'WH', 20, 70),
(15, 'YL', 20, 80),
(16, 'OR', 25, 50),
(16, 'PK', 25, 40),
(16, 'RD', 25, 60),
(16, 'WH', 25, 20),
(16, 'YL', 25, 30),
(17, 'NULL', 15, 90),
(18, 'OR', 30, 40),
(18, 'PK', 30, 30),
(18, 'WH', 30, 20),
(18, 'YL', 30, 50),
(19, 'NULL', 10, 150),
(20, 'NULL', 15, 100),
(21, 'NULL', 20, 80),
(22, 'NULL', 20, 70),
(23, 'NULL', 10, 90),
(24, 'NULL', 25, 60),
(25, 'NULL', 10, 120),
(26, 'NULL', 15, 110),
(27, 'PU', 30, 50),
(28, 'NULL', 20, 80),
(29, 'NULL', 15, 70),
(30, 'NULL', 10, 90),
(31, 'NULL', 20, 60),
(32, 'NULL', 25, 50),
(33, 'NULL', 15, 80),
(34, 'NULL', 20, 70),
(35, 'NULL', 10, 100),
(36, 'NULL', 30, 40),
(37, 'NULL', 25, 30),
(38, 'NULL', 20, 20),
(39, 'NULL', 10, 10),
(40, 'NULL', 50, 5),
(41, 'NULL', 15, 40),
(42, 'NULL', 20, 30),
(43, 'NULL', 25, 20),
(44, 'OR', 20, 10),
(44, 'PK', 20, 20),
(44, 'RD', 20, 5),
(44, 'WH', 20, 40),
(44, 'YL', 20, 30),
(45, 'NULL', 15, 50),
(46, 'NULL', 20, 40),
(47, 'NULL', 25, 30),
(48, 'NULL', 30, 20),
(49, 'NULL', 35, 10),
(50, 'NULL', 40, 5),
(51, 'NULL', 45, 5),
(52, 'NULL', 50, 5),
(53, 'NULL', 55, 5),
(54, 'NULL', 60, 5),
(55, 'NULL', 65, 5),
(56, 'NULL', 70, 5),
(57, 'NULL', 75, 5),
(58, 'NULL', 80, 5),
(59, 'NULL', 85, 5),
(60, 'NULL', 90, 5),
(61, 'NULL', 95, 5),
(62, 'NULL', 100, 5),
(63, 'NULL', 105, 5),
(64, 'NULL', 110, 5);

-- --------------------------------------------------------

--
-- Table structure for table `s11`
--

CREATE TABLE `s11` (
  `PlantID` int(11) NOT NULL,
  `Color` varchar(7) NOT NULL,
  `Price` int(11) DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `s11`
--

INSERT INTO `s11` (`PlantID`, `Color`, `Price`, `Quantity`) VALUES
(1, 'PK', 25, 90),
(1, 'RD', 25, 100),
(1, 'YL', 25, 80),
(2, 'PC', 30, 70),
(2, 'WH', 30, 60),
(2, 'YL', 30, 50),
(3, 'RD', 20, 140),
(3, 'WH', 20, 150),
(3, 'YL', 20, 130),
(4, 'WH', 15, 220),
(4, 'YL', 15, 200),
(5, 'OR', 10, 280),
(5, 'WH', 10, 250),
(5, 'YL', 10, 300),
(6, 'PU', 35, 70),
(6, 'RD', 35, 90),
(6, 'WH', 35, 100),
(6, 'YL', 35, 80),
(7, 'OR', 50, 50),
(7, 'PC', 50, 50),
(7, 'PK', 50, 50),
(7, 'PU', 50, 50),
(7, 'RD', 50, 50),
(7, 'WH', 50, 50),
(7, 'YL', 50, 50),
(8, 'BL', 100, 20),
(8, 'OR', 100, 20),
(8, 'PK', 100, 20),
(8, 'PU', 100, 20),
(8, 'RD', 100, 20),
(8, 'WH', 100, 20),
(8, 'YL', 100, 20),
(9, 'RD', 15, 140),
(9, 'YL', 15, 150),
(10, 'PK', 10, 160),
(10, 'RD', 10, 180),
(10, 'WH', 10, 200),
(11, 'PK', 20, 120),
(11, 'WH', 20, 130),
(11, 'YL', 20, 110),
(12, 'PK', 25, 90),
(12, 'WH', 25, 80),
(13, 'BL', 10, 100),
(13, 'PK', 10, 140),
(13, 'PU', 10, 130),
(13, 'RD', 10, 150),
(13, 'WH', 10, 110),
(13, 'YL', 10, 120),
(14, 'OR', 30, 70),
(14, 'PU', 30, 60),
(14, 'RD', 30, 80),
(14, 'WH', 30, 40),
(14, 'YL', 30, 50),
(15, 'OR', 20, 100),
(15, 'PK', 20, 90),
(15, 'RD', 20, 110),
(15, 'WH', 20, 70),
(15, 'YL', 20, 80),
(16, 'OR', 25, 50),
(16, 'PK', 25, 40),
(16, 'RD', 25, 60),
(16, 'WH', 25, 20),
(16, 'YL', 25, 30),
(17, 'NULL', 15, 90),
(18, 'OR', 30, 40),
(18, 'PK', 30, 30),
(18, 'WH', 30, 20),
(18, 'YL', 30, 50),
(19, 'NULL', 10, 150),
(20, 'NULL', 15, 100),
(21, 'NULL', 20, 80),
(22, 'NULL', 20, 70),
(23, 'NULL', 10, 90),
(24, 'NULL', 25, 60),
(25, 'NULL', 10, 120),
(26, 'NULL', 15, 110),
(27, 'PU', 30, 50),
(28, 'NULL', 20, 80),
(29, 'NULL', 15, 70),
(30, 'NULL', 10, 90),
(31, 'NULL', 20, 60),
(32, 'NULL', 25, 50),
(33, 'NULL', 15, 80),
(34, 'NULL', 20, 70),
(35, 'NULL', 10, 100),
(36, 'NULL', 30, 40),
(37, 'NULL', 25, 30),
(38, 'NULL', 20, 20),
(39, 'NULL', 10, 10),
(40, 'NULL', 50, 5),
(41, 'NULL', 15, 40),
(42, 'NULL', 20, 30),
(43, 'NULL', 25, 20),
(44, 'OR', 20, 10),
(44, 'PK', 20, 20),
(44, 'RD', 20, 5),
(44, 'WH', 20, 40),
(44, 'YL', 20, 30),
(45, 'NULL', 15, 50),
(46, 'NULL', 20, 40),
(47, 'NULL', 25, 30),
(48, 'NULL', 30, 20),
(49, 'NULL', 35, 10),
(50, 'NULL', 40, 5),
(51, 'NULL', 45, 5),
(52, 'NULL', 50, 5),
(53, 'NULL', 55, 5),
(54, 'NULL', 60, 5),
(55, 'NULL', 65, 5),
(56, 'NULL', 70, 5),
(57, 'NULL', 75, 5),
(58, 'NULL', 80, 5),
(59, 'NULL', 85, 5),
(60, 'NULL', 90, 5),
(61, 'NULL', 95, 5),
(62, 'NULL', 100, 5),
(63, 'NULL', 105, 5),
(64, 'NULL', 110, 5);

-- --------------------------------------------------------

--
-- Table structure for table `s12`
--

CREATE TABLE `s12` (
  `PlantID` int(11) NOT NULL,
  `Color` varchar(7) NOT NULL,
  `Price` int(11) DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `s12`
--

INSERT INTO `s12` (`PlantID`, `Color`, `Price`, `Quantity`) VALUES
(1, 'PK', 25, 90),
(1, 'RD', 25, 100),
(1, 'YL', 25, 80),
(2, 'PC', 30, 70),
(2, 'WH', 30, 60),
(2, 'YL', 30, 50),
(3, 'RD', 20, 140),
(3, 'WH', 20, 150),
(3, 'YL', 20, 130),
(4, 'WH', 15, 220),
(4, 'YL', 15, 200),
(5, 'OR', 10, 280),
(5, 'WH', 10, 250),
(5, 'YL', 10, 300),
(6, 'PU', 35, 70),
(6, 'RD', 35, 90),
(6, 'WH', 35, 100),
(6, 'YL', 35, 80),
(7, 'OR', 50, 50),
(7, 'PC', 50, 50),
(7, 'PK', 50, 50),
(7, 'PU', 50, 50),
(7, 'RD', 50, 50),
(7, 'WH', 50, 50),
(7, 'YL', 50, 50),
(8, 'BL', 100, 20),
(8, 'OR', 100, 20),
(8, 'PK', 100, 20),
(8, 'PU', 100, 20),
(8, 'RD', 100, 20),
(8, 'WH', 100, 20),
(8, 'YL', 100, 20),
(9, 'RD', 15, 140),
(9, 'YL', 15, 150),
(10, 'PK', 10, 160),
(10, 'RD', 10, 180),
(10, 'WH', 10, 200),
(11, 'PK', 20, 120),
(11, 'WH', 20, 130),
(11, 'YL', 20, 110),
(12, 'PK', 25, 90),
(12, 'WH', 25, 80),
(13, 'BL', 10, 100),
(13, 'PK', 10, 140),
(13, 'PU', 10, 130),
(13, 'RD', 10, 150),
(13, 'WH', 10, 110),
(13, 'YL', 10, 120),
(14, 'OR', 30, 70),
(14, 'PU', 30, 60),
(14, 'RD', 30, 80),
(14, 'WH', 30, 40),
(14, 'YL', 30, 50),
(15, 'OR', 20, 100),
(15, 'PK', 20, 90),
(15, 'RD', 20, 110),
(15, 'WH', 20, 70),
(15, 'YL', 20, 80),
(16, 'OR', 25, 50),
(16, 'PK', 25, 40),
(16, 'RD', 25, 60),
(16, 'WH', 25, 20),
(16, 'YL', 25, 30),
(17, 'NULL', 15, 90),
(18, 'OR', 30, 40),
(18, 'PK', 30, 30),
(18, 'WH', 30, 20),
(18, 'YL', 30, 50),
(19, 'NULL', 10, 150),
(20, 'NULL', 15, 100),
(21, 'NULL', 20, 80),
(22, 'NULL', 20, 70),
(23, 'NULL', 10, 90),
(24, 'NULL', 25, 60),
(25, 'NULL', 10, 120),
(26, 'NULL', 15, 110),
(27, 'PU', 30, 50),
(28, 'NULL', 20, 80),
(29, 'NULL', 15, 70),
(30, 'NULL', 10, 90),
(31, 'NULL', 20, 60),
(32, 'NULL', 25, 50),
(33, 'NULL', 15, 80),
(34, 'NULL', 20, 70),
(35, 'NULL', 10, 100),
(36, 'NULL', 30, 40),
(37, 'NULL', 25, 30),
(38, 'NULL', 20, 20),
(39, 'NULL', 10, 10),
(40, 'NULL', 50, 5),
(41, 'NULL', 15, 40),
(42, 'NULL', 20, 30),
(43, 'NULL', 25, 20),
(44, 'OR', 20, 10),
(44, 'PK', 20, 20),
(44, 'RD', 20, 5),
(44, 'WH', 20, 40),
(44, 'YL', 20, 30),
(45, 'NULL', 15, 50),
(46, 'NULL', 20, 40),
(47, 'NULL', 25, 30),
(48, 'NULL', 30, 20),
(49, 'NULL', 35, 10),
(50, 'NULL', 40, 5),
(51, 'NULL', 45, 5),
(52, 'NULL', 50, 5),
(53, 'NULL', 55, 5),
(54, 'NULL', 60, 5),
(55, 'NULL', 65, 5),
(56, 'NULL', 70, 5),
(57, 'NULL', 75, 5),
(58, 'NULL', 80, 5),
(59, 'NULL', 85, 5),
(60, 'NULL', 90, 5),
(61, 'NULL', 95, 5),
(62, 'NULL', 100, 5),
(63, 'NULL', 105, 5),
(64, 'NULL', 110, 5);

-- --------------------------------------------------------

--
-- Table structure for table `s13`
--

CREATE TABLE `s13` (
  `PlantID` int(11) NOT NULL,
  `Color` varchar(7) NOT NULL,
  `Price` int(11) DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `s13`
--

INSERT INTO `s13` (`PlantID`, `Color`, `Price`, `Quantity`) VALUES
(1, 'PK', 25, 90),
(1, 'RD', 25, 100),
(1, 'YL', 25, 80),
(2, 'PC', 30, 70),
(2, 'WH', 30, 60),
(2, 'YL', 30, 50),
(3, 'RD', 20, 140),
(3, 'WH', 20, 150),
(3, 'YL', 20, 130),
(4, 'WH', 15, 220),
(4, 'YL', 15, 200),
(5, 'OR', 10, 280),
(5, 'WH', 10, 250),
(5, 'YL', 10, 300),
(6, 'PU', 35, 70),
(6, 'RD', 35, 90),
(6, 'WH', 35, 100),
(6, 'YL', 35, 80),
(7, 'OR', 50, 50),
(7, 'PC', 50, 50),
(7, 'PK', 50, 50),
(7, 'PU', 50, 50),
(7, 'RD', 50, 50),
(7, 'WH', 50, 50),
(7, 'YL', 50, 50),
(8, 'BL', 100, 20),
(8, 'OR', 100, 20),
(8, 'PK', 100, 20),
(8, 'PU', 100, 20),
(8, 'RD', 100, 20),
(8, 'WH', 100, 20),
(8, 'YL', 100, 20),
(9, 'RD', 15, 140),
(9, 'YL', 15, 150),
(10, 'PK', 10, 160),
(10, 'RD', 10, 180),
(10, 'WH', 10, 200),
(11, 'PK', 20, 120),
(11, 'WH', 20, 130),
(11, 'YL', 20, 110),
(12, 'PK', 25, 90),
(12, 'WH', 25, 80),
(13, 'BL', 10, 100),
(13, 'PK', 10, 140),
(13, 'PU', 10, 130),
(13, 'RD', 10, 150),
(13, 'WH', 10, 110),
(13, 'YL', 10, 120),
(14, 'OR', 30, 70),
(14, 'PU', 30, 60),
(14, 'RD', 30, 80),
(14, 'WH', 30, 40),
(14, 'YL', 30, 50),
(15, 'OR', 20, 100),
(15, 'PK', 20, 90),
(15, 'RD', 20, 110),
(15, 'WH', 20, 70),
(15, 'YL', 20, 80),
(16, 'OR', 25, 50),
(16, 'PK', 25, 40),
(16, 'RD', 25, 60),
(16, 'WH', 25, 20),
(16, 'YL', 25, 30),
(17, 'NULL', 15, 90),
(18, 'OR', 30, 40),
(18, 'PK', 30, 30),
(18, 'WH', 30, 20),
(18, 'YL', 30, 50),
(19, 'NULL', 10, 150),
(20, 'NULL', 15, 100),
(21, 'NULL', 20, 80),
(22, 'NULL', 20, 70),
(23, 'NULL', 10, 90),
(24, 'NULL', 25, 60),
(25, 'NULL', 10, 120),
(26, 'NULL', 15, 110),
(27, 'PU', 30, 50),
(28, 'NULL', 20, 80),
(29, 'NULL', 15, 70),
(30, 'NULL', 10, 90),
(31, 'NULL', 20, 60),
(32, 'NULL', 25, 50),
(33, 'NULL', 15, 80),
(34, 'NULL', 20, 70),
(35, 'NULL', 10, 100),
(36, 'NULL', 30, 40),
(37, 'NULL', 25, 30),
(38, 'NULL', 20, 20),
(39, 'NULL', 10, 10),
(40, 'NULL', 50, 5),
(41, 'NULL', 15, 40),
(42, 'NULL', 20, 30),
(43, 'NULL', 25, 20),
(44, 'OR', 20, 10),
(44, 'PK', 20, 20),
(44, 'RD', 20, 5),
(44, 'WH', 20, 40),
(44, 'YL', 20, 30),
(45, 'NULL', 15, 50),
(46, 'NULL', 20, 40),
(47, 'NULL', 25, 30),
(48, 'NULL', 30, 20),
(49, 'NULL', 35, 10),
(50, 'NULL', 40, 5),
(51, 'NULL', 45, 5),
(52, 'NULL', 50, 5),
(53, 'NULL', 55, 5),
(54, 'NULL', 60, 5),
(55, 'NULL', 65, 5),
(56, 'NULL', 70, 5),
(57, 'NULL', 75, 5),
(58, 'NULL', 80, 5),
(59, 'NULL', 85, 5),
(60, 'NULL', 90, 5),
(61, 'NULL', 95, 5),
(62, 'NULL', 100, 5),
(63, 'NULL', 105, 5),
(64, 'NULL', 110, 5);

-- --------------------------------------------------------

--
-- Table structure for table `s14`
--

CREATE TABLE `s14` (
  `PlantID` int(11) NOT NULL,
  `Color` varchar(7) NOT NULL,
  `Price` int(11) DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `s14`
--

INSERT INTO `s14` (`PlantID`, `Color`, `Price`, `Quantity`) VALUES
(1, 'PK', 25, 90),
(1, 'RD', 25, 100),
(1, 'YL', 25, 80),
(2, 'PC', 30, 70),
(2, 'WH', 30, 60),
(2, 'YL', 30, 50),
(3, 'RD', 20, 140),
(3, 'WH', 20, 150),
(3, 'YL', 20, 130),
(4, 'WH', 15, 220),
(4, 'YL', 15, 200),
(5, 'OR', 10, 280),
(5, 'WH', 10, 250),
(5, 'YL', 10, 300),
(6, 'PU', 35, 70),
(6, 'RD', 35, 90),
(6, 'WH', 35, 100),
(6, 'YL', 35, 80),
(7, 'OR', 50, 50),
(7, 'PC', 50, 50),
(7, 'PK', 50, 50),
(7, 'PU', 50, 50),
(7, 'RD', 50, 50),
(7, 'WH', 50, 50),
(7, 'YL', 50, 50),
(8, 'BL', 100, 20),
(8, 'OR', 100, 20),
(8, 'PK', 100, 20),
(8, 'PU', 100, 20),
(8, 'RD', 100, 20),
(8, 'WH', 100, 20),
(8, 'YL', 100, 20),
(9, 'RD', 15, 140),
(9, 'YL', 15, 150),
(10, 'PK', 10, 160),
(10, 'RD', 10, 180),
(10, 'WH', 10, 200),
(11, 'PK', 20, 120),
(11, 'WH', 20, 130),
(11, 'YL', 20, 110),
(12, 'PK', 25, 90),
(12, 'WH', 25, 80),
(13, 'BL', 10, 100),
(13, 'PK', 10, 140),
(13, 'PU', 10, 130),
(13, 'RD', 10, 150),
(13, 'WH', 10, 110),
(13, 'YL', 10, 120),
(14, 'OR', 30, 70),
(14, 'PU', 30, 60),
(14, 'RD', 30, 80),
(14, 'WH', 30, 40),
(14, 'YL', 30, 50),
(15, 'OR', 20, 100),
(15, 'PK', 20, 90),
(15, 'RD', 20, 110),
(15, 'WH', 20, 70),
(15, 'YL', 20, 80),
(16, 'OR', 25, 50),
(16, 'PK', 25, 40),
(16, 'RD', 25, 60),
(16, 'WH', 25, 20),
(16, 'YL', 25, 30),
(17, 'NULL', 15, 90),
(18, 'OR', 30, 40),
(18, 'PK', 30, 30),
(18, 'WH', 30, 20),
(18, 'YL', 30, 50),
(19, 'NULL', 10, 150),
(20, 'NULL', 15, 100),
(21, 'NULL', 20, 80),
(22, 'NULL', 20, 70),
(23, 'NULL', 10, 90),
(24, 'NULL', 25, 60),
(25, 'NULL', 10, 120),
(26, 'NULL', 15, 110),
(27, 'PU', 30, 50),
(28, 'NULL', 20, 80),
(29, 'NULL', 15, 70),
(30, 'NULL', 10, 90),
(31, 'NULL', 20, 60),
(32, 'NULL', 25, 50),
(33, 'NULL', 15, 80),
(34, 'NULL', 20, 70),
(35, 'NULL', 10, 100),
(36, 'NULL', 30, 40),
(37, 'NULL', 25, 30),
(38, 'NULL', 20, 20),
(39, 'NULL', 10, 10),
(40, 'NULL', 50, 5),
(41, 'NULL', 15, 40),
(42, 'NULL', 20, 30),
(43, 'NULL', 25, 20),
(44, 'OR', 20, 10),
(44, 'PK', 20, 20),
(44, 'RD', 20, 5),
(44, 'WH', 20, 40),
(44, 'YL', 20, 30),
(45, 'NULL', 15, 50),
(46, 'NULL', 20, 40),
(47, 'NULL', 25, 30),
(48, 'NULL', 30, 20),
(49, 'NULL', 35, 10),
(50, 'NULL', 40, 5),
(51, 'NULL', 45, 5),
(52, 'NULL', 50, 5),
(53, 'NULL', 55, 5),
(54, 'NULL', 60, 5),
(55, 'NULL', 65, 5),
(56, 'NULL', 70, 5),
(57, 'NULL', 75, 5),
(58, 'NULL', 80, 5),
(59, 'NULL', 85, 5),
(60, 'NULL', 90, 5),
(61, 'NULL', 95, 5),
(62, 'NULL', 100, 5),
(63, 'NULL', 105, 5),
(64, 'NULL', 110, 5);

-- --------------------------------------------------------

--
-- Table structure for table `s15`
--

CREATE TABLE `s15` (
  `PlantID` int(11) NOT NULL,
  `Color` varchar(7) NOT NULL,
  `Price` int(11) DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `s15`
--

INSERT INTO `s15` (`PlantID`, `Color`, `Price`, `Quantity`) VALUES
(1, 'PK', 25, 90),
(1, 'RD', 25, 100),
(1, 'YL', 25, 80),
(2, 'PC', 30, 70),
(2, 'WH', 30, 60),
(2, 'YL', 30, 50),
(3, 'RD', 20, 140),
(3, 'WH', 20, 150),
(3, 'YL', 20, 130),
(4, 'WH', 15, 220),
(4, 'YL', 15, 200),
(5, 'OR', 10, 280),
(5, 'WH', 10, 250),
(5, 'YL', 10, 300),
(6, 'PU', 35, 70),
(6, 'RD', 35, 90),
(6, 'WH', 35, 100),
(6, 'YL', 35, 80),
(7, 'OR', 50, 50),
(7, 'PC', 50, 50),
(7, 'PK', 50, 50),
(7, 'PU', 50, 50),
(7, 'RD', 50, 50),
(7, 'WH', 50, 50),
(7, 'YL', 50, 50),
(8, 'BL', 100, 20),
(8, 'OR', 100, 20),
(8, 'PK', 100, 20),
(8, 'PU', 100, 20),
(8, 'RD', 100, 20),
(8, 'WH', 100, 20),
(8, 'YL', 100, 20),
(9, 'RD', 15, 140),
(9, 'YL', 15, 150),
(10, 'PK', 10, 160),
(10, 'RD', 10, 180),
(10, 'WH', 10, 200),
(11, 'PK', 20, 120),
(11, 'WH', 20, 130),
(11, 'YL', 20, 110),
(12, 'PK', 25, 90),
(12, 'WH', 25, 80),
(13, 'BL', 10, 100),
(13, 'PK', 10, 140),
(13, 'PU', 10, 130),
(13, 'RD', 10, 150),
(13, 'WH', 10, 110),
(13, 'YL', 10, 120),
(14, 'OR', 30, 70),
(14, 'PU', 30, 60),
(14, 'RD', 30, 80),
(14, 'WH', 30, 40),
(14, 'YL', 30, 50),
(15, 'OR', 20, 100),
(15, 'PK', 20, 90),
(15, 'RD', 20, 110),
(15, 'WH', 20, 70),
(15, 'YL', 20, 80),
(16, 'OR', 25, 50),
(16, 'PK', 25, 40),
(16, 'RD', 25, 60),
(16, 'WH', 25, 20),
(16, 'YL', 25, 30),
(17, 'NULL', 15, 90),
(18, 'OR', 30, 40),
(18, 'PK', 30, 30),
(18, 'WH', 30, 20),
(18, 'YL', 30, 50),
(19, 'NULL', 10, 150),
(20, 'NULL', 15, 100),
(21, 'NULL', 20, 80),
(22, 'NULL', 20, 70),
(23, 'NULL', 10, 90),
(24, 'NULL', 25, 60),
(25, 'NULL', 10, 120),
(26, 'NULL', 15, 110),
(27, 'PU', 30, 50),
(28, 'NULL', 20, 80),
(29, 'NULL', 15, 70),
(30, 'NULL', 10, 90),
(31, 'NULL', 20, 60),
(32, 'NULL', 25, 50),
(33, 'NULL', 15, 80),
(34, 'NULL', 20, 70),
(35, 'NULL', 10, 100),
(36, 'NULL', 30, 40),
(37, 'NULL', 25, 30),
(38, 'NULL', 20, 20),
(39, 'NULL', 10, 10),
(40, 'NULL', 50, 5),
(41, 'NULL', 15, 40),
(42, 'NULL', 20, 30),
(43, 'NULL', 25, 20),
(44, 'OR', 20, 10),
(44, 'PK', 20, 20),
(44, 'RD', 20, 5),
(44, 'WH', 20, 40),
(44, 'YL', 20, 30),
(45, 'NULL', 15, 50),
(46, 'NULL', 20, 40),
(47, 'NULL', 25, 30),
(48, 'NULL', 30, 20),
(49, 'NULL', 35, 10),
(50, 'NULL', 40, 5),
(51, 'NULL', 45, 5),
(52, 'NULL', 50, 5),
(53, 'NULL', 55, 5),
(54, 'NULL', 60, 5),
(55, 'NULL', 65, 5),
(56, 'NULL', 70, 5),
(57, 'NULL', 75, 5),
(58, 'NULL', 80, 5),
(59, 'NULL', 85, 5),
(60, 'NULL', 90, 5),
(61, 'NULL', 95, 5),
(62, 'NULL', 100, 5),
(63, 'NULL', 105, 5),
(64, 'NULL', 110, 5);

-- --------------------------------------------------------

--
-- Table structure for table `s16`
--

CREATE TABLE `s16` (
  `PlantID` int(11) NOT NULL,
  `Color` varchar(7) NOT NULL,
  `Price` int(11) DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `s16`
--

INSERT INTO `s16` (`PlantID`, `Color`, `Price`, `Quantity`) VALUES
(1, 'PK', 25, 90),
(1, 'RD', 25, 100),
(1, 'YL', 25, 80),
(2, 'PC', 30, 70),
(2, 'WH', 30, 60),
(2, 'YL', 30, 50),
(3, 'RD', 20, 140),
(3, 'WH', 20, 150),
(3, 'YL', 20, 130),
(4, 'WH', 15, 220),
(4, 'YL', 15, 200),
(5, 'OR', 10, 280),
(5, 'WH', 10, 250),
(5, 'YL', 10, 300),
(6, 'PU', 35, 70),
(6, 'RD', 35, 90),
(6, 'WH', 35, 100),
(6, 'YL', 35, 80),
(7, 'OR', 50, 50),
(7, 'PC', 50, 50),
(7, 'PK', 50, 50),
(7, 'PU', 50, 50),
(7, 'RD', 50, 50),
(7, 'WH', 50, 50),
(7, 'YL', 50, 50),
(8, 'BL', 100, 20),
(8, 'OR', 100, 20),
(8, 'PK', 100, 20),
(8, 'PU', 100, 20),
(8, 'RD', 100, 20),
(8, 'WH', 100, 20),
(8, 'YL', 100, 20),
(9, 'RD', 15, 140),
(9, 'YL', 15, 150),
(10, 'PK', 10, 160),
(10, 'RD', 10, 180),
(10, 'WH', 10, 200),
(11, 'PK', 20, 120),
(11, 'WH', 20, 130),
(11, 'YL', 20, 110),
(12, 'PK', 25, 90),
(12, 'WH', 25, 80),
(13, 'BL', 10, 100),
(13, 'PK', 10, 140),
(13, 'PU', 10, 130),
(13, 'RD', 10, 150),
(13, 'WH', 10, 110),
(13, 'YL', 10, 120),
(14, 'OR', 30, 70),
(14, 'PU', 30, 60),
(14, 'RD', 30, 80),
(14, 'WH', 30, 40),
(14, 'YL', 30, 50),
(15, 'OR', 20, 100),
(15, 'PK', 20, 90),
(15, 'RD', 20, 110),
(15, 'WH', 20, 70),
(15, 'YL', 20, 80),
(16, 'OR', 25, 50),
(16, 'PK', 25, 40),
(16, 'RD', 25, 60),
(16, 'WH', 25, 20),
(16, 'YL', 25, 30),
(17, 'NULL', 15, 90),
(18, 'OR', 30, 40),
(18, 'PK', 30, 30),
(18, 'WH', 30, 20),
(18, 'YL', 30, 50),
(19, 'NULL', 10, 150),
(20, 'NULL', 15, 100),
(21, 'NULL', 20, 80),
(22, 'NULL', 20, 70),
(23, 'NULL', 10, 90),
(24, 'NULL', 25, 60),
(25, 'NULL', 10, 120),
(26, 'NULL', 15, 110),
(27, 'PU', 30, 50),
(28, 'NULL', 20, 80),
(29, 'NULL', 15, 70),
(30, 'NULL', 10, 90),
(31, 'NULL', 20, 60),
(32, 'NULL', 25, 50),
(33, 'NULL', 15, 80),
(34, 'NULL', 20, 70),
(35, 'NULL', 10, 100),
(36, 'NULL', 30, 40),
(37, 'NULL', 25, 30),
(38, 'NULL', 20, 20),
(39, 'NULL', 10, 10),
(40, 'NULL', 50, 5),
(41, 'NULL', 15, 40),
(42, 'NULL', 20, 30),
(43, 'NULL', 25, 20),
(44, 'OR', 20, 10),
(44, 'PK', 20, 20),
(44, 'RD', 20, 5),
(44, 'WH', 20, 40),
(44, 'YL', 20, 30),
(45, 'NULL', 15, 50),
(46, 'NULL', 20, 40),
(47, 'NULL', 25, 30),
(48, 'NULL', 30, 20),
(49, 'NULL', 35, 10),
(50, 'NULL', 40, 5),
(51, 'NULL', 45, 5),
(52, 'NULL', 50, 5),
(53, 'NULL', 55, 5),
(54, 'NULL', 60, 5),
(55, 'NULL', 65, 5),
(56, 'NULL', 70, 5),
(57, 'NULL', 75, 5),
(58, 'NULL', 80, 5),
(59, 'NULL', 85, 5),
(60, 'NULL', 90, 5),
(61, 'NULL', 95, 5),
(62, 'NULL', 100, 5),
(63, 'NULL', 105, 5),
(64, 'NULL', 110, 5);

-- --------------------------------------------------------

--
-- Table structure for table `s17`
--

CREATE TABLE `s17` (
  `PlantID` int(11) NOT NULL,
  `Color` varchar(7) NOT NULL,
  `Price` int(11) DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `s17`
--

INSERT INTO `s17` (`PlantID`, `Color`, `Price`, `Quantity`) VALUES
(1, 'PK', 25, 90),
(1, 'RD', 25, 100),
(1, 'YL', 25, 80),
(2, 'PC', 30, 70),
(2, 'WH', 30, 60),
(2, 'YL', 30, 50),
(3, 'RD', 20, 140),
(3, 'WH', 20, 150),
(3, 'YL', 20, 130),
(4, 'WH', 15, 220),
(4, 'YL', 15, 200),
(5, 'OR', 10, 280),
(5, 'WH', 10, 250),
(5, 'YL', 10, 300),
(6, 'PU', 35, 70),
(6, 'RD', 35, 90),
(6, 'WH', 35, 100),
(6, 'YL', 35, 80),
(7, 'OR', 50, 50),
(7, 'PC', 50, 50),
(7, 'PK', 50, 50),
(7, 'PU', 50, 50),
(7, 'RD', 50, 50),
(7, 'WH', 50, 50),
(7, 'YL', 50, 50),
(8, 'BL', 100, 20),
(8, 'OR', 100, 20),
(8, 'PK', 100, 20),
(8, 'PU', 100, 20),
(8, 'RD', 100, 20),
(8, 'WH', 100, 20),
(8, 'YL', 100, 20),
(9, 'RD', 15, 140),
(9, 'YL', 15, 150),
(10, 'PK', 10, 160),
(10, 'RD', 10, 180),
(10, 'WH', 10, 200),
(11, 'PK', 20, 120),
(11, 'WH', 20, 130),
(11, 'YL', 20, 110),
(12, 'PK', 25, 90),
(12, 'WH', 25, 80),
(13, 'BL', 10, 100),
(13, 'PK', 10, 140),
(13, 'PU', 10, 130),
(13, 'RD', 10, 150),
(13, 'WH', 10, 110),
(13, 'YL', 10, 120),
(14, 'OR', 30, 70),
(14, 'PU', 30, 60),
(14, 'RD', 30, 80),
(14, 'WH', 30, 40),
(14, 'YL', 30, 50),
(15, 'OR', 20, 100),
(15, 'PK', 20, 90),
(15, 'RD', 20, 110),
(15, 'WH', 20, 70),
(15, 'YL', 20, 80),
(16, 'OR', 25, 50),
(16, 'PK', 25, 40),
(16, 'RD', 25, 60),
(16, 'WH', 25, 20),
(16, 'YL', 25, 30),
(17, 'NULL', 15, 90),
(18, 'OR', 30, 40),
(18, 'PK', 30, 30),
(18, 'WH', 30, 20),
(18, 'YL', 30, 50),
(19, 'NULL', 10, 150),
(20, 'NULL', 15, 100),
(21, 'NULL', 20, 80),
(22, 'NULL', 20, 70),
(23, 'NULL', 10, 90),
(24, 'NULL', 25, 60),
(25, 'NULL', 10, 120),
(26, 'NULL', 15, 110),
(27, 'PU', 30, 50),
(28, 'NULL', 20, 80),
(29, 'NULL', 15, 70),
(30, 'NULL', 10, 90),
(31, 'NULL', 20, 60),
(32, 'NULL', 25, 50),
(33, 'NULL', 15, 80),
(34, 'NULL', 20, 70),
(35, 'NULL', 10, 100),
(36, 'NULL', 30, 40),
(37, 'NULL', 25, 30),
(38, 'NULL', 20, 20),
(39, 'NULL', 10, 10),
(40, 'NULL', 50, 5),
(41, 'NULL', 15, 40),
(42, 'NULL', 20, 30),
(43, 'NULL', 25, 20),
(44, 'OR', 20, 10),
(44, 'PK', 20, 20),
(44, 'RD', 20, 5),
(44, 'WH', 20, 40),
(44, 'YL', 20, 30),
(45, 'NULL', 15, 50),
(46, 'NULL', 20, 40),
(47, 'NULL', 25, 30),
(48, 'NULL', 30, 20),
(49, 'NULL', 35, 10),
(50, 'NULL', 40, 5),
(51, 'NULL', 45, 5),
(52, 'NULL', 50, 5),
(53, 'NULL', 55, 5),
(54, 'NULL', 60, 5),
(55, 'NULL', 65, 5),
(56, 'NULL', 70, 5),
(57, 'NULL', 75, 5),
(58, 'NULL', 80, 5),
(59, 'NULL', 85, 5),
(60, 'NULL', 90, 5),
(61, 'NULL', 95, 5),
(62, 'NULL', 100, 5),
(63, 'NULL', 105, 5),
(64, 'NULL', 110, 5);

-- --------------------------------------------------------

--
-- Table structure for table `s18`
--

CREATE TABLE `s18` (
  `PlantID` int(11) NOT NULL,
  `Color` varchar(7) NOT NULL,
  `Price` int(11) DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `s18`
--

INSERT INTO `s18` (`PlantID`, `Color`, `Price`, `Quantity`) VALUES
(1, 'PK', 25, 90),
(1, 'RD', 25, 100),
(1, 'YL', 25, 80),
(2, 'PC', 30, 70),
(2, 'WH', 30, 60),
(2, 'YL', 30, 50),
(3, 'RD', 20, 140),
(3, 'WH', 20, 150),
(3, 'YL', 20, 130),
(4, 'WH', 15, 220),
(4, 'YL', 15, 200),
(5, 'OR', 10, 280),
(5, 'WH', 10, 250),
(5, 'YL', 10, 300),
(6, 'PU', 35, 70),
(6, 'RD', 35, 90),
(6, 'WH', 35, 100),
(6, 'YL', 35, 80),
(7, 'OR', 50, 50),
(7, 'PC', 50, 50),
(7, 'PK', 50, 50),
(7, 'PU', 50, 50),
(7, 'RD', 50, 50),
(7, 'WH', 50, 50),
(7, 'YL', 50, 50),
(8, 'BL', 100, 20),
(8, 'OR', 100, 20),
(8, 'PK', 100, 20),
(8, 'PU', 100, 20),
(8, 'RD', 100, 20),
(8, 'WH', 100, 20),
(8, 'YL', 100, 20),
(9, 'RD', 15, 140),
(9, 'YL', 15, 150),
(10, 'PK', 10, 160),
(10, 'RD', 10, 180),
(10, 'WH', 10, 200),
(11, 'PK', 20, 120),
(11, 'WH', 20, 130),
(11, 'YL', 20, 110),
(12, 'PK', 25, 90),
(12, 'WH', 25, 80),
(13, 'BL', 10, 100),
(13, 'PK', 10, 140),
(13, 'PU', 10, 130),
(13, 'RD', 10, 150),
(13, 'WH', 10, 110),
(13, 'YL', 10, 120),
(14, 'OR', 30, 70),
(14, 'PU', 30, 60),
(14, 'RD', 30, 80),
(14, 'WH', 30, 40),
(14, 'YL', 30, 50),
(15, 'OR', 20, 100),
(15, 'PK', 20, 90),
(15, 'RD', 20, 110),
(15, 'WH', 20, 70),
(15, 'YL', 20, 80),
(16, 'OR', 25, 50),
(16, 'PK', 25, 40),
(16, 'RD', 25, 60),
(16, 'WH', 25, 20),
(16, 'YL', 25, 30),
(17, 'NULL', 15, 90),
(18, 'OR', 30, 40),
(18, 'PK', 30, 30),
(18, 'WH', 30, 20),
(18, 'YL', 30, 50),
(19, 'NULL', 10, 150),
(20, 'NULL', 15, 100),
(21, 'NULL', 20, 80),
(22, 'NULL', 20, 70),
(23, 'NULL', 10, 90),
(24, 'NULL', 25, 60),
(25, 'NULL', 10, 120),
(26, 'NULL', 15, 110),
(27, 'PU', 30, 50),
(28, 'NULL', 20, 80),
(29, 'NULL', 15, 70),
(30, 'NULL', 10, 90),
(31, 'NULL', 20, 60),
(32, 'NULL', 25, 50),
(33, 'NULL', 15, 80),
(34, 'NULL', 20, 70),
(35, 'NULL', 10, 100),
(36, 'NULL', 30, 40),
(37, 'NULL', 25, 30),
(38, 'NULL', 20, 20),
(39, 'NULL', 10, 10),
(40, 'NULL', 50, 5),
(41, 'NULL', 15, 40),
(42, 'NULL', 20, 30),
(43, 'NULL', 25, 20),
(44, 'OR', 20, 10),
(44, 'PK', 20, 20),
(44, 'RD', 20, 5),
(44, 'WH', 20, 40),
(44, 'YL', 20, 30),
(45, 'NULL', 15, 50),
(46, 'NULL', 20, 40),
(47, 'NULL', 25, 30),
(48, 'NULL', 30, 20),
(49, 'NULL', 35, 10),
(50, 'NULL', 40, 5),
(51, 'NULL', 45, 5),
(52, 'NULL', 50, 5),
(53, 'NULL', 55, 5),
(54, 'NULL', 60, 5),
(55, 'NULL', 65, 5),
(56, 'NULL', 70, 5),
(57, 'NULL', 75, 5),
(58, 'NULL', 80, 5),
(59, 'NULL', 85, 5),
(60, 'NULL', 90, 5),
(61, 'NULL', 95, 5),
(62, 'NULL', 100, 5),
(63, 'NULL', 105, 5),
(64, 'NULL', 110, 5);

-- --------------------------------------------------------

--
-- Table structure for table `s19`
--

CREATE TABLE `s19` (
  `PlantID` int(11) NOT NULL,
  `Color` varchar(7) NOT NULL,
  `Price` int(11) DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `s19`
--

INSERT INTO `s19` (`PlantID`, `Color`, `Price`, `Quantity`) VALUES
(1, 'PK', 25, 90),
(1, 'RD', 25, 100),
(1, 'YL', 25, 80),
(2, 'PC', 30, 70),
(2, 'WH', 30, 60),
(2, 'YL', 30, 50),
(3, 'RD', 20, 140),
(3, 'WH', 20, 150),
(3, 'YL', 20, 130),
(4, 'WH', 15, 220),
(4, 'YL', 15, 200),
(5, 'OR', 10, 280),
(5, 'WH', 10, 250),
(5, 'YL', 10, 300),
(6, 'PU', 35, 70),
(6, 'RD', 35, 90),
(6, 'WH', 35, 100),
(6, 'YL', 35, 80),
(7, 'OR', 50, 50),
(7, 'PC', 50, 50),
(7, 'PK', 50, 50),
(7, 'PU', 50, 50),
(7, 'RD', 50, 50),
(7, 'WH', 50, 50),
(7, 'YL', 50, 50),
(8, 'BL', 100, 20),
(8, 'OR', 100, 20),
(8, 'PK', 100, 20),
(8, 'PU', 100, 20),
(8, 'RD', 100, 20),
(8, 'WH', 100, 20),
(8, 'YL', 100, 20),
(9, 'RD', 15, 140),
(9, 'YL', 15, 150),
(10, 'PK', 10, 160),
(10, 'RD', 10, 180),
(10, 'WH', 10, 200),
(11, 'PK', 20, 120),
(11, 'WH', 20, 130),
(11, 'YL', 20, 110),
(12, 'PK', 25, 90),
(12, 'WH', 25, 80),
(13, 'BL', 10, 100),
(13, 'PK', 10, 140),
(13, 'PU', 10, 130),
(13, 'RD', 10, 150),
(13, 'WH', 10, 110),
(13, 'YL', 10, 120),
(14, 'OR', 30, 70),
(14, 'PU', 30, 60),
(14, 'RD', 30, 80),
(14, 'WH', 30, 40),
(14, 'YL', 30, 50),
(15, 'OR', 20, 100),
(15, 'PK', 20, 90),
(15, 'RD', 20, 110),
(15, 'WH', 20, 70),
(15, 'YL', 20, 80),
(16, 'OR', 25, 50),
(16, 'PK', 25, 40),
(16, 'RD', 25, 60),
(16, 'WH', 25, 20),
(16, 'YL', 25, 30),
(17, 'NULL', 15, 90),
(18, 'OR', 30, 40),
(18, 'PK', 30, 30),
(18, 'WH', 30, 20),
(18, 'YL', 30, 50),
(19, 'NULL', 10, 150),
(20, 'NULL', 15, 100),
(21, 'NULL', 20, 80),
(22, 'NULL', 20, 70),
(23, 'NULL', 10, 90),
(24, 'NULL', 25, 60),
(25, 'NULL', 10, 120),
(26, 'NULL', 15, 110),
(27, 'PU', 30, 50),
(28, 'NULL', 20, 80),
(29, 'NULL', 15, 70),
(30, 'NULL', 10, 90),
(31, 'NULL', 20, 60),
(32, 'NULL', 25, 50),
(33, 'NULL', 15, 80),
(34, 'NULL', 20, 70),
(35, 'NULL', 10, 100),
(36, 'NULL', 30, 40),
(37, 'NULL', 25, 30),
(38, 'NULL', 20, 20),
(39, 'NULL', 10, 10),
(40, 'NULL', 50, 5),
(41, 'NULL', 15, 40),
(42, 'NULL', 20, 30),
(43, 'NULL', 25, 20),
(44, 'OR', 20, 10),
(44, 'PK', 20, 20),
(44, 'RD', 20, 5),
(44, 'WH', 20, 40),
(44, 'YL', 20, 30),
(45, 'NULL', 15, 50),
(46, 'NULL', 20, 40),
(47, 'NULL', 25, 30),
(48, 'NULL', 30, 20),
(49, 'NULL', 35, 10),
(50, 'NULL', 40, 5),
(51, 'NULL', 45, 5),
(52, 'NULL', 50, 5),
(53, 'NULL', 55, 5),
(54, 'NULL', 60, 5),
(55, 'NULL', 65, 5),
(56, 'NULL', 70, 5),
(57, 'NULL', 75, 5),
(58, 'NULL', 80, 5),
(59, 'NULL', 85, 5),
(60, 'NULL', 90, 5),
(61, 'NULL', 95, 5),
(62, 'NULL', 100, 5),
(63, 'NULL', 105, 5),
(64, 'NULL', 110, 5);

-- --------------------------------------------------------

--
-- Table structure for table `s20`
--

CREATE TABLE `s20` (
  `PlantID` int(11) NOT NULL,
  `Color` varchar(7) NOT NULL,
  `Price` int(11) DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `s20`
--

INSERT INTO `s20` (`PlantID`, `Color`, `Price`, `Quantity`) VALUES
(1, 'PK', 25, 90),
(1, 'RD', 25, 100),
(1, 'YL', 25, 80),
(2, 'PC', 30, 70),
(2, 'WH', 30, 60),
(2, 'YL', 30, 50),
(3, 'RD', 20, 140),
(3, 'WH', 20, 150),
(3, 'YL', 20, 130),
(4, 'WH', 15, 220),
(4, 'YL', 15, 200),
(5, 'OR', 10, 280),
(5, 'WH', 10, 250),
(5, 'YL', 10, 300),
(6, 'PU', 35, 70),
(6, 'RD', 35, 90),
(6, 'WH', 35, 100),
(6, 'YL', 35, 80),
(7, 'OR', 50, 50),
(7, 'PC', 50, 50),
(7, 'PK', 50, 50),
(7, 'PU', 50, 50),
(7, 'RD', 50, 50),
(7, 'WH', 50, 50),
(7, 'YL', 50, 50),
(8, 'BL', 100, 20),
(8, 'OR', 100, 20),
(8, 'PK', 100, 20),
(8, 'PU', 100, 20),
(8, 'RD', 100, 20),
(8, 'WH', 100, 20),
(8, 'YL', 100, 20),
(9, 'RD', 15, 140),
(9, 'YL', 15, 150),
(10, 'PK', 10, 160),
(10, 'RD', 10, 180),
(10, 'WH', 10, 200),
(11, 'PK', 20, 120),
(11, 'WH', 20, 130),
(11, 'YL', 20, 110),
(12, 'PK', 25, 90),
(12, 'WH', 25, 80),
(13, 'BL', 10, 100),
(13, 'PK', 10, 140),
(13, 'PU', 10, 130),
(13, 'RD', 10, 150),
(13, 'WH', 10, 110),
(13, 'YL', 10, 120),
(14, 'OR', 30, 70),
(14, 'PU', 30, 60),
(14, 'RD', 30, 80),
(14, 'WH', 30, 40),
(14, 'YL', 30, 50),
(15, 'OR', 20, 100),
(15, 'PK', 20, 90),
(15, 'RD', 20, 110),
(15, 'WH', 20, 70),
(15, 'YL', 20, 80),
(16, 'OR', 25, 50),
(16, 'PK', 25, 40),
(16, 'RD', 25, 60),
(16, 'WH', 25, 20),
(16, 'YL', 25, 30),
(17, 'NULL', 15, 90),
(18, 'OR', 30, 40),
(18, 'PK', 30, 30),
(18, 'WH', 30, 20),
(18, 'YL', 30, 50),
(19, 'NULL', 10, 150),
(20, 'NULL', 15, 100),
(21, 'NULL', 20, 80),
(22, 'NULL', 20, 70),
(23, 'NULL', 10, 90),
(24, 'NULL', 25, 60),
(25, 'NULL', 10, 120),
(26, 'NULL', 15, 110),
(27, 'PU', 30, 50),
(28, 'NULL', 20, 80),
(29, 'NULL', 15, 70),
(30, 'NULL', 10, 90),
(31, 'NULL', 20, 60),
(32, 'NULL', 25, 50),
(33, 'NULL', 15, 80),
(34, 'NULL', 20, 70),
(35, 'NULL', 10, 100),
(36, 'NULL', 30, 40),
(37, 'NULL', 25, 30),
(38, 'NULL', 20, 20),
(39, 'NULL', 10, 10),
(40, 'NULL', 50, 5),
(41, 'NULL', 15, 40),
(42, 'NULL', 20, 30),
(43, 'NULL', 25, 20),
(44, 'OR', 20, 10),
(44, 'PK', 20, 20),
(44, 'RD', 20, 5),
(44, 'WH', 20, 40),
(44, 'YL', 20, 30),
(45, 'NULL', 15, 50),
(46, 'NULL', 20, 40),
(47, 'NULL', 25, 30),
(48, 'NULL', 30, 20),
(49, 'NULL', 35, 10),
(50, 'NULL', 40, 5),
(51, 'NULL', 45, 5),
(52, 'NULL', 50, 5),
(53, 'NULL', 55, 5),
(54, 'NULL', 60, 5),
(55, 'NULL', 65, 5),
(56, 'NULL', 70, 5),
(57, 'NULL', 75, 5),
(58, 'NULL', 80, 5),
(59, 'NULL', 85, 5),
(60, 'NULL', 90, 5),
(61, 'NULL', 95, 5),
(62, 'NULL', 100, 5),
(63, 'NULL', 105, 5),
(64, 'NULL', 110, 5);

-- --------------------------------------------------------

--
-- Table structure for table `s21`
--

CREATE TABLE `s21` (
  `PlantID` int(11) NOT NULL,
  `Color` varchar(7) NOT NULL,
  `Price` int(11) DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `s21`
--

INSERT INTO `s21` (`PlantID`, `Color`, `Price`, `Quantity`) VALUES
(1, 'PK', 25, 90),
(1, 'RD', 25, 100),
(1, 'YL', 25, 80),
(2, 'PC', 30, 70),
(2, 'WH', 30, 60),
(2, 'YL', 30, 50),
(3, 'RD', 20, 140),
(3, 'WH', 20, 150),
(3, 'YL', 20, 130),
(4, 'WH', 15, 220),
(4, 'YL', 15, 200),
(5, 'OR', 10, 280),
(5, 'WH', 10, 250),
(5, 'YL', 10, 300),
(6, 'PU', 35, 70),
(6, 'RD', 35, 90),
(6, 'WH', 35, 100),
(6, 'YL', 35, 80),
(7, 'OR', 50, 50),
(7, 'PC', 50, 50),
(7, 'PK', 50, 50),
(7, 'PU', 50, 50),
(7, 'RD', 50, 50),
(7, 'WH', 50, 50),
(7, 'YL', 50, 50),
(8, 'BL', 100, 20),
(8, 'OR', 100, 20),
(8, 'PK', 100, 20),
(8, 'PU', 100, 20),
(8, 'RD', 100, 20),
(8, 'WH', 100, 20),
(8, 'YL', 100, 20),
(9, 'RD', 15, 140),
(9, 'YL', 15, 150),
(10, 'PK', 10, 160),
(10, 'RD', 10, 180),
(10, 'WH', 10, 200),
(11, 'PK', 20, 120),
(11, 'WH', 20, 130),
(11, 'YL', 20, 110),
(12, 'PK', 25, 90),
(12, 'WH', 25, 80),
(13, 'BL', 10, 100),
(13, 'PK', 10, 140),
(13, 'PU', 10, 130),
(13, 'RD', 10, 150),
(13, 'WH', 10, 110),
(13, 'YL', 10, 120),
(14, 'OR', 30, 70),
(14, 'PU', 30, 60),
(14, 'RD', 30, 80),
(14, 'WH', 30, 40),
(14, 'YL', 30, 50),
(15, 'OR', 20, 100),
(15, 'PK', 20, 90),
(15, 'RD', 20, 110),
(15, 'WH', 20, 70),
(15, 'YL', 20, 80),
(16, 'OR', 25, 50),
(16, 'PK', 25, 40),
(16, 'RD', 25, 60),
(16, 'WH', 25, 20),
(16, 'YL', 25, 30),
(17, 'NULL', 15, 90),
(18, 'OR', 30, 40),
(18, 'PK', 30, 30),
(18, 'WH', 30, 20),
(18, 'YL', 30, 50),
(19, 'NULL', 10, 150),
(20, 'NULL', 15, 100),
(21, 'NULL', 20, 80),
(22, 'NULL', 20, 70),
(23, 'NULL', 10, 90),
(24, 'NULL', 25, 60),
(25, 'NULL', 10, 120),
(26, 'NULL', 15, 110),
(27, 'PU', 30, 50),
(28, 'NULL', 20, 80),
(29, 'NULL', 15, 70),
(30, 'NULL', 10, 90),
(31, 'NULL', 20, 60),
(32, 'NULL', 25, 50),
(33, 'NULL', 15, 80),
(34, 'NULL', 20, 70),
(35, 'NULL', 10, 100),
(36, 'NULL', 30, 40),
(37, 'NULL', 25, 30),
(38, 'NULL', 20, 20),
(39, 'NULL', 10, 10),
(40, 'NULL', 50, 5),
(41, 'NULL', 15, 40),
(42, 'NULL', 20, 30),
(43, 'NULL', 25, 20),
(44, 'OR', 20, 10),
(44, 'PK', 20, 20),
(44, 'RD', 20, 5),
(44, 'WH', 20, 40),
(44, 'YL', 20, 30),
(45, 'NULL', 15, 50),
(46, 'NULL', 20, 40),
(47, 'NULL', 25, 30),
(48, 'NULL', 30, 20),
(49, 'NULL', 35, 10),
(50, 'NULL', 40, 5),
(51, 'NULL', 45, 5),
(52, 'NULL', 50, 5),
(53, 'NULL', 55, 5),
(54, 'NULL', 60, 5),
(55, 'NULL', 65, 5),
(56, 'NULL', 70, 5),
(57, 'NULL', 75, 5),
(58, 'NULL', 80, 5),
(59, 'NULL', 85, 5),
(60, 'NULL', 90, 5),
(61, 'NULL', 95, 5),
(62, 'NULL', 100, 5),
(63, 'NULL', 105, 5),
(64, 'NULL', 110, 5);

-- --------------------------------------------------------

--
-- Table structure for table `s22`
--

CREATE TABLE `s22` (
  `PlantID` int(11) NOT NULL,
  `Color` varchar(7) NOT NULL,
  `Price` int(11) DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `s22`
--

INSERT INTO `s22` (`PlantID`, `Color`, `Price`, `Quantity`) VALUES
(1, 'PK', 25, 90),
(1, 'RD', 25, 100),
(1, 'YL', 25, 80),
(2, 'PC', 30, 70),
(2, 'WH', 30, 60),
(2, 'YL', 30, 50),
(3, 'RD', 20, 140),
(3, 'WH', 20, 150),
(3, 'YL', 20, 130),
(4, 'WH', 15, 220),
(4, 'YL', 15, 200),
(5, 'OR', 10, 280),
(5, 'WH', 10, 250),
(5, 'YL', 10, 300),
(6, 'PU', 35, 70),
(6, 'RD', 35, 90),
(6, 'WH', 35, 100),
(6, 'YL', 35, 80),
(7, 'OR', 50, 50),
(7, 'PC', 50, 50),
(7, 'PK', 50, 50),
(7, 'PU', 50, 50),
(7, 'RD', 50, 50),
(7, 'WH', 50, 50),
(7, 'YL', 50, 50),
(8, 'BL', 100, 20),
(8, 'OR', 100, 20),
(8, 'PK', 100, 20),
(8, 'PU', 100, 20),
(8, 'RD', 100, 20),
(8, 'WH', 100, 20),
(8, 'YL', 100, 20),
(9, 'RD', 15, 140),
(9, 'YL', 15, 150),
(10, 'PK', 10, 160),
(10, 'RD', 10, 180),
(10, 'WH', 10, 200),
(11, 'PK', 20, 120),
(11, 'WH', 20, 130),
(11, 'YL', 20, 110),
(12, 'PK', 25, 90),
(12, 'WH', 25, 80),
(13, 'BL', 10, 100),
(13, 'PK', 10, 140),
(13, 'PU', 10, 130),
(13, 'RD', 10, 150),
(13, 'WH', 10, 110),
(13, 'YL', 10, 120),
(14, 'OR', 30, 70),
(14, 'PU', 30, 60),
(14, 'RD', 30, 80),
(14, 'WH', 30, 40),
(14, 'YL', 30, 50),
(15, 'OR', 20, 100),
(15, 'PK', 20, 90),
(15, 'RD', 20, 110),
(15, 'WH', 20, 70),
(15, 'YL', 20, 80),
(16, 'OR', 25, 50),
(16, 'PK', 25, 40),
(16, 'RD', 25, 60),
(16, 'WH', 25, 20),
(16, 'YL', 25, 30),
(17, 'NULL', 15, 90),
(18, 'OR', 30, 40),
(18, 'PK', 30, 30),
(18, 'WH', 30, 20),
(18, 'YL', 30, 50),
(19, 'NULL', 10, 150),
(20, 'NULL', 15, 100),
(21, 'NULL', 20, 80),
(22, 'NULL', 20, 70),
(23, 'NULL', 10, 90),
(24, 'NULL', 25, 60),
(25, 'NULL', 10, 120),
(26, 'NULL', 15, 110),
(27, 'PU', 30, 50),
(28, 'NULL', 20, 80),
(29, 'NULL', 15, 70),
(30, 'NULL', 10, 90),
(31, 'NULL', 20, 60),
(32, 'NULL', 25, 50),
(33, 'NULL', 15, 80),
(34, 'NULL', 20, 70),
(35, 'NULL', 10, 100),
(36, 'NULL', 30, 40),
(37, 'NULL', 25, 30),
(38, 'NULL', 20, 20),
(39, 'NULL', 10, 10),
(40, 'NULL', 50, 5),
(41, 'NULL', 15, 40),
(42, 'NULL', 20, 30),
(43, 'NULL', 25, 20),
(44, 'OR', 20, 10),
(44, 'PK', 20, 20),
(44, 'RD', 20, 5),
(44, 'WH', 20, 40),
(44, 'YL', 20, 30),
(45, 'NULL', 15, 50),
(46, 'NULL', 20, 40),
(47, 'NULL', 25, 30),
(48, 'NULL', 30, 20),
(49, 'NULL', 35, 10),
(50, 'NULL', 40, 5),
(51, 'NULL', 45, 5),
(52, 'NULL', 50, 5),
(53, 'NULL', 55, 5),
(54, 'NULL', 60, 5),
(55, 'NULL', 65, 5),
(56, 'NULL', 70, 5),
(57, 'NULL', 75, 5),
(58, 'NULL', 80, 5),
(59, 'NULL', 85, 5),
(60, 'NULL', 90, 5),
(61, 'NULL', 95, 5),
(62, 'NULL', 100, 5),
(63, 'NULL', 105, 5),
(64, 'NULL', 110, 5);

-- --------------------------------------------------------

--
-- Table structure for table `s23`
--

CREATE TABLE `s23` (
  `PlantID` int(11) NOT NULL,
  `Color` varchar(7) NOT NULL,
  `Price` int(11) DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `s23`
--

INSERT INTO `s23` (`PlantID`, `Color`, `Price`, `Quantity`) VALUES
(1, 'PK', 25, 90),
(1, 'RD', 25, 100),
(1, 'YL', 25, 80),
(2, 'PC', 30, 70),
(2, 'WH', 30, 60),
(2, 'YL', 30, 50),
(3, 'RD', 20, 140),
(3, 'WH', 20, 150),
(3, 'YL', 20, 130),
(4, 'WH', 15, 220),
(4, 'YL', 15, 200),
(5, 'OR', 10, 280),
(5, 'WH', 10, 250),
(5, 'YL', 10, 300),
(6, 'PU', 35, 70),
(6, 'RD', 35, 90),
(6, 'WH', 35, 100),
(6, 'YL', 35, 80),
(7, 'OR', 50, 50),
(7, 'PC', 50, 50),
(7, 'PK', 50, 50),
(7, 'PU', 50, 50),
(7, 'RD', 50, 50),
(7, 'WH', 50, 50),
(7, 'YL', 50, 50),
(8, 'BL', 100, 20),
(8, 'OR', 100, 20),
(8, 'PK', 100, 20),
(8, 'PU', 100, 20),
(8, 'RD', 100, 20),
(8, 'WH', 100, 20),
(8, 'YL', 100, 20),
(9, 'RD', 15, 140),
(9, 'YL', 15, 150),
(10, 'PK', 10, 160),
(10, 'RD', 10, 180),
(10, 'WH', 10, 200),
(11, 'PK', 20, 120),
(11, 'WH', 20, 130),
(11, 'YL', 20, 110),
(12, 'PK', 25, 90),
(12, 'WH', 25, 80),
(13, 'BL', 10, 100),
(13, 'PK', 10, 140),
(13, 'PU', 10, 130),
(13, 'RD', 10, 150),
(13, 'WH', 10, 110),
(13, 'YL', 10, 120),
(14, 'OR', 30, 70),
(14, 'PU', 30, 60),
(14, 'RD', 30, 80),
(14, 'WH', 30, 40),
(14, 'YL', 30, 50),
(15, 'OR', 20, 100),
(15, 'PK', 20, 90),
(15, 'RD', 20, 110),
(15, 'WH', 20, 70),
(15, 'YL', 20, 80),
(16, 'OR', 25, 50),
(16, 'PK', 25, 40),
(16, 'RD', 25, 60),
(16, 'WH', 25, 20),
(16, 'YL', 25, 30),
(17, 'NULL', 15, 90),
(18, 'OR', 30, 40),
(18, 'PK', 30, 30),
(18, 'WH', 30, 20),
(18, 'YL', 30, 50),
(19, 'NULL', 10, 150),
(20, 'NULL', 15, 100),
(21, 'NULL', 20, 80),
(22, 'NULL', 20, 70),
(23, 'NULL', 10, 90),
(24, 'NULL', 25, 60),
(25, 'NULL', 10, 120),
(26, 'NULL', 15, 110),
(27, 'PU', 30, 50),
(28, 'NULL', 20, 80),
(29, 'NULL', 15, 70),
(30, 'NULL', 10, 90),
(31, 'NULL', 20, 60),
(32, 'NULL', 25, 50),
(33, 'NULL', 15, 80),
(34, 'NULL', 20, 70),
(35, 'NULL', 10, 100),
(36, 'NULL', 30, 40),
(37, 'NULL', 25, 30),
(38, 'NULL', 20, 20),
(39, 'NULL', 10, 10),
(40, 'NULL', 50, 5),
(41, 'NULL', 15, 40),
(42, 'NULL', 20, 30),
(43, 'NULL', 25, 20),
(44, 'OR', 20, 10),
(44, 'PK', 20, 20),
(44, 'RD', 20, 5),
(44, 'WH', 20, 40),
(44, 'YL', 20, 30),
(45, 'NULL', 15, 50),
(46, 'NULL', 20, 40),
(47, 'NULL', 25, 30),
(48, 'NULL', 30, 20),
(49, 'NULL', 35, 10),
(50, 'NULL', 40, 5),
(51, 'NULL', 45, 5),
(52, 'NULL', 50, 5),
(53, 'NULL', 55, 5),
(54, 'NULL', 60, 5),
(55, 'NULL', 65, 5),
(56, 'NULL', 70, 5),
(57, 'NULL', 75, 5),
(58, 'NULL', 80, 5),
(59, 'NULL', 85, 5),
(60, 'NULL', 90, 5),
(61, 'NULL', 95, 5),
(62, 'NULL', 100, 5),
(63, 'NULL', 105, 5),
(64, 'NULL', 110, 5);

-- --------------------------------------------------------

--
-- Table structure for table `s24`
--

CREATE TABLE `s24` (
  `PlantID` int(11) NOT NULL,
  `Color` varchar(7) NOT NULL,
  `Price` int(11) DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `s24`
--

INSERT INTO `s24` (`PlantID`, `Color`, `Price`, `Quantity`) VALUES
(1, 'PK', 25, 90),
(1, 'RD', 25, 100),
(1, 'YL', 25, 80),
(2, 'PC', 30, 70),
(2, 'WH', 30, 60),
(2, 'YL', 30, 50),
(3, 'RD', 20, 140),
(3, 'WH', 20, 150),
(3, 'YL', 20, 130),
(4, 'WH', 15, 220),
(4, 'YL', 15, 200),
(5, 'OR', 10, 280),
(5, 'WH', 10, 250),
(5, 'YL', 10, 300),
(6, 'PU', 35, 70),
(6, 'RD', 35, 90),
(6, 'WH', 35, 100),
(6, 'YL', 35, 80),
(7, 'OR', 50, 50),
(7, 'PC', 50, 50),
(7, 'PK', 50, 50),
(7, 'PU', 50, 50),
(7, 'RD', 50, 50),
(7, 'WH', 50, 50),
(7, 'YL', 50, 50),
(8, 'BL', 100, 20),
(8, 'OR', 100, 20),
(8, 'PK', 100, 20),
(8, 'PU', 100, 20),
(8, 'RD', 100, 20),
(8, 'WH', 100, 20),
(8, 'YL', 100, 20),
(9, 'RD', 15, 140),
(9, 'YL', 15, 150),
(10, 'PK', 10, 160),
(10, 'RD', 10, 180),
(10, 'WH', 10, 200),
(11, 'PK', 20, 120),
(11, 'WH', 20, 130),
(11, 'YL', 20, 110),
(12, 'PK', 25, 90),
(12, 'WH', 25, 80),
(13, 'BL', 10, 100),
(13, 'PK', 10, 140),
(13, 'PU', 10, 130),
(13, 'RD', 10, 150),
(13, 'WH', 10, 110),
(13, 'YL', 10, 120),
(14, 'OR', 30, 70),
(14, 'PU', 30, 60),
(14, 'RD', 30, 80),
(14, 'WH', 30, 40),
(14, 'YL', 30, 50),
(15, 'OR', 20, 100),
(15, 'PK', 20, 90),
(15, 'RD', 20, 110),
(15, 'WH', 20, 70),
(15, 'YL', 20, 80),
(16, 'OR', 25, 50),
(16, 'PK', 25, 40),
(16, 'RD', 25, 60),
(16, 'WH', 25, 20),
(16, 'YL', 25, 30),
(17, 'NULL', 15, 90),
(18, 'OR', 30, 40),
(18, 'PK', 30, 30),
(18, 'WH', 30, 20),
(18, 'YL', 30, 50),
(19, 'NULL', 10, 150),
(20, 'NULL', 15, 100),
(21, 'NULL', 20, 80),
(22, 'NULL', 20, 70),
(23, 'NULL', 10, 90),
(24, 'NULL', 25, 60),
(25, 'NULL', 10, 120),
(26, 'NULL', 15, 110),
(27, 'PU', 30, 50),
(28, 'NULL', 20, 80),
(29, 'NULL', 15, 70),
(30, 'NULL', 10, 90),
(31, 'NULL', 20, 60),
(32, 'NULL', 25, 50),
(33, 'NULL', 15, 80),
(34, 'NULL', 20, 70),
(35, 'NULL', 10, 100),
(36, 'NULL', 30, 40),
(37, 'NULL', 25, 30),
(38, 'NULL', 20, 20),
(39, 'NULL', 10, 10),
(40, 'NULL', 50, 5),
(41, 'NULL', 15, 40),
(42, 'NULL', 20, 30),
(43, 'NULL', 25, 20),
(44, 'OR', 20, 10),
(44, 'PK', 20, 20),
(44, 'RD', 20, 5),
(44, 'WH', 20, 40),
(44, 'YL', 20, 30),
(45, 'NULL', 15, 50),
(46, 'NULL', 20, 40),
(47, 'NULL', 25, 30),
(48, 'NULL', 30, 20),
(49, 'NULL', 35, 10),
(50, 'NULL', 40, 5),
(51, 'NULL', 45, 5),
(52, 'NULL', 50, 5),
(53, 'NULL', 55, 5),
(54, 'NULL', 60, 5),
(55, 'NULL', 65, 5),
(56, 'NULL', 70, 5),
(57, 'NULL', 75, 5),
(58, 'NULL', 80, 5),
(59, 'NULL', 85, 5),
(60, 'NULL', 90, 5),
(61, 'NULL', 95, 5),
(62, 'NULL', 100, 5),
(63, 'NULL', 105, 5),
(64, 'NULL', 110, 5);

-- --------------------------------------------------------

--
-- Table structure for table `s25`
--

CREATE TABLE `s25` (
  `PlantID` int(11) NOT NULL,
  `Color` varchar(7) NOT NULL,
  `Price` int(11) DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `s25`
--

INSERT INTO `s25` (`PlantID`, `Color`, `Price`, `Quantity`) VALUES
(1, 'PK', 25, 90),
(1, 'RD', 25, 100),
(1, 'YL', 25, 80),
(2, 'PC', 30, 70),
(2, 'WH', 30, 60),
(2, 'YL', 30, 50),
(3, 'RD', 20, 140),
(3, 'WH', 20, 150),
(3, 'YL', 20, 130),
(4, 'WH', 15, 220),
(4, 'YL', 15, 200),
(5, 'OR', 10, 280),
(5, 'WH', 10, 250),
(5, 'YL', 10, 300),
(6, 'PU', 35, 70),
(6, 'RD', 35, 90),
(6, 'WH', 35, 100),
(6, 'YL', 35, 80),
(7, 'OR', 50, 50),
(7, 'PC', 50, 50),
(7, 'PK', 50, 50),
(7, 'PU', 50, 50),
(7, 'RD', 50, 50),
(7, 'WH', 50, 50),
(7, 'YL', 50, 50),
(8, 'BL', 100, 20),
(8, 'OR', 100, 20),
(8, 'PK', 100, 20),
(8, 'PU', 100, 20),
(8, 'RD', 100, 20),
(8, 'WH', 100, 20),
(8, 'YL', 100, 20),
(9, 'RD', 15, 140),
(9, 'YL', 15, 150),
(10, 'PK', 10, 160),
(10, 'RD', 10, 180),
(10, 'WH', 10, 200),
(11, 'PK', 20, 120),
(11, 'WH', 20, 130),
(11, 'YL', 20, 110),
(12, 'PK', 25, 90),
(12, 'WH', 25, 80),
(13, 'BL', 10, 100),
(13, 'PK', 10, 140),
(13, 'PU', 10, 130),
(13, 'RD', 10, 150),
(13, 'WH', 10, 110),
(13, 'YL', 10, 120),
(14, 'OR', 30, 70),
(14, 'PU', 30, 60),
(14, 'RD', 30, 80),
(14, 'WH', 30, 40),
(14, 'YL', 30, 50),
(15, 'OR', 20, 100),
(15, 'PK', 20, 90),
(15, 'RD', 20, 110),
(15, 'WH', 20, 70),
(15, 'YL', 20, 80),
(16, 'OR', 25, 50),
(16, 'PK', 25, 40),
(16, 'RD', 25, 60),
(16, 'WH', 25, 20),
(16, 'YL', 25, 30),
(17, 'NULL', 15, 90),
(18, 'OR', 30, 40),
(18, 'PK', 30, 30),
(18, 'WH', 30, 20),
(18, 'YL', 30, 50),
(19, 'NULL', 10, 150),
(20, 'NULL', 15, 100),
(21, 'NULL', 20, 80),
(22, 'NULL', 20, 70),
(23, 'NULL', 10, 90),
(24, 'NULL', 25, 60),
(25, 'NULL', 10, 120),
(26, 'NULL', 15, 110),
(27, 'PU', 30, 50),
(28, 'NULL', 20, 80),
(29, 'NULL', 15, 70),
(30, 'NULL', 10, 90),
(31, 'NULL', 20, 60),
(32, 'NULL', 25, 50),
(33, 'NULL', 15, 80),
(34, 'NULL', 20, 70),
(35, 'NULL', 10, 100),
(36, 'NULL', 30, 40),
(37, 'NULL', 25, 30),
(38, 'NULL', 20, 20),
(39, 'NULL', 10, 10),
(40, 'NULL', 50, 5),
(41, 'NULL', 15, 40),
(42, 'NULL', 20, 30),
(43, 'NULL', 25, 20),
(44, 'OR', 20, 10),
(44, 'PK', 20, 20),
(44, 'RD', 20, 5),
(44, 'WH', 20, 40),
(44, 'YL', 20, 30),
(45, 'NULL', 15, 50),
(46, 'NULL', 20, 40),
(47, 'NULL', 25, 30),
(48, 'NULL', 30, 20),
(49, 'NULL', 35, 10),
(50, 'NULL', 40, 5),
(51, 'NULL', 45, 5),
(52, 'NULL', 50, 5),
(53, 'NULL', 55, 5),
(54, 'NULL', 60, 5),
(55, 'NULL', 65, 5),
(56, 'NULL', 70, 5),
(57, 'NULL', 75, 5),
(58, 'NULL', 80, 5),
(59, 'NULL', 85, 5),
(60, 'NULL', 90, 5),
(61, 'NULL', 95, 5),
(62, 'NULL', 100, 5),
(63, 'NULL', 105, 5),
(64, 'NULL', 110, 5);

-- --------------------------------------------------------

--
-- Table structure for table `s26`
--

CREATE TABLE `s26` (
  `PlantID` int(11) NOT NULL,
  `Color` varchar(7) NOT NULL,
  `Price` int(11) DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `s26`
--

INSERT INTO `s26` (`PlantID`, `Color`, `Price`, `Quantity`) VALUES
(1, 'PK', 25, 90),
(1, 'RD', 25, 100),
(1, 'YL', 25, 80),
(2, 'PC', 30, 70),
(2, 'WH', 30, 60),
(2, 'YL', 30, 50),
(3, 'RD', 20, 140),
(3, 'WH', 20, 150),
(3, 'YL', 20, 130),
(4, 'WH', 15, 220),
(4, 'YL', 15, 200),
(5, 'OR', 10, 280),
(5, 'WH', 10, 250),
(5, 'YL', 10, 300),
(6, 'PU', 35, 70),
(6, 'RD', 35, 90),
(6, 'WH', 35, 100),
(6, 'YL', 35, 80),
(7, 'OR', 50, 50),
(7, 'PC', 50, 50),
(7, 'PK', 50, 50),
(7, 'PU', 50, 50),
(7, 'RD', 50, 50),
(7, 'WH', 50, 50),
(7, 'YL', 50, 50),
(8, 'BL', 100, 20),
(8, 'OR', 100, 20),
(8, 'PK', 100, 20),
(8, 'PU', 100, 20),
(8, 'RD', 100, 20),
(8, 'WH', 100, 20),
(8, 'YL', 100, 20),
(9, 'RD', 15, 140),
(9, 'YL', 15, 150),
(10, 'PK', 10, 160),
(10, 'RD', 10, 180),
(10, 'WH', 10, 200),
(11, 'PK', 20, 120),
(11, 'WH', 20, 130),
(11, 'YL', 20, 110),
(12, 'PK', 25, 90),
(12, 'WH', 25, 80),
(13, 'BL', 10, 100),
(13, 'PK', 10, 140),
(13, 'PU', 10, 130),
(13, 'RD', 10, 150),
(13, 'WH', 10, 110),
(13, 'YL', 10, 120),
(14, 'OR', 30, 70),
(14, 'PU', 30, 60),
(14, 'RD', 30, 80),
(14, 'WH', 30, 40),
(14, 'YL', 30, 50),
(15, 'OR', 20, 100),
(15, 'PK', 20, 90),
(15, 'RD', 20, 110),
(15, 'WH', 20, 70),
(15, 'YL', 20, 80),
(16, 'OR', 25, 50),
(16, 'PK', 25, 40),
(16, 'RD', 25, 60),
(16, 'WH', 25, 20),
(16, 'YL', 25, 30),
(17, 'NULL', 15, 90),
(18, 'OR', 30, 40),
(18, 'PK', 30, 30),
(18, 'WH', 30, 20),
(18, 'YL', 30, 50),
(19, 'NULL', 10, 150),
(20, 'NULL', 15, 100),
(21, 'NULL', 20, 80),
(22, 'NULL', 20, 70),
(23, 'NULL', 10, 90),
(24, 'NULL', 25, 60),
(25, 'NULL', 10, 120),
(26, 'NULL', 15, 110),
(27, 'PU', 30, 50),
(28, 'NULL', 20, 80),
(29, 'NULL', 15, 70),
(30, 'NULL', 10, 90),
(31, 'NULL', 20, 60),
(32, 'NULL', 25, 50),
(33, 'NULL', 15, 80),
(34, 'NULL', 20, 70),
(35, 'NULL', 10, 100),
(36, 'NULL', 30, 40),
(37, 'NULL', 25, 30),
(38, 'NULL', 20, 20),
(39, 'NULL', 10, 10),
(40, 'NULL', 50, 5),
(41, 'NULL', 15, 40),
(42, 'NULL', 20, 30),
(43, 'NULL', 25, 20),
(44, 'OR', 20, 10),
(44, 'PK', 20, 20),
(44, 'RD', 20, 5),
(44, 'WH', 20, 40),
(44, 'YL', 20, 30),
(45, 'NULL', 15, 50),
(46, 'NULL', 20, 40),
(47, 'NULL', 25, 30),
(48, 'NULL', 30, 20),
(49, 'NULL', 35, 10),
(50, 'NULL', 40, 5),
(51, 'NULL', 45, 5),
(52, 'NULL', 50, 5),
(53, 'NULL', 55, 5),
(54, 'NULL', 60, 5),
(55, 'NULL', 65, 5),
(56, 'NULL', 70, 5),
(57, 'NULL', 75, 5),
(58, 'NULL', 80, 5),
(59, 'NULL', 85, 5),
(60, 'NULL', 90, 5),
(61, 'NULL', 95, 5),
(62, 'NULL', 100, 5),
(63, 'NULL', 105, 5),
(64, 'NULL', 110, 5);

-- --------------------------------------------------------

--
-- Table structure for table `s27`
--

CREATE TABLE `s27` (
  `PlantID` int(11) NOT NULL,
  `Color` varchar(7) NOT NULL,
  `Price` int(11) DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `s27`
--

INSERT INTO `s27` (`PlantID`, `Color`, `Price`, `Quantity`) VALUES
(1, 'PK', 25, 90),
(1, 'RD', 25, 100),
(1, 'YL', 25, 80),
(2, 'PC', 30, 70),
(2, 'WH', 30, 60),
(2, 'YL', 30, 50),
(3, 'RD', 20, 140),
(3, 'WH', 20, 150),
(3, 'YL', 20, 130),
(4, 'WH', 15, 220),
(4, 'YL', 15, 200),
(5, 'OR', 10, 280),
(5, 'WH', 10, 250),
(5, 'YL', 10, 300),
(6, 'PU', 35, 70),
(6, 'RD', 35, 90),
(6, 'WH', 35, 100),
(6, 'YL', 35, 80),
(7, 'OR', 50, 50),
(7, 'PC', 50, 50),
(7, 'PK', 50, 50),
(7, 'PU', 50, 50),
(7, 'RD', 50, 50),
(7, 'WH', 50, 50),
(7, 'YL', 50, 50),
(8, 'BL', 100, 20),
(8, 'OR', 100, 20),
(8, 'PK', 100, 20),
(8, 'PU', 100, 20),
(8, 'RD', 100, 20),
(8, 'WH', 100, 20),
(8, 'YL', 100, 20),
(9, 'RD', 15, 140),
(9, 'YL', 15, 150),
(10, 'PK', 10, 160),
(10, 'RD', 10, 180),
(10, 'WH', 10, 200),
(11, 'PK', 20, 120),
(11, 'WH', 20, 130),
(11, 'YL', 20, 110),
(12, 'PK', 25, 90),
(12, 'WH', 25, 80),
(13, 'BL', 10, 100),
(13, 'PK', 10, 140),
(13, 'PU', 10, 130),
(13, 'RD', 10, 150),
(13, 'WH', 10, 110),
(13, 'YL', 10, 120),
(14, 'OR', 30, 70),
(14, 'PU', 30, 60),
(14, 'RD', 30, 80),
(14, 'WH', 30, 40),
(14, 'YL', 30, 50),
(15, 'OR', 20, 100),
(15, 'PK', 20, 90),
(15, 'RD', 20, 110),
(15, 'WH', 20, 70),
(15, 'YL', 20, 80),
(16, 'OR', 25, 50),
(16, 'PK', 25, 40),
(16, 'RD', 25, 60),
(16, 'WH', 25, 20),
(16, 'YL', 25, 30),
(17, 'NULL', 15, 90),
(18, 'OR', 30, 40),
(18, 'PK', 30, 30),
(18, 'WH', 30, 20),
(18, 'YL', 30, 50),
(19, 'NULL', 10, 150),
(20, 'NULL', 15, 100),
(21, 'NULL', 20, 80),
(22, 'NULL', 20, 70),
(23, 'NULL', 10, 90),
(24, 'NULL', 25, 60),
(25, 'NULL', 10, 120),
(26, 'NULL', 15, 110),
(27, 'PU', 30, 50),
(28, 'NULL', 20, 80),
(29, 'NULL', 15, 70),
(30, 'NULL', 10, 90),
(31, 'NULL', 20, 60),
(32, 'NULL', 25, 50),
(33, 'NULL', 15, 80),
(34, 'NULL', 20, 70),
(35, 'NULL', 10, 100),
(36, 'NULL', 30, 40),
(37, 'NULL', 25, 30),
(38, 'NULL', 20, 20),
(39, 'NULL', 10, 10),
(40, 'NULL', 50, 5),
(41, 'NULL', 15, 40),
(42, 'NULL', 20, 30),
(43, 'NULL', 25, 20),
(44, 'OR', 20, 10),
(44, 'PK', 20, 20),
(44, 'RD', 20, 5),
(44, 'WH', 20, 40),
(44, 'YL', 20, 30),
(45, 'NULL', 15, 50),
(46, 'NULL', 20, 40),
(47, 'NULL', 25, 30),
(48, 'NULL', 30, 20),
(49, 'NULL', 35, 10),
(50, 'NULL', 40, 5),
(51, 'NULL', 45, 5),
(52, 'NULL', 50, 5),
(53, 'NULL', 55, 5),
(54, 'NULL', 60, 5),
(55, 'NULL', 65, 5),
(56, 'NULL', 70, 5),
(57, 'NULL', 75, 5),
(58, 'NULL', 80, 5),
(59, 'NULL', 85, 5),
(60, 'NULL', 90, 5),
(61, 'NULL', 95, 5),
(62, 'NULL', 100, 5),
(63, 'NULL', 105, 5),
(64, 'NULL', 110, 5);

-- --------------------------------------------------------

--
-- Table structure for table `statemaster`
--

CREATE TABLE `statemaster` (
  `StateID` varchar(5) NOT NULL,
  `State` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `statemaster`
--

INSERT INTO `statemaster` (`StateID`, `State`) VALUES
('GJ', 'Gujarat'),
('MH', 'Maharashtra'),
('MP', 'Madhya Pradesh'),
('NCR', 'New Delhi(NCR)'),
('TN', 'Tamil Nadu'),
('UP', 'Uttar Pradesh'),
('WB', 'West Bengal');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `Supplier_Code` varchar(10) NOT NULL,
  `Supplier_Name` varchar(255) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `GST_Number` varchar(15) DEFAULT NULL,
  `CityID` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`Supplier_Code`, `Supplier_Name`, `Address`, `GST_Number`, `CityID`) VALUES
('S1', 'Wishfy', '123, Sector 21, Noida, Uttar Pradesh', '09AAACW1234E1Z5', 'NCR1'),
('S10', 'Vellore Botanicals', '56, Gandhi Road, Vellore, Tamil Nadu', '33AAACE2345V1Z2', 'TN3'),
('S11', 'Madurai Plant House', '89, Tallakulam, Madurai, Tamil Nadu', '33AAACF5678W1Z3', 'TN4'),
('S12', 'Kolkata Nursery', '23, Park Street, Kolkata, West Bengal', '19AAABG1234X1Z4', 'WB1'),
('S13', 'Darjeeling Flora', '45, Hill Cart Road, Darjeeling, WB', '19AABCC2345Y1Z5', 'WB2'),
('S14', 'Howrah Garden Hub', '89, Shibpur Road, Howrah, West Bengal', '19AAACF5678Z1Z6', 'WB3'),
('S15', 'Siliguri Green Corner', '101, Sevoke Road, Siliguri, WB', '19AAACH1234A1Z7', 'WB4'),
('S16', 'Ahemdabad Plant Mart', '123, SG Highway, Ahmedabad, Gujarat', '24AAACB5678B1Z8', 'GJ1'),
('S17', 'Vadodara Gardeners', '67, Alkapuri, Vadodara, Gujarat', '24AACBG2345C1Z9', 'GJ2'),
('S18', 'Surat Florists', '78, Ring Road, Surat, Gujarat', '24AAACD1234D1Z0', 'GJ3'),
('S19', 'Bhavnagar Botanica', '34, Waghawadi Road, Bhavnagar, Gujarat', '24AAACE2345E1Z1', 'GJ4'),
('S2', 'Indra Green Nursery', '45, MG Road, Gurugram, Haryana', '06AAACI5678J1Z2', 'NCR2'),
('S20', 'Bhopal Blossom Store', '45, Arera Colony, Bhopal, MP', '23AACDF1234F1Z2', 'MP1'),
('S21', 'Ujjain Flora Centre', '67, Freeganj, Ujjain, MP', '23AAACG5678G1Z3', 'MP2'),
('S22', 'Rewa Garden Store', '78, Gandhi Chowk, Rewa, MP', '23AAACJ7890H1Z4', 'MP3'),
('S23', 'Ratlam Green Supply', '34, Station Road, Ratlam, MP', '23AAACF3456J1Z5', 'MP4'),
('S24', 'Lucknow Botanicals', '12, Hazratganj, Lucknow, UP', '09AAACK1234K1Z6', 'UP1'),
('S25', 'Varanasi Gardens', '45, Kashi Vishwanath, Varanasi, UP', '09AAACL5678L1Z7', 'UP2'),
('S26', 'Kanpur Flower Plaza', '78, Mall Road, Kanpur, UP', '09AAACM7890M1Z8', 'UP3'),
('S27', 'Prayagraj Nursery', '56, Civil Lines, Prayagraj, UP', '09AACCF5678N1Z9', 'UP4'),
('S3', 'Bloomscape Gardens', 'Plot 789, Sector 6, Dwarka, Delhi', '07AABCB2345M1Z3', 'NCR3'),
('S4', 'Flora Mumbai', '55, Bandra West, Mumbai, Maharashtra', '27AAACF6789N1Z4', 'MH1'),
('S5', 'Pune Greenery', '27, Kothrud, Pune, Maharashtra', '27AADCG8901P1Z6', 'MH2'),
('S6', 'Nashik Blossoms', '92, Old Agra Road, Nashik, Maharashtra', '27AAACH3456R1Z7', 'MH3'),
('S7', 'Thane Garden Center', '67, Ghodbunder Road, Thane, Maharashtra', '27AAACL5678S1Z8', 'MH4'),
('S8', 'Chennai Flower Mart', '103, Anna Nagar, Chennai, Tamil Nadu', '33AABCM1234T1Z9', 'TN1'),
('S9', 'Coimbatore Greens', '12, Avinashi Road, Coimbatore, Tamil Nadu', '33AAACD7890U1Z1', 'TN2');

-- --------------------------------------------------------

--
-- Table structure for table `user_det`
--

CREATE TABLE `user_det` (
  `UserID` varchar(10) NOT NULL,
  `Name` varchar(40) DEFAULT NULL,
  `EmailID` varchar(80) DEFAULT NULL,
  `Password` varchar(20) DEFAULT NULL,
  `State` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_det`
--

INSERT INTO `user_det` (`UserID`, `Name`, `EmailID`, `Password`, `State`) VALUES
('riyaVerma', 'Riya Verma', 'verma.riya1910@gmail.com', 'password', 'New Delhi'),
('Sam`', 'Samarth', 'sam@gmail.com', 'pass', 'Uttar Pradesh'),
('vihan69', ' Vihan', 'vihan69@gmail.com', 'viahn69', 'Madhya Pradesh');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `citymaster`
--
ALTER TABLE `citymaster`
  ADD PRIMARY KEY (`CityID`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`PlantID`,`GF_ID`);

--
-- Indexes for table `gifting_purpose`
--
ALTER TABLE `gifting_purpose`
  ADD PRIMARY KEY (`GF_ID`);

--
-- Indexes for table `masterplantstable`
--
ALTER TABLE `masterplantstable`
  ADD PRIMARY KEY (`PlantID`);

--
-- Indexes for table `plantsimages`
--
ALTER TABLE `plantsimages`
  ADD PRIMARY KEY (`PlantID`,`Color_code`);

--
-- Indexes for table `planttype`
--
ALTER TABLE `planttype`
  ADD PRIMARY KEY (`typeID`,`type`);

--
-- Indexes for table `plant_colors`
--
ALTER TABLE `plant_colors`
  ADD PRIMARY KEY (`Color_Code`,`Color_Name`);

--
-- Indexes for table `s1`
--
ALTER TABLE `s1`
  ADD PRIMARY KEY (`PlantID`,`Color`);

--
-- Indexes for table `s2`
--
ALTER TABLE `s2`
  ADD PRIMARY KEY (`PlantID`,`Color`);

--
-- Indexes for table `s3`
--
ALTER TABLE `s3`
  ADD PRIMARY KEY (`PlantID`,`Color`);

--
-- Indexes for table `s4`
--
ALTER TABLE `s4`
  ADD PRIMARY KEY (`PlantID`,`Color`);

--
-- Indexes for table `s5`
--
ALTER TABLE `s5`
  ADD PRIMARY KEY (`PlantID`,`Color`);

--
-- Indexes for table `s6`
--
ALTER TABLE `s6`
  ADD PRIMARY KEY (`PlantID`,`Color`);

--
-- Indexes for table `s7`
--
ALTER TABLE `s7`
  ADD PRIMARY KEY (`PlantID`,`Color`);

--
-- Indexes for table `s8`
--
ALTER TABLE `s8`
  ADD PRIMARY KEY (`PlantID`,`Color`);

--
-- Indexes for table `s9`
--
ALTER TABLE `s9`
  ADD PRIMARY KEY (`PlantID`,`Color`);

--
-- Indexes for table `s10`
--
ALTER TABLE `s10`
  ADD PRIMARY KEY (`PlantID`,`Color`);

--
-- Indexes for table `s11`
--
ALTER TABLE `s11`
  ADD PRIMARY KEY (`PlantID`,`Color`);

--
-- Indexes for table `s12`
--
ALTER TABLE `s12`
  ADD PRIMARY KEY (`PlantID`,`Color`);

--
-- Indexes for table `s13`
--
ALTER TABLE `s13`
  ADD PRIMARY KEY (`PlantID`,`Color`);

--
-- Indexes for table `s14`
--
ALTER TABLE `s14`
  ADD PRIMARY KEY (`PlantID`,`Color`);

--
-- Indexes for table `s15`
--
ALTER TABLE `s15`
  ADD PRIMARY KEY (`PlantID`,`Color`);

--
-- Indexes for table `s16`
--
ALTER TABLE `s16`
  ADD PRIMARY KEY (`PlantID`,`Color`);

--
-- Indexes for table `s17`
--
ALTER TABLE `s17`
  ADD PRIMARY KEY (`PlantID`,`Color`);

--
-- Indexes for table `s18`
--
ALTER TABLE `s18`
  ADD PRIMARY KEY (`PlantID`,`Color`);

--
-- Indexes for table `s19`
--
ALTER TABLE `s19`
  ADD PRIMARY KEY (`PlantID`,`Color`);

--
-- Indexes for table `s20`
--
ALTER TABLE `s20`
  ADD PRIMARY KEY (`PlantID`,`Color`);

--
-- Indexes for table `s21`
--
ALTER TABLE `s21`
  ADD PRIMARY KEY (`PlantID`,`Color`);

--
-- Indexes for table `s22`
--
ALTER TABLE `s22`
  ADD PRIMARY KEY (`PlantID`,`Color`);

--
-- Indexes for table `s23`
--
ALTER TABLE `s23`
  ADD PRIMARY KEY (`PlantID`,`Color`);

--
-- Indexes for table `s24`
--
ALTER TABLE `s24`
  ADD PRIMARY KEY (`PlantID`,`Color`);

--
-- Indexes for table `s25`
--
ALTER TABLE `s25`
  ADD PRIMARY KEY (`PlantID`,`Color`);

--
-- Indexes for table `s26`
--
ALTER TABLE `s26`
  ADD PRIMARY KEY (`PlantID`,`Color`);

--
-- Indexes for table `s27`
--
ALTER TABLE `s27`
  ADD PRIMARY KEY (`PlantID`,`Color`);

--
-- Indexes for table `statemaster`
--
ALTER TABLE `statemaster`
  ADD PRIMARY KEY (`StateID`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`Supplier_Code`);

--
-- Indexes for table `user_det`
--
ALTER TABLE `user_det`
  ADD PRIMARY KEY (`UserID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `masterplantstable`
--
ALTER TABLE `masterplantstable`
  MODIFY `PlantID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
