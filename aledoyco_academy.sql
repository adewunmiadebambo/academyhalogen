-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 31, 2021 at 09:18 AM
-- Server version: 10.2.36-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aledoyco_academy`
--

-- --------------------------------------------------------

--
-- Table structure for table `alumni`
--

CREATE TABLE `alumni` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `matric` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `sex` varchar(10) NOT NULL,
  `class_year` varchar(5) NOT NULL,
  `course` varchar(255) NOT NULL,
  `passport` varchar(70) NOT NULL,
  `date` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `alumni`
--

INSERT INTO `alumni` (`id`, `name`, `matric`, `email`, `password`, `phone`, `sex`, `class_year`, `course`, `passport`, `date`) VALUES
(1, 'ADESANYA OLUWAGBEMISOLA', 'CIPG/2013/0001', '', 'CIPG/2013/0001', '08130817584,', 'M', '2013', 'CISM', '', ''),
(2, 'OGUNLEYE OLARONKE', 'CIPG/2013/0002', '', 'CIPG/2013/0002', '07038412888,', 'M', '2013', 'CISM', '', ''),
(3, 'OKEKE STEPHEN', 'CIPG/2013/0003', '', 'CIPG/2013/0003', '07032551988,', 'M', '2013', 'CISM', '', ''),
(4, 'KAZEEM MODINAT', 'CIPG/2013/0004', '', 'CIPG/2013/0004', '08082043109,', 'M', '2013', 'CISM', '', ''),
(5, 'AJAYI ABIODUN M', 'CIPG/2013/0005', '', 'CIPG/2013/0005', '08034418410,', 'M', '2013', 'CISM', '', ''),
(6, 'AKINWANDE OMOBOLA O', 'CIPG/2013/0006', '', 'CIPG/2013/0006', '08021484237,', 'M', '2013', 'CISM', '', ''),
(7, 'OBA PATRICK', 'CIPG/2013/0007', '', 'CIPG/2013/0007', '08101172212,', 'M', '2013', 'CISM', '', ''),
(8, 'SUNDAY OTALU', 'CIPG/2013/0008', '', 'CIPG/2013/0008', '07038340243,', 'M', '2013', 'CISM', '', ''),
(9, 'EDOSA PATRICK .E', 'CIPG/2013/0009', '', 'CIPG/2013/0009', '08162802353,', 'M', '2013', 'CISM', '', ''),
(10, 'ALABI BOLANLE J', 'CIPG/2013/0010', '', 'CIPG/2013/0010', '07066249270,', 'M', '2013', 'CISM', '', ''),
(11, 'NWABEKE ONYINYE CHUKWU', 'CIPG/2013/0011', '', 'CIPG/2013/0011', '07069401258,', 'M', '2013', 'CISM', '', ''),
(12, 'BANKOLE TOBITHA', 'CIPG/2013/0012', '', 'CIPG/2013/0012', '07044239334,', 'M', '2013', 'CISM', '', ''),
(13, 'AJEWOLE MAYOWA', 'CIPG/2013/0013', '', 'CIPG/2013/0013', '08027508828,', 'M', '2013', 'CISM', '', ''),
(14, 'MUSTAPHA RAPHEAL', 'CIPG/2013/0014', '', 'CIPG/2013/0014', '08035590354,', 'M', '2013', 'CISM', '', ''),
(15, 'CHUKWUDUM LUCKY I', 'CIPG/2013/0015', '', 'CIPG/2013/0015', '08063226246,', 'M', '2013', 'CISM', '', ''),
(16, 'AGBEGBE BLESSING I', 'CIPG/2013/0016', '', 'CIPG/2013/0016', '07064911472,', 'M', '2013', 'CISM', '', ''),
(17, 'OGWO CHARLES C', 'CIPG/2013/0017', '', 'CIPG/2013/0017', '08051614194,', 'M', '2013', 'CISM', '', ''),
(18, 'OKE OLUWAFEMI P', 'CIPG/2013/0018', '', 'CIPG/2013/0018', '08036560807,', 'M', '2013', 'CISM', '', ''),
(19, 'KEHINDE SEGUN', 'CIPG/2013/0019', '', 'CIPG/2013/0019', '08066313904,', 'M', '2013', 'CISM', '', ''),
(20, 'ESSENOWO OKON', 'CIPG/2013/0020', '', 'CIPG/2013/0020', '08022941039,', 'M', '2013', 'CISM', '', ''),
(21, 'ODEBIYI MICHEAL', 'CIPG/2013/0021', '', 'CIPG/2013/0021', '08035792448,', 'M', '2013', 'CISM', '', ''),
(22, 'SUNDAY NDIDI', 'CIPG/2013/0022', '', 'CIPG/2013/0022', '07039219630,', 'M', '2013', 'CISM', '', ''),
(23, 'UTHO GODWIN ', 'CIPG/2013/0023', '', 'CIPG/2013/0023', '08161698389,', 'M', '2013', 'CISM', '', ''),
(24, 'JOSEPH OFANGBON', 'CIPG/2013/0024', '', 'CIPG/2013/0024', '08059370728,', 'M', '2013', 'CISM', '', ''),
(25, 'ADETOYI BOLATITO SANDRA', '', '', '', '', 'F', '2014', 'CISM', '', ''),
(26, 'ADEYEYE ADEBAMBO OLUWASANMI', '', '', '', '', 'M', '2014', 'CISM', '', ''),
(27, 'SALIU IDOWU ', '', '', '', '', 'M', '2014', 'CISM', '', ''),
(28, 'INEGBU EPHRAIM CHUKWUNENYE', '', '', '', '', 'M', '2014', 'CISM', '', ''),
(29, 'ADEJUMO FEYISOPE', '', '', '', '', 'M', '2014', 'CISM', '', ''),
(30, 'ALAMU ISRAEL IDRIS', '', '', '', '', 'M', '2014', 'CISM', '', ''),
(31, 'UKPONG EMMAUEL GODWIN', '', '', '', '', 'M', '2014', 'CISM', '', ''),
(32, 'REMI CHINEDU DAVID', '', '', '', '', 'M', '2014', 'CISM', '', ''),
(33, 'NNAEKEZIE STANLEY CHIDI', '', '', '', '', 'M', '2014', 'CISM', '', ''),
(34, 'DADA OLUFUNSHO AKINTUNDE', '', '', '', '', 'M', '2014', 'CISM', '', ''),
(35, 'MUSA DANLADI JOHN', '', '', '', '', 'M', '2014', 'CISM', '', ''),
(36, 'MARTINS VICTORIA', '', '', '', '', 'M', '2014', 'CISM', '', ''),
(37, 'AKPAN JEREMIAH', '', '', '', '', 'M', '2014', 'CISM', '', ''),
(38, 'AFOLABI ABIMBOLA', '', '', '', '', 'M', '2014', 'CISM', '', ''),
(39, 'BUNMI WILLIAMS', '', '', '', '', 'F', '2014', 'CISM', '', ''),
(40, 'OBI PENIEL AMBROSE', '', '', '', '', 'M', '2014', 'CISM', '', ''),
(41, 'MAKINDE ELIJAH SANMI', '', '', '', '', 'M', '2014', 'CISM', '', ''),
(42, 'AREGBESOLA JAMIU', '', '', '', '', 'M', '2014', 'CISM', '', ''),
(43, 'BABAFEMI LANRE', '', '', '', '', 'M', '2014', 'CISM', '', ''),
(44, 'DUROSINMI TEMILADE', '', '', '', '', 'M', '2014', 'CISM', '', ''),
(45, 'MUKOLU UCHE', '', '', '', '', 'M', '2014', 'CISM', '', ''),
(46, 'NWANSI CHINYERE', '', '', '', '', 'F', '2014', 'CISM', '', ''),
(47, 'OMOTOSHO WEMIMO', '', '', '', '', 'M', '2014', 'CISM', '', ''),
(48, 'TIJANI RAHMAN', '', '', '', '', 'M', '2014', 'CISM', '', ''),
(49, 'ABDULRAHMAN AMOTO', '', '', '', '', 'M', '2014', 'CISM', '', ''),
(50, 'BEFO OLUWATOYIN', '', '', '', '', 'M', '2014', 'CISM', '', ''),
(51, 'AHMED TAIWO', '', '', '', '', 'M', '2014', 'CISM', '', ''),
(52, 'GIWA- OSAGIE AFOLABI', '', '', '', '', 'M', '2014', 'CISM', '', ''),
(53, 'ACHIBORN CHUKWUJEKWU C.', 'CIPG/2015/0001', '', 'CIPG/2015/0001', '', '', '2015', 'CISM', '', ''),
(54, 'AGHO EDWIN ALFUWA', 'CIPG/2015/0002', '', 'CIPG/2015/0002', '', '', '2015', 'CISM', '', ''),
(55, 'AKINPELU MARIAM ENITAN ', 'CIPG/2015/0003', '', 'CIPG/2015/0003', '', '', '2015', 'CISM', '', ''),
(56, 'ALARAPE ADEMOLA AYINDE', 'CIPG/2015/0004', '', 'CIPG/2015/0004', '', '', '2015', 'CISM', '', ''),
(57, 'ANOSIKE CHIBUZO', 'CIPG/2015/0005', '', 'CIPG/2015/0005', '', '', '2015', 'CISM', '', ''),
(58, 'AUDU SIMON S. D', 'CIPG/2015/0006', '', 'CIPG/2015/0006', '', '', '2015', 'CISM', '', ''),
(59, 'BALOGUN SAMUEL', 'CIPG/2015/0007', '', 'CIPG/2015/0007', '', '', '2015', 'CISM', '', ''),
(60, 'HITTLER GODSPOWER HITILER', 'CIPG/2015/0008', '', 'CIPG/2015/0008', '', '', '2015', 'CISM', '', ''),
(61, 'KOSSI MICHEAL', 'CIPG/2015/0009', '', 'CIPG/2015/0009', '', '', '2015', 'CISM', '', ''),
(62, 'MUFUTAU KAZEEM ADEDAYO', 'CIPG/2015/0010', '', 'CIPG/2015/0010', '', '', '2015', 'CISM', '', ''),
(63, 'ODOMODE OLUWAGBEMIGA H', 'CIPG/2015/0011', '', 'CIPG/2015/0011', '', '', '2015', 'CISM', '', ''),
(64, 'OGBONNAYA  JIDEOBI MALACHY', 'CIPG/2015/0012', '', 'CIPG/2015/0012', '', '', '2015', 'CISM', '', ''),
(65, 'OJO OLUWA SESAN RAPHAEL', 'CIPG/2015/0013', '', 'CIPG/2015/0013', '', '', '2015', 'CISM', '', ''),
(66, 'OKOLI VITUS', 'CIPG/2015/0014', '', 'CIPG/2015/0014', '', '', '2015', 'CISM', '', ''),
(67, 'OKPARA EDITH OMOLOLA', 'CIPG/2015/0015', '', 'CIPG/2015/0015', '', '', '2015', 'CISM', '', ''),
(68, 'OLALUDE ABAYOMI ADELEYE', 'CIPG/2015/0016', '', 'CIPG/2015/0016', '', '', '2015', 'CISM', '', ''),
(69, 'OLOWOGBEMI TEMIDAYO', 'CIPG/2015/0017', '', 'CIPG/2015/0017', '', '', '2015', 'CISM', '', ''),
(70, 'OSAZUWA CHARLSE ONUWA', 'CIPG/2015/0018', '', 'CIPG/2015/0018', '', '', '2015', 'CISM', '', ''),
(71, 'SALIU TIJANI ', 'CIPG/2015/0019', '', 'CIPG/2015/0019', '', '', '2015', 'CISM', '', ''),
(72, 'SAMUEL ADEYEMI MATHEW', 'CIPG/2015/0020', '', 'CIPG/2015/0020', '', '', '2015', 'CISM', '', ''),
(73, 'THOMSON CHRISTIAN UMEH', 'CIPG/2015/0021', '', 'CIPG/2015/0021', '', '', '2015', 'CISM', '', ''),
(74, 'UBUO UBONG EMEH', 'CIPG/2015/0022', '', 'CIPG/2015/0022', '', '', '2015', 'CISM', '', ''),
(75, 'UMAR ABDULMUMUNI ABARIGI', 'CIPG/2015/0023', '', 'CIPG/2015/0023', '', '', '2015', 'CISM', '', ''),
(76, 'UZOLISE NNMADI MICHAEL', 'CIPG/2015/0024', '', 'CIPG/2015/0024', '', '', '2015', 'CISM', '', ''),
(77, 'ADAMS GABRIEL JUBRIL', 'CIPG/2016/0001', '', 'CIPG/2016/0001', '07010645391,', '', '2016', 'CISM', '', ''),
(78, 'AKEREDOLA ADEKUNLE ', 'CIPG/2016/0002', '', 'CIPG/2016/0002', '08068236157,', '', '2016', 'CISM', '', ''),
(79, 'AKINSOLA IDOWU', 'CIPG/2016/0003', '', 'CIPG/2016/0003', '0703926950,', '', '2016', 'CISM', '', ''),
(80, 'ARANDE MONDAY PRESCOT', 'CIPG/2016/0004', '', 'CIPG/2016/0004', '07039183598,080', '', '2016', 'CISM', '', ''),
(81, 'AROLE ABUBAKAR ABEL', 'CIPG/2016/0005', '', 'CIPG/2016/0005', '08173104015,', '', '2016', 'CISM', '', ''),
(82, 'EDEMIT BASSEY EYA', 'CIPG/2016/0006', '', 'CIPG/2016/0006', '08164397234,081', '', '2016', 'CISM', '', ''),
(83, 'EJEMBI ECHTALIGBO', 'CIPG/2016/0007', '', 'CIPG/2016/0007', '08086395608,', '', '2016', 'CISM', '', ''),
(84, 'EKE AUGUSTINE UZOMA', 'CIPG/2016/0008', '', 'CIPG/2016/0008', '08116885992,090', '', '2016', 'CISM', '', ''),
(85, 'ENEBELI EDWIN OGOCHUKWU', 'CIPG/2016/0009', '', 'CIPG/2016/0009', '08067538545,', '', '2016', 'CISM', '', ''),
(86, 'GODWIN DONATUS EDO', 'CIPG/2016/0010', '', 'CIPG/2016/0010', '08130060099,', '', '2016', 'CISM', '', ''),
(87, 'JOHNSON JEREMIAH', 'CIPG/2016/0011', '', 'CIPG/2016/0011', '08037244117,', '', '2016', 'CISM', '', ''),
(88, 'JOSEPH CHRISTOPHER ', 'CIPG/2016/0012', '', 'CIPG/2016/0012', '08147468982,', '', '2016', 'CISM', '', ''),
(89, 'KAZEEM OLAREWAJU SUNDAY (Sunday Agbomola)', 'CIPG/2016/0013', '', 'CIPG/2016/0013', '08064185836,', '', '2016', 'CISM', '', ''),
(90, 'NWALI SAMUEL IKECHUKWU', 'CIPG/2016/0014', '', 'CIPG/2016/0014', '07069647955,', '', '2016', 'CISM', '', ''),
(91, 'OKEKE NGOZI RITA NNEKA', 'CIPG/2016/0015', '', 'CIPG/2016/0015', '81340933860,', '', '2016', 'CISM', '', ''),
(92, 'ONYENEHIDE CHIJIOKE CARDINAL', 'CIPG/2016/0016', '', 'CIPG/2016/0016', '08038053163,', '', '2016', 'CISM', '', ''),
(93, 'OSEIKA BILLY WILLIAMS', 'CIPG/2016/0017', '', 'CIPG/2016/0017', '07066245905,', '', '2016', 'CISM', '', ''),
(94, 'SUNDAY OCHECHI', 'CIPG/2016/0018', '', 'CIPG/2016/0018', '08171479157,', '', '2016', 'CISM', '', ''),
(95, 'UKPONG GOODNESS EFFIONG', 'CIPG/2016/0019', '', 'CIPG/2016/0019', '08142964753,081', '', '2016', 'CISM', '', ''),
(96, 'UMOH JOSHUA OKON ', 'CIPG/2016/0020', '', 'CIPG/2016/0020', '08136173310,', '', '2016', 'CISM', '', ''),
(97, 'AYENI SEGUN', 'CIPG/2016/0021', '', 'CIPG/2016/0021', '08024337488, 08', '', '2016', 'CISM', '', ''),
(98, 'SANNI SHAKIRUDEEN . SEUN', 'CIPG/2016/0022', '', 'CIPG/2016/0022', '08034975489,', '', '2016', 'CISM', '', ''),
(99, 'ABADA   ERNEST', 'CIPG/2016/0024', '', 'CIPG/2016/0024', '08137498147,', '', '2016', 'CISM', '', ''),
(100, 'Abdulraheem Sulyman', 'CIPG/2016/0025', '', 'CIPG/2016/0025', '07066511061,', '', '2016', 'CISM', '', ''),
(101, 'Abu  Monday', 'CIPG/2016/0026', '', 'CIPG/2016/0026', '07066511061,', '', '2016', 'CISM', '', ''),
(102, 'ADENIJI  MURITALA    ADETUNBOSUN', 'CIPG/2016/0027', '', 'CIPG/2016/0027', '08032447152, 08', '', '2016', 'CISM', '', ''),
(103, 'ADESOKAN    RAPHAEL', 'CIPG/2016/0028', '', 'CIPG/2016/0028', '07082672053, 08', '', '2016', 'CISM', '', ''),
(104, 'AJEMBA    BERNARD ', 'CIPG/2016/0029', '', 'CIPG/2016/0029', '07066486947,', '', '2016', 'CISM', '', ''),
(105, 'ALADE   SEGUN', 'CIPG/2016/0030', '', 'CIPG/2016/0030', '08123186127,', '', '2016', 'CISM', '', ''),
(106, 'ALIU    ADEWALE    OLATUNDE', 'CIPG/2016/0031', '', 'CIPG/2016/0031', '09094942243, 08', '', '2016', 'CISM', '', ''),
(107, 'Anthony Solomon ', 'CIPG/2016/0032', '', 'CIPG/2016/0032', '08023831726,', '', '2016', 'CISM', '', ''),
(108, 'Bada Idris', 'CIPG/2016/0033', '', 'CIPG/2016/0033', '08092749200,', '', '2016', 'CISM', '', ''),
(109, 'Eboh  John  Ogechi', 'CIPG/2016/0034', '', 'CIPG/2016/0034', '08137500528,', '', '2016', 'CISM', '', ''),
(110, 'Ekhator  Michael', 'CIPG/2016/0035', '', 'CIPG/2016/0035', '08171901972,', '', '2016', 'CISM', '', ''),
(111, 'ESSIEN  EFFIONG', 'CIPG/2016/0036', '', 'CIPG/2016/0036', '08171901972,', '', '2016', 'CISM', '', ''),
(112, 'Elaigwu Hyacinth', 'CIPG/2016/0037', '', 'CIPG/2016/0037', '08171901972,', '', '2016', 'CISM', '', ''),
(113, 'ENUMAH  JOSEPH ', 'CIPG/2016/0038', '', 'CIPG/2016/0038', '08165535879, 07', '', '2016', 'CISM', '', ''),
(114, 'Ezekwe  Izuchukwu  Shadrack', 'CIPG/2016/0039', '', 'CIPG/2016/0039', '09083639920,', '', '2016', 'CISM', '', ''),
(115, 'Fagbemi  Chris  Akinyemi', 'CIPG/2016/0040', '', 'CIPG/2016/0040', '08050327123,', '', '2016', 'CISM', '', ''),
(116, 'IBRAHEEM  ABDULAZEEZ', 'CIPG/2016/0041', '', 'CIPG/2016/0041', '08130956662,', '', '2016', 'CISM', '', ''),
(117, 'Monday Uwem-Centurion', 'CIPG/2016/0042', '', 'CIPG/2016/0042', '08062361588,', '', '2016', 'CISM', '', ''),
(118, 'Nwabuwah  Emmanuel', 'CIPG/2016/0043', '', 'CIPG/2016/0043', '08034160932,', '', '2016', 'CISM', '', ''),
(119, 'NWAOBILO  CHINONSO', 'CIPG/2016/0044', '', 'CIPG/2016/0044', '08165666649,', '', '2016', 'CISM', '', ''),
(120, 'Nwonu  Christopher  Ekene', 'CIPG/2016/0045', '', 'CIPG/2016/0045', '09094941559, 09', '', '2016', 'CISM', '', ''),
(121, 'NSIMA  BRIGHT', 'CIPG/2016/0046', '', 'CIPG/2016/0046', '08165666649,', '', '2016', 'CISM', '', ''),
(122, 'Obi  Christian', 'CIPG/2016/0047', '', 'CIPG/2016/0047', '08091117090,', '', '2016', 'CISM', '', ''),
(123, 'ODO   EJIUWA', 'CIPG/2016/0048', '', 'CIPG/2016/0048', '08098807018,', '', '2016', 'CISM', '', ''),
(124, 'Oiruoyamen GODFREY  EHIMIKA', 'CIPG/2016/0049', '', 'CIPG/2016/0049', '09024541819,090', '', '2016', 'CISM', '', ''),
(125, 'OKAMGBA  NNAMDI  SMART', 'CIPG/2016/0050', '', 'CIPG/2016/0050', '08169978409,', '', '2016', 'CISM', '', ''),
(126, 'Onayemi  Adeniyi  Samuel', 'CIPG/2016/0051', '', 'CIPG/2016/0051', '08169978409,', '', '2016', 'CISM', '', ''),
(127, 'OKOPI  DANIEL', 'CIPG/2016/0052', '', 'CIPG/2016/0052', '08022881245,', '', '2016', 'CISM', '', ''),
(128, 'OLORUNGBEMIBORI   OLUSEGUN', 'CIPG/2016/0053', '', 'CIPG/2016/0053', '08138501460,', '', '2016', 'CISM', '', ''),
(129, 'Owolabi  Oluwasegun', 'CIPG/2016/0054', '', 'CIPG/2016/0054', '09081563383,', '', '2016', 'CISM', '', ''),
(130, 'Samuel  TARAKIRIOWEI', 'CIPG/2016/0055', '', 'CIPG/2016/0055', '08052811809,', '', '2016', 'CISM', '', ''),
(131, 'Ude  Emmanuel  Stephen Endy', 'CIPG/2016/0056', '', 'CIPG/2016/0056', '08069562079, 08', '', '2016', 'CISM', '', ''),
(132, 'UFFOR   THOMPSON ', 'CIPG/2016/0057', '', 'CIPG/2016/0057', '08065268244,', '', '2016', 'CISM', '', ''),
(133, 'UGORJI  STANLEY  CHIMANKPAM', 'CIPG/2016/0058', '', 'CIPG/2016/0058', '07061002380, 07', '', '2016', 'CISM', '', ''),
(134, 'Ogbonnaya Blessing', 'CIPG/2016/0059', '', 'CIPG/2016/0059', '07063278799,', '', '2016', 'CISM', '', ''),
(135, 'Okon Gabriel', 'CIPG/2016/0060', '', 'CIPG/2016/0060', '08166855037,', '', '2016', 'CISM', '', ''),
(136, 'AKPORS  TIMOTHY  OGHENERUESE', 'CIPG/2016/0061', '', 'CIPG/2016/0061', '08172917111,', '', '2016', 'CISM', '', ''),
(137, 'Adekunle  Abraham', 'CIPG/2016/0062', '', 'CIPG/2016/0062', '08170938133,', '', '2016', 'CISM', '', ''),
(138, 'Nwugu  Kingsley Chukwuemeka', 'CIPG/2016/0063', '', 'CIPG/2016/0063', '08137067271,', '', '2016', 'CISM', '', ''),
(139, 'Ochuokwunu  Ojomo  Yakubu', 'CIPG/2016/0064', '', 'CIPG/2016/0064', '08023013081,', '', '2016', 'CISM', '', ''),
(140, 'Oduyale Adeyinka  Ayodeji', 'CIPG/2016/0065', '', 'CIPG/2016/0065', '08030772664,', '', '2016', 'CISM', '', ''),
(141, 'Onayemi  Adeniyi  Samuel', 'CIPG/2016/0066', '', 'CIPG/2016/0066', '07065122216,', '', '2016', 'CISM', '', ''),
(142, 'Lawrence  Edet  Ita', 'CIPG/2016/0067', '', 'CIPG/2016/0067', '08039587678,', '', '2016', 'CISM', '', ''),
(143, 'Odhibi  Godspower', 'CIPG/2016/0068', '', 'CIPG/2016/0068', '07087699970,', '', '2016', 'CISM', '', ''),
(144, 'Owoyemi Seyi Abiodun', 'CIPG/2016/0069', '', 'CIPG/2016/0069', '07069190764,', '', '2016', 'CISM', '', ''),
(145, 'Okpara Joshua Ogbonnaya', 'CIPG/2016/0070', '', 'CIPG/2016/0070', '09021105912, 07', '', '2016', 'CISM', '', ''),
(146, 'Omoridion Adenike Josephine', 'CIPG/2016/0071', '', 'CIPG/2016/0071', '08062552814, 09', '', '2016', 'CISM', '', ''),
(147, 'Gabriel Kolawole Francis', 'CIPG/2016/0072', '', 'CIPG/2016/0072', '08135309818,', '', '2016', 'CISM', '', ''),
(148, 'Enejo  Omoche Benard', 'CIPG/2016/0073', '', 'CIPG/2016/0073', '08068862544,', '', '2016', 'CISM', '', ''),
(149, 'Odumu Stanley', 'CIPG/2016/0074', '', 'CIPG/2016/0074', '08168209331,', '', '2016', 'CISM', '', ''),
(150, 'John Samuel', 'CIPG/2016/0075', '', 'CIPG/2016/0075', '07036203854,', '', '2016', 'CISM', '', ''),
(151, 'Babalola Moses  Abiodun ', 'CIPG/2016/0076', '', 'CIPG/2016/0076', '07065906940, 09', '', '2016', 'CISM', '', ''),
(152, 'Awobusuyi  Ayodeji  Solomon', 'CIPG/2016/0077', '', 'CIPG/2016/0077', '08101217890,', '', '2016', 'CISM', '', ''),
(153, 'John Unekwuojo Grace ', 'CIPG/2016/0078', '', 'CIPG/2016/0078', '07035167975,', '', '2016', 'CISM', '', ''),
(154, 'Obeten  Michael Obeten', 'CIPG/2016/0079', '', 'CIPG/2016/0079', '07036030224,', '', '2016', 'CISM', '', ''),
(155, 'Ibrahim  Aisha  Esther', 'CIPG/2016/0080', '', 'CIPG/2016/0080', '08061302501, 08', '', '2016', 'CISM', '', ''),
(156, 'Offa  Fredrick  Tuiboukebina', 'CIPG/2016/0081', '', 'CIPG/2016/0081', '08138435173,', '', '2016', 'CISM', '', ''),
(157, 'Ebong  Richard', 'CIPG/2016/0082', '', 'CIPG/2016/0082', '08054787840,', '', '2016', 'CISM', '', ''),
(158, 'Osadare Olamilekan', 'CIPG/2016/0083', '', 'CIPG/2016/0083', '08128223749, 07', '', '2016', 'CISM', '', ''),
(159, 'Biobaku  Olufemi', 'CIPG/2016/0084', '', 'CIPG/2016/0084', '08080563169,', '', '2016', 'CISM', '', ''),
(160, 'Awofolaju  Kolawole', 'CIPG/2016/0085', '', 'CIPG/2016/0085', '08060196590,', '', '2016', 'CISM', '', ''),
(161, 'Nwose  Kelvin', 'CIPG/2016/0086', '', 'CIPG/2016/0086', '08161750257,', '', '2016', 'CISM', '', ''),
(162, 'Morighanfen Olatunji Owodunni ', 'CIPG/2016/0087', '', 'CIPG/2016/0087', '08059041520, 09', '', '2016', 'CISM', '', ''),
(163, 'Achu  Chinedu  Loius', 'CIPG/2016/0088', '', 'CIPG/2016/0088', '08033586055,', '', '2016', 'CISM', '', ''),
(164, 'Oyeleke  Stephen  Abioye', 'CIPG/2016/0089', '', 'CIPG/2016/0089', '07064683971,', '', '2016', 'CISM', '', ''),
(165, 'Usen Eno Michael', 'CIPG/2016/0090', '', 'CIPG/2016/0090', '08093730151,', '', '2016', 'CISM', '', ''),
(166, 'Agro   Ezekiel', 'CIPG/2016/0091', '', 'CIPG/2016/0091', '08165994275,', '', '2016', 'CISM', '', ''),
(167, 'Joseph  Deborah', 'CIPG/2016/0092', '', 'CIPG/2016/0092', '08177849802,', '', '2016', 'CISM', '', ''),
(168, 'Idim  Ubong  Edem', 'CIPG/2016/0093', '', 'CIPG/2016/0093', '08056048840,', '', '2016', 'CISM', '', ''),
(169, 'Musa Abdulmalik  Salifu', 'CIPG/2016/0094', '', 'CIPG/2016/0094', '08097346275,', '', '2016', 'CISM', '', ''),
(170, 'Okosodo  Gideon', 'CIPG/2016/0095', '', 'CIPG/2016/0095', '09030751676,', '', '2016', 'CISM', '', ''),
(171, 'Uzoma  Henry  Ikenna', 'CIPG/2016/0096', '', 'CIPG/2016/0096', '08053540563,', '', '2016', 'CISM', '', ''),
(172, 'Ogbonna Thank-God', 'CIPG/2016/0097', '', 'CIPG/2016/0097', '09023925802,', '', '2016', 'CISM', '', ''),
(173, 'Oguntade  Femi  Olaniyi', 'CIPG/2016/0098', '', 'CIPG/2016/0098', '09035205547,', '', '2016', 'CISM', '', ''),
(174, 'Usani  Ubi  Joshua', 'CIPG/2016/0099', '', 'CIPG/2016/0099', '08176233573,', '', '2016', 'CISM', '', ''),
(175, 'Mmadubueze  Chidi Philip', 'CIPG/2016/0100', '', 'CIPG/2016/0100', '09098121980,', '', '2016', 'CISM', '', ''),
(176, 'Sulaimon Idris  ', 'CIPG/2016/0101', '', 'CIPG/2016/0101', '08080471091,', '', '2016', 'CISM', '', ''),
(177, 'Alonge Augustine  Uje', 'CIPG/2016/0102', '', 'CIPG/2016/0102', '07066648523,', '', '2016', 'CISM', '', ''),
(178, 'Abioye Stephen Oyeleke', 'CIPG/2016/0103', '', 'CIPG/2016/0103', '07064683971,', '', '2016', 'CISM', '', ''),
(179, 'Agede  Nestor Arjun', 'CIPG/2016/0104', '', 'CIPG/2016/0104', '08029181402,', '', '2016', 'CISM', '', ''),
(180, 'Promise  Uzoigwe', 'CIPG/2016/0105', '', 'CIPG/2016/0105', '09094950385,', '', '2016', 'CISM', '', ''),
(181, 'Omoraro Samuel  Ochuko', 'CIPG/2016/0106', '', 'CIPG/2016/0106', '09085910946,', '', '2016', 'CISM', '', ''),
(182, 'Achu  Chinedu  Loius', 'CIPG/2016/0107', '', 'CIPG/2016/0107', '08033586055,', '', '2016', 'CISM', '', ''),
(183, 'Ekhator  Temitope  Kingsley', 'CIPG/2016/0108', '', 'CIPG/2016/0108', '08124286412,', '', '2016', 'CISM', '', ''),
(184, 'Ubom  Nicholas', 'CIPG/2016/0109', '', 'CIPG/2016/0109', '08130262439, 08', '', '2016', 'CISM', '', ''),
(185, 'owolabi  Abraham Olorunshola', 'CIPG/2016/0110', '', 'CIPG/2016/0110', '08034848161, 08', '', '2016', 'CISM', '', ''),
(186, 'Mathew  Stephen Idowu', 'CIPG/2016/0111', '', 'CIPG/2016/0111', '07057191623,081', '', '2016', 'CISM', '', ''),
(187, 'Simon Ga\'Allah Manu  James', 'CIPG/2016/112', '', 'CIPG/2016/112', '08056737276,', '', '2016', 'CISM', '', ''),
(188, 'Akiode  Akinwunmi  Taiwo', 'CIPG/2016/113', '', 'CIPG/2016/113', '08057006041,', '', '2016', 'CISM', '', ''),
(189, 'Gabriel Kolawole Francis', 'CIPG/2016/114', '', 'CIPG/2016/114', '08135309818,', '', '2016', 'CISM', '', ''),
(190, 'Okere  Stephen  Ekwutos', 'CIPG/2016/115', '', 'CIPG/2016/115', '08032530103, 08', '', '2016', 'CISM', '', ''),
(191, 'Eze  Amaechi  Vincent', 'CIPG/2016/116', '', 'CIPG/2016/116', '08105494100,', '', '2016', 'CISM', '', ''),
(192, 'Jeremiah  Isaiah', 'CIPG/2016/117', '', 'CIPG/2016/117', '08068233434,', '', '2016', 'CISM', '', ''),
(193, 'Okpala  Chinenye', 'CIPG/2016/118', '', 'CIPG/2016/118', '08037909180,', '', '2016', 'CISM', '', ''),
(194, 'Ogudoro  Ositadinma', 'CIPG/2016/119', '', 'CIPG/2016/119', '08132298919,', '', '2016', 'CISM', '', ''),
(195, 'Udoma Richard  George', 'CIPG/2016/120', '', 'CIPG/2016/120', '08160203982,', '', '2016', 'CISM', '', ''),
(196, 'Umerenwa  Stephen  Uche', 'CIPG/2016/121', '', 'CIPG/2016/121', '09096349007, 08', '', '2016', 'CISM', '', ''),
(197, 'Udum  Ejike  Alexander', 'CIPG/2016/122', '', 'CIPG/2016/122', '08036940339, 08', '', '2016', 'CISM', '', ''),
(198, 'Mmuo  Uchenna Samuel', 'CIPG/2016/123', '', 'CIPG/2016/123', '08032473903, 08', '', '2016', 'CISM', '', ''),
(199, 'Victor  Cyril Christopher', 'CIPG/2016/124', '', 'CIPG/2016/124', '08090790556,', '', '2016', 'CISM', '', ''),
(200, 'Omogbethai David', 'CIPG/2016/125', '', 'CIPG/2016/125', '09081430359,', '', '2016', 'CISM', '', ''),
(201, 'Iyaya  Peter Kashaw ', 'CIPG/2016/126', '', 'CIPG/2016/126', '08162956158,', '', '2016', 'CISM', '', ''),
(202, 'Olukosi  Gideon Anifowoshe', 'CIPG/2016/127', '', 'CIPG/2016/127', '08035135196, 07', '', '2016', 'CISM', '', ''),
(203, 'Emmaunel Ikechukwu  Eric', 'CIPG/2016/128', '', 'CIPG/2016/128', '08122091693,', '', '2016', 'CISM', '', ''),
(204, 'Oniyangi  Ibrahim  Yusuf', 'CIPG/2016/129', '', 'CIPG/2016/129', '08141199816,', '', '2016', 'CISM', '', ''),
(205, 'Ogbuehi  Godwin  Chibuzor', 'CIPG/2016/130', '', 'CIPG/2016/130', '07030066411,', '', '2016', 'CISM', '', ''),
(206, 'Udonsuk  Victor  ', 'CIPG/2016/131', '', 'CIPG/2016/131', '09033084935,', '', '2016', 'CISM', '', ''),
(207, 'Ibrahim  Ochoche', 'CIPG/2016/132', '', 'CIPG/2016/132', '07088777941,', '', '2016', 'CISM', '', ''),
(208, 'Okuzor  Rachael', 'CIPG/2016/133', '', 'CIPG/2016/133', '07088999683,', '', '2016', 'CISM', '', ''),
(209, 'Muhammed  Husseini', 'CIPG/2016/134', '', 'CIPG/2016/134', '08188667555,', '', '2016', 'CISM', '', ''),
(210, 'Shokunbi  Michael  Oluwaseun', 'CIPG/2016/135', '', 'CIPG/2016/135', '08180308980, 08', '', '2016', 'CISM', '', ''),
(211, 'Oshionebo  Joseph Thadius Nash', 'CIPG/2016/136', '', 'CIPG/2016/136', '08098516399, 08', '', '2016', 'CISM', '', ''),
(212, 'Alexander  Nwanne', 'CIPG/2016/137', '', 'CIPG/2016/137', '08095742538, 08', '', '2016', 'CISM', '', ''),
(213, 'Uchenna Godday  Joseph', 'CIPG/2016/138', '', 'CIPG/2016/138', '08090759032, 08', '', '2016', 'CISM', '', ''),
(214, 'Barthlomew Emeka', 'CIPG/2016/139', '', 'CIPG/2016/139', '08085322510,', '', '2016', 'CISM', '', ''),
(215, 'Ameh Samson ', 'CIPG/2016/140', '', 'CIPG/2016/140', '07013050741,', '', '2016', 'CISM', '', ''),
(216, 'Onajomo  Terry ', 'CIPG/2016/141', '', 'CIPG/2016/141', '08109484419,', '', '2016', 'CISM', '', ''),
(217, 'Edet  Okon  Etim', 'CIPG/2016/142', '', 'CIPG/2016/142', '08080842373,', '', '2016', 'CISM', '', ''),
(218, 'Ajima Solomon', 'CIPG/2016/143', '', 'CIPG/2016/143', '09073217556,', '', '2016', 'CISM', '', ''),
(219, 'Ogbeinde Thomas Izegaegbu', 'CIPG/2016/144', '', 'CIPG/2016/144', '08131159082,', '', '2016', 'CISM', '', ''),
(220, 'Ajiola  Akinnioye  Isaac', 'CIPG/2016/145', '', 'CIPG/2016/145', '08102404711,', '', '2016', 'CISM', '', ''),
(221, 'Effiong Edet Ime', 'CIPG/2016/146', '', 'CIPG/2016/146', '07015008374,', '', '2016', 'CISM', '', ''),
(222, 'Igbunu  Bubaraye', 'CIPG/2016/147', '', 'CIPG/2016/147', '08027118002, 08', '', '2016', 'CISM', '', ''),
(223, 'Adebayo Oluwafemi Michael', 'CIPG/2016/148', '', 'CIPG/2016/148', '08160992488,', '', '2016', 'CISM', '', ''),
(224, 'Oje Olugbenga  Thomas', 'CIPG/2016/149', '', 'CIPG/2016/149', '09090543080,', '', '2016', 'CISM', '', ''),
(225, 'Omojor  Napoleon', 'CIPG/2016/150', '', 'CIPG/2016/150', '08058582517,', '', '2016', 'CISM', '', ''),
(226, 'OSIKOMAYA  FESTUS  OLUWOLE', 'CIPG/2016/151', '', 'CIPG/2016/151', '', '', '2016', 'CISM', '', ''),
(227, 'NWANKWO  VALENTINE  KOSARACHI', 'CIPG/2016/152', '', 'CIPG/2016/152', '', '', '2016', 'CISM', '', ''),
(228, 'EFOTAN  FESTUS  ADELEKE', 'CIPG/2016/153', '', 'CIPG/2016/153', '', '', '2016', 'CISM', '', ''),
(229, 'Akerele Adebiyi Samuel ', 'CIPG/2016/154', '', 'CIPG/2016/154', '09079150925,', '', '2016', 'CISM', '', ''),
(230, 'Arinze Emmanuel Ifeanyi', 'CIPG/2016/155', '', 'CIPG/2016/155', '08064846855, 08', '', '2016', 'CISM', '', ''),
(231, 'KAZEEM OLAREWAJU SUNDAY ', 'CIPG/2016/156', '', 'CIPG/2016/156', '08064185836,', '', '2016', 'CISM', '', ''),
(232, 'Uloegbelum  Emeka  MCJOELSO', 'CIPG/2016/157', '', 'CIPG/2016/157', '08149914277,', '', '2016', 'CISM', '', ''),
(233, 'Ubom  Nicholas', 'CIPG/2016/158', '', 'CIPG/2016/158', '08130262439, 08', '', '2016', 'CISM', '', ''),
(234, 'MICHAEL ONUH', 'CIPG/2017/0001', '', 'CIPG/2017/0001', '07064858315,', '', '2017', 'CISM', '', ''),
(235, 'AGBODO OVUEFERIE GODSPOWER', 'CIPG/2017/0002', '', 'CIPG/2017/0002', '08085964716,', '', '2017', 'CISM', '', ''),
(236, 'OLA  ONYILO  DANIEL', 'CIPG/2017/0003', '', 'CIPG/2017/0003', '08066056891,', '', '2017', 'CISM', '', ''),
(237, 'FRIDAY  UCHENNA  NELSON', 'CIPG/2017/0004', '', 'CIPG/2017/0004', '09035212698,', '', '2017', 'CISM', '', ''),
(238, 'OLOJE  DANIEL', 'CIPG/2017/0005', '', 'CIPG/2017/0005', '09039233159,', '', '2017', 'CISM', '', ''),
(239, 'KEHINDE  MOJISOLA  OLATUBOSUN', 'CIPG/2017/0006', '', 'CIPG/2017/0006', '07026062541,', '', '2017', 'CISM', '', ''),
(240, 'AKOR  SUNDAY  EMMANIUEL', 'CIPG/2017/0007', '', 'CIPG/2017/0007', '08066358878,', '', '2017', 'CISM', '', ''),
(241, 'OYELEKE UTHMAN ABDULSEMIU', 'CIPG/2017/0008', '', 'CIPG/2017/0008', '09083439767,', '', '2017', 'CISM', '', ''),
(242, 'AKINDELE  OLARODE SUNDAY', 'CIPG/2017/0009', '', 'CIPG/2017/0009', '09037176389, 09', '', '2017', 'CISM', '', ''),
(243, 'OPOGU  CHRISTIAN  EKENE', 'CIPG/2017/0010', '', 'CIPG/2017/0010', '08083492968,', '', '2017', 'CISM', '', ''),
(244, 'ADAMS GODWIN', 'CIPG/2017/0011', '', 'CIPG/2017/0011', '08135912113, 08', '', '2017', 'CISM', '', ''),
(245, 'UDEH  TOCHUKWU KELVIN', 'CIPG/2017/0012', '', 'CIPG/2017/0012', '08035189950,', '', '2017', 'CISM', '', ''),
(246, 'SARUMI  IDRIS', 'CIPG/2017/0013', '', 'CIPG/2017/0013', '09098917855,', '', '2017', 'CISM', '', ''),
(247, 'WILLIAMS  ABIOLA  PAUL', 'CIPG/2017/0014', '', 'CIPG/2017/0014', '08168525568,', '', '2017', 'CISM', '', ''),
(248, 'AKEBE  FRIDAY', 'CIPG/2017/0015', '', 'CIPG/2017/0015', '08146466050,', '', '2017', 'CISM', '', ''),
(249, 'UKPONG MICHAEL EFFIONG', 'CIPG/2017/0016', '', 'CIPG/2017/0016', '08030702146,', '', '2017', 'CISM', '', ''),
(250, 'ERUNHE  JOSEPH', 'CIPG/2017/0017', '', 'CIPG/2017/0017', '09095447040,', '', '2017', 'CISM', '', ''),
(251, 'EGBE  MOSES  CHIGOZIE', 'CIPG/2017/0018', '', 'CIPG/2017/0018', '08104150754,', '', '2017', 'CISM', '', ''),
(252, 'AGADA  OJOCHENEMI', 'CIPG/2017/0019', '', 'CIPG/2017/0019', '07066826454,', '', '2017', 'CISM', '', ''),
(253, 'OPORIOPO  WILSON  EFE', 'CIPG/2017/0020', '', 'CIPG/2017/0020', '07061192949, 08', '', '2017', 'CISM', '', ''),
(254, 'NWUZOR  EMMANUEL  CHUKWUNONYEREM', 'CIPG/2017/0021', '', 'CIPG/2017/0021', '07053428388,', '', '2017', 'CISM', '', ''),
(255, 'BULUS LAWOS', 'CIPG/2017/0022', '', 'CIPG/2017/0022', '08166371021,', '', '2017', 'CISM', '', ''),
(256, 'IBE  JUDE  OKECHUKWU', 'CIPG/2017/0023', '', 'CIPG/2017/0023', '08026530173,', '', '2017', 'CISM', '', ''),
(257, 'AWE OLUWASEUN TEMITAYO', 'CIPG/2017/0024', '', 'CIPG/2017/0024', '08140475340,', '', '2017', 'CISM', '', ''),
(258, 'EBEBE  THERESA', 'CIPG/2017/0025', '', 'CIPG/2017/0025', '08100283261,', '', '2017', 'CISM', '', ''),
(259, 'KIKA  SUSAN', 'CIPG/2017/0026', '', 'CIPG/2017/0026', '07033886192,', '', '2017', 'CISM', '', ''),
(260, 'INDINDI  FRED  DANIEL', 'CIPG/2017/0027', '', 'CIPG/2017/0027', '08161563849,', '', '2017', 'CISM', '', ''),
(261, 'ABEH  RAPHEAL  ONAJI', 'CIPG/2017/0028', '', 'CIPG/2017/0028', '08065480164,', '', '2017', 'CISM', '', ''),
(262, 'ACHIMUGU  ZAKARI', 'CIPG/2017/0029', '', 'CIPG/2017/0029', '08050852608,', '', '2017', 'CISM', '', ''),
(263, 'EZEAKU  NONSO  COSMOS', 'CIPG/2017/0030', '', 'CIPG/2017/0030', '08034795218,', '', '2017', 'CISM', '', ''),
(264, 'OBAYAYI  MICHAEL  WILLIAMS', 'CIPG/2017/0031', '', 'CIPG/2017/0031', '08165411435,', '', '2017', 'CISM', '', ''),
(265, 'ABEL  EMMANUEL  OMAGA', 'CIPG/2017/0032', '', 'CIPG/2017/0032', '08107458385,', '', '2017', 'CISM', '', ''),
(266, 'EKPE  INNOCENT  JACKSON', 'CIPG/2017/0033', '', 'CIPG/2017/0033', '08022035076,', '', '2017', 'CISM', '', ''),
(267, 'NWAOGU UGOCHUKWU  REGINALD', 'CIPG/2017/0034', '', 'CIPG/2017/0034', '08123375691, 08', '', '2017', 'CISM', '', ''),
(268, 'JOHNNIE  JAMES  ETUKUDO', 'CIPG/2017/0035', '', 'CIPG/2017/0035', '08037023651,', '', '2017', 'CISM', '', ''),
(269, 'JUBRIL  ABDULLAHI  YUSUF', 'CIPG/2017/0036', '', 'CIPG/2017/0036', '08179615467,', '', '2017', 'CISM', '', ''),
(270, 'OSSAI  EVANS  MADUABUCHUKWU', 'CIPG/2017/0037', '', 'CIPG/2017/0037', '07068500475,', '', '2017', 'CISM', '', ''),
(271, 'OGUNYINKA  RASAK  ADEYINKA', 'CIPG/2017/0038', '', 'CIPG/2017/0038', '09091598573,', '', '2017', 'CISM', '', ''),
(272, 'SAVAGE  ADEYANJU  STEPHEN', 'CIPG/2017/0039', '', 'CIPG/2017/0039', '08054108353, 09', '', '2017', 'CISM', '', ''),
(273, 'UCHEGBU  CHIBUEZE', 'CIPG/2017/0040', '', 'CIPG/2017/0040', '08175091783,', '', '2017', 'CISM', '', ''),
(274, 'MADUIKE  CHINEDU  CHARLES   ', 'CIPG/2017/0041', '', 'CIPG/2017/0041', '08166807825,', '', '2017', 'CISM', '', ''),
(275, 'ENECHI  KELECHI', 'CIPG/2017/0042', '', 'CIPG/2017/0042', '07062912439,', '', '2017', 'CISM', '', ''),
(276, 'ALEGWU  JOHN  OGBOR', 'CIPG/2017/0043', '', 'CIPG/2017/0043', '08184892105,', '', '2017', 'CISM', '', ''),
(277, 'OSAGIEDE  LOVEDAY  OSAREMWINDA', 'CIPG/2017/0044', '', 'CIPG/2017/0044', '080359111881, 0', '', '2017', 'CISM', '', ''),
(278, 'OZOHILI  BRIGHT', 'CIPG/2017/0045', '', 'CIPG/2017/0045', '07037671458,', '', '2017', 'CISM', '', ''),
(279, 'AGU  JOHN', 'CIPG/2017/0046', '', 'CIPG/2017/0046', '08123907011,', '', '2017', 'CISM', '', ''),
(280, 'UCHEGBU  CHIBUEZE', 'CIPG/2017/0047', '', 'CIPG/2017/0047', '08175091783,', '', '2017', 'CISM', '', ''),
(281, 'NCHEKWUBE  CHUKWUMA  GABRIEL', 'CIPG/2017/0048', '', 'CIPG/2017/0048', '09021321435,', '', '2017', 'CISM', '', ''),
(282, 'CHRISTOPHER  DAVID  OYINDAMOLA', 'CIPG/2017/0049', '', 'CIPG/2017/0049', '08095159001,', '', '2017', 'CISM', '', ''),
(283, 'JOSEPH  PIUS', 'CIPG/2017/0050', '', 'CIPG/2017/0050', '09067465135,', '', '2017', 'CISM', '', ''),
(284, 'BASSEY  WISDOM  PHILIP', 'CIPG/2017/0051', '', 'CIPG/2017/0051', '08171520841,', '', '2017', 'CISM', '', ''),
(285, 'ODEWABI  AKINWALE  JOHNSON', 'CIPG/2017/0052', '', 'CIPG/2017/0052', '08130379220,', '', '2017', 'CISM', '', ''),
(286, 'OGAH  A.  MATHIAS', 'CIPG/2017/0053', '', 'CIPG/2017/0053', '08086670021, 08', '', '2017', 'CISM', '', ''),
(287, 'AROMOSE  OGBEMUDIA  AUGUSTINE', 'CIPG/2017/0054', '', 'CIPG/2017/0054', '08143800011,', '', '2017', 'CISM', '', ''),
(288, 'EKUGO  IKECHUKWU', 'CIPG/2017/0055', '', 'CIPG/2017/0055', '08025067545, 07', '', '2017', 'CISM', '', ''),
(289, 'NNEDUM  DAVID  SOPULU  MORGAN', 'CIPG/2017/0056', '', 'CIPG/2017/0056', '08184840974,', '', '2017', 'CISM', '', ''),
(290, 'IWUAMADI  DANIEL  OGUBUIKE', 'CIPG/2017/0057', '', 'CIPG/2017/0057', '08034685474,', '', '2017', 'CISM', '', ''),
(291, 'OGUNBOWALE  DADA', 'CIPG/2017/0058', '', 'CIPG/2017/0058', '09033612272,', '', '2017', 'CISM', '', ''),
(292, 'OKE  JOHN  TEMITOPE', 'CIPG/2017/0059', '', 'CIPG/2017/0059', '08128881938,', '', '2017', 'CISM', '', ''),
(293, 'OLADOSU  TIMILEHIN  JOSHUA', 'CIPG/2017/0060', '', 'CIPG/2017/0060', '07065696805,', '', '2017', 'CISM', '', ''),
(294, 'OGORRY  OGBU   DOMINIC', 'CIPG/2017/0061', '', 'CIPG/2017/0061', '08189010580,', '', '2017', 'CISM', '', ''),
(295, 'SHAAGH  GABRIEL  AONDOHEMBA', 'CIPG/2017/0062', '', 'CIPG/2017/0062', '08131682816,', '', '2017', 'CISM', '', ''),
(296, 'KAFAS  WILLIAM', 'CIPG/2017/0063', '', 'CIPG/2017/0063', '09067312690,', '', '2017', 'CISM', '', ''),
(297, 'SHAIBU  M.  WISDOM', 'CIPG/2017/0064', '', 'CIPG/2017/0064', '08087231927,', '', '2017', 'CISM', '', ''),
(298, 'YUSUF  HASSAN  ANAGASHA', 'CIPG/2017/0065', '', 'CIPG/2017/0065', '08170587509,', '', '2017', 'CISM', '', ''),
(299, 'OLAREWAJU  OLATUNBOSUN  STEPHEN', 'CIPG/2017/0066', '', 'CIPG/2017/0066', '08111438060, 08', '', '2017', 'CISM', '', ''),
(300, 'UGOCHUKWU  PRAISE  NUDIUGO', 'CIPG/2017/0067', '', 'CIPG/2017/0067', '07012181743,', '', '2017', 'CISM', '', ''),
(301, 'PUPU  AMAGBE  STEVEN', 'CIPG/2017/0068', '', 'CIPG/2017/0068', '09068835316,', '', '2017', 'CISM', '', ''),
(302, 'ONYEKWERE  GODSPOWER  PROMISE', 'CIPG/2017/0069', '', 'CIPG/2017/0069', '070356876669,', '', '2017', 'CISM', '', ''),
(303, 'WILLIAMS  ABIOLA  PAUL', 'CIPG/2017/0070', '', 'CIPG/2017/0070', '08168525568,', '', '2017', 'CISM', '', ''),
(304, 'NZE  SYLVESTER  ANIEZE', 'CIPG/2017/0071', '', 'CIPG/2017/0071', '08110750370, 09', '', '2017', 'CISM', '', ''),
(305, 'SILAS  MOSES  CHIBUEZE', 'CIPG/2017/0072', '', 'CIPG/2017/0072', '09090728656, ', '', '2017', 'CISM', '', ''),
(306, 'AMILEGBE  THOMAS  MANEY', 'CIPG/2017/0073', '', 'CIPG/2017/0073', '08131684348,', '', '2017', 'CISM', '', ''),
(307, 'PAUL  DESTINY  ONOJA', 'CIPG/2017/0074', '', 'CIPG/2017/0074', '08060698480,', '', '2017', 'CISM', '', ''),
(308, 'ATUNDE  OLAYEMI MATHIAS', 'CIPG/2017/0075', '', 'CIPG/2017/0075', '08067106314,', '', '2017', 'CISM', '', ''),
(309, 'AKINLUSI  JOSHUA  ALABA', 'CIPG/2017/0076', '', 'CIPG/2017/0076', '08171172237,', '', '2017', 'CISM', '', ''),
(310, 'EJIGA  STEPHEN  EVANS', 'CIPG/2017/0077', '', 'CIPG/2017/0077', '08033970730,', '', '2017', 'CISM', '', ''),
(311, 'UDOH  IGNATIUS  NSEOWO', 'CIPG/2017/0078', '', 'CIPG/2017/0078', '07060708146,', '', '2017', 'CISM', '', ''),
(312, 'UNOGO  OBINNA  VALENTINE', 'CIPG/2017/0079', '', 'CIPG/2017/0079', '08182045882,', '', '2017', 'CISM', '', ''),
(313, 'ADE-EGBANMIRE  OLORUNWA  DAVID', 'CIPG/2017/0080', '', 'CIPG/2017/0080', '08133691889, 08', '', '2017', 'CISM', '', ''),
(314, 'OZOANI  BARTHOLOMEW', 'CIPG/2017/0081', '', 'CIPG/2017/0081', '07036462163,', '', '2017', 'CISM', '', ''),
(315, 'UDEH  PETER  IKECHUKWU', 'CIPG/2017/0082', '', 'CIPG/2017/0082', '09021004874,', '', '2017', 'CISM', '', ''),
(316, 'AGBOOLA  MUBARAK  ABIODUN', 'CIPG/2017/0083', '', 'CIPG/2017/0083', '08163131700,', '', '2017', 'CISM', '', ''),
(317, 'SULAIMON  AFOLABI  OLAWALE', 'CIPG/2017/0084', '', 'CIPG/2017/0084', '08170233816,', '', '2017', 'CISM', '', ''),
(318, 'OGU  SOLOMON', 'CIPG/2017/0085', '', 'CIPG/2017/0085', '08181257437,', '', '2017', 'CISM', '', ''),
(319, 'ONWE  EMMANUEL  EKENE  ', 'CIPG/2017/0086', '', 'CIPG/2017/0086', '09038546344,', '', '2017', 'CISM', '', ''),
(320, 'IBRAHIM  ADAM  JUNIOR', 'CIPG/2017/0087', '', 'CIPG/2017/0087', '09036284945, 08', '', '2017', 'CISM', '', ''),
(321, 'OJAJUNI  SEGUN  FEMI', 'CIPG/2017/0088', '', 'CIPG/2017/0088', '08033180553,', '', '2017', 'CISM', '', ''),
(322, 'HARRISON  IDARA  FRIDAY', 'CIPG/2017/0089', '', 'CIPG/2017/0089', '07037403421,', '', '2017', 'CISM', '', ''),
(323, 'DURU  UGOCHUKWU', 'CIPG/2017/0090', '', 'CIPG/2017/0090', '08113842148,', '', '2017', 'CISM', '', ''),
(324, 'UZOMA  SAMUEL  NNAMDI', 'CIPG/2017/0091', '', 'CIPG/2017/0091', '08101043030,', '', '2017', 'CISM', '', ''),
(325, 'OTU  DANIEL  OWAN', 'CIPG/2017/0092', '', 'CIPG/2017/0092', '09094677700,', '', '2017', 'CISM', '', ''),
(326, 'UFOARO  DANIEL  UZOCHUKWU', 'CIPG/2017/0093', '', 'CIPG/2017/0093', '08061392084,', '', '2017', 'CISM', '', ''),
(327, 'ITSE  IZANG  BENJAMIN', 'CIPG/2017/0094', '', 'CIPG/2017/0094', '08140390967,', '', '2017', 'CISM', '', ''),
(328, 'OGBOLU  CHRISTIAN  CHINEDU', 'CIPG/2017/0095', '', 'CIPG/2017/0095', '08080349884,', '', '2017', 'CISM', '', ''),
(329, 'Olukosi  Gideon Anifowoshe', 'CIPG/2017/0096', '', 'CIPG/2017/0096', '08035135196, 07', '', '2017', 'CISM', '', ''),
(330, 'AJANAKU  BABATUNDE', 'CIPG/2017/0097', '', 'CIPG/2017/0097', '08024643321,', '', '2017', 'CISM', '', ''),
(331, 'OMOYENI OLADELE  ADEDAYO', 'CIPG/2017/0098', '', 'CIPG/2017/0098', '08051079130,', '', '2017', 'CISM', '', ''),
(332, 'PATRICK  EMMANUEL  EMEKA', 'CIPG/2017/0099', '', 'CIPG/2017/0099', '08082705191,', '', '2017', 'CISM', '', ''),
(333, 'PATRICK  BENEDICT  NOYEREM', 'CIPG/2017/0100', '', 'CIPG/2017/0100', '07063364512,', '', '2017', 'CISM', '', ''),
(334, 'GWAZAH  BULUS  ', 'CIPG/2017/0101', '', 'CIPG/2017/0101', '08062243102,', '', '2017', 'CISM', '', ''),
(335, 'OKPARA  AMARACHI  VERNITIUS', 'CIPG/2017/0102', '', 'CIPG/2017/0102', '08033716611,', '', '2017', 'CISM', '', ''),
(336, 'EGBAGBE  AYOMIKUN  TOYOSI', 'CIPG/2017/0103', '', 'CIPG/2017/0103', '08160054193,', '', '2017', 'CISM', '', ''),
(337, 'LAJI  JAMES  IORLAHA', 'CIPG/2017/0104', '', 'CIPG/2017/0104', '07037667294,', '', '2017', 'CISM', '', ''),
(338, 'NMEREGINI  GODWIN  CHINWE', 'CIPG/2017/0105', '', 'CIPG/2017/0105', '08061576922,', '', '2017', 'CISM', '', ''),
(339, 'NWANKWO  ONYEJIDE  BENSON', 'CIPG/2017/0106', '', 'CIPG/2017/0106', '08028892137, 08', '', '2017', 'CISM', '', ''),
(340, 'MURAINA  BABATUNDE  ISIAKA', 'CIPG/2017/0107', '', 'CIPG/2017/0107', '08139505402,', '', '2017', 'CISM', '', ''),
(341, 'FEJOKU  JEFFERY  PRUDENCE', 'CIPG/2017/0108', '', 'CIPG/2017/0108', '09032481182,', '', '2017', 'CISM', '', ''),
(342, 'UPEH ERNEST  THOMAS', 'CIPG/2017/0109', '', 'CIPG/2017/0109', '08060648566,', '', '2017', 'CISM', '', ''),
(343, 'BALOGUN  FESTUS  O.', 'CIPG/2017/0110', '', 'CIPG/2017/0110', '07038493046,', '', '2017', 'CISM', '', ''),
(344, 'ADEBAYO  ADAM  ATILOLA', 'CIPG/2017/0111', '', 'CIPG/2017/0111', '07080738227,', '', '2017', 'CISM', '', ''),
(345, 'UMOREN  OTOBONG  OKON', 'CIPG/2017/0112', '', 'CIPG/2017/0112', '09061158158,', '', '2017', 'CISM', '', ''),
(346, 'PAUL  BENJAMIN', 'CIPG/2017/0113', '', 'CIPG/2017/0113', '08147462515, 08', '', '2017', 'CISM', '', ''),
(347, 'ISAAC  MICHAEL  OLUFEMI', 'CIPG/2017/0114', '', 'CIPG/2017/0114', '08159550068,', '', '2017', 'CISM', '', ''),
(348, 'OLADUNJOYE  FRIDAY', 'CIPG/2017/0115', '', 'CIPG/2017/0115', '09053327266,', '', '2017', 'CISM', '', ''),
(349, 'JONAH  OGONUGWA  SAMUEL', 'CIPG/2017/0116', '', 'CIPG/2017/0116', '08105160043,', '', '2017', 'CISM', '', ''),
(350, 'IWENEKHA  MAXWELL  INOPE', 'CIPG/2017/0117', '', 'CIPG/2017/0117', '08148297805,', '', '2017', 'CISM', '', ''),
(351, 'COSMOS  EMMANUEL  INEMESIT', 'CIPG/2017/0118', '', 'CIPG/2017/0118', '09071395606,', '', '2017', 'CISM', '', ''),
(352, 'FRANCIS  FELICIA', 'CIPG/2017/0119', '', 'CIPG/2017/0119', '09093563656,', '', '2017', 'CISM', '', ''),
(353, 'USMAN  INNOCENT  SUNDAY', 'CIPG/2017/0120', '', 'CIPG/2017/0120', '08161376765, 09', '', '2017', 'CISM', '', ''),
(354, 'ZAKI  PHILIP', 'CIPG/2017/0121', '', 'CIPG/2017/0121', '07062612666, 07', '', '2017', 'CISM', '', ''),
(355, 'AGAMBA  COLLINS  ARINZE', 'CIPG/2017/0122', '', 'CIPG/2017/0122', '07056488588,', '', '2017', 'CISM', '', ''),
(356, 'JESUDOLA  EMMANUEL  OLUSOLA', 'CIPG/2017/0123', '', 'CIPG/2017/0123', '07066194128,', '', '2017', 'CISM', '', ''),
(357, 'CYRIL  EMMANUEL  FASASI', 'CIPG/2017/0124', '', 'CIPG/2017/0124', '09074662676,', '', '2017', 'CISM', '', ''),
(358, 'AKPAN  ANIEKAN  CHRISTOPHER', 'CIPG/2017/0125', '', 'CIPG/2017/0125', '09061658257,', '', '2017', 'CISM', '', ''),
(359, 'ONAH  BERNARD', 'CIPG/2017/0126', '', 'CIPG/2017/0126', '08180874437,', '', '2017', 'CISM', '', ''),
(360, 'IGWE  STEVE  BLACKIE', 'CIPG/2017/0127', '', 'CIPG/2017/0127', '08069228409,', '', '2017', 'CISM', '', ''),
(361, 'ONYEISI  CHUKWUMA  GOODLUCK', 'CIPG/2017/0128', '', 'CIPG/2017/0128', '07035230441,', '', '2017', 'CISM', '', ''),
(362, 'DAVID  CLEMENT  OSARO', 'CIPG/2017/0129', '', 'CIPG/2017/0129', '08026211526,', '', '2017', 'CISM', '', ''),
(363, 'IKHAJIAGBE  NASIRU', 'CIPG/2017/0130', '', 'CIPG/2017/0130', '09084544552,', '', '2017', 'CISM', '', ''),
(364, 'DAVID ADEWUNMI  SAMUEL', 'CIPG/2017/0131', '', 'CIPG/2017/0131', '08054249013,', '', '2017', 'CISM', '', ''),
(365, 'EJEMBI  WILLIAMS   ITODO', 'CIPG/2017/0132', '', 'CIPG/2017/0132', '08141266051, 08', '', '2017', 'CISM', '', ''),
(366, 'PETER  EGWU   JUDE', 'CIPG/2017/0133', '', 'CIPG/2017/0133', '07019612869,', '', '2017', 'CISM', '', ''),
(367, 'IDOWU  AYOKANMI', 'CIPG/2017/0134', '', 'CIPG/2017/0134', '08164004319,', '', '2017', 'CISM', '', ''),
(368, 'JAMES  MODUPE  ESTHER', 'CIPG/2017/0135', '', 'CIPG/2017/0135', '08091612017, 08', '', '2017', 'CISM', '', ''),
(369, 'MICHAEL  EMMANUEL  ADAVIRUKU', 'CIPG/2017/0136', '', 'CIPG/2017/0136', '09024042054,', '', '2017', 'CISM', '', ''),
(370, 'RABIU  KOREDE', 'CIPG/2017/0137', '', 'CIPG/2017/0137', '08132123150,', '', '2017', 'CISM', '', ''),
(371, 'AYANGBESAN  SAMSON', 'CIPG/2017/0138', '', 'CIPG/2017/0138', '08132161914,', '', '2017', 'CISM', '', ''),
(372, 'AYILA  SAMUEL', 'CIPG/2017/0139', '', 'CIPG/2017/0139', '07033680557,', '', '2017', 'CISM', '', ''),
(373, 'OLANIPEKUN  OLUWAFEMI  ISAIAH', 'CIPG/2017/0140', '', 'CIPG/2017/0140', '08168023334,', '', '2017', 'CISM', '', ''),
(374, 'ADENIRAN  DAVID  ADEWALE', 'CIPG/2017/0141', '', 'CIPG/2017/0141', '08178788307,', '', '2017', 'CISM', '', ''),
(375, 'NWACHUKWU  KENNETH  IBENYENWA', 'CIPG/2017/0142', '', 'CIPG/2017/0142', '07035725669,', '', '2017', 'CISM', '', ''),
(376, 'THOMAS   AYORINDE  FOLORUNSHO', 'CIPG/2017/0143', '', 'CIPG/2017/0143', '09033732743,', '', '2017', 'CISM', '', ''),
(377, 'UJU  RAPHAEL  NNAEMEKA', 'CIPG/2017/0144', '', 'CIPG/2017/0144', '09032050380,', '', '2017', 'CISM', '', ''),
(378, 'BADMUS  CHARLES', 'CIPG/2017/0145', '', 'CIPG/2017/0145', '09036920740,', '', '2017', 'CISM', '', ''),
(379, 'OSARINMWIAN  IKPONMWOSA  PATRICK', 'CIPG/2017/0146', '', 'CIPG/2017/0146', '08184036764,', '', '2017', 'CISM', '', ''),
(380, 'ADEYANJU  OLUWADAMILARE  SAMUEL', 'CIPG/2017/0147', '', 'CIPG/2017/0147', '08123986303, 09', '', '2017', 'CISM', '', ''),
(381, 'AKIBA  EYOH  DANIEL', 'CIPG/2017/0148', '', 'CIPG/2017/0148', '09094643819,', '', '2017', 'CISM', '', ''),
(382, 'ABOLADE  YINKA  ROTIMI', 'CIPG/2017/0149', '', 'CIPG/2017/0149', '08170108939,', '', '2017', 'CISM', '', ''),
(383, 'ADESHINA  TEMIDAYO  SAMUEL', 'CIPG/2017/0150', '', 'CIPG/2017/0150', '08104090807,', '', '2017', 'CISM', '', ''),
(384, 'EPELLE  AMOS  CHURCHILL', 'CIPG/2017/0151', '', 'CIPG/2017/0151', '08186681045,  0', '', '2017', 'CISM', '', ''),
(385, 'OJEIGBO  DANIEL', 'CIPG/2017/0152', '', 'CIPG/2017/0152', '08029402479,', '', '2017', 'CISM', '', ''),
(386, 'ONU  UGONNA  CHIJIOKE', 'CIPG/2017/0153', '', 'CIPG/2017/0153', '08161548496,', '', '2017', 'CISM', '', ''),
(387, 'MADU  PHILIP', 'CIPG/2017/0154', '', 'CIPG/2017/0154', '08147614178,', '', '2017', 'CISM', '', ''),
(388, 'ONIBUDO  OLUSEGUN  OLUDARE', 'CIPG/2017/0155', '', 'CIPG/2017/0155', '08177411435,', '', '2017', 'CISM', '', ''),
(389, 'GEORGE  IBE  CHIGOZIE ', 'CIPG/2017/0156', '', 'CIPG/2017/0156', '08036815991,', '', '2017', 'CISM', '', ''),
(390, 'IDOKO  ISAAC  O.', 'CIPG/2017/0157', '', 'CIPG/2017/0157', '08032122572,', '', '2017', 'CISM', '', ''),
(391, 'BASSEY  EMMANUEL  UBI', 'CIPG/2017/0158', '', 'CIPG/2017/0158', '09039228403,', '', '2017', 'CISM', '', ''),
(392, 'OJOBO  AUGUSTINE  CHINASA', 'CIPG/2017/0159', '', 'CIPG/2017/0159', '08062489209,', '', '2017', 'CISM', '', ''),
(393, 'AUGUSTINE  OYINLAYEFA  DAVID', 'CIPG/2017/0160', '', 'CIPG/2017/0160', '08108126219,', '', '2017', 'CISM', '', ''),
(394, 'JUBRIL  YUSUF', 'CIPG/2017/0161', '', 'CIPG/2017/0161', '08179615467,', '', '2017', 'CISM', '', ''),
(395, 'Adesina Gbenga Idowu', 'CIABJ/2017/0001', '', 'CIABJ/2017/0001', '8065645451', '', '2017', 'CISM', '', ''),
(396, 'Eze Innocent Chukwuma', 'CIABJ/2017/0002', '', 'CIABJ/2017/0002', '8180411372', '', '2017', 'CISM', '', ''),
(397, 'Olokwokorun Kunle', 'CIABJ/2017/0003', '', 'CIABJ/2017/0003', '8140666810', '', '2017', 'CISM', '', ''),
(398, 'Apolos Haruna Farmi', 'CIABJ/2017/0004', '', 'CIABJ/2017/0004', '8183982912', '', '2017', 'CISM', '', ''),
(399, 'Sanni Salifu', 'CIABJ/2017/0005', '', 'CIABJ/2017/0005', '9054543448', '', '2017', 'CISM', '', ''),
(400, 'Uyammadu Charles Emeka', 'CIABJ/2017/0006', '', 'CIABJ/2017/0006', '8142972538', '', '2017', 'CISM', '', ''),
(401, 'Shaibu Adwoyi Ibrahim', 'CIABJ/2017/0007', '', 'CIABJ/2017/0007', '7030988108', '', '2017', 'CISM', '', ''),
(402, 'Eze Michael Paul', 'CIABJ/2017/0008', '', 'CIABJ/2017/0008', '8037160310', '', '2017', 'CISM', '', ''),
(403, 'Abalike Boniface John', 'CIABJ/2017/0009', '', 'CIABJ/2017/0009', '8135522116', '', '2017', 'CISM', '', ''),
(404, 'Albert Reuben Ambrose', 'CIABJ/2017/0010', '', 'CIABJ/2017/0010', '7066703975', '', '2017', 'CISM', '', ''),
(405, 'Barminas Isun Wazimi', 'CIABJ/2017/0011', '', 'CIABJ/2017/0011', '8058869910', '', '2017', 'CISM', '', ''),
(406, 'Anibueze Virginus Ikechukwu', 'CIABJ/2017/0012', '', 'CIABJ/2017/0012', '8090711986', '', '2017', 'CISM', '', ''),
(407, 'Ahmadu Yahaya Isyaka', 'CIABJ/2017/0013', '', 'CIABJ/2017/0013', '7050352219', '', '2017', 'CISM', '', ''),
(408, 'Ali George Augustine', 'CIABJ/2017/0014', '', 'CIABJ/2017/0014', '8073253996', '', '2017', 'CISM', '', ''),
(409, 'Adisa Afis', 'CIABJ/2017/0015', '', 'CIABJ/2017/0015', '8130983272', '', '2017', 'CISM', '', ''),
(410, 'Osinike Innocent Mmadu', 'CIABJ/2017/0016', '', 'CIABJ/2017/0016', '8067379173', '', '2017', 'CISM', '', ''),
(411, 'Nwasike Ifeanyi Dominic', 'CIABJ/2017/0017', '', 'CIABJ/2017/0017', '8146876224', '', '2017', 'CISM', '', ''),
(412, 'Ogbeche David', 'CIABJ/2017/0018', '', 'CIABJ/2017/0018', '8139031920', '', '2017', 'CISM', '', ''),
(413, 'Simon Ameh', 'CIABJ/2017/0019', '', 'CIABJ/2017/0019', '8053559350', '', '2017', 'CISM', '', ''),
(414, 'Ahmadu Prince Dantari', 'CIABJ/2017/0020', '', 'CIABJ/2017/0020', '8098194728', '', '2017', 'CISM', '', ''),
(415, 'Ukwune Ignatius Edoja', 'CIABJ/2017/0021', '', 'CIABJ/2017/0021', '8059111520', '', '2017', 'CISM', '', ''),
(416, 'Ayaka Terlumun Marcellinus', 'CIABJ/2017/0022', '', 'CIABJ/2017/0022', '8096143171', '', '2017', 'CISM', '', ''),
(417, 'Eteng Iwara', 'CIABJ/2017/0023', '', 'CIABJ/2017/0023', '7052997248', '', '2017', 'CISM', '', ''),
(418, 'Musa Polycarp Titus', 'CIABJ/2017/0024', '', 'CIABJ/2017/0024', '8069785520', '', '2017', 'CISM', '', ''),
(419, 'Ibeh Obioma Emmanuel', 'CIABJ/2017/0025', '', 'CIABJ/2017/0025', '7065508146', '', '2017', 'CISM', '', ''),
(420, 'Aliyu Ojih Abdul', 'CIABJ/2017/0026', '', 'CIABJ/2017/0026', '7056117106', '', '2017', 'CISM', '', ''),
(421, 'Salami Yakubu', 'CIABJ/2017/0027', '', 'CIABJ/2017/0027', '7036041243', '', '2017', 'CISM', '', ''),
(422, 'Okoro Mary Moyo', 'CIABJ/2017/0028', '', 'CIABJ/2017/0028', '7017565401', '', '2017', 'CISM', '', ''),
(423, 'Suleiman Muhammed Rabiu', 'CIABJ/2017/0029', '', 'CIABJ/2017/0029', '7066521991', '', '2017', 'CISM', '', ''),
(424, 'Aliyu Onimisi Hamza', 'CIABJ/2017/0030', '', 'CIABJ/2017/0030', '8176290040', '', '2017', 'CISM', '', ''),
(425, 'Ismaila Suleima', 'CIABJ/2017/0031', '', 'CIABJ/2017/0031', '8066005231', '', '2017', 'CISM', '', ''),
(426, 'Baba Shagari Ekwule', 'CIABJ/2017/0032', '', 'CIABJ/2017/0032', '7037081612', '', '2017', 'CISM', '', ''),
(427, 'Okeaghalam Casmir Sorochi', 'CIABJ/2017/0033', '', 'CIABJ/2017/0033', '8100958158', '', '2017', 'CISM', '', ''),
(428, 'Agbanrie Livingstone', 'CIABJ/2017/0034', '', 'CIABJ/2017/0034', '7037388999', '', '2017', 'CISM', '', ''),
(429, ' Nwaogu Chelsea Kelechi', 'CIABJ/2017/0035', '', 'CIABJ/2017/0035', '7038747415', '', '2017', 'CISM', '', ''),
(430, 'Dulilemi Tayo', 'CIABJ/2017/0036', '', 'CIABJ/2017/0036', '8039439028', '', '2017', 'CISM', '', ''),
(431, 'Apeh Benjamin Felix', 'CIABJ/2017/0037', '', 'CIABJ/2017/0037', '9026302285', '', '2017', 'CISM', '', ''),
(432, 'Akpa Emmanuel Omede', 'CIABJ/2017/0038', '', 'CIABJ/2017/0038', '8101083577', '', '2017', 'CISM', '', ''),
(433, 'Anibueze Virginus Ikechukwu', 'CIABJ/2017/0039', '', 'CIABJ/2017/0039', '08090711986, 08', '', '2017', 'CISM', '', ''),
(434, 'Anutsa Peter Aondohemba', 'CIABJ/2017/0040', '', 'CIABJ/2017/0040', '8104505418', '', '2017', 'CISM', '', ''),
(435, 'Apolos Haruna Farmi', 'CIABJ/2017/0041', '', 'CIABJ/2017/0041', '08183982912, 08', '', '2017', 'CISM', '', ''),
(436, 'Atawodi Helen Inikpi', 'CIABJ/2017/0042', '', 'CIABJ/2017/0042', '08135521773, 08', '', '2017', 'CISM', '', ''),
(437, 'Awong Cletus Egang', 'CIABJ/2017/0043', '', 'CIABJ/2017/0043', '8142320654', '', '2017', 'CISM', '', ''),
(438, 'Balogun Olusola Victor', 'CIABJ/2017/0044', '', 'CIABJ/2017/0044', '8166870146', '', '2017', 'CISM', '', ''),
(439, 'Ikwebe Lawrence', 'CIABJ/2017/0045', '', 'CIABJ/2017/0045', '8103624591', '', '2017', 'CISM', '', ''),
(440, 'Nwabuko Kelechi', 'CIABJ/2017/0046', '', 'CIABJ/2017/0046', '7039898530', '', '2017', 'CISM', '', ''),
(441, 'Ode Peter Adikpe', 'CIABJ/2017/0047', '', 'CIABJ/2017/0047', '9050866501', '', '2017', 'CISM', '', ''),
(442, 'Ogbodo Sunday', 'CIABJ/2017/0048', '', 'CIABJ/2017/0048', '7066701631', '', '2017', 'CISM', '', ''),
(443, 'Okewu Emmanuel', 'CIABJ/2017/0049', '', 'CIABJ/2017/0049', '8036550420', '', '2017', 'CISM', '', ''),
(444, 'Onyewuchi Francis', 'CIABJ/2017/0050', '', 'CIABJ/2017/0050', '8169253055', '', '2017', 'CISM', '', ''),
(445, 'Shaibu Adinoyi Ibrahim', 'CIABJ/2017/0051', '', 'CIABJ/2017/0051', '08059430738, 09', '', '2017', 'CISM', '', ''),
(446, 'Tondu Nicholas Aondoakula', 'CIABJ/2017/0052', '', 'CIABJ/2017/0052', '8165808790', '', '2017', 'CISM', '', ''),
(447, 'Ugwuoke Fidelis Ejikeme', 'CIABJ/2017/0053', '', 'CIABJ/2017/0053', '08136034774, 08', '', '2017', 'CISM', '', ''),
(448, 'Oluwayele Oluwabiyi Julius', 'CIABJ/2017/0054', '', 'CIABJ/2017/0054', '08108803078, 09', '', '2017', 'CISM', '', ''),
(449, 'OZOILO  SYLVESTER  IFEANYI', 'CIKRD/2017/0001', '', 'CIKRD/2017/0001', '07065199948, 08', '', '2017', 'CISM', '', ''),
(450, 'NKUME  STANLEY  EMEKA', 'CIKRD/2017/0002', '', 'CIKRD/2017/0002', '08036121566,  0', '', '2017', 'CISM', '', ''),
(451, 'MAJINNASOLA  WAHAB  OYELERE', 'CIKRD/2017/0003', '', 'CIKRD/2017/0003', '07036286166,', '', '2017', 'CISM', '', ''),
(452, 'ENECHE  JOHN', 'CIKRD/2017/0004', '', 'CIKRD/2017/0004', '08027883361,', '', '2017', 'CISM', '', ''),
(453, 'BAMA  POWEILA  MERCY', 'CIKRD/2017/0005', '', 'CIKRD/2017/0005', '08025245133,  0', '', '2017', 'CISM', '', '');
INSERT INTO `alumni` (`id`, `name`, `matric`, `email`, `password`, `phone`, `sex`, `class_year`, `course`, `passport`, `date`) VALUES
(454, 'AGADA  ONYEKE  BENSON', 'CIKRD/2017/0006', '', 'CIKRD/2017/0006', '08102562916,', '', '2017', 'CISM', '', ''),
(455, 'ASHAFA  BASHIRU', 'CIKRD/2017/0007', '', 'CIKRD/2017/0007', '08083170655,', '', '2017', 'CISM', '', ''),
(456, 'FANUGA  FOLASHADE  ', 'CIKRD/2017/0008', '', 'CIKRD/2017/0008', '07030780039,', '', '2017', 'CISM', '', ''),
(457, 'BEGUSA  PETER  OLUWASEGUN', 'CIKRD/2017/0009', '', 'CIKRD/2017/0009', '08093920366,  0', '', '2017', 'CISM', '', ''),
(458, 'KOLAWOLE  SAMSONDEEN', 'CIKRD/2017/0010', '', 'CIKRD/2017/0010', '08050712820,', '', '2017', 'CISM', '', ''),
(459, 'IDEMUDIA  ODEMWIGIE  IMAFIDON', 'CIKRD/2017/0011', '', 'CIKRD/2017/0011', '07039729256,', '', '2017', 'CISM', '', ''),
(460, 'OYEBANJO  KABIRU  OLUWADAMILARE', 'CIKRD/2017/0012', '', 'CIKRD/2017/0012', '08180201776,', '', '2017', 'CISM', '', ''),
(461, 'KAREEM   ADEYEMI  OLUWATOSIN', 'CIKRD/2017/0013', '', 'CIKRD/2017/0013', '08025815247,', '', '2017', 'CISM', '', ''),
(462, 'ASHIRU  OLUWASEYI  OLAOMOJU', 'CIKRD/2017/0014', '', 'CIKRD/2017/0014', '08062380095,', '', '2017', 'CISM', '', ''),
(463, 'AYODEJI  TAIWO  COSMOS', 'CIKRD/2017/0015', '', 'CIKRD/2017/0015', '08131122321,', '', '2017', 'CISM', '', ''),
(464, 'FASASI  TAIWO', 'CIKRD/2017/0016', '', 'CIKRD/2017/0016', '08083975042,', '', '2017', 'CISM', '', ''),
(465, 'DADA  OLUWASHINA', 'CIKRD/2017/0017', '', 'CIKRD/2017/0017', '09095195915,', '', '2017', 'CISM', '', ''),
(466, 'AJAYI-PRATT  OLUYINKA  OLAWALE', 'CIKRD/2017/0018', '', 'CIKRD/2017/0018', '08023598655,  0', '', '2017', 'CISM', '', ''),
(467, 'OKOTIE  VICTOR   OGHENESEDE', 'CIKRD/2017/0019', '', 'CIKRD/2017/0019', '08167471885,', '', '2017', 'CISM', '', ''),
(468, 'LIADI  KAZEEM  ALAO', 'CIKRD/2017/0020', '', 'CIKRD/2017/0020', '08023605175,', '', '2017', 'CISM', '', ''),
(469, 'OYEGUNU  AKINTOLA  ABEL', 'CIKRD/2017/0021', '', 'CIKRD/2017/0021', '08166613041,', '', '2017', 'CISM', '', ''),
(470, 'OGBUJI  COMFORT  IFEOMA', 'CIKRD/2017/0022', '', 'CIKRD/2017/0022', '098084340947,', '', '2017', 'CISM', '', ''),
(471, 'RAJI  ABDUSSALAM  ', 'CIKRD/2017/0023', '', 'CIKRD/2017/0023', '081311231743,', '', '2017', 'CISM', '', ''),
(472, 'OWOYELE  MOSHOOD  ABIOLA', 'CIKRD/2017/0024', '', 'CIKRD/2017/0024', '09095314219,', '', '2017', 'CISM', '', ''),
(473, 'SAULA  AZEEZ  OMOBOLAJI', 'CIKRD/2017/0025', '', 'CIKRD/2017/0025', '07081101859,', '', '2017', 'CISM', '', ''),
(474, 'ALAYA  IBRAHIM  OLASUNKANMI', 'CIKRD/2017/0026', '', 'CIKRD/2017/0026', '08106834456,', '', '2017', 'CISM', '', ''),
(475, 'HASSAN  MURITALA  ADEWALE', 'CIKRD/2017/0027', '', 'CIKRD/2017/0027', '08083987747,', '', '2017', 'CISM', '', ''),
(476, 'IDOWU  WASIU  ADEWALE', 'CIKRD/2017/0028', '', 'CIKRD/2017/0028', '08026199808,', '', '2017', 'CISM', '', ''),
(477, 'OYEBO  BOLAJI  ADEPOJU', 'CIKRD/2017/0029', '', 'CIKRD/2017/0029', '08067532587, 09', '', '2017', 'CISM', '', ''),
(478, 'OLATOYINBO  FRIDAY', 'CIKRD/2017/0030', '', 'CIKRD/2017/0030', '08024587584,', '', '2017', 'CISM', '', ''),
(479, 'OWOYELE  GANIU ADIO', 'CIKRD/2017/0031', '', 'CIKRD/2017/0031', '08028359485,', '', '2017', 'CISM', '', ''),
(480, 'HASSAN  SEMIU', 'CIKRD/2017/0032', '', 'CIKRD/2017/0032', '08029120225,', '', '2017', 'CISM', '', ''),
(481, 'GANIU SAHEED ALIU', 'CIKRD/2017/0033', '', 'CIKRD/2017/0033', '08025288720,', '', '2017', 'CISM', '', ''),
(482, 'YAKUB  ISRAIL ADEDAYO', 'CIKRD/2017/0034', '', 'CIKRD/2017/0034', '08179518030,', '', '2017', 'CISM', '', ''),
(483, 'LAWAL SODIQ OLAMILEKAN', 'CIKRD/2017/0035', '', 'CIKRD/2017/0035', '07088979645,', '', '2017', 'CISM', '', ''),
(484, 'SAMINU  FATIU', 'CIKRD/2017/0036', '', 'CIKRD/2017/0036', '07055853218,', '', '2017', 'CISM', '', ''),
(485, 'OCHIA  FIDELIS  OTUNUYA', 'CIKRD/2017/0037', '', 'CIKRD/2017/0037', '08061241178,', '', '2017', 'CISM', '', ''),
(486, 'THOMAS  TUNDE  OLAYEMI', 'CIKRD/2017/0038', '', 'CIKRD/2017/0038', '08096716265,', '', '2017', 'CISM', '', ''),
(487, 'SALAMI  SAHEED  SEGUN', 'CIKRD/2017/0039', '', 'CIKRD/2017/0039', '08172722050,', '', '2017', 'CISM', '', ''),
(488, 'OMOTOSHO  SHEHU', 'CIKRD/2017/0040', '', 'CIKRD/2017/0040', '08086798565,', '', '2017', 'CISM', '', ''),
(489, 'AROYAMEH  ZIONBABY', 'CIPG/2018/0001', '', 'CIPG/2018/0001', '08108218513,', '', '2018', 'CISM', '', ''),
(490, 'ONYEMACHI  GODSPOWER  SUNDAY', 'CIPG/2018/0002', '', 'CIPG/2018/0002', '07088802161,', '', '2018', 'CISM', '', ''),
(491, 'ASARE   AFOLAKEMI  CYNTHIA', 'CIPG/2018/0003', '', 'CIPG/2018/0003', '07087127530,', '', '2018', 'CISM', '', ''),
(492, 'BANKOLE  OLUFUNSHO  ADESHINA', 'CIPG/2018/0004', '', 'CIPG/2018/0004', '08134847178,  0', '', '2018', 'CISM', '', ''),
(493, 'ADELEKE  JELIL  ADE', 'CIPG/2018/0005', '', 'CIPG/2018/0005', '08166681271,', '', '2018', 'CISM', '', ''),
(494, 'ALIM  SUNDAY  PANYA', 'CIPG/2018/0006', '', 'CIPG/2018/0006', '08168053653,', '', '2018', 'CISM', '', ''),
(495, 'SALAMI  AYUBA  B.', 'CIPG/2018/0007', '', 'CIPG/2018/0007', '08122333817,', '', '2018', 'CISM', '', ''),
(496, 'STEPHEN  DAVID', 'CIPG/2018/0008', '', 'CIPG/2018/0008', '08185357907, 08', '', '2018', 'CISM', '', ''),
(497, 'BAMIGBALA  ADESHOLA  MICHAEL', 'CIPG/2018/0009', '', 'CIPG/2018/0009', '07018160771,', '', '2018', 'CISM', '', ''),
(498, 'ADERIBIGBE  OPEYEMI  DAMILOLA', 'CIPG/2018/0010', '', 'CIPG/2018/0010', '08137363486,', '', '2018', 'CISM', '', ''),
(499, 'BADMUS  YUSUF', 'CIPG/2018/0011', '', 'CIPG/2018/0011', '08189516102,', '', '2018', 'CISM', '', ''),
(500, 'OMOTAYO  OLABODE  BENNY', 'CIPG/2018/0012', '', 'CIPG/2018/0012', '09063120633,', '', '2018', 'CISM', '', ''),
(501, 'MMADUBUEZE  EMMANUEL  CHIKE', 'CIPG/2018/0013', '', 'CIPG/2018/0013', '09074021676,', '', '2018', 'CISM', '', ''),
(502, 'BADMUS  JAMIU  ODUNAYO', 'CIPG/2018/0014', '', 'CIPG/2018/0014', '08052155625, ', '', '2018', 'CISM', '', ''),
(503, 'ETUBI  ADEMU  MOSES', 'CIPG/2018/0015', '', 'CIPG/2018/0015', '09098145142,', '', '2018', 'CISM', '', ''),
(504, 'SHAIBU  YUSUF  ADAMU', 'CIPG/2018/0016', '', 'CIPG/2018/0016', '08181416608,', '', '2018', 'CISM', '', ''),
(505, 'UDOIDIONG JOSEPH  OKON', 'CIPG/2018/0017', '', 'CIPG/2018/0017', '08036477592,', '', '2018', 'CISM', '', ''),
(506, 'JOHN  EPERETEI  KELVIN', 'CIPG/2018/0018', '', 'CIPG/2018/0018', '07059868730,', '', '2018', 'CISM', '', ''),
(507, 'OYENIYI  ADEOLA  MODUPE', 'CIPG/2018/0019', '', 'CIPG/2018/0019', '07065550530,', '', '2018', 'CISM', '', ''),
(508, 'OSUAGWU  EZEKIEL  OBINNA', 'CIPG/2018/0020', '', 'CIPG/2018/0020', '08125425520,', '', '2018', 'CISM', '', ''),
(509, 'YAYA  RAZAK  BOLAKALE', 'CIPG/2018/0021', '', 'CIPG/2018/0021', '08064062556,', '', '2018', 'CISM', '', ''),
(510, 'USMAN  TAIWO', 'CIPG/2018/0022', '', 'CIPG/2018/0022', '08035187921,', '', '2018', 'CISM', '', ''),
(511, 'ADENEKAN  KUDIRAT  AMOKE', 'CIPG/2018/0023', '', 'CIPG/2018/0023', '08035170342,', '', '2018', 'CISM', '', ''),
(512, 'AKINADE  OLUKAYODE  AMOS', 'CIPG/2018/0024', '', 'CIPG/2018/0024', '08033445606,', '', '2018', 'CISM', '', ''),
(513, 'BABA  JOSEPH  UNEKWU', 'CIPG/2018/0025', '', 'CIPG/2018/0025', '07038666025, 08', '', '2018', 'CISM', '', ''),
(514, 'IGBOBA  EMMANUEL  IFECHUKWUDE', 'CIPG/2018/0026', '', 'CIPG/2018/0026', '08080016939,', '', '2018', 'CISM', '', ''),
(515, 'OKOYE   CHINEDU  PHILIP', 'CIPG/2018/0027', '', 'CIPG/2018/0027', '08178124609,', '', '2018', 'CISM', '', ''),
(516, 'PATRICK  BENEDICT  NOYEREM', 'CIPG/2018/0028', '', 'CIPG/2018/0028', '07063364512,', '', '2018', 'CISM', '', ''),
(517, 'SHADEKO  EDWARD  OYEMADE', 'CIPG/2018/0029', '', 'CIPG/2018/0029', '08171322804,', '', '2018', 'CISM', '', ''),
(518, 'AKINTAYO  ABUBAKRY  OLUWASEYI', 'CIPG/2018/0030', '', 'CIPG/2018/0030', '09026286178, 08', '', '2018', 'CISM', '', ''),
(519, 'UMAR  AHMAD BILYAMINU', 'CIPG/2018/0031', '', 'CIPG/2018/0031', '07068606493,  0', '', '2018', 'CISM', '', ''),
(520, 'ADEKOYA  SAMUEL  OLORUNSOGO', 'CIPG/2018/0032', '', 'CIPG/2018/0032', '08026540604,', '', '2018', 'CISM', '', ''),
(521, 'EFFIONG  BASSEY  UDOH', 'CIPG/2018/0033', '', 'CIPG/2018/0033', '08065293006,', '', '2018', 'CISM', '', ''),
(522, 'OLAYIWOLA  SAMSON MIGHTY', 'CIPG/2018/0034', '', 'CIPG/2018/0034', '07055721767,', '', '2018', 'CISM', '', ''),
(523, 'OGUSANYA  MICHAEL  OLORUNSEUN', 'CIPG/2018/0035', '', 'CIPG/2018/0035', '08173578706,', '', '2018', 'CISM', '', ''),
(524, 'AGUZIE  MICHAEL  ', 'CIPG/2018/0036', '', 'CIPG/2018/0036', '08062257724, 08', '', '2018', 'CISM', '', ''),
(525, 'USMAN  WASIU  ALABI', 'CIPG/2018/0037', '', 'CIPG/2018/0037', '09076604103,', '', '2018', 'CISM', '', ''),
(526, 'OMEFE  TAIWO  ADEDOTUN', 'CIPG/2018/0038', '', 'CIPG/2018/0038', '09060469040,', '', '2018', 'CISM', '', ''),
(527, 'NWACHUKWU  IFEANYI  COLLINS', 'CIPG/2018/0039', '', 'CIPG/2018/0039', '07066244598,', '', '2018', 'CISM', '', ''),
(528, 'OMOROGBE  MOSES', 'CIPG/2018/0040', '', 'CIPG/2018/0040', '081338710744,', '', '2018', 'CISM', '', ''),
(529, 'EBURUO  INNOCENT', 'CIPG/2018/0041', '', 'CIPG/2018/0041', '07067594711,', '', '2018', 'CISM', '', ''),
(530, 'AYEKOMILOGBON  DANIEL  OMONIYI', 'CIPG/2018/0042', '', 'CIPG/2018/0042', '08050260984,', '', '2018', 'CISM', '', ''),
(531, 'OLADIMEJI  OLOLADE  RIDWAN', 'CIPG/2018/0043', '', 'CIPG/2018/0043', '08061197991,', '', '2018', 'CISM', '', ''),
(532, 'SOBALOJU  ABDULRAHEEM  OLADIMEJI', 'CIPG/2018/0044', '', 'CIPG/2018/0044', '08105003026,', '', '2018', 'CISM', '', ''),
(533, 'NWOKOLO  STEPHEN  NDIDI', 'CIPG/2018/0045', '', 'CIPG/2018/0045', '08060489324,', '', '2018', 'CISM', '', ''),
(534, 'JOHNSON SAMUEL ADINOYI', 'CIPG/2018/0046', '', 'CIPG/2018/0046', '08130248150, 09', '', '2018', 'CISM', '', ''),
(535, 'AGENYI  MONDAY  OKOLIKO', 'CIPG/2018/0047', '', 'CIPG/2018/0047', '08028260858,', '', '2018', 'CISM', '', ''),
(536, 'MURAINA  BABATUNDE  ISIAKA', 'CIPG/2018/0048', '', 'CIPG/2018/0048', '08139505402,', '', '2018', 'CISM', '', ''),
(537, 'UDOFIA  ANIEKAN', 'CIPG/2018/0049', '', 'CIPG/2018/0049', '08126882295,', '', '2018', 'CISM', '', ''),
(538, 'UKATA  CHARLES  EMEKA', 'CIPG/2018/0050', '', 'CIPG/2018/0050', '09082899267,', '', '2018', 'CISM', '', ''),
(539, 'IKENNA  DESTINY  ', 'CIPG/2018/0051', '', 'CIPG/2018/0051', '08121726638,', '', '2018', 'CISM', '', ''),
(540, 'ANUKAM KENNEDY  ONYINYECHI', 'CIPG/2018/0052', '', 'CIPG/2018/0052', '08034134234, 09', '', '2018', 'CISM', '', ''),
(541, 'SAHEYI OLUWATOSIN  BELLO', 'CIPG/2018/0053', '', 'CIPG/2018/0053', '08185776968,', '', '2018', 'CISM', '', ''),
(542, 'DAVID  ISRAEL  AKPAN', 'CIPG/2018/0054', '', 'CIPG/2018/0054', '07015898114,', '', '2018', 'CISM', '', ''),
(543, 'LAWAL  YINKA  ', 'CIPG/2018/0055', '', 'CIPG/2018/0055', '07068732032,', '', '2018', 'CISM', '', ''),
(544, 'OLAWOYE  OLAYINKA  JOSEPH', 'CIPG/2018/0056', '', 'CIPG/2018/0056', '08129434669, 09', '', '2018', 'CISM', '', ''),
(545, 'OGUNBE  IFEOLOUWA  SAMUEL', 'CIPG/2018/0057', '', 'CIPG/2018/0057', '09098574570,', '', '2018', 'CISM', '', ''),
(546, 'OBATHA  GABRIEL', 'CIPG/2018/0058', '', 'CIPG/2018/0058', '08075303154,', '', '2018', 'CISM', '', ''),
(547, 'OKPE ALIH  AMOS', 'CIPG/2018/0059', '', 'CIPG/2018/0059', '08039358558,', '', '2018', 'CISM', '', ''),
(548, 'EKPENYONG  UWEM', 'CIPG/2018/0060', '', 'CIPG/2018/0060', '0814552783,', '', '2018', 'CISM', '', ''),
(549, 'AYILA SAMUEL', 'CIPG/2018/0061', '', 'CIPG/2018/0061', '07033680557, 08', '', '2018', 'CISM', '', ''),
(550, 'ANUSIEM  MARTINS  CHRISTIAN', 'CIPG/2018/0062', '', 'CIPG/2018/0062', '08023951468,', '', '2018', 'CISM', '', ''),
(551, 'IWUH  BENJAMIN  CHUKWUEMEKA', 'CIPG/2018/0063', '', 'CIPG/2018/0063', '09091728788,', '', '2018', 'CISM', '', ''),
(552, 'ATANDA  SAMSON  SUNDAY', 'CIPG/2018/0064', '', 'CIPG/2018/0064', '08064881544, 08', '', '2018', 'CISM', '', ''),
(553, 'BENJAMIN  DAVID  RICHARD', 'CIPG/2018/0065', '', 'CIPG/2018/0065', '08034217494,', '', '2018', 'CISM', '', ''),
(554, 'NWAFOR SAMUEL', 'CIPG/2018/0066', '', 'CIPG/2018/0066', '08161185450,', '', '2018', 'CISM', '', ''),
(555, 'ZEKERI  ISIAKA', 'CIPG/2018/0067', '', 'CIPG/2018/0067', '08123122544,', '', '2018', 'CISM', '', ''),
(556, 'MONDAY  GIDEON', 'CIPG/2018/0068', '', 'CIPG/2018/0068', '08036900528,', '', '2018', 'CISM', '', ''),
(557, 'PEDRO  YUSUF  ADETUNJI', 'CIPG/2018/0069', '', 'CIPG/2018/0069', '08034333755,', '', '2018', 'CISM', '', ''),
(558, 'FELIX ONYINYECHI  BLESSING', 'CIPG/2018/0070', '', 'CIPG/2018/0070', '08133082919,', '', '2018', 'CISM', '', ''),
(559, 'YEKEEM  WAHEED  BOLAJI', 'CIPG/2018/0071', '', 'CIPG/2018/0071', '08133309429,', '', '2018', 'CISM', '', ''),
(560, 'EBONYI  EDWARD  ELIAS', 'CIPG/2018/0072', '', 'CIPG/2018/0072', '09057038697,', '', '2018', 'CISM', '', ''),
(561, 'TERNGU  MOSES  AGIM', 'CIPG/2018/0073', '', 'CIPG/2018/0073', '07039009639,', '', '2018', 'CISM', '', ''),
(562, 'BAKARE  ISAAC  OLOLADE', 'CIPG/2018/0074', '', 'CIPG/2018/0074', '08030980372, 08', '', '2018', 'CISM', '', ''),
(563, 'AKANBI  SEGUN  ', 'CIPG/2018/0075', '', 'CIPG/2018/0075', '08181685634,', '', '2018', 'CISM', '', ''),
(564, 'OLUMIDE  MICHAEL  GBENGA', 'CIPG/2018/0076', '', 'CIPG/2018/0076', '08186282828,', '', '2018', 'CISM', '', ''),
(565, 'YAHAYA  SADIA', 'CIPG/2018/0077', '', 'CIPG/2018/0077', '09027934804, ', '', '2018', 'CISM', '', ''),
(566, 'OLAYENI AHMED BOLARIN', 'CIPG/2018/0078', '', 'CIPG/2018/0078', '08118347901, 07', '', '2018', 'CISM', '', ''),
(567, 'NNALUE  MATTHEW  CHUKWUEBUKA', 'CIPG/2018/0079', '', 'CIPG/2018/0079', '07062031707,', '', '2018', 'CISM', '', ''),
(568, 'ADEGBAIKE  SAMUEL  ADEKUNLE', 'CIPG/2018/0080', '', 'CIPG/2018/0080', '08066177849,', '', '2018', 'CISM', '', ''),
(569, 'DURU  ANTHONY', 'CIPG/2018/0081', '', 'CIPG/2018/0081', '09055741896,', '', '2018', 'CISM', '', ''),
(570, 'AZEEZ  RILIWAN', 'CIPG/2018/0082', '', 'CIPG/2018/0082', '08151254113,', '', '2018', 'CISM', '', ''),
(571, 'IROJAH OLUSEGUN ABAYOMI', 'CIPG/2018/0083', '', 'CIPG/2018/0083', '09029550148,', '', '2018', 'CISM', '', ''),
(572, 'OKON  CHRISTOPHER', 'CIPG/2018/0084', '', 'CIPG/2018/0084', '08103281957,', '', '2018', 'CISM', '', ''),
(573, 'AKINGBE  BAYO MICHAEL', 'CIPG/2018/0085', '', 'CIPG/2018/0085', '07060666606,', '', '2018', 'CISM', '', ''),
(574, 'AKINGBADE  LUKMAN  OLANASE', 'CIPG/2018/0086', '', 'CIPG/2018/0086', '08035950884,', '', '2018', 'CISM', '', ''),
(575, 'OBELE  UCHECHUKWU  UZODIMMA', 'CIPG/2018/0087', '', 'CIPG/2018/0087', '08068494611, 08', '', '2018', 'CISM', '', ''),
(576, 'ABOH  JOHN', 'CIPG/2018/0088', '', 'CIPG/2018/0088', '09061846363,', '', '2018', 'CISM', '', ''),
(577, 'MATTHEW  RAPHAEL  AMEH', 'CIPG/2018/0089', '', 'CIPG/2018/0089', '09032890468,', '', '2018', 'CISM', '', ''),
(578, 'SYLVESTER  MATTHEW', 'CIPG/2018/0090', '', 'CIPG/2018/0090', '09092791473, 08', '', '2018', 'CISM', '', ''),
(579, 'AKPOWOWO  ESEOGHENE  PRECIOUS', 'CIPG/2018/0091', '', 'CIPG/2018/0091', '09068261519, 08', '', '2018', 'CISM', '', ''),
(580, 'TONY  CHIDERA  NZE', 'CIPG/2018/0092', '', 'CIPG/2018/0092', '09039211576,', '', '2018', 'CISM', '', ''),
(581, 'KENREN  ONIMIAMIYENGHAN', 'CIPG/2018/0093', '', 'CIPG/2018/0093', '08164086218,', '', '2018', 'CISM', '', ''),
(582, 'YAHYA  OLUWASEYI  LUKMAN', 'CIPG/2018/0094', '', 'CIPG/2018/0094', '08093786099,', '', '2018', 'CISM', '', ''),
(583, 'SHANU  OLUMUYIWA  OLUFEMI', 'CIPG/2018/0095', '', 'CIPG/2018/0095', '08136824739, 07', '', '2018', 'CISM', '', ''),
(584, 'GODDEY  OGIE  OLADIMEJI', 'CIPG/2018/0096', '', 'CIPG/2018/0096', '08125983989, 08', '', '2018', 'CISM', '', ''),
(585, 'ADEYORIJU  ADEWALE  ADEBUKOLA', 'CIPG/2018/0097', '', 'CIPG/2018/0097', '07060488733,', '', '2018', 'CISM', '', ''),
(586, 'KALU  MELVIN  UKA', 'CIPG/2018/0098', '', 'CIPG/2018/0098', '08095743162, 08', '', '2018', 'CISM', '', ''),
(587, 'BENJAMIN  ELIJAH', 'CIPG/2018/0099', '', 'CIPG/2018/0099', '', '', '2018', 'CISM', '', ''),
(588, 'KINGSLEY  DAVID  IFEANYI', 'CIPG/2018/0100', '', 'CIPG/2018/0100', '09021537831,', '', '2018', 'CISM', '', ''),
(589, 'ASABA  PREYE  DOUBRAPADE', 'CIPG/2018/0101', '', 'CIPG/2018/0101', '08166033020, 09', '', '2018', 'CISM', '', ''),
(590, 'OYEKANMI  ISRAEL  ADEYEMI', 'CIPG/2018/0102', '', 'CIPG/2018/0102', '08126366288,', '', '2018', 'CISM', '', ''),
(591, 'SUNDAY  MICHAEL  OLUWATOBOLOBA', 'CIPG/2018/0103', '', 'CIPG/2018/0103', '07035811733, 09', '', '2018', 'CISM', '', ''),
(592, 'MICHAEL  STEVE', 'CIPG/2018/0104', '', 'CIPG/2018/0104', '09083445134,', '', '2018', 'CISM', '', ''),
(593, 'ABAYOMI MICHAEL  OLUWAYEMI', 'CIPG/2018/0105', '', 'CIPG/2018/0105', '07088523316, 09', '', '2018', 'CISM', '', ''),
(594, 'NWONWE  THEOPHILUS CHEKWUBE', 'CIPG/2018/0106', '', 'CIPG/2018/0106', '07064626250,', '', '2018', 'CISM', '', ''),
(595, 'OLALEKAN  IFEOLUWA  ADEDEJI', 'CIPG/2018/0107', '', 'CIPG/2018/0107', '09062306800,', '', '2018', 'CISM', '', ''),
(596, 'OKOTIE  MOSES', 'CIPG/2018/0108', '', 'CIPG/2018/0108', '08028992365, 07', '', '2018', 'CISM', '', ''),
(597, 'OGAH  WILLIAMS', 'CIPG/2018/0109', '', 'CIPG/2018/0109', '08172069509,', '', '2018', 'CISM', '', ''),
(598, 'AKINMOYE  ILEMOBAYO  AUSTINE', 'CIPG/2018/0110', '', 'CIPG/2018/0110', '08037341611,', '', '2018', 'CISM', '', ''),
(599, 'UROKO  HILARY', 'CIPG/2018/0111', '', 'CIPG/2018/0111', '09068906893,', '', '2018', 'CISM', '', ''),
(600, 'MAGAJI  DANIEL  NGBEDE', 'CIPG/2018/0112', '', 'CIPG/2018/0112', '09076419001,', '', '2018', 'CISM', '', ''),
(601, 'FAJUMO  REBECCA  OLAJUWON', 'CIPG/2018/0113', '', 'CIPG/2018/0113', '09075120253, 07', '', '2018', 'CISM', '', ''),
(602, 'AGAMA  JUSTUS  AYEGBA', 'CIPG/2018/0114', '', 'CIPG/2018/0114', '09096736515, ', '', '2018', 'CISM', '', ''),
(603, 'OLAWALE  IDRIS', 'CIPG/2018/0115', '', 'CIPG/2018/0115', '08138596375,', '', '2018', 'CISM', '', ''),
(604, 'CHUKWUNYERE  CHUKWUEMEKA', 'CIPG/2018/0116', '', 'CIPG/2018/0116', '08096574197,', '', '2018', 'CISM', '', ''),
(605, 'UKANZUA  THADDEUS', 'CIPG/2018/0117', '', 'CIPG/2018/0117', '08105333366, 07', '', '2018', 'CISM', '', ''),
(606, 'UKWASIKE GODFREY  CHIBUENYIM', 'CIPG/2018/0118', '', 'CIPG/2018/0118', '08104600344,', '', '2018', 'CISM', '', ''),
(607, 'BASSEY  BENJAMIN  LEO', 'CIPG/2018/0119', '', 'CIPG/2018/0119', '07080222846,', '', '2018', 'CISM', '', ''),
(608, 'DANIEL  MADAKI  MONDAY', 'CIPG/2018/0120', '', 'CIPG/2018/0120', '08162872935,', '', '2018', 'CISM', '', ''),
(609, 'DANIEL EZRA', 'CIPG/2018/0121', '', 'CIPG/2018/0121', '08039713972,', '', '2018', 'CISM', '', ''),
(610, 'EKEMODE  TIJANI  SHEU', 'CIPG/2018/0122', '', 'CIPG/2018/0122', '08146602382, 08', '', '2018', 'CISM', '', ''),
(611, 'CHRISTSON  JAMES  IKECHUKWU', 'CIPG/2018/0123', '', 'CIPG/2018/0123', '08172388285,', '', '2018', 'CISM', '', ''),
(612, 'DANIA  AMOS  UNAJASO', 'CIPG/2018/0124', '', 'CIPG/2018/0124', '08105703618,', '', '2018', 'CISM', '', ''),
(613, 'SAKA  JAMIU  DAMILARE', 'CIPG/2018/0125', '', 'CIPG/2018/0125', '08188546400,', '', '2018', 'CISM', '', ''),
(614, 'AKOGWU  SUNDAY ', 'CIPG/2018/0126', '', 'CIPG/2018/0126', '08167070198,', '', '2018', 'CISM', '', ''),
(615, 'AKINOLA  MUSTAPHA', 'CIPG/2018/0127', '', 'CIPG/2018/0127', '08071102081,', '', '2018', 'CISM', '', ''),
(616, 'AUGUSTINE   DANIEL', 'CIPG/2018/0128', '', 'CIPG/2018/0128', '08163930161,', '', '2018', 'CISM', '', ''),
(617, 'ENWE  ANDREW  ', 'CIPG/2018/0129', '', 'CIPG/2018/0129', '08063724382,', '', '2018', 'CISM', '', ''),
(618, 'OSIMEN  GODWIN  OSEGHALE  ', 'CIPG/2018/0130', '', 'CIPG/2018/0130', '08023318164,', '', '2018', 'CISM', '', ''),
(619, 'OKECHUKWU  SAMUEL  JOSEPH', 'CIPG/2018/0131', '', 'CIPG/2018/0131', '08052479356,', '', '2018', 'CISM', '', ''),
(620, 'GEORGE  JUDE  IWEAGBUE', 'CIPG/2018/0132', '', 'CIPG/2018/0132', '09060392689,', '', '2018', 'CISM', '', ''),
(621, 'AYOADE  LAWAL  OLOLADE', 'CIPG/2018/0133', '', 'CIPG/2018/0133', '08082824118, 08', '', '2018', 'CISM', '', ''),
(622, 'ONOJA  GODWIN', 'CIPG/2018/0134', '', 'CIPG/2018/0134', '08024296103,', '', '2018', 'CISM', '', ''),
(623, 'NJOKU  KELECHI  ISIDORE', 'CIPG/2018/0135', '', 'CIPG/2018/0135', '08035698618,', '', '2018', 'CISM', '', ''),
(624, 'AJEWOLE  OLUWASEGUN  ELIJAH', 'CIPG/2018/0136', '', 'CIPG/2018/0136', '08130542904,', '', '2018', 'CISM', '', ''),
(625, 'IDOKO  OJONUGWA', 'CIPG/2018/0137', '', 'CIPG/2018/0137', '09081141986, 07', '', '2018', 'CISM', '', ''),
(626, 'GERE  PRINCE  EWORITSEMOGHA', 'CIPG/2018/0138', '', 'CIPG/2018/0138', '08133190926,', '', '2018', 'CISM', '', ''),
(627, 'IGWE  MOSES  BAYKER', 'CIPG/2018/0139', '', 'CIPG/2018/0139', '08108913916,', '', '2018', 'CISM', '', ''),
(628, 'ONOJA  ABUBAKAR  IDRIS', 'CIPG/2018/0140', '', 'CIPG/2018/0140', '08022072257,', '', '2018', 'CISM', '', ''),
(629, 'OLAGUNJU  JOHNSON  OLAJIDE', 'CIPG/2018/0141', '', 'CIPG/2018/0141', '08168748598,', '', '2018', 'CISM', '', ''),
(630, 'OLALEKAN  MATTHEW  FEMI', 'CIPG/2018/0142', '', 'CIPG/2018/0142', '08170997313,', '', '2018', 'CISM', '', ''),
(631, 'FASUNLADE  EKUNDAYO  MARTINS', 'CIPG/2018/0143', '', 'CIPG/2018/0143', '08063776976,', '', '2018', 'CISM', '', ''),
(632, 'OGUNLEYE  EMMANUEL  BOLUWAJINDE', 'CIPG/2018/0144', '', 'CIPG/2018/0144', '09033306731,', '', '2018', 'CISM', '', ''),
(633, 'OLUWADARE  SOLOMON', 'CIPG/2018/0145', '', 'CIPG/2018/0145', '08097177027,', '', '2018', 'CISM', '', ''),
(634, 'POPOOLA  OLADAPO  PAUL', 'CIPG/2018/0146', '', 'CIPG/2018/0146', '08185295149,', '', '2018', 'CISM', '', ''),
(635, 'IDAGWU  GABRIEL  SUNDAY', 'CIPG/2018/0147', '', 'CIPG/2018/0147', '07030881423, 08', '', '2018', 'CISM', '', ''),
(636, 'OCHE  SUNDAY', 'CIPG/2018/0148', '', 'CIPG/2018/0148', '08168703773,', '', '2018', 'CISM', '', ''),
(637, 'OTIMI  OLUWATIMILEHIN', 'CIPG/2018/0149', '', 'CIPG/2018/0149', '09084795779,', '', '2018', 'CISM', '', ''),
(638, 'OPUORO  JONATHAN', 'CIPG/2018/0150', '', 'CIPG/2018/0150', '08029314480,', '', '2018', 'CISM', '', ''),
(639, 'GEORGE  ISAIAH', 'CIPG/2018/0151', '', 'CIPG/2018/0151', '08163282050, 09', '', '2018', 'CISM', '', ''),
(640, 'IBRAHIM  HABEEB', 'CIPG/2018/0152', '', 'CIPG/2018/0152', '08032257919, 08', '', '2018', 'CISM', '', ''),
(641, 'PETER\'S ELIJAH', 'CIPG/2018/0153', '', 'CIPG/2018/0153', '07066751637,', '', '2018', 'CISM', '', ''),
(642, 'PETER  EDIONG  IMOH', 'CIIKY/2018/0001', '', 'CIIKY/2018/0001', '08067424288,', '', '2018', 'CISM', '', ''),
(643, 'SMART  GOODLUCK  OMOHIKOJE', 'CIIKY/2018/0002', '', 'CIIKY/2018/0002', '08139314441,', '', '2018', 'CISM', '', ''),
(644, 'NWOSU  CHIJIOKE', 'CIIKY/2018/0003', '', 'CIIKY/2018/0003', '08099305444,  0', '', '2018', 'CISM', '', ''),
(645, 'ABRAHAM  DICK  ABRAHAM', 'CIIKY/2018/0004', '', 'CIIKY/2018/0004', '07030574568,  0', '', '2018', 'CISM', '', ''),
(646, 'YUSUF  LATEEF  ADENIYI', 'CIIKY/2018/0005', '', 'CIIKY/2018/0005', '08098361330,', '', '2018', 'CISM', '', ''),
(647, 'OJONG  JULIUS', 'CIIKY/2018/0006', '', 'CIIKY/2018/0006', '07038120758,', '', '2018', 'CISM', '', ''),
(648, 'ONALO  JOHNSON', 'CIIKY/2018/0007', '', 'CIIKY/2018/0007', '08140803006,', '', '2018', 'CISM', '', ''),
(649, 'OGOCHUKWU  STEPHEN  NKEM', 'CIIKY/2018/0008', '', 'CIIKY/2018/0008', '08106818605,', '', '2018', 'CISM', '', ''),
(650, 'JOHN  VICTOR  ', 'CIIKY/2018/0009', '', 'CIIKY/2018/0009', '08179688640,  0', '', '2018', 'CISM', '', ''),
(651, 'KWAGHVER ZERNONGUN JOSHUA', 'CIIKY/2018/0010', '', 'CIIKY/2018/0010', '08087538832,', '', '2018', 'CISM', '', ''),
(652, 'OKEKE CHIKA CONSTANCE', 'CIIKY/2018/0011', '', 'CIIKY/2018/0011', '08062785360, 08', '', '2018', 'CISM', '', ''),
(653, 'NGAH  DUMSIRA  CLARKSON ', 'CIIKY/2018/0012', '', 'CIIKY/2018/0012', '08101266269,', '', '2018', 'CISM', '', ''),
(654, 'NWAEZE  JOHN', 'CIIKY/2018/0013', '', 'CIIKY/2018/0013', '07061366578,', '', '2018', 'CISM', '', ''),
(655, 'ALEKA  DAVID  JOSEPH', 'CIIKY/2018/0014', '', 'CIIKY/2018/0014', '07087002677,', '', '2018', 'CISM', '', ''),
(656, 'OLAOYE  DAVID  OLAIDE', 'CIIKY/2018/0015', '', 'CIIKY/2018/0015', '08062693523,', '', '2018', 'CISM', '', ''),
(657, 'ODEH  MOSES  SUCCESS', 'CIIKY/2018/0016', '', 'CIIKY/2018/0016', '08138777635,', '', '2018', 'CISM', '', ''),
(658, 'EME  NNAMDI  VINCENT', 'CIIKY/2018/0017', '', 'CIIKY/2018/0017', '08094004051,', '', '2018', 'CISM', '', ''),
(659, 'HASSAN  ORIYOMI  YUSUF', 'CIIKY/2018/0018', '', 'CIIKY/2018/0018', '08143326547,', '', '2018', 'CISM', '', ''),
(660, 'AHMED  KABIR', 'CIIKY/2018/0019', '', 'CIIKY/2018/0019', '08135172749,', '', '2018', 'CISM', '', ''),
(661, 'AGBO  DICKSON  OKOH', 'CIIKY/2018/0020', '', 'CIIKY/2018/0020', '07034660068,', '', '2018', 'CISM', '', ''),
(662, 'AMINU  DAMUDU', 'CIIKY/2018/0021', '', 'CIIKY/2018/0021', '08090824240,', '', '2018', 'CISM', '', ''),
(663, 'SULAIMON  TAOFEEK', 'CIIKY/2018/0022', '', 'CIIKY/2018/0022', '08105177938, 08', '', '2018', 'CISM', '', ''),
(664, 'NATHAN  JOHN', 'CIIKY/2018/0023', '', 'CIIKY/2018/0023', '09076116180,', '', '2018', 'CISM', '', ''),
(665, 'ANURUKEM  CHIGOZIE  EMMANUEL', 'CIIKY/2018/0024', '', 'CIIKY/2018/0024', '08132575905,', '', '2018', 'CISM', '', ''),
(666, 'KELLY  IFEDAYO  JOSEPH', 'CIIKY/2018/0025', '', 'CIIKY/2018/0025', '07088862925,', '', '2018', 'CISM', '', ''),
(667, 'BENEDICT  ANTHONY  ABUTU', 'CIIKY/2018/0026', '', 'CIIKY/2018/0026', '08144354392,', '', '2018', 'CISM', '', ''),
(668, 'AYANKUNLE  OLUSHOLA  BAYO', 'CIIKY/2018/0027', '', 'CIIKY/2018/0027', '09020475317,', '', '2018', 'CISM', '', ''),
(669, 'ONAIWU  MARVIS  OMOROGBE', 'CIIKY/2018/0028', '', 'CIIKY/2018/0028', '08171532491,', '', '2018', 'CISM', '', ''),
(670, 'OLUWASEGUN  OLUWAYEMISI', 'CIIKY/2018/0029', '', 'CIIKY/2018/0029', '08134851537,', '', '2018', 'CISM', '', ''),
(671, 'ASUQUO  MOSES', 'CIIKY/2018/0030', '', 'CIIKY/2018/0030', '07062526429,', '', '2018', 'CISM', '', ''),
(672, 'OLOWOLAGBA  ABIDEMI', 'CIIKY/2018/0031', '', 'CIIKY/2018/0031', '07031246325,', '', '2018', 'CISM', '', ''),
(673, 'AWUENYI EMEKA LEONARD ', 'CIIKY/2018/0032', '', 'CIIKY/2018/0032', '08107452621,', '', '2018', 'CISM', '', ''),
(674, 'AMARI GODWIN AMARI', 'CIIKY/2018/0033', '', 'CIIKY/2018/0033', '08062910199,', '', '2018', 'CISM', '', ''),
(675, 'EKOCHE OCHE ABEL ', 'CIIKY/2018/0034', '', 'CIIKY/2018/0034', '08069145500,', '', '2018', 'CISM', '', ''),
(676, 'OFOGBNA GODWIN ', 'CIIKY/2018/0035', '', 'CIIKY/2018/0035', '09098992628,', '', '2018', 'CISM', '', ''),
(677, 'ASUQUO EDNA EDET ', 'CIIKY/2018/0036', '', 'CIIKY/2018/0036', '07063677847,', '', '2018', 'CISM', '', ''),
(678, 'PAUL EMMANUEL', 'CIIKY/2018/0037', '', 'CIIKY/2018/0037', '07051821490,', '', '2018', 'CISM', '', ''),
(679, 'OFEM CONFIDENCE', 'CIIKY/2018/0038', '', 'CIIKY/2018/0038', '09061311579,', '', '2018', 'CISM', '', ''),
(680, 'ABBA MUSTAPHA', 'CIIKY/2018/0039', '', 'CIIKY/2018/0039', '09070357171,', '', '2018', 'CISM', '', ''),
(681, 'ELOYI  JAMES', 'CIIKY/2018/0040', '', 'CIIKY/2018/0040', '08139112210,', '', '2018', 'CISM', '', ''),
(682, 'MBANWA  CHIBUZOR  MATTHEW', 'CIIKY/2018/0041', '', 'CIIKY/2018/0041', '08145556365,', '', '2018', 'CISM', '', ''),
(683, 'Emeka Awuenyi, Leonard', 'CIIKY/2018/0042', '', 'CIIKY/2018/0042', '08057458042,', '', '2018', 'CISM', '', ''),
(684, 'ADESANYA  DANIEL  BABAJIDE', 'CIIKY/2018/0043', '', 'CIIKY/2018/0043', '', '', '2018', 'CISM', '', ''),
(685, 'JOLAYEMI  JOSHUA  FERANMI', 'CIIKY/2018/0044', '', 'CIIKY/2018/0044', '', '', '2018', 'CISM', '', ''),
(686, 'OTEHERI  ANDY', 'CIIKY/2018/0045', '', 'CIIKY/2018/0045', '', '', '2018', 'CISM', '', ''),
(687, 'HAZIEL  THOMAS', 'CIIKY/2018/0046', '', 'CIIKY/2018/0046', '09030777189,', '', '2018', 'CISM', '', ''),
(688, 'AKINJIDE KINGSLEY', 'CIIKY/2018/0047', '', 'CIIKY/2018/0047', '080553448084,', '', '2018', 'CISM', '', ''),
(689, 'OLAWOYE OLAYINKA', 'CIIKY/2018/0048', '', 'CIIKY/2018/0048', '', '', '2018', 'CISM', '', ''),
(690, 'BRIGHT  IBORO', 'CIIKY/2018/0049', '', 'CIIKY/2018/0049', '07063938084,', '', '2018', 'CISM', '', ''),
(691, 'IFARA? MATHEW??', 'CIIKY/2018/0050', '', 'CIIKY/2018/0050', '09034800572,', '', '2018', 'CISM', '', ''),
(692, 'AYOLAYAN OLADIDE OMOLOLA', 'CIIKY/2018/0051', '', 'CIIKY/2018/0051', '08128785520,', '', '2018', 'CISM', '', ''),
(693, 'OKAFOR PETER', 'CIIKY/2018/0052', '', 'CIIKY/2018/0052', '08021322337,', '', '2018', 'CISM', '', ''),
(694, 'IBISON FIDELIS', 'CIIKY/2018/0053', '', 'CIIKY/2018/0053', '08143132120,', '', '2018', 'CISM', '', ''),
(695, 'UZOAMAKA  UCHECHUKWU  PETERCLAVER', 'CIIKY/2018/0054', '', 'CIIKY/2018/0054', '08166035563,', '', '2018', 'CISM', '', ''),
(696, 'ABUBAKAR  ABDULMUMEEN    TUNDE', 'CIIKY/2018/0055', '', 'CIIKY/2018/0055', '08122641924,', '', '2018', 'CISM', '', ''),
(697, 'TERNA  FELIX', 'CIIKY/2018/0056', '', 'CIIKY/2018/0056', '07011599362,', '', '2018', 'CISM', '', ''),
(698, 'AYEMERE  SYLVESTER', 'CIIKY/2018/0057', '', 'CIIKY/2018/0057', '08115687312,  0', '', '2018', 'CISM', '', ''),
(699, 'AGHIDI  IREHOBHUDE  GIDEON', 'CIIKY/2018/0058', '', 'CIIKY/2018/0058', '08032056523,', '', '2018', 'CISM', '', ''),
(700, 'OLAMIDE AFOLAYAN', 'CIIKY/2018/0059', '', 'CIIKY/2018/0059', '08128785520,', '', '2018', 'CISM', '', ''),
(701, 'THOMAS NAZIEL GARUBA', 'CIIKY/2018/0060', '', 'CIIKY/2018/0060', '09030777189,', '', '2018', 'CISM', '', ''),
(702, 'QUZEEM  RINDWAN  ABIOLA', 'CIIKY/2018/0061', '', 'CIIKY/2018/0061', ' 09031945707,', '', '2018', 'CISM', '', ''),
(703, 'EZEKIEL JOSEPH ', 'CIIKY/2018/0062', '', 'CIIKY/2018/0062', '08134407809,', '', '2018', 'CISM', '', ''),
(704, '? BENZUM DALWOR GIDEON ', 'CIIKY/2018/0063', '', 'CIIKY/2018/0063', '07018034880,', '', '2018', 'CISM', '', ''),
(705, 'MILLER NATURE', 'CIIKY/2018/0064', '', 'CIIKY/2018/0064', '08034752762, 08', '', '2018', 'CISM', '', ''),
(706, 'SULEIMAN IBRAHIM', 'CIIKY/2018/0065', '', 'CIIKY/2018/0065', '07039834342,', '', '2018', 'CISM', '', ''),
(707, 'AKINJIJOLE    JOHN', 'CIIKY/2018/0066', '', 'CIIKY/2018/0066', '08179407117,', '', '2018', 'CISM', '', ''),
(708, 'ODOLAYE  SUNDAY SEUN', 'CIIKY/2018/0067', '', 'CIIKY/2018/0067', '07039264945,', '', '2018', 'CISM', '', ''),
(709, 'ONWUCHEKA SAMUEL TAMARA', 'CIIKY/2018/0068', '', 'CIIKY/2018/0068', '08132041166,', '', '2018', 'CISM', '', ''),
(710, 'JOSEPH EZEKIEL IKENNA', 'CIIKY/2018/0069', '', 'CIIKY/2018/0069', '08134407809,', '', '2018', 'CISM', '', ''),
(711, 'OFOGBA  GODWIN', 'CIIKY/2018/0070', '', 'CIIKY/2018/0070', '09098992628,', '', '2018', 'CISM', '', ''),
(712, 'OKAFORE  PETER  UZOMA', 'CIIKY/2018/0071', '', 'CIIKY/2018/0071', '08021322337,', '', '2018', 'CISM', '', ''),
(713, 'AWUENYI  EMEKA  LEONARD', 'CIIKY/2018/0072', '', 'CIIKY/2018/0072', '08107452621,', '', '2018', 'CISM', '', ''),
(714, 'EKOCHE  OCHE  ABEL', 'CIIKY/2018/0073', '', 'CIIKY/2018/0073', '08069145500,', '', '2018', 'CISM', '', ''),
(715, 'AMARI  GODWIN', 'CIIKY/2018/0074', '', 'CIIKY/2018/0074', '08062910199,', '', '2018', 'CISM', '', ''),
(716, 'PAUL  EMMANUEL', 'CIIKY/2018/0075', '', 'CIIKY/2018/0075', '07051821490,', '', '2018', 'CISM', '', ''),
(717, 'ORBAN  TIMOTHY', 'CIIKY/2018/0076', '', 'CIIKY/2018/0076', '07017819362,', '', '2018', 'CISM', '', ''),
(718, 'TITUS  SAMSON', 'CIIKY/2018/0077', '', 'CIIKY/2018/0077', '08028241428,', '', '2018', 'CISM', '', ''),
(719, 'DENDE GODFREY', 'CIIKY/2018/0078', '', 'CIIKY/2018/0078', '08038722309,', '', '2018', 'CISM', '', ''),
(720, 'UMEH  FRIDAY', 'CIIKY/2018/0079', '', 'CIIKY/2018/0079', '09097813336,', '', '2018', 'CISM', '', ''),
(721, 'ABUBAKAR  CHARITY  OYIZA', 'CIIKY/2018/0080', '', 'CIIKY/2018/0080', '08102669647,', '', '2018', 'CISM', '', ''),
(722, 'FALODUN MICHKAEL? TEMITOPE', 'CIIKY/2018/0081', '', 'CIIKY/2018/0081', '08105701868,', '', '2018', 'CISM', '', ''),
(723, 'SABO ECHEHOYI', 'CIIKY/2018/0082', '', 'CIIKY/2018/0082', ' 08025720998,', '', '2018', 'CISM', '', ''),
(724, 'ABERIE CYPRIAN', 'CIIKY/2018/0083', '', 'CIIKY/2018/0083', '08084757751,', '', '2018', 'CISM', '', ''),
(725, 'ANI CHINEDU DAVID', 'CIIKY/2018/0084', '', 'CIIKY/2018/0084', '08064600973,', '', '2018', 'CISM', '', ''),
(726, 'ISHOLA ABAYOMI ADEYEMI', 'CIIKY/2018/0085', '', 'CIIKY/2018/0085', '', '', '2018', 'CISM', '', ''),
(727, 'HUSSENI ABDULLAHI? ? ', 'CIIKY/2018/0086', '', 'CIIKY/2018/0086', '07032639127,', '', '2018', 'CISM', '', ''),
(728, 'SUNDAY ODIBA? ', 'CIIKY/2018/0087', '', 'CIIKY/2018/0087', '08163731746,', '', '2018', 'CISM', '', ''),
(729, 'OMANG AUSTINE EJA ? ?', 'CIIKY/2018/0088', '', 'CIIKY/2018/0088', '09064294416,', '', '2018', 'CISM', '', ''),
(730, 'FALODUN MICHKAEL? TEMITOPE ', 'CIIKY/2018/0089', '', 'CIIKY/2018/0089', '08105701868,', '', '2018', 'CISM', '', ''),
(731, 'SABO ECHEHOYI? ?', 'CIIKY/2018/0090', '', 'CIIKY/2018/0090', '08025720998,', '', '2018', 'CISM', '', ''),
(732, 'SAMUEL  SUNDAY', 'CIIKY/2018/0091', '', 'CIIKY/2018/0091', '08067757944,', '', '2018', 'CISM', '', ''),
(733, 'AKINJOLE  OLADIPUPO', 'CIIKY/2018/0092', '', 'CIIKY/2018/0092', '08063371868,', '', '2018', 'CISM', '', ''),
(734, 'EDET PAUL  NOBLE', 'CIIKY/2018/0093', '', 'CIIKY/2018/0093', '08170943393,', '', '2018', 'CISM', '', ''),
(735, 'UWEH  FRIDAY  LAZARU', 'CIIKY/2018/0094', '', 'CIIKY/2018/0094', '09097813336,', '', '2018', 'CISM', '', ''),
(736, 'AKALA  TEMITOPE  OLASUPO', 'CISGO/2018/0001', '', 'CISGO/2018/0001', '09035009338,', '', '2018', 'CISM', '', ''),
(737, 'OLAYO  SEGUN  AJIBADE', 'CISGO/2018/0002', '', 'CISGO/2018/0002', '08160820177,  0', '', '2018', 'CISM', '', ''),
(738, 'OLAYINKA  OLUSHOLA  WILSON  O.', 'CISGO/2018/0003', '', 'CISGO/2018/0003', '07085519915,', '', '2018', 'CISM', '', ''),
(739, 'IKECHUKWU  CHUKWUKA  DURU', 'CISGO/2018/0004', '', 'CISGO/2018/0004', '07061596697,  0', '', '2018', 'CISM', '', ''),
(740, 'OGIEMOUNO  PECULIAR  OLUWAGBEMIGA', 'CISGO/2018/0005', '', 'CISGO/2018/0005', '09087041438,', '', '2018', 'CISM', '', ''),
(741, 'ISEYEMI  OLABODE  ALFRED', 'CISGO/2018/0006', '', 'CISGO/2018/0006', '8068461428', '', '2018', 'CISM', '', ''),
(742, 'MOSHOOD  SAHEED  OLADIMEJI', 'CISGO/2018/0007', '', 'CISGO/2018/0007', '08038381852,', '', '2018', 'CISM', '', ''),
(743, 'BILAWU  MUHAMMED  OLUWADAMILOLA', 'CISGO/2018/0008', '', 'CISGO/2018/0008', '08176721952, 07', '', '2018', 'CISM', '', ''),
(744, 'EWUOLA  WASIU', 'CISGO/2018/0009', '', 'CISGO/2018/0009', '08033216932,', '', '2018', 'CISM', '', ''),
(745, 'EZEKIEL  SAMSON', 'CISGO/2018/0010', '', 'CISGO/2018/0010', '08024530886,', '', '2018', 'CISM', '', ''),
(746, 'ADEWUYI  ISIAQ  BABATUNDE', 'CISGO/2018/0011', '', 'CISGO/2018/0011', '08056714472,', '', '2018', 'CISM', '', ''),
(747, 'INI  OBONG SUNDAY  ', 'CISGO/2018/0012', '', 'CISGO/2018/0012', '08108721288,', '', '2018', 'CISM', '', ''),
(748, 'KUSA  NICHOLAS  LUBEM', 'CISGO/2018/0013', '', 'CISGO/2018/0013', '09053090460,', '', '2018', 'CISM', '', ''),
(749, 'OSSAI  ONYEMAH  MORISE', 'CISGO/2018/0014', '', 'CISGO/2018/0014', '08153595170,', '', '2018', 'CISM', '', ''),
(750, 'WISDOM  JULIUS', 'CISGO/2018/0015', '', 'CISGO/2018/0015', '08130293175,', '', '2018', 'CISM', '', ''),
(751, 'ADEGOKE  ADESOLA  ISIAKA', 'CISGO/2018/0016', '', 'CISGO/2018/0016', '08068316643, 08', '', '2018', 'CISM', '', ''),
(752, 'EBOIGBE  INNOCENT', 'CISGO/2018/0017', '', 'CISGO/2018/0017', '08036511489,', '', '2018', 'CISM', '', ''),
(753, 'IBRAHIM  IBRAHIM', 'CISGO/2018/0018', '', 'CISGO/2018/0018', '08157003626,', '', '2018', 'CISM', '', ''),
(754, 'NWACHUKWU  DEBORAH', 'CISGO/2018/0019', '', 'CISGO/2018/0019', '08137976915,', '', '2018', 'CISM', '', ''),
(755, 'OBI ESHI RICHARD SONDE', 'CISGO/2018/0020', '', 'CISGO/2018/0020', '8067108998', '', '2018', 'CISM', '', ''),
(756, 'AKINGBADE  EZEKIEL OLUWADAHUNSI', 'CISGO/2018/0021', '', 'CISGO/2018/0021', '9063409436', '', '2018', 'CISM', '', ''),
(757, 'APOCHI DAVID OGWUCHE', 'CISGO/2018/0022', '', 'CISGO/2018/0022', '8145781341', '', '2018', 'CISM', '', ''),
(758, 'SANUSI  AYUBA  ABIODUN', 'CISGO/2018/0023', '', 'CISGO/2018/0023', '08186062863,', '', '2018', 'CISM', '', ''),
(759, 'AUGUSTINE  EMMANUEL', 'CISGO/2018/0024', '', 'CISGO/2018/0024', '08132871685,', '', '2018', 'CISM', '', ''),
(760, 'AROWA  GABRIEL  OLALEKAN', 'CISGO/2018/0025', '', 'CISGO/2018/0025', '08052774204,', '', '2018', 'CISM', '', ''),
(761, 'AKINPELU  HAKEEM  ALADE', 'CISGO/2018/0026', '', 'CISGO/2018/0026', '08026226895,', '', '2018', 'CISM', '', ''),
(762, 'MKO  MONDAY', 'CISGO/2018/0027', '', 'CISGO/2018/0027', '09060449466,', '', '2018', 'CISM', '', ''),
(763, 'OKORO WILLIAMS SILAS', 'CISGO/2018/0028', '', 'CISGO/2018/0028', '08035622103, 09', '', '2018', 'CISM', '', ''),
(764, 'EDU  OLUWATOSIN  LAWRENCE', 'CISGO/2018/0029', '', 'CISGO/2018/0029', '08039192151,', '', '2018', 'CISM', '', ''),
(765, 'AHMED  MELADIA', 'CISGO/2018/0030', '', 'CISGO/2018/0030', '08060012925, 09', '', '2018', 'CISM', '', ''),
(766, 'KALU  MIRACLE  CHINONSO', 'CISGO/2018/0031', '', 'CISGO/2018/0031', '08080536995,', '', '2018', 'CISM', '', ''),
(767, 'AMOS-NNANNA AGWARA  ISRAEL', 'CISGO/2018/0032', '', 'CISGO/2018/0032', '07032440257,', '', '2018', 'CISM', '', ''),
(768, 'SANNI  SAMUEL', 'CISGO/2018/0033', '', 'CISGO/2018/0033', '08021347643,', '', '2018', 'CISM', '', ''),
(769, 'ODU  PASCHAL  ABANG', 'CISGO/2018/0034', '', 'CISGO/2018/0034', '08082412465,', '', '2018', 'CISM', '', ''),
(770, 'AROGUNDADE  BABAJIDE', 'CISGO/2018/0035', '', 'CISGO/2018/0035', '09082848302,', '', '2018', 'CISM', '', ''),
(771, 'OLOPADE  OLUFEMI    PETER', 'CISGO/2018/0036', '', 'CISGO/2018/0036', '08086321925,', '', '2018', 'CISM', '', ''),
(772, 'NWOKENTA   OSONDU', 'CISGO/2018/0037', '', 'CISGO/2018/0037', '08167719356,', '', '2018', 'CISM', '', ''),
(773, 'NWANETO  UZOMA  ANTHONY', 'CISGO/2018/0038', '', 'CISGO/2018/0038', '08165319688,', '', '2018', 'CISM', '', ''),
(774, 'AGAN  SAMUEL  SEGBAWAN', 'CISGO/2018/0039', '', 'CISGO/2018/0039', '07036222605, 09', '', '2018', 'CISM', '', ''),
(775, 'AJAYI  OSATO  JEPUTHAH', 'CISGO/2018/0040', '', 'CISGO/2018/0040', '09035970254,', '', '2018', 'CISM', '', ''),
(776, 'SULEIMAN  KAWO  IBRAHIM', 'CISGO/2018/0041', '', 'CISGO/2018/0041', '08167297403,', '', '2018', 'CISM', '', ''),
(777, 'EIKHUOMOGBE AUSTIN OMOKHODION', 'CIBDN/2018/0001', '', 'CIBDN/2018/0001', '08030687747,', '', '2018', 'CISM', '', ''),
(778, 'EUGENE JOSEPH LIPEHUNIM', 'CIBDN/2018/0002', '', 'CIBDN/2018/0002', '07061354699, 08', '', '2018', 'CISM', '', ''),
(779, 'OLOCHE ADEYI JOHN', 'CIBDN/2018/0003', '', 'CIBDN/2018/0003', '07031951278,', '', '2018', 'CISM', '', ''),
(780, 'ADEJOH SIMON ', 'CIBDN/2018/0004', '', 'CIBDN/2018/0004', '08071530379,', '', '2018', 'CISM', '', ''),
(781, 'AKINTAYO WASIU ADEWALE', 'CIBDN/2018/0005', '', 'CIBDN/2018/0005', '08139607943,', '', '2018', 'CISM', '', ''),
(782, 'ADEAGA EMMANUEL OLUWASEYI', 'CIBDN/2018/0006', '', 'CIBDN/2018/0006', '08131124205, 08', '', '2018', 'CISM', '', ''),
(783, 'IYENGE TERNEGE JOSEPH', 'CIBDN/2018/0007', '', 'CIBDN/2018/0007', '08160207751,', '', '2018', 'CISM', '', ''),
(784, 'TOGUNDE SUNDAY OLUKUNLE', 'CIBDN/2018/0008', '', 'CIBDN/2018/0008', '08063777872, 08', '', '2018', 'CISM', '', ''),
(785, 'ADEBAYO OLUTOYIN OLUTOSIN', 'CIBDN/2018/0009', '', 'CIBDN/2018/0009', '08066708094,', '', '2018', 'CISM', '', ''),
(786, 'BADEWA OLUWASEGUN ADEBOGUN', 'CIBDN/2018/0010', '', 'CIBDN/2018/0010', '08058856021,', '', '2018', 'CISM', '', ''),
(787, 'AKINYEGBE ADEKUNLE SURAJUDEEN', 'CIBDN/2018/0011', '', 'CIBDN/2018/0011', '08034493322,', '', '2018', 'CISM', '', ''),
(788, 'EJAIDU MOSES EJAIDU', 'CIBDN/2018/0012', '', 'CIBDN/2018/0012', '08068404380,', '', '2018', 'CISM', '', ''),
(789, 'OKPAH ANTHONY STEPHEN', 'CIBDN/2018/0013', '', 'CIBDN/2018/0013', '08130466786, 08', '', '2018', 'CISM', '', ''),
(790, 'ODOTUUANA EMMANUEL MORRIS', 'CIBDN/2018/0014', '', 'CIBDN/2018/0014', '08030725065,', '', '2018', 'CISM', '', ''),
(791, 'ADEKOYA DAVID ABIDEMI', 'CIBDN/2018/0015', '', 'CIBDN/2018/0015', '08066761883,', '', '2018', 'CISM', '', ''),
(792, 'ABASS OLAJIDE ADEWALE', 'CIBDN/2018/0016', '', 'CIBDN/2018/0016', '07062421139, 07', '', '2018', 'CISM', '', ''),
(793, 'TOMORI ADEOLA IBIDUN', 'CIBDN/2018/0017', '', 'CIBDN/2018/0017', '08169445421,', '', '2018', 'CISM', '', ''),
(794, 'NGOZI QUEEN ONYINYE', 'CIBDN/2018/0018', '', 'CIBDN/2018/0018', '07065565263,', '', '2018', 'CISM', '', ''),
(795, 'ISAH BALIQEES ADESHOLA', 'CIBDN/2018/0019', '', 'CIBDN/2018/0019', '07032268743,', '', '2018', 'CISM', '', ''),
(796, 'YAKUBU ODODO ILIASU', 'CIBDN/2018/0020', '', 'CIBDN/2018/0020', '08079017858,', '', '2018', 'CISM', '', ''),
(797, 'AROWOSOLA TAOHEED', 'CIBDN/2018/0021', '', 'CIBDN/2018/0021', '08142421845,', '', '2018', 'CISM', '', ''),
(798, 'OLAJUMOKE RICHARD OLUJIDE', 'CIBDN/2018/0022', '', 'CIBDN/2018/0022', '08027402613,', '', '2018', 'CISM', '', ''),
(799, 'CROWNRICH JOY MARVELOUS', 'CIBDN/2018/0023', '', 'CIBDN/2018/0023', '08114671106,', '', '2018', 'CISM', '', ''),
(800, 'AJAGBE BAMIDELE TAOFEEK', 'CIBDN/2018/0024', '', 'CIBDN/2018/0024', '08104147828,', '', '2018', 'CISM', '', ''),
(801, 'OKOH IFEANYI EMMANUEL', 'CIBDN/2018/0025', '', 'CIBDN/2018/0025', '08120663906,', '', '2018', 'CISM', '', ''),
(802, 'IFEJU SEUN OLANREWAJU', 'CIBDN/2018/0026', '', 'CIBDN/2018/0026', '08132327452,', '', '2018', 'CISM', '', ''),
(803, 'AJAM SHAIBU SHAIBU', 'CIBDN/2018/0027', '', 'CIBDN/2018/0027', '09081719060,', '', '2018', 'CISM', '', ''),
(804, 'ADETUNJI OLUMIDE EMMANUEL', 'CIBDN/2018/0028', '', 'CIBDN/2018/0028', '08165373445,', '', '2018', 'CISM', '', ''),
(805, 'ADAMU PETER', 'CIBDN/2018/0029', '', 'CIBDN/2018/0029', '08121655224,', '', '2018', 'CISM', '', ''),
(806, 'OLAIYA GBENGA AYODELE', 'CIBDN/2018/0030', '', 'CIBDN/2018/0030', '07030128991,', '', '2018', 'CISM', '', ''),
(807, 'AKINLADE SAMSON DAMILARE', 'CIBDN/2018/0031', '', 'CIBDN/2018/0031', '08148685352,', '', '2018', 'CISM', '', ''),
(808, 'DAVID  FRIDAY', 'CIPH/2018/0001', '', 'CIPH/2018/0001', '', '', '2018', 'CISM', '', ''),
(809, 'KADUBABARI WAAYOR', 'CIPH/2018/0002', '', 'CIPH/2018/0002', '', '', '2018', 'CISM', '', ''),
(810, 'EKWU  ABRAHAM', 'CIPH/2018/0003', '', 'CIPH/2018/0003', '', '', '2018', 'CISM', '', ''),
(811, 'PETER  ATAKORU', 'CIPH/2018/0004', '', 'CIPH/2018/0004', '', '', '2018', 'CISM', '', ''),
(812, 'OKPARA  IBITAMUNO', 'CIPH/2018/0005', '', 'CIPH/2018/0005', '', '', '2018', 'CISM', '', ''),
(813, 'CHIOMA  EKELEME', 'CIPH/2018/0006', '', 'CIPH/2018/0006', '', '', '2018', 'CISM', '', ''),
(814, 'FIDELIA  OBASI', 'CIPH/2018/0007', '', 'CIPH/2018/0007', '', '', '2018', 'CISM', '', ''),
(815, 'SYLVANUS  MOFFAT', 'CIPH/2018/0008', '', 'CIPH/2018/0008', '', '', '2018', 'CISM', '', ''),
(816, 'ENAJEROH  PAUL', 'CIPH/2018/0009', '', 'CIPH/2018/0009', '', '', '', '', '', ''),
(817, 'BROWN  CHIDI', 'CIPH/2018/0010', 'DISM', 'CIPH/2018/0010', '', '', '', '', '', ''),
(818, 'KATTEY  WALTER', 'CIPH/2018/0011', '', 'CIPH/2018/0011', '', '', '', '', '', ''),
(819, 'AUDU  AUSTINE', 'CIPH/2018/0012', '', 'CIPH/2018/0012', '', '', '2013', 'DISM', '', ''),
(820, 'MFONOBONG  JOB', 'CIPH/2018/0013', '', 'CIPH/2018/0013', '', '', '2013', 'DISM', '', ''),
(821, 'UKPONO  JACOB', 'CIPH/2018/0014', '', 'CIPH/2018/0014', '', '', '2013', 'DISM', '', ''),
(822, 'NKOBAA  RICHARD JAMES', 'CIPH/2018/0015', '', 'CIPH/2018/0015', '', '', '2013', 'DISM', '', ''),
(823, 'DANIEL  ADESHOKAN', 'CIPH/2018/0016', '', 'CIPH/2018/0016', '', '', '2013', 'DISM', '', ''),
(824, 'MATTHEW PETER ONOME', 'CIPH/2018/0017', '', 'CIPH/2018/0017', '09094270188,', '', '2013', 'DISM', '', ''),
(825, 'ODOH  CYPRIAN  IKECHUKWU', 'CIPH/2018/0018', '', 'CIPH/2018/0018', '08033269839,', '', '2013', 'DISM', '', ''),
(826, 'WILLIAMS  IFEANYI  HENRY', 'CIPH/2018/0019', '', 'CIPH/2018/0019', '07033709744,', '', '2013', 'DISM', '', ''),
(827, 'ISI  EMMANUEL', 'CIPH/2018/0020', '', 'CIPH/2018/0020', '09066610299,', '', '2013', 'DISM', '', ''),
(828, 'ISAAC  CHINOYEREM  UZOAGA', 'CIPH/2018/0021', '', 'CIPH/2018/0021', '09091974675,', '', '2013', 'DISM', '', ''),
(829, 'IDIO  ETIMBUK  UKPONG', 'CIPH/2018/0022', '', 'CIPH/2018/0022', '07035174300,', '', '2013', 'DISM', '', ''),
(830, 'AUDU  AUGUSTINE  THOMAS', 'CIPH/2018/0023', '', 'CIPH/2018/0023', '09084371139,', '', '2013', 'DISM', '', ''),
(831, 'PROMISE  FRANCIS', 'CIPH/2018/0024', '', 'CIPH/2018/0024', '', '', '2013', 'DISM', '', ''),
(832, 'UMORO  ISAAC', 'CIPH/2018/0025', '', 'CIPH/2018/0025', '', '', '2013', 'DISM', '', ''),
(833, 'OKALA  UCHECHUKWU  UDUMA', 'CIPH/2018/0026', '', 'CIPH/2018/0026', '08068834377,', '', '2013', 'DISM', '', ''),
(834, 'Eteng Iwara', 'CIABJ/2018/0001', '', 'CIABJ/2018/0001', '07052997248,', '', '2013', 'DISM', '', ''),
(835, 'Enock Sunama Samuel', 'CIABJ/2018/0002', '', 'CIABJ/2018/0002', '08069420022,', '', '2013', 'DISM', '', ''),
(836, 'Atawodi Helen Inikpi', 'CIABJ/2018/0003', '', 'CIABJ/2018/0003', '08135521773, 08', '', '2013', 'DISM', '', ''),
(837, 'Akpa Emmanuel Omede', 'CIABJ/2018/0004', '', 'CIABJ/2018/0004', '08101083577,', '', '2013', 'DISM', '', ''),
(838, 'Ojomah Monday', 'CIABJ/2018/0005', '', 'CIABJ/2018/0005', '07030650491,', '', '2013', 'DISM', '', ''),
(839, 'Yusuf Stephen', 'CIABJ/2018/0006', '', 'CIABJ/2018/0006', '08079750312,', '', '2013', 'DISM', '', ''),
(840, 'John Sunday', 'CIABJ/2018/0007', '', 'CIABJ/2018/0007', '08130588698,', '', '2013', 'DISM', '', ''),
(841, 'Damisa Yahaya Jimoh', 'CIABJ/2018/0008', '', 'CIABJ/2018/0008', '07055319881,', '', '2013', 'DISM', '', ''),
(842, 'Jesulowo Akinwale Zaccheas', 'CIABJ/2018/0009', '', 'CIABJ/2018/0009', '07066924862,', '', '2013', 'DISM', '', ''),
(843, 'Oduji Prince Chibuike', 'CIABJ/2018/0010', '', 'CIABJ/2018/0010', '08037338229,', '', '2013', 'DISM', '', ''),
(844, 'Ogbodo Sunday Chima', 'CIABJ/2018/0011', '', 'CIABJ/2018/0011', '07066701631,', '', '2013', 'DISM', '', ''),
(845, 'Obeta Paulinus Arinzechukwu', 'CIABJ/2018/0012', '', 'CIABJ/2018/0012', '08036012752,', '', '2013', 'DISM', '', ''),
(846, 'Iangba Terfa Mike', 'CIABJ/2018/0013', '', 'CIABJ/2018/0013', '08135471716,', '', '2013', 'DISM', '', ''),
(847, 'Tyonongu Stephen', 'CIABJ/2018/0014', '', 'CIABJ/2018/0014', '08179440010,', '', '2013', 'DISM', '', ''),
(848, 'Alhassan Alilu Ogwumale', 'CIABJ/2018/0015', '', 'CIABJ/2018/0015', '07033740878,', '', '2013', 'DISM', '', ''),
(849, 'Agbidi Jonathan', 'CIABJ/2018/0016', '', 'CIABJ/2018/0016', '08067834559,', '', '2013', 'DISM', '', ''),
(850, 'Johnson Angela', 'CIABJ/2018/0017', '', 'CIABJ/2018/0017', '07062334049,', '', '2013', 'DISM', '', ''),
(851, 'Ukah Agada Peter', 'CIABJ/2018/0018', '', 'CIABJ/2018/0018', '09051521505,', '', '2013', 'DISM', '', ''),
(852, 'Gbee Orseer Moses', 'CIABJ/2018/0019', '', 'CIABJ/2018/0019', '08185078652, 09', '', '2013', 'DISM', '', ''),
(853, 'Ikhane Odia Victor', 'CIABJ/2018/0020', '', 'CIABJ/2018/0020', '07062414714,', '', '2013', 'DISM', '', ''),
(854, 'Akule Abraham Chia', 'CIABJ/2018/0021', '', 'CIABJ/2018/0021', '08095343526,', '', '2013', 'DISM', '', ''),
(855, 'Onaji Charles Ameh', 'CIABJ/2018/0022', '', 'CIABJ/2018/0022', '08069537622,', '', '2013', 'DISM', '', ''),
(856, '', '', '', '', '', '', '2013', 'DISM', '', ''),
(857, '', '', '', '', '', '', '2013', 'DISM', '', ''),
(858, '', '', '', '', '', '', '2013', 'DISM', '', ''),
(859, 'OKOGWU   T.   FRANCIS', 'DIPG/2013/0001', '', 'DIPG/2013/0001', '080322344I9,', '', '2013', 'DISM', '', ''),
(860, 'ALADELOYE     ADEBANKE', 'DIPG/2013/0002', '', 'DIPG/2013/0002', '08066950582,', '', '2013', 'DISM', '', ''),
(861, 'ISMAILA     S.     OLUWATOSIN', 'DIPG/2013/0003', '', 'DIPG/2013/0003', '08I60790662,', '', '2015', 'DISM', '', ''),
(862, 'AIWANSOBA    LUCKY', 'DIPG/2013/0004', '', 'DIPG/2013/0004', '08060341272,', '', '2015', 'DISM', '', ''),
(863, 'ADEBAYO   AYOKUNLE   JOSHUA', 'DIPG/2013/0005', '', 'DIPG/2013/0005', '08068I74505,', '', '2015', 'DISM', '', ''),
(864, 'ENIOLORUNDA SUNDAY  JAMES', 'DIPG/2013/0006', '', 'DIPG/2013/0006', '070650582I7,  0', '', '2015', 'DISM', '', ''),
(865, 'OCHIGBO   EMMANUEL   OGBOLE', 'DIPG/2013/0007', '', 'DIPG/2013/0007', '08I37483503,', '', '2015', 'DISM', '', ''),
(866, 'FASHOLA   AKINTUNDE   IDOWU', 'DIPG/2013/0008', '', 'DIPG/2013/0008', '08037767676,', '', '2015', 'DISM', '', ''),
(867, 'NMARKWE    ANDREW', 'DIPG/2013/0009', '', 'DIPG/2013/0009', '0807724I792,', '', '2015', 'DISM', '', ''),
(868, 'ONYE      JOHN', 'DIPG/2013/0010', '', 'DIPG/2013/0010', '080356269I8, 08', '', '2015', 'DISM', '', ''),
(869, 'OGUNMADE  ADEMOLA', 'DIPG/2013/0011', '', 'DIPG/2013/0011', '08034I86636, 08', '', '2015', 'DISM', '', ''),
(870, 'ABAYOMI   ADISA', 'DIPG/2013/0012', '', 'DIPG/2013/0012', '08024466239,', '', '2015', 'DISM', '', ''),
(871, 'ADEOTI   MATTHEW   O.', 'DIPG/2013/0013', '', 'DIPG/2013/0013', '08094535447,', '', '2015', 'DISM', '', ''),
(872, 'JIMOH    RAHEEM   ', 'DIPG/2013/0014', '', 'DIPG/2013/0014', '08089700644,', '', '2015', 'DISM', '', ''),
(873, 'ANIM   A.   GODWIN', 'DIPG/2013/0015', '', 'DIPG/2013/0015', '08065433445, 08', '', '2015', 'DISM', '', ''),
(874, 'NWABUONWO     FELIX   I.N', 'DIPG/2013/0016', '', 'DIPG/2013/0016', '0803576I453,', '', '2015', 'DISM', '', ''),
(875, 'ONYUNG    EFFIONG    O.', 'DIPG/2013/0017', '', 'DIPG/2013/0017', '08030788373,', '', '2015', 'DISM', '', ''),
(876, 'AZUBUINE    GODFREY    ', 'DIPG/2013/0018', '', 'DIPG/2013/0018', '08036999820,', '', '2015', 'DISM', '', ''),
(877, 'EKWERE   GIDEON   ', 'DIPG/2013/0019', '', 'DIPG/2013/0019', '08037733339,', '', '2015', 'DISM', '', ''),
(878, 'AKINLEYE    MUYIWA   B.', 'DIPG/2013/0020', '', 'DIPG/2013/0020', '080334344I4,', '', '2015', 'DISM', '', ''),
(879, 'IHEJIETO   CAJETHAN', 'DIPG/2013/0021', '', 'DIPG/2013/0021', '08067023035,', '', '2015', 'DISM', '', ''),
(880, 'KPADUWA    JOY      NKEM', 'DIPG/2013/0022', '', 'DIPG/2013/0022', '07039408299,', '', '2015', 'DISM', '', ''),
(881, 'ALAGU  DOMINION    UCHE', 'DIPG/2013/0023', '', 'DIPG/2013/0023', '08060030674,', '', '2015', 'DISM', '', ''),
(882, 'MOHAMMED    HASSAN   IBRAHIM', 'DIPG/2013/0024', '', 'DIPG/2013/0024', '08035393668,', '', '2015', 'DISM', '', ''),
(883, 'NDU    CHUKWUEBUKA    FABIAN', 'DIPG/2013/0025', '', 'DIPG/2013/0025', '07062887I88,', '', '2015', 'DISM', '', ''),
(884, 'AJITONI    SUNDAY', 'DIPG/2013/0026', '', 'DIPG/2013/0026', '08I80I63723,', '', '2015', 'DISM', '', ''),
(885, 'GANIYU    RASAK', 'DIPG/2013/0027', '', 'DIPG/2013/0027', '08027720360,', '', '2015', 'DISM', '', ''),
(886, 'ODEMILIN    AUGUSTINE    IFADA', 'DIPG/2013/0028', '', 'DIPG/2013/0028', '0704II9I427,', '', '2015', 'DISM', '', ''),
(887, 'ELISHA    UKWANDU   ', 'DIPG/2013/0029', '', 'DIPG/2013/0029', '08060I97248,', '', '2015', 'DISM', '', ''),
(888, 'OYEDIRAN     OLUWATOYIN', 'DIPG/2013/0030', '', 'DIPG/2013/0030', '08066772002,', '', '2015', 'DISM', '', ''),
(889, 'MADUEGBUNAM     ANTHONIA ', 'DIPG/2013/0031', '', 'DIPG/2013/0031', '07038895754,', '', '2015', 'DISM', '', ''),
(890, 'ADEBAYO    ADEYEMI     O.', 'DIPG/2013/0032', '', 'DIPG/2013/0032', '08032955124, 08', '', '2015', 'DISM', '', ''),
(891, 'SODIYA   OLAYINKA   MAJEKODUNMI', 'DIPG/2013/0033', '', 'DIPG/2013/0033', '0805538536I,', '', '2015', 'DISM', '', '');
INSERT INTO `alumni` (`id`, `name`, `matric`, `email`, `password`, `phone`, `sex`, `class_year`, `course`, `passport`, `date`) VALUES
(892, 'TOLULOPE    OLAYINKA', 'DIPG/2013/0034', '', 'DIPG/2013/0034', '0808088279I,', '', '2015', 'DISM', '', ''),
(893, 'AGBEGBE      SUNDAY', 'DIPG/2013/0035', '', 'DIPG/2013/0035', '08I3624595I,', '', '2015', 'DISM', '', ''),
(894, 'AGBAJE     RAZAQ    ADESHINA', 'DIPG/2013/0036', '', 'DIPG/2013/0036', '080872I0500,', '', '2015', 'DISM', '', ''),
(895, 'SOKUNBI    JAMIU', 'DIPG/2013/0037', '', 'DIPG/2013/0037', '08035364285,', '', '2015', 'DISM', '', ''),
(896, 'CHIMEH   SARAH', 'DIPG/2013/0038', '', 'DIPG/2013/0038', '08023204679,', '', '2015', 'DISM', '', ''),
(897, 'DANIEL  ONWUKA', 'DIPG/2013/0039', '', 'DIPG/2013/0039', '07030687485,', '', '2015', 'DISM', '', ''),
(898, 'ADENOLA    HAKEEM', 'DIPG/2013/0040', '', 'DIPG/2013/0040', '08039095832,', '', '2015', 'DISM', '', ''),
(899, 'ABONYI    CHUKWUDI', 'DIPG/2013/0041', '', 'DIPG/2013/0041', '08070757947,', '', '2015', 'DISM', '', ''),
(900, 'AJAGUNNA   IDOWU   BABATUNDE', 'DIPG/2013/0042', '', 'DIPG/2013/0042', '080339I3443,', '', '2015', 'DISM', '', ''),
(901, 'ABDULLAHI HARUNA ISHOLA', 'DIPG/2015/0001', '', 'DIPG/2015/0001', '07037071845,', '', '2015', 'DISM', '', ''),
(902, 'ABONYI CHUKWUDI', 'DIPG/2015/0002', '', 'DIPG/2015/0002', '08067326002,', '', '2015', 'DISM', '', ''),
(903, 'ACHIBORN CASMIR CHUKWUJEKWU', 'DIPG/2015/0003', '', 'DIPG/2015/0003', '08138368343,', '', '2015', 'DISM', '', ''),
(904, 'ADESOYIN SAMUEL OLUWAFEMI', 'DIPG/2015/0004', '', 'DIPG/2015/0004', '08060546979,', '', '2015', 'DISM', '', ''),
(905, 'AGHO EDWIN AIFUWA', 'DIPG/2015/0005', '', 'DIPG/2015/0005', '07063069784,', '', '2015', 'DISM', '', ''),
(906, 'AKINPELU MARIAM', 'DIPG/2015/0006', '', 'DIPG/2015/0006', '08033528075,', '', '2015', 'DISM', '', ''),
(907, 'AKPAN  JEREMIAH ', 'DIPG/2015/0007', '', 'DIPG/2015/0007', '08067743382,', '', '2015', 'DISM', '', ''),
(908, 'AKWUDINMA SOLOMON CHUKWUEKWU', 'DIPG/2015/0008', '', 'DIPG/2015/0008', '08056573894,', '', '2015', 'DISM', '', ''),
(909, 'ALABI BABATUNDE', 'DIPG/2015/0009', '', 'DIPG/2015/0009', '08074333348,', '', '2015', 'DISM', '', ''),
(910, 'ANOSIKE CHIBUZO', 'DIPG/2015/0010', '', 'DIPG/2015/0010', '07033737211,', '', '2015', 'DISM', '', ''),
(911, 'ANYANWU IFEANYI AUSTIN', 'DIPG/2015/0011', '', 'DIPG/2015/0011', '08035561362,', '', '2015', 'DISM', '', ''),
(912, 'APOCHI ENENCHE SAMSON', 'DIPG/2015/0012', '', 'DIPG/2015/0012', '08051316582,', '', '2015', 'DISM', '', ''),
(913, 'ASHIRU ABAYOMI OLASUKANMI', 'DIPG/2015/0013', '', 'DIPG/2015/0013', '08026626369,', '', '2015', 'DISM', '', ''),
(914, 'ATOBAJAIYE ADEOLA', 'DIPG/2015/0014', '', 'DIPG/2015/0014', '08063280877,', '', '2015', 'DISM', '', ''),
(915, 'AYILARA SAMUEL ADELEKE', 'DIPG/2015/0015', '', 'DIPG/2015/0015', '08035181243, ', '', '2015', 'DISM', '', ''),
(916, 'BALOGUN SAMUEL', 'DIPG/2015/0016', '', 'DIPG/2015/0016', '07014945955,', '', '2015', 'DISM', '', ''),
(917, 'BASSEY ENYETING', 'DIPG/2015/0017', '', 'DIPG/2015/0017', '08038103349,', '', '2015', 'DISM', '', ''),
(918, 'BELLOW ABIOLA MARUF', 'DIPG/2015/0018', '', 'DIPG/2015/0018', '07036264305,', '', '2015', 'DISM', '', ''),
(919, 'DIBIA CORNELIUS CHIMA', 'DIPG/2015/0019', '', 'DIPG/2015/0019', '08037004150,', '', '2015', 'DISM', '', ''),
(920, 'EBHOJIE ARRON DANIEL', 'DIPG/2015/0020', '', 'DIPG/2015/0020', '08067583237,', '', '2015', 'DISM', '', ''),
(921, 'ENUKA EMMANUEL CHUKWUKELUO', 'DIPG/2015/0021', '', 'DIPG/2015/0021', '08160002464,', '', '2015', 'DISM', '', ''),
(922, 'ENWEREM KELECHI FAITH', 'DIPG/2015/0022', '', 'DIPG/2015/0022', '08166949315,', '', '2016', 'DISM', '', ''),
(923, 'EPHRAIM INEGBU CHUKWUNENYE', 'DIPG/2015/0023', '', 'DIPG/2015/0023', '08037825583,', '', '2016', 'DISM', '', ''),
(924, 'EZEME MALACHY CHINEDU', 'DIPG/2015/0024', '', 'DIPG/2015/0024', '08036897415,', '', '2016', 'DISM', '', ''),
(925, 'GABRIEL CHARLSE KOLAWOLE', 'DIPG/2015/0025', '', 'DIPG/2015/0025', '08062793112,', '', '2016', 'DISM', '', ''),
(926, 'GBADAMOSI PRAISE VICTORIA', 'DIPG/2015/0026', '', 'DIPG/2015/0026', '08161627819,', '', '2016', 'DISM', '', ''),
(927, 'HASSAN ABDULWAHAB', 'DIPG/2015/0027', '', 'DIPG/2015/0027', '08138852109,', '', '2016', 'DISM', '', ''),
(928, 'HITTLER GODSPOWER', 'DIPG/2015/0028', '', 'DIPG/2015/0028', '08134286013,', '', '2016', 'DISM', '', ''),
(929, 'IKOKO MATHEW A', 'DIPG/2015/0029', '', 'DIPG/2015/0029', '080908252629,', '', '2016', 'DISM', '', ''),
(930, 'ILESANMI FEMI ISAAC', 'DIPG/2015/0030', '', 'DIPG/2015/0030', '08036005219,', '', '2016', 'DISM', '', ''),
(931, 'IWUOHA  JOSHUA EMMANUEL', 'DIPG/2015/0031', '', 'DIPG/2015/0031', '08032641118,', '', '2016', 'DISM', '', ''),
(932, 'JESSA FELIX OSABENYI', 'DIPG/2015/0032', '', 'DIPG/2015/0032', '08165121144,', '', '2016', 'DISM', '', ''),
(933, 'LUKA HABILA KUCHOHFE', 'DIPG/2015/0033', '', 'DIPG/2015/0033', '08025474567,', '', '2016', 'DISM', '', ''),
(934, 'MEDAN NOEL NAS', 'DIPG/2015/0034', '', 'DIPG/2015/0034', '08101873348,', '', '2016', 'DISM', '', ''),
(935, 'MOHAMMED USMAN AHMED', 'DIPG/2015/0035', '', 'DIPG/2015/0035', '08108583932,', '', '2016', 'DISM', '', ''),
(936, 'MUFUTAU KAZEEM ADEDAYO', 'DIPG/2015/0036', '', 'DIPG/2015/0036', '09036962679,', '', '2016', 'DISM', '', ''),
(937, 'MUSA DALANDI JOHN', 'DIPG/2015/0037', '', 'DIPG/2015/0037', '08055829655,', '', '2016', 'DISM', '', ''),
(938, 'NNAEKEZIE STANLEY CHIDI', 'DIPG/2015/0038', '', 'DIPG/2015/0038', '07036383489,', '', '2016', 'DISM', '', ''),
(939, 'NWOGBO CHRISTIAN C', 'DIPG/2015/0039', '', 'DIPG/2015/0039', '08034266911,', '', '2016', 'DISM', '', ''),
(940, 'NWOKEJI GODSON', 'DIPG/2015/0040', '', 'DIPG/2015/0040', '08068881817,', '', '2016', 'DISM', '', ''),
(941, 'OBEYA EMMANUEL AGBO', 'DIPG/2015/0041', '', 'DIPG/2015/0041', '08168162762,', '', '2016', 'DISM', '', ''),
(942, 'ODERINU OLALEKAN OLUSOGA', 'DIPG/2015/0042', '', 'DIPG/2015/0042', '08076432343,', '', '2016', 'DISM', '', ''),
(943, 'ODUFUWA OLUWAFEMI J', 'DIPG/2015/0043', '', 'DIPG/2015/0043', '07033788240,', '', '2016', 'DISM', '', ''),
(944, 'OFIELU PETER CHIBUEZE', 'DIPG/2015/0044', '', 'DIPG/2015/0044', '08067755081,', '', '2016', 'DISM', '', ''),
(945, 'OGUAMALAM  STANLEY  UCHE', 'DIPG/2015/0045', '', 'DIPG/2015/0045', '08035218466,', '', '2016', 'DISM', '', ''),
(946, 'OKAMBGA IKECHUKWU CHRISTOPHER', 'DIPG/2015/0046', '', 'DIPG/2015/0046', '08064036205,', '', '2016', 'DISM', '', ''),
(947, 'OKERE STANLEY UGONNA', 'DIPG/2015/0047', '', 'DIPG/2015/0047', '08062150015,', '', '2016', 'DISM', '', ''),
(948, 'OKPARA EDITH O.', 'DIPG/2015/0048', '', 'DIPG/2015/0048', '08037250479,', '', '2016', 'DISM', '', ''),
(949, 'OKOLI VITUS', 'DIPG/2015/0049', '', 'DIPG/2015/0049', '08127127469,', '', '2016', 'DISM', '', ''),
(950, 'OLALUDE ABAYOMI', 'DIPG/2015/0050', '', 'DIPG/2015/0050', '07030411932,', '', '2016', 'DISM', '', ''),
(951, 'ONI AYOBAMI EMMANUEL', 'DIPG/2015/0051', '', 'DIPG/2015/0051', '', '', '2016', 'DISM', '', ''),
(952, 'ORJI  OBINNA ', 'DIPG/2015/0052', '', 'DIPG/2015/0052', '08020549191,', '', '2016', 'DISM', '', ''),
(953, 'OSAZUWA CHARLSE ONUWA', 'DIPG/2015/0053', '', 'DIPG/2015/0053', '08065701121,', '', '2016', 'DISM', '', ''),
(954, 'SAHEED LATEEF ADISA', 'DIPG/2015/0054', '', 'DIPG/2015/0054', '08056722083,', '', '2016', 'DISM', '', ''),
(955, 'SALAU OLALEKAN D', 'DIPG/2015/0055', '', 'DIPG/2015/0055', '08066690160,', '', '2016', 'DISM', '', ''),
(956, 'SALIU TIJANI ', 'DIPG/2015/0056', '', 'DIPG/2015/0056', '08023179033,', '', '2016', 'DISM', '', ''),
(957, 'SHONOLA OLUSEGUN S', 'DIPG/2015/0057', '', 'DIPG/2015/0057', '08139151089,', '', '2016', 'DISM', '', ''),
(958, 'SUMAILA ADOKE LAWAL ', 'DIPG/2015/0058', '', 'DIPG/2015/0058', '08143561960,', '', '2016', 'DISM', '', ''),
(959, 'UDOH STEPHEN EDET', 'DIPG/2015/0059', '', 'DIPG/2015/0059', '07038641010,080', '', '2016', 'DISM', '', ''),
(960, 'UMOH HENRY CLEMENT', 'DIPG/2015/0060', '', 'DIPG/2015/0060', '', '', '2016', 'DISM', '', ''),
(961, 'USINA IGNATIUS DESMOND', 'DIPG/2015/0061', '', 'DIPG/2015/0061', '07031582099,', '', '2016', 'DISM', '', ''),
(962, 'ABIOLA ADEBAYO OLAKUNLE', 'DIPG/2016/0001', '', 'DIPG/2016/0001', '', '', '2016', 'DISM', '', ''),
(963, 'ABUTU GOODNEWS GODFREY (IDOKO ADOGA JOSEPH)', 'DIPG/2016/0002', '', 'DIPG/2016/0002', '08037311612,', '', '2016', 'DISM', '', ''),
(964, 'ADEBEISI ADEBARE IBRAHIM', 'DIPG/2016/0003', '', 'DIPG/2016/0003', '08135401384,', '', '2016', 'DISM', '', ''),
(965, 'ADESOKAN TAOHEED', 'DIPG/2016/0004', '', 'DIPG/2016/0004', '07065331009,', '', '2016', 'DISM', '', ''),
(966, 'ADEWALE MISBAHUDEEN ADEBOWALE', 'DIPG/2016/0005', '', 'DIPG/2016/0005', '08028281647,', '', '2016', 'DISM', '', ''),
(967, 'AKHABUE 0. VICTOR', 'DIPG/2016/0006', '', 'DIPG/2016/0006', '08030964491,', '', '2016', 'DISM', '', ''),
(968, 'AKHUEMONKAN LUCKY', 'DIPG/2016/0007', '', 'DIPG/2016/0007', '08148471056,', '', '2016', 'DISM', '', ''),
(969, 'AMEH JOHN', 'DIPG/2016/0008', '', 'DIPG/2016/0008', '08068107847,', '', '2016', 'DISM', '', ''),
(970, 'AMEH OJONIMI FELIX', 'DIPG/2016/0009', '', 'DIPG/2016/0009', '07039023588,', '', '2016', 'DISM', '', ''),
(971, 'ANENE IFEANYI SAMUEL', 'DIPG/2016/0010', '', 'DIPG/2016/0010', '08130744228,', '', '2016', 'DISM', '', ''),
(972, 'ANOKAM CHINEDU VITALIS', 'DIPG/2016/0011', '', 'DIPG/2016/0011', '08056279755,', '', '2016', 'DISM', '', ''),
(973, 'AZUBUINE VINCENT EZECHI', 'DIPG/2016/0012', '', 'DIPG/2016/0012', '08022479735,', '', '2016', 'DISM', '', ''),
(974, 'BELLO AHMMED KOLAWOLE', 'DIPG/2016/0013', '', 'DIPG/2016/0013', '08062394522,', '', '2016', 'DISM', '', ''),
(975, 'EBEGBARE DANIEL', 'DIPG/2016/0014', '', 'DIPG/2016/0014', '08035047362,', '', '2016', 'DISM', '', ''),
(976, 'EBOWUSI CHIGOZIE EMMANUEL ', 'DIPG/2016/0015', '', 'DIPG/2016/0015', '08184235650,', '', '2016', 'DISM', '', ''),
(977, 'EDINOR SHEHU WADA', 'DIPG/2016/0016', '', 'DIPG/2016/0016', '08038613824,', '', '2016', 'DISM', '', ''),
(978, 'EMEKA  DANIEL', 'DIPG/2016/0017', '', 'DIPG/2016/0017', '07064781873,', '', '2016', 'DISM', '', ''),
(979, 'EARNEST  CHRISTABEL IBE', 'DIPG/2016/0018', '', 'DIPG/2016/0018', '08033532334,', '', '2016', 'DISM', '', ''),
(980, 'ERUMEVWA OKAYOGBANE VINCENT', 'DIPG/2016/0019', '', 'DIPG/2016/0019', '08091560833,', '', '2016', 'DISM', '', ''),
(981, 'FAKOLUJO SINA SAMUEL', 'DIPG/2016/0020', '', 'DIPG/2016/0020', '07032768567,', '', '2016', 'DISM', '', ''),
(982, 'FALADE PRINCE DOLA', 'DIPG/2016/0021', '', 'DIPG/2016/0021', '08098740148,', '', '2016', 'DISM', '', ''),
(983, 'FALUYI BABATOPE SAMUEL ', 'DIPG/2016/0022', '', 'DIPG/2016/0022', '08168214334,', '', '2016', 'DISM', '', ''),
(984, 'FRANCIS EMMANUEL ', 'DIPG/2016/0023', '', 'DIPG/2016/0023', '08069150465,', '', '2016', 'DISM', '', ''),
(985, 'IBRAHIM ADEBAYO', 'DIPG/2016/0024', '', 'DIPG/2016/0024', '08033324549,', '', '2016', 'DISM', '', ''),
(986, 'IDJERHE IVON FAVOUR', 'DIPG/2016/0025', '', 'DIPG/2016/0025', '07038913995,', '', '2016', 'DISM', '', ''),
(987, 'IDOWU TAOFEEK OLALEKAN', 'DIPG/2016/0026', '', 'DIPG/2016/0026', '08036949660,', '', '2016', 'DISM', '', ''),
(988, 'IKECHE INNOCENT IFEANYI', 'DIPG/2016/0027', '', 'DIPG/2016/0027', '07036881048,', '', '2016', 'DISM', '', ''),
(989, 'IKOR KINGSLEY OGENYI', 'DIPG/2016/0028', '', 'DIPG/2016/0028', '08051261610,', '', '2016', 'DISM', '', ''),
(990, 'IMOH DUNAMIS OYEKACHI IMO', 'DIPG/2016/0029', '', 'DIPG/2016/0029', '07065603156,', '', '2016', 'DISM', '', ''),
(991, 'JONES OGODO OGHENEMARO', 'DIPG/2016/0030', '', 'DIPG/2016/0030', '07030696169,', '', '2016', 'DISM', '', ''),
(992, 'KUFORIJI    WILLAMS OLANREWAJU', 'DIPG/2016/0031', '', 'DIPG/2016/0031', '08033070582,', '', '2016', 'DISM', '', ''),
(993, 'MARK JOSHUA', 'DIPG/2016/0032', '', 'DIPG/2016/0032', '08141327007,', '', '2016', 'DISM', '', ''),
(994, 'MATTI AHMED DAMILARE', 'DIPG/2016/0033', '', 'DIPG/2016/0033', '08133643101,', '', '2016', 'DISM', '', ''),
(995, 'MBATA JUSTUS CHIKWE', 'DIPG/2016/0034', '', 'DIPG/2016/0034', '08079544321,', '', '2016', 'DISM', '', ''),
(996, 'NWAGALA OKECHUKWU VICTOR', 'DIPG/2016/0035', '', 'DIPG/2016/0035', '08034164406,', '', '2016', 'DISM', '', ''),
(997, 'NWEKE VICTOR IFEANYI', 'DIPG/2016/0036', '', 'DIPG/2016/0036', '08094402444,', '', '2016', 'DISM', '', ''),
(998, 'OBI MATTHEW IFEANYI', 'DIPG/2016/0037', '', 'DIPG/2016/0037', '08033106677,', '', '2016', 'DISM', '', ''),
(999, 'ODOMODE OLUWAGBEMIGA HENRY', 'DIPG/2016/0038', '', 'DIPG/2016/0038', '09095341615,', '', '2016', 'DISM', '', ''),
(1000, 'OGAZI ANTHONY NKEMAKOLEM', 'DIPG/2016/0039', '', 'DIPG/2016/0039', '08035739345,', '', '2016', 'DISM', '', ''),
(1001, 'OJELADE SUNDAY OLUWOLE', 'DIPG/2016/0040', '', 'DIPG/2016/0040', '08097933548,', '', '2016', 'DISM', '', ''),
(1002, 'OKONKWO CHINEDU RAPHEAL', 'DIPG/2016/0041', '', 'DIPG/2016/0041', '07038469972,', '', '2016', 'DISM', '', ''),
(1003, 'OLAGBAMI GBENGA OPEYEMI', 'DIPG/2016/0042', '', 'DIPG/2016/0042', '08136564151,', '', '2016', 'DISM', '', ''),
(1004, 'OLAOYE ADEWALE S.', 'DIPG/2016/0043', '', 'DIPG/2016/0043', '08028277869,', '', '2016', 'DISM', '', ''),
(1005, 'OLAOYE AFEEZ ADEKUNLE', 'DIPG/2016/0044', '', 'DIPG/2016/0044', '07066465758,', '', '2016', 'DISM', '', ''),
(1006, 'OLATUDE OMOTAYO LATEEF', 'DIPG/2016/0045', '', 'DIPG/2016/0045', '08059994495,', '', '2016', 'DISM', '', ''),
(1007, 'OMOWUMI EARNEST EYINLAWO', 'DIPG/2016/0046', '', 'DIPG/2016/0046', '08186005373,', '', '2016', 'DISM', '', ''),
(1008, 'OPANUGA ISAAC ADEBAYO', 'DIPG/2016/0047', '', 'DIPG/2016/0047', '09024860236,', '', '2016', 'DISM', '', ''),
(1009, 'ORJI ARUM EMMANUEL', 'DIPG/2016/0048', '', 'DIPG/2016/0048', '07036569122,', '', '2016', 'DISM', '', ''),
(1010, 'OSHINOWO KAZEEM O', 'DIPG/2016/0049', '', 'DIPG/2016/0049', '08028550301,', '', '2016', 'DISM', '', ''),
(1011, 'OTOMOLA EMMANUEL ADENYI', 'DIPG/2016/0050', '', 'DIPG/2016/0050', '07036682208,', '', '2016', 'DISM', '', ''),
(1012, 'OYEM ISIOMA EDDY', 'DIPG/2016/0051', '', 'DIPG/2016/0051', '08067168685,', '', '2016', 'DISM', '', ''),
(1013, 'OZEGBE ERIC AFAM', 'DIPG/2016/0052', '', 'DIPG/2016/0052', '08036969462,', '', '2016', 'DISM', '', ''),
(1014, 'RENNER ISAAC ', 'DIPG/2016/0053', '', 'DIPG/2016/0053', '08097360904,', '', '2016', 'DISM', '', ''),
(1015, 'SHOWOLE SUNDAY OYELAKAN', 'DIPG/2016/0054', '', 'DIPG/2016/0054', '08020612294,', '', '2016', 'DISM', '', ''),
(1016, 'SHAIBU YUSUF MAYOWA ', 'DIPG/2016/0055', '', 'DIPG/2016/0055', '08132885262,', '', '2016', 'DISM', '', ''),
(1017, 'TIJANI HUSSEN OGBAJE', 'DIPG/2016/0056', '', 'DIPG/2016/0056', '07056969772,081', '', '2016', 'DISM', '', ''),
(1018, 'UGWOH CYNTHIA OBANUJU', 'DIPG/2016/0057', '', 'DIPG/2016/0057', '08060105321,', '', '2016', 'DISM', '', ''),
(1019, 'UKPONG GODWIN EMMANUEL', 'DIPG/2016/0058', '', 'DIPG/2016/0058', '07031878567,', '', '2016', 'DISM', '', ''),
(1020, 'UTOMI NDUKA ANTHONY', 'DIPG/2016/0059', '', 'DIPG/2016/0059', '', '', '2016', 'DISM', '', ''),
(1021, 'UZOEGBU BENITA AKUBUNMA', 'DIPG/2016/0060', '', 'DIPG/2016/0060', '08037436374,', '', '2016', 'DISM', '', ''),
(1022, 'UZOLISA NNAMDI MICHAEL', 'DIPG/2016/0061', '', 'DIPG/2016/0061', '08037379400,', '', '2016', 'DISM', '', ''),
(1023, 'Abraham Abutu', 'DIPG/2016/0062', '', 'DIPG/2016/0062', '08107681462,', '', '2016', 'DISM', '', ''),
(1024, 'Adah  Emmanuel', 'DIPG/2016/0063', '', 'DIPG/2016/0063', '08036607634,', '', '2016', 'DISM', '', ''),
(1025, 'Adejoh  Solomon Arome', 'DIPG/2016/0064', '', 'DIPG/2016/0064', '08146245198, 07', '', '2016', 'DISM', '', ''),
(1026, 'Adeshina  Ibrahim  Adisa', 'DIPG/2016/0065', '', 'DIPG/2016/0065', '08135401384,', '', '2016', 'DISM', '', ''),
(1027, 'ADOLE   ABOCHE   ELLIOT', 'DIPG/2016/0066', '', 'DIPG/2016/0066', '08037246719,', '', '2016', 'DISM', '', ''),
(1028, 'Agaga  Onuwabhagbe  Jeffery', 'DIPG/2016/0067', '', 'DIPG/2016/0067', '08149395030,', '', '2016', 'DISM', '', ''),
(1029, 'Agbontan  Victor', 'DIPG/2016/0068', '', 'DIPG/2016/0068', '08034794870,', '', '2016', 'DISM', '', ''),
(1030, 'AIKHOR  OGIACHAEL - EMMANUEL ', 'DIPG/2016/0069', '', 'DIPG/2016/0069', '08139478873,', '', '2016', 'DISM', '', ''),
(1031, 'Akerele  Robert', 'DIPG/2016/0070', '', 'DIPG/2016/0070', '07036902586,', '', '2016', 'DISM', '', ''),
(1032, 'Akinyemi   Daniel  Adebayo', 'DIPG/2016/0071', '', 'DIPG/2016/0071', '08055627326,', '', '2016', 'DISM', '', ''),
(1033, 'AKUMA THOMPSON', 'DIPG/2016/0072', '', 'DIPG/2016/0072', '07030540015,', '', '2016', 'DISM', '', ''),
(1034, 'Alade  Akinola Festus', 'DIPG/2016/0073', '', 'DIPG/2016/0073', '09053031809,', '', '2016', 'DISM', '', ''),
(1035, 'Ajah Friday', 'DIPG/2016/0074', '', 'DIPG/2016/0074', '07065707199,', '', '2016', 'DISM', '', ''),
(1036, 'Anoruo  Kevin  Obiora', 'DIPG/2016/0075', '', 'DIPG/2016/0075', '08030808071,', '', '2016', 'DISM', '', ''),
(1037, 'ARU   CHRISTOPHER   CHINOMSO', 'DIPG/2016/0076', '', 'DIPG/2016/0076', '08168764919, 08', '', '2016', 'DISM', '', ''),
(1038, 'Azeez    Ahmed O.', 'DIPG/2016/0077', '', 'DIPG/2016/0077', '08033740050,', '', '2016', 'DISM', '', ''),
(1039, 'Bamidele Omolara Folashade', 'DIPG/2016/0078', '', 'DIPG/2016/0078', '08103095539,', '', '2016', 'DISM', '', ''),
(1040, 'Bassey  John  Obeten', 'DIPG/2016/0079', '', 'DIPG/2016/0079', '08070993370,', '', '2016', 'DISM', '', ''),
(1041, 'Bello  KAZEEM BABATUNDE', 'DIPG/2016/0080', '', 'DIPG/2016/0080', '08032309456, 08', '', '2016', 'DISM', '', ''),
(1042, 'Bernard MONDAY', 'DIPG/2016/0081', '', 'DIPG/2016/0081', '07037755876, 08', '', '2016', 'DISM', '', ''),
(1043, 'DOUGLAS  IDUH', 'DIPG/2016/0082', '', 'DIPG/2016/0082', '08066301213,', '', '2016', 'DISM', '', ''),
(1044, 'EMETU   EMEKA', 'DIPG/2016/0083', '', 'DIPG/2016/0083', '08137749410,', '', '2016', 'DISM', '', ''),
(1045, 'EZE  CHIEMERIELA   NWANOSIKE', 'DIPG/2016/0084', '', 'DIPG/2016/0084', '09083599942,', '', '2016', 'DISM', '', ''),
(1046, 'Gabriel Adams', 'DIPG/2016/0085', '', 'DIPG/2016/0085', '07010645391,', '', '2016', 'DISM', '', ''),
(1047, 'HILEIMO   VICTOR   AONDONA', 'DIPG/2016/0086', '', 'DIPG/2016/0086', '08038350374,', '', '2016', 'DISM', '', ''),
(1048, 'ISHAQ ISMAILA', 'DIPG/2016/0087', '', 'DIPG/2016/0087', '07061875583,', '', '2016', 'DISM', '', ''),
(1049, 'IBENEME VICTOR  CHISOM', 'DIPG/2016/0088', '', 'DIPG/2016/0088', '08031598174,', '', '2016', 'DISM', '', ''),
(1050, 'IFEANYICHUKWU   COLLINS', 'DIPG/2016/0089', '', 'DIPG/2016/0089', '08062962336,', '', '2016', 'DISM', '', ''),
(1051, 'JOSEPH  EMMANUEL', 'DIPG/2016/0090', '', 'DIPG/2016/0090', '08162899513,', '', '2016', 'DISM', '', ''),
(1052, 'Josiah  Uche  Prince', 'DIPG/2016/0091', '', 'DIPG/2016/0091', '07030411731,', '', '2016', 'DISM', '', ''),
(1053, 'Jugbayisan  Nicholas  Kareem', 'DIPG/2016/0092', '', 'DIPG/2016/0092', '08039660810, ', '', '2016', 'DISM', '', ''),
(1054, 'Lawal  Opeyemi  Kamldeen', 'DIPG/2016/0093', '', 'DIPG/2016/0093', '07032974862,', '', '2016', 'DISM', '', ''),
(1055, 'Martins  Micah Victoria', 'DIPG/2016/0094', '', 'DIPG/2016/0094', '07088776777,', '', '2016', 'DISM', '', ''),
(1056, 'Mba  Moses', 'DIPG/2016/0095', '', 'DIPG/2016/0095', '08030453974, 09', '', '2016', 'DISM', '', ''),
(1057, 'Michael O. Senbanjo', 'DIPG/2016/0096', '', 'DIPG/2016/0096', '08159575696,', '', '2016', 'DISM', '', ''),
(1058, 'Nurudeen Raheem', 'DIPG/2016/0097', '', 'DIPG/2016/0097', '08035316060,', '', '2016', 'DISM', '', ''),
(1059, 'NWEKE  JOHN  OZIOMA', 'DIPG/2016/0098', '', 'DIPG/2016/0098', '', '', '2016', 'DISM', '', ''),
(1060, 'NKU  THOMAS  AJABA', 'DIPG/2016/0099', '', 'DIPG/2016/0099', '08162243071,', '', '2016', 'DISM', '', ''),
(1061, 'NWABUDIKE PATRICK  OKOLIE', 'DIPG/2016/0100', '', 'DIPG/2016/0100', '08056713765,', '', '2016', 'DISM', '', ''),
(1062, 'Obebe Olanrewaju  Joshua', 'DIPG/2016/0101', '', 'DIPG/2016/0101', '08052187574, 07', '', '2016', 'DISM', '', ''),
(1063, 'Odakpo  Julius', 'DIPG/2016/0102', '', 'DIPG/2016/0102', '08076680698,', '', '2016', 'DISM', '', ''),
(1064, 'Odufuye Olusegun', 'DIPG/2016/0103', '', 'DIPG/2016/0103', '07037141001,', '', '2016', 'DISM', '', ''),
(1065, 'OGUNDELE  AINA  OLORUNTOBI', 'DIPG/2016/0104', '', 'DIPG/2016/0104', '08034722006,', '', '2016', 'DISM', '', ''),
(1066, 'Ogunmilua  Shola Uche', 'DIPG/2016/0105', '', 'DIPG/2016/0105', '08167710047,', '', '2016', 'DISM', '', ''),
(1067, 'Okokhuele Samuel Osunbor', 'DIPG/2016/0106', '', 'DIPG/2016/0106', '08060731036, ', '', '2016', 'DISM', '', ''),
(1068, 'Okeleke Okebunor  Anthony', 'DIPG/2016/0107', '', 'DIPG/2016/0107', '07030856115, 07', '', '2016', 'DISM', '', ''),
(1069, 'Okpe  Ankeli  James', 'DIPG/2016/0108', '', 'DIPG/2016/0108', '08068425167,081', '', '2016', 'DISM', '', ''),
(1070, 'Olajide Kayode Oladele', 'DIPG/2016/0109', '', 'DIPG/2016/0109', '08060643700,', '', '2016', 'DISM', '', ''),
(1071, 'Olejiya  Yetunde  Olapeju', 'DIPG/2016/0110', '', 'DIPG/2016/0110', '08187408079,', '', '2016', 'DISM', '', ''),
(1072, 'Onwushie Henry Chijioke ', 'DIPG/2016/0111', '', 'DIPG/2016/0111', '08036356306,', '', '2016', 'DISM', '', ''),
(1073, 'Ososanya  John  Olatunji', 'DIPG/2016/0112', '', 'DIPG/2016/0112', '08139042999,', '', '2016', 'DISM', '', ''),
(1074, 'OYENUGA ADEYEMI  OLUKAYODE', 'DIPG/2016/0113', '', 'DIPG/2016/0113', '08060598192,', '', '2016', 'DISM', '', ''),
(1075, 'Peter  Emmanuel  Adejoh', 'DIPG/2016/0114', '', 'DIPG/2016/0114', '08059156309, 08', '', '2016', 'DISM', '', ''),
(1076, 'Samson   Adeeyo', 'DIPG/2016/0115', '', 'DIPG/2016/0115', '08023814373,', '', '2016', 'DISM', '', ''),
(1077, 'SOKUNBI OLAMILEKUN  MUSBAU', 'DIPG/2016/0116', '', 'DIPG/2016/0116', '09097513159,', '', '2016', 'DISM', '', ''),
(1078, 'TIJANI  YAHAYA ', 'DIPG/2016/0117', '', 'DIPG/2016/0117', '08062857557, 08', '', '2016', 'DISM', '', ''),
(1079, 'Umar  Abdulmumuni  Abarigi', 'DIPG/2016/0118', '', 'DIPG/2016/0118', '08156232299,', '', '2016', 'DISM', '', ''),
(1080, 'Basil  Chukwuma', 'DIPG/2016/0119', '', 'DIPG/2016/0119', '07061521718,', '', '2016', 'DISM', '', ''),
(1081, 'Okweye Ifeanyi Donatus', 'DIPG/2016/0120', '', 'DIPG/2016/0120', '08035453877,', '', '2016', 'DISM', '', ''),
(1082, 'Eke Uzoma Augustine', 'DIPG/2016/0121', '', 'DIPG/2016/0121', '08116885992,090', '', '2016', 'DISM', '', ''),
(1083, 'Elusanmi Olawale Charles', 'DIPG/2016/0122', '', 'DIPG/2016/0122', '08136300223, 08', '', '2016', 'DISM', '', ''),
(1084, 'Joseph Christoper', 'DIPG/2016/0123', '', 'DIPG/2016/0123', '08147468982,', '', '2016', 'DISM', '', ''),
(1085, 'Nwagbara  Victor  Adindu', 'DIPG/2016/0124', '', 'DIPG/2016/0124', '08029513989, 08', '', '2016', 'DISM', '', ''),
(1086, 'Onyenehide  Chijioke Cardinal', 'DIPG/2016/0125', '', 'DIPG/2016/0125', '', '', '2016', 'DISM', '', ''),
(1087, 'Adams Gabriel', 'DIPG/2016/0126', '', 'DIPG/2016/0126', '07010645391, 09', '', '2016', 'DISM', '', ''),
(1088, 'Adeko   Adeyinka', 'DIPG/2016/0127', '', 'DIPG/2016/0127', '08087628080,', '', '2016', 'DISM', '', ''),
(1089, 'ADESOKAN    RAPHAEL', 'DIPG/2016/0128', '', 'DIPG/2016/0128', '07082672053, 08', '', '2016', 'DISM', '', ''),
(1090, 'Adeyeye Boladale Ibrahim', 'DIPG/2016/0129', '', 'DIPG/2016/0129', '08038363707, 08', '', '2016', 'DISM', '', ''),
(1091, 'Adeyi  Samuel', 'DIPG/2016/0130', '', 'DIPG/2016/0130', '07068498283, 08', '', '2016', 'DISM', '', ''),
(1092, 'Agu  Remigius  Evaristus', 'DIPG/2016/0131', '', 'DIPG/2016/0131', '08109817889,080', '', '2016', 'DISM', '', ''),
(1093, 'Ailende Delighton Uyi', 'DIPG/2016/0132', '', 'DIPG/2016/0132', '08066124385,', '', '2016', 'DISM', '', ''),
(1094, 'Ajoma  Peter  Ogbaji', 'DIPG/2016/0133', '', 'DIPG/2016/0133', '08068801339,', '', '2016', 'DISM', '', ''),
(1095, 'Akande Segun', 'DIPG/2016/0134', '', 'DIPG/2016/0134', '07031989416,', '', '2016', 'DISM', '', ''),
(1096, 'Akinyanran Abiodun  Emmanuel', 'DIPG/2016/0135', '', 'DIPG/2016/0135', '08036296636,', '', '2016', 'DISM', '', ''),
(1097, 'Akwarandu  Solomon  Mmesirionye', 'DIPG/2016/0136', '', 'DIPG/2016/0136', '07060869471,', '', '2016', 'DISM', '', ''),
(1098, 'ALADE   SEGUN', 'DIPG/2016/0137', '', 'DIPG/2016/0137', '08123186127,', '', '2016', 'DISM', '', ''),
(1099, 'Alarape  ADEMOLA  AYINDE', 'DIPG/2016/0138', '', 'DIPG/2016/0138', '08032187276,', '', '2016', 'DISM', '', ''),
(1100, 'ALIU    ADEWALE    OLATUNDE', 'DIPG/2016/0139', '', 'DIPG/2016/0139', '09094942243, 08', '', '2016', 'DISM', '', ''),
(1101, 'Alonge  Augustine  Uje', 'DIPG/2016/0140', '', 'DIPG/2016/0140', '07066648523,', '', '2016', 'DISM', '', ''),
(1102, 'Anawo  John', 'DIPG/2016/0141', '', 'DIPG/2016/0141', '08181046873, 08', '', '2016', 'DISM', '', ''),
(1103, 'Anegbe Akugbe', 'DIPG/2016/0142', '', 'DIPG/2016/0142', '08168055410, 07', '', '2016', 'DISM', '', ''),
(1104, 'Anethua  Christopher', 'DIPG/2016/0143', '', 'DIPG/2016/0143', '08147689566,', '', '2016', 'DISM', '', ''),
(1105, 'Anozie  Chukwubuikem John-Paul', 'DIPG/2016/0144', '', 'DIPG/2016/0144', '07036707766,', '', '2016', 'DISM', '', ''),
(1106, 'Anuforo  Johnson  Anya-Nnabugwu', 'DIPG/2016/0145', '', 'DIPG/2016/0145', '08142680627,', '', '2016', 'DISM', '', ''),
(1107, 'Anyanwu  Ifeanyi  Lawrence', 'DIPG/2016/0146', '', 'DIPG/2016/0146', '07033731604, 08', '', '2016', 'DISM', '', ''),
(1108, 'Arande  Monday  Prescott', 'DIPG/2016/0147', '', 'DIPG/2016/0147', '08097559009, 07', '', '2016', 'DISM', '', ''),
(1109, 'Arole  Abubakar', 'DIPG/2016/0148', '', 'DIPG/2016/0148', '08173104015,', '', '2016', 'DISM', '', ''),
(1110, 'Attama  Chinagolu  Exodus', 'DIPG/2016/0149', '', 'DIPG/2016/0149', '07068305065,', '', '2016', 'DISM', '', ''),
(1111, 'Ayuru  Francis  Ajiri', 'DIPG/2016/0150', '', 'DIPG/2016/0150', '08064547157,', '', '2016', 'DISM', '', ''),
(1112, 'Balogun  Olufemi  Robert', 'DIPG/2016/0151', '', 'DIPG/2016/0151', '08024324001,', '', '2016', 'DISM', '', ''),
(1113, 'Bankole  Michael', 'DIPG/2016/0152', '', 'DIPG/2016/0152', '08185351381,', '', '2016', 'DISM', '', ''),
(1114, 'BASHIR  MOHAMMED  IBRAHIM', 'DIPG/2016/0153', '', 'DIPG/2016/0153', '08022277680, 08', '', '2016', 'DISM', '', ''),
(1115, 'BELLO ADESOJI', 'DIPG/2016/0154', '', 'DIPG/2016/0154', '08024293312,', '', '2016', 'DISM', '', ''),
(1116, 'Dairo  Oluwarotimi', 'DIPG/2016/0155', '', 'DIPG/2016/0155', '08054153391,', '', '2016', 'DISM', '', ''),
(1117, 'Daniel  Joel  Jesuyun', 'DIPG/2016/0156', '', 'DIPG/2016/0156', '08187493966,', '', '2016', 'DISM', '', ''),
(1118, 'Duru  Francis  Nnamdi ', 'DIPG/2016/0157', '', 'DIPG/2016/0157', '08137438393,', '', '2016', 'DISM', '', ''),
(1119, 'Ebije  Johnson  Emmanuel ', 'DIPG/2016/0158', '', 'DIPG/2016/0158', '07017278863,', '', '2016', 'DISM', '', ''),
(1120, 'Ekpeyo  Saviour  Oscar', 'DIPG/2016/0159', '', 'DIPG/2016/0159', '07063403658,', '', '2016', 'DISM', '', ''),
(1121, 'Eyong   Owai', 'DIPG/2016/0160', '', 'DIPG/2016/0160', '09098055971,', '', '2016', 'DISM', '', ''),
(1122, 'Fagbemi  Chris  Akinyemi', 'DIPG/2016/0161', '', 'DIPG/2016/0161', '08050327123,', '', '2016', 'DISM', '', ''),
(1123, 'Godwin  Donatus', 'DIPG/2016/0162', '', 'DIPG/2016/0162', '08130060099,', '', '2016', 'DISM', '', ''),
(1124, 'Idris Yakubu ', 'DIPG/2016/0163', '', 'DIPG/2016/0163', '08066086058,', '', '2016', 'DISM', '', ''),
(1125, 'Igoche Grace', 'DIPG/2016/0164', '', 'DIPG/2016/0164', '08131135162, 08', '', '2016', 'DISM', '', ''),
(1126, 'Inyang Israel', 'DIPG/2016/0165', '', 'DIPG/2016/0165', '08031155603, 09', '', '2017', 'DISM', '', ''),
(1127, 'Istifanus  Cinbes', 'DIPG/2016/0166', '', 'DIPG/2016/0166', '08060649424,', '', '2017', 'DISM', '', ''),
(1128, 'Iwuala Ikechukwu  Ephraim', 'DIPG/2016/0167', '', 'DIPG/2016/0167', '07038712839,', '', '2017', 'DISM', '', ''),
(1129, 'Iziga  Ifeanyi  Anthony', 'DIPG/2016/0168', '', 'DIPG/2016/0168', '08094277604,', '', '2017', 'DISM', '', ''),
(1130, 'Jimmy Uwem  Effiong', 'DIPG/2016/0169', '', 'DIPG/2016/0169', '08062418863,', '', '2017', 'DISM', '', ''),
(1131, 'John  Vincent', 'DIPG/2016/0170', '', 'DIPG/2016/0170', '081148633911,', '', '2017', 'DISM', '', ''),
(1132, 'JOHN ADEJOH  MONDAY', 'DIPG/2016/0171', '', 'DIPG/2016/0171', '07030536921,', '', '2017', 'DISM', '', ''),
(1133, 'Mathias  Eric', 'DIPG/2016/0172', '', 'DIPG/2016/0172', '08171524419,', '', '2017', 'DISM', '', ''),
(1134, 'Matthias  Otobu  Luke ', 'DIPG/2016/0173', '', 'DIPG/2016/0173', '08067718528, 08', '', '2017', 'DISM', '', ''),
(1135, 'Mba  Moses', 'DIPG/2016/0174', '', 'DIPG/2016/0174', '08030453974, 09', '', '2017', 'DISM', '', ''),
(1136, 'Monday Uwem-Centurion', 'DIPG/2016/0175', '', 'DIPG/2016/0175', '08062361588,', '', '2017', 'DISM', '', ''),
(1137, 'Msende Hangetor  Michael', 'DIPG/2016/0176', '', 'DIPG/2016/0176', '08107167057, 09', '', '2017', 'DISM', '', ''),
(1138, 'Njoku Chinomso ', 'DIPG/2016/0177', '', 'DIPG/2016/0177', '07035202427,', '', '2017', 'DISM', '', ''),
(1139, 'Nweke  Charles ', 'DIPG/2016/0178', '', 'DIPG/2016/0178', '08032310895,', '', '2017', 'DISM', '', ''),
(1140, 'Nze Stanley  Sunday', 'DIPG/2016/0179', '', 'DIPG/2016/0179', '08073108235,', '', '2017', 'DISM', '', ''),
(1141, 'Nzelu  Caroline  Kenechukwu', 'DIPG/2016/0180', '', 'DIPG/2016/0180', '08038525112, 08', '', '2017', 'DISM', '', ''),
(1142, 'Odufuwa  Oludare  Sunday', 'DIPG/2016/0181', '', 'DIPG/2016/0181', '08035183355,', '', '2017', 'DISM', '', ''),
(1143, 'Ogar Achu', 'DIPG/2016/0182', '', 'DIPG/2016/0182', '08096726316, 07', '', '2017', 'DISM', '', ''),
(1144, 'Ogazi  Chibueze', 'DIPG/2016/0183', '', 'DIPG/2016/0183', '08068471672,', '', '2017', 'DISM', '', ''),
(1145, 'Ogbonnaya Blessing', 'DIPG/2016/0184', '', 'DIPG/2016/0184', '07063278799,', '', '2017', 'DISM', '', ''),
(1146, 'Oguntomi  Emmanuel  Abiodun', 'DIPG/2016/0185', '', 'DIPG/2016/0185', '08064362244,', '', '2017', 'DISM', '', ''),
(1147, 'Okon Gabriel', 'DIPG/2016/0186', '', 'DIPG/2016/0186', '08166855037,', '', '2017', 'DISM', '', ''),
(1148, 'Okonkwo Chinedu  Raphael', 'DIPG/2016/0187', '', 'DIPG/2016/0187', '07038469972,', '', '2017', 'DISM', '', ''),
(1149, 'Okpara  Kelechi  FESTUS', 'DIPG/2016/0188', '', 'DIPG/2016/0188', '08063200010,', '', '2017', 'DISM', '', ''),
(1150, 'Okwori  Abel  Andrew', 'DIPG/2016/0189', '', 'DIPG/2016/0189', '08107617391, 08', '', '2017', 'DISM', '', ''),
(1151, 'Olabamiji Olakunle Saheed', 'DIPG/2016/0190', '', 'DIPG/2016/0190', '08036520206, 08', '', '2017', 'DISM', '', ''),
(1152, 'Onyenehide  Chijioke  Cardinal', 'DIPG/2016/0191', '', 'DIPG/2016/0191', '08038053163,', '', '2017', 'DISM', '', ''),
(1153, 'Otanwa  Sunday', 'DIPG/2016/0192', '', 'DIPG/2016/0192', '08028472237, 08', '', '2017', 'DISM', '', ''),
(1154, 'Owolabi  Abraham Olorunshola', 'DIPG/2016/0193', '', 'DIPG/2016/0193', '08034848161,', '', '2017', 'DISM', '', ''),
(1155, 'PENNE  AYODEJI  IGBEKELE ', 'DIPG/2016/0194', '', 'DIPG/2016/0194', '07066119348,', '', '2017', 'DISM', '', ''),
(1156, 'Raji Iliasu', 'DIPG/2016/0195', '', 'DIPG/2016/0195', '08098127361, 08', '', '2017', 'DISM', '', ''),
(1157, 'Shaibu  Nuhu  Okei', 'DIPG/2016/0196', '', 'DIPG/2016/0196', '08185983927,', '', '2017', 'DISM', '', ''),
(1158, 'Sotubo  Ayodeji   Adewale', 'DIPG/2016/0197', '', 'DIPG/2016/0197', '07031252957,', '', '2017', 'DISM', '', ''),
(1159, 'Suleiman Aigbokhade Idris', 'DIPG/2016/0198', '', 'DIPG/2016/0198', '07034810928,', '', '2017', 'DISM', '', ''),
(1160, 'UFFOR   THOMPSON ', 'DIPG/2016/0199', '', 'DIPG/2016/0199', '08065268244,', '', '2017', 'DISM', '', ''),
(1161, 'UGORJI  STANLEY  CHIMANKPAM', 'DIPG/2016/0200', '', 'DIPG/2016/0200', '07061002380, 07', '', '2017', 'DISM', '', ''),
(1162, 'Ugwuoke Samuel Sunday', 'DIPG/2016/0201', '', 'DIPG/2016/0201', '08101321433,', '', '2017', 'DISM', '', ''),
(1163, 'Uwoghiren  Kenneth  Edosa', 'DIPG/2016/0202', '', 'DIPG/2016/0202', '08067626141,', '', '2017', 'DISM', '', ''),
(1164, 'WALI ZAKKA  SULE', 'DIPG/2016/0203', '', 'DIPG/2016/0203', '08050792539,', '', '2017', 'DISM', '', ''),
(1165, 'Offa  Fredrick  Tuiboukebina', 'DIPG/2016/0204', '', 'DIPG/2016/0204', '08138435173,', '', '2017', 'DISM', '', ''),
(1166, 'Okereke Uchenna Charles', 'DIPG/2017/0001', '', 'DIPG/2017/0001', '08029782509,', '', '2017', 'DISM', '', ''),
(1167, 'Sylvester  Obisi', 'DIPG/2017/0002', '', 'DIPG/2017/0002', '08068775306,', '', '2017', 'DISM', '', ''),
(1168, 'Ekawe  Goodnews', 'DIPG/2017/0003', '', 'DIPG/2017/0003', '07030097697, 08', '', '2017', 'DISM', '', ''),
(1169, 'Takershima  Terngu  Maurice', 'DIPG/2017/0004', '', 'DIPG/2017/0004', '08157602122,', '', '2017', 'DISM', '', ''),
(1170, 'Gbunu Danjuma', 'DIPG/2017/0005', '', 'DIPG/2017/0005', '08031141580, 08', '', '2017', 'DISM', '', ''),
(1171, 'Onoja  Abu  Kingsley', 'DIPG/2017/0006', '', 'DIPG/2017/0006', '07034433100,', '', '2017', 'DISM', '', ''),
(1172, 'Abdullahi  Haruna', 'DIPG/2017/0007', '', 'DIPG/2017/0007', '08034291766,', '', '2017', 'DISM', '', ''),
(1173, 'Abdulraman  Musa Iya', 'DIPG/2017/0008', '', 'DIPG/2017/0008', '08067510671,', '', '2017', 'DISM', '', ''),
(1174, 'Adebawo  Majemu  Samuel', 'DIPG/2017/0009', '', 'DIPG/2017/0009', '08033870919,', '', '2017', 'DISM', '', ''),
(1175, 'Enwemiwe  Ndubuisi  Mike', 'DIPG/2017/0010', '', 'DIPG/2017/0010', '07036529396,', '', '2017', 'DISM', '', ''),
(1176, 'Abba  Sunday', 'DIPG/2017/0011', '', 'DIPG/2017/0011', '07039224864,', '', '2017', 'DISM', '', ''),
(1177, 'Ekundayo Dada  Samuel', 'DIPG/2017/0012', '', 'DIPG/2017/0012', '08177863360, 08', '', '2017', 'DISM', '', ''),
(1178, 'Okeke Eberechukwu Ifesinachi ', 'DIPG/2017/0013', '', 'DIPG/2017/0013', '08167925445, 08', '', '2017', 'DISM', '', ''),
(1179, 'Essien Hilary  Daniel ', 'DIPG/2017/0014', '', 'DIPG/2017/0014', '08037278449, 08', '', '2017', 'DISM', '', ''),
(1180, 'Aminu  Medudu Cherish', 'DIPG/2017/0015', '', 'DIPG/2017/0015', '07068988659,', '', '2017', 'DISM', '', ''),
(1181, 'Wilcox  Daniel', 'DIPG/2017/0016', '', 'DIPG/2017/0016', '08151704089,', '', '2017', 'DISM', '', ''),
(1182, 'Orisakwe Samson Chukwudum', 'DIPG/2017/0017', '', 'DIPG/2017/0017', '09057572289,', '', '2017', 'DISM', '', ''),
(1183, 'Edache Matthew', 'DIPG/2017/0018', '', 'DIPG/2017/0018', '08173166746,', '', '2017', 'DISM', '', ''),
(1184, 'Michael  Ewaoche  Geofrey', 'DIPG/2017/0019', '', 'DIPG/2017/0019', '08131115926,', '', '2017', 'DISM', '', ''),
(1185, 'Laoye Laide Oyebola', 'DIPG/2017/0020', '', 'DIPG/2017/0020', '', '', '2017', 'DISM', '', ''),
(1186, 'Ebiesuwa Elkanah Oluwalogbon', 'DIPG/2017/0021', '', 'DIPG/2017/0021', '', '', '2017', 'DISM', '', ''),
(1187, 'Ukado Paschal Ogubuike', 'DIPG/2017/0022', '', 'DIPG/2017/0022', '08039688840,', '', '2017', 'DISM', '', ''),
(1188, 'Akpoterabor Godwin Ezi', 'DIPG/2017/0023', '', 'DIPG/2017/0023', '08028426006,', '', '2017', 'DISM', '', ''),
(1189, 'Ayarm Barji John Ernest', 'DIPG/2017/0024', '', 'DIPG/2017/0024', '08148597484,', '', '2017', 'DISM', '', ''),
(1190, 'Eyang Eyoh Okon', 'DIPG/2017/0025', '', 'DIPG/2017/0025', '08033013639,', '', '2017', 'DISM', '', ''),
(1191, 'Ajibola Abdulateef  Lekan', 'DIPG/2017/0026', '', 'DIPG/2017/0026', '08093822137,', '', '2017', 'DISM', '', ''),
(1192, 'Abiola Mobolaji  Mutiu', 'DIPG/2017/0027', '', 'DIPG/2017/0027', '08023595960,', '', '2017', 'DISM', '', ''),
(1193, 'Kokumo  Olufunmilayo  Olubunmi', 'DIPG/2017/0028', '', 'DIPG/2017/0028', '09060562030, 08', '', '2017', 'DISM', '', ''),
(1194, 'Adebanjo Adedamola', 'DIPG/2017/0029', '', 'DIPG/2017/0029', '08138003401,', '', '2017', 'DISM', '', ''),
(1195, 'Balogun Bimpe Yemisi', 'DIPG/2017/0030', '', 'DIPG/2017/0030', '08034185863,', '', '2017', 'DISM', '', ''),
(1196, 'Agada Queen Achamawo', 'DIPG/2017/0031', '', 'DIPG/2017/0031', '08037969652,', '', '2017', 'DISM', '', ''),
(1197, 'Ellah  James Matthew', 'DIPG/2017/0032', '', 'DIPG/2017/0032', '08066897291, 08', '', '2017', 'DISM', '', ''),
(1198, 'Rotimi  Abiodun  Toyin', 'DIPG/2017/0033', '', 'DIPG/2017/0033', '08035614117, 08', '', '2017', 'DISM', '', ''),
(1199, 'Awotundun  Peter  Otun-Ola', 'DIPG/2017/0034', '', 'DIPG/2017/0034', '08030724835, 08', '', '2017', 'DISM', '', ''),
(1200, 'Okeke Joseph Maduabuchi', 'DIPG/2017/0035', '', 'DIPG/2017/0035', '08060009743,', '', '2017', 'DISM', '', ''),
(1201, 'Ekhator  Michael', 'DIPG/2017/0036', '', 'DIPG/2017/0036', '08171901972,', '', '2017', 'DISM', '', ''),
(1202, 'Adewuyi  Kayode  Amos', 'DIPG/2017/0037', '', 'DIPG/2017/0037', '08173154027,', '', '2017', 'DISM', '', ''),
(1203, 'Abdulraman  Musa ', 'DIPG/2017/0038', '', 'DIPG/2017/0038', '08067510671,', '', '2017', 'DISM', '', ''),
(1204, 'Lawani Jack  Aliu', 'DIPG/2017/0039', '', 'DIPG/2017/0039', '07086904834,', '', '2017', 'DISM', '', ''),
(1205, 'Obeten  Michael Obeten', 'DIPG/2017/0040', '', 'DIPG/2017/0040', '07036030224,', '', '2017', 'DISM', '', ''),
(1206, 'Ibrahim  Aisha  Esther', 'DIPG/2017/0041', '', 'DIPG/2017/0041', '08061302501, 08', '', '2017', 'DISM', '', ''),
(1207, 'Ebong  Richard', 'DIPG/2017/0042', '', 'DIPG/2017/0042', '08138435173,', '', '2017', 'DISM', '', ''),
(1208, 'Osadare Olamilekan', 'DIPG/2017/0043', '', 'DIPG/2017/0043', '08054787840,', '', '2017', 'DISM', '', ''),
(1209, 'Awofolaju  Kolawole', 'DIPG/2017/0044', '', 'DIPG/2017/0044', '08060196590,', '', '2017', 'DISM', '', ''),
(1210, 'Oyeleke  Stephen  Abioye', 'DIPG/2017/0045', '', 'DIPG/2017/0045', '08033586055,', '', '2017', 'DISM', '', ''),
(1211, 'Usen Eno Michael', 'DIPG/2017/0046', '', 'DIPG/2017/0046', '07064683971,', '', '2017', 'DISM', '', ''),
(1212, 'Joseph  Deborah', 'DIPG/2017/0047', '', 'DIPG/2017/0047', '08177849802,', '', '2017', 'DISM', '', ''),
(1213, 'Idim  Ubong  Edem', 'DIPG/2017/0048', '', 'DIPG/2017/0048', '08056048840,', '', '2017', 'DISM', '', ''),
(1214, 'Okosodo  Gideon', 'DIPG/2017/0049', '', 'DIPG/2017/0049', '09030751676,', '', '2017', 'DISM', '', ''),
(1215, 'Uzoma  Henry  Ikenna', 'DIPG/2017/0050', '', 'DIPG/2017/0050', '08053540563,', '', '2017', 'DISM', '', ''),
(1216, 'Ogbonna Thank-God', 'DIPG/2017/0051', '', 'DIPG/2017/0051', '09023925802,', '', '2017', 'DISM', '', ''),
(1217, 'Usani  Ubi  Joshua', 'DIPG/2017/0052', '', 'DIPG/2017/0052', '08176233573,', '', '2017', 'DISM', '', ''),
(1218, 'Osekavwebor Edafe Pere', 'DIPG/2017/0053', '', 'DIPG/2017/0053', '08170218637,', '', '2017', 'DISM', '', ''),
(1219, 'Alonge Augustine  Uje', 'DIPG/2017/0054', '', 'DIPG/2017/0054', '07066648523,', '', '2017', 'DISM', '', ''),
(1220, 'Achu  Chinedu  Loius', 'DIPG/2017/0055', '', 'DIPG/2017/0055', '07064683971,', '', '2017', 'DISM', '', ''),
(1221, 'Uzoigwe  Promise', 'DIPG/2017/0056', '', 'DIPG/2017/0056', '09094950385,', '', '2017', 'DISM', '', ''),
(1222, 'Godspower  Odhibi', 'DIPG/2017/0057', '', 'DIPG/2017/0057', '07087699970,', '', '2017', 'DISM', '', ''),
(1223, 'Omoridion Adenike Josephine', 'DIPG/2017/0058', '', 'DIPG/2017/0058', '08062552814, 09', '', '2017', 'DISM', '', ''),
(1224, 'Arinze Emmanuel Ifeanyi', 'DIPG/2017/0059', '', 'DIPG/2017/0059', '08066443877,', '', '2017', 'DISM', '', ''),
(1225, 'Ekerele Adebiyi Samuel', 'DIPG/2017/0060', '', 'DIPG/2017/0060', '08064846855, 08', '', '2017', 'DISM', '', ''),
(1226, 'Enejo Omoche Benard', 'DIPG/2017/0061', '', 'DIPG/2017/0061', '08034291766,', '', '2017', 'DISM', '', ''),
(1227, 'Oje Olugbenga? Thomas', 'DIPG/2017/0062', '', 'DIPG/2017/0062', '09090543080,', '', '2017', 'DISM', '', ''),
(1228, 'Oni Paul Olumide', 'DIPG/2017/0063', '', 'DIPG/2017/0063', '08068862544,', '', '2017', 'DISM', '', ''),
(1229, 'Azeez Muritadho', 'DIPG/2017/0064', '', 'DIPG/2017/0064', '08096617425,', '', '2017', 'DISM', '', ''),
(1230, 'Odiashi  Moses', 'DIPG/2017/0065', '', 'DIPG/2017/0065', '09071729901, 08', '', '2017', 'DISM', '', ''),
(1231, 'Kuyoro Olawseun  Johnson', 'DIPG/2017/0066', '', 'DIPG/2017/0066', '08020342704,', '', '2017', 'DISM', '', ''),
(1232, 'Ogoigbe  Ohiremen  Samson', 'DIPG/2017/0067', '', 'DIPG/2017/0067', '08069464986,', '', '2017', 'DISM', '', ''),
(1233, 'Okara Moses Tawo', 'DIPG/2017/0068', '', 'DIPG/2017/0068', '09082562918, 08', '', '2017', 'DISM', '', ''),
(1234, 'Agbolade   Joseph  Adeyemi', 'DIPG/2017/0069', '', 'DIPG/2017/0069', '08064040904,', '', '2017', 'DISM', '', ''),
(1235, 'John Samuel Oladehinde ', 'DIPG/2017/0070', '', 'DIPG/2017/0070', '08136134802,', '', '2017', 'DISM', '', ''),
(1236, 'Ajanaku  Olubunmi  Oladapo', 'DIPG/2017/0071', '', 'DIPG/2017/0071', '08035868931,', '', '2017', 'DISM', '', ''),
(1237, 'Egbune Kingsley Bartholomew', 'DIPG/2017/0072', '', 'DIPG/2017/0072', '07033305561,', '', '2017', 'DISM', '', ''),
(1238, 'PATRICK ANYANG  ', 'DIPG/2017/0073', '', 'DIPG/2017/0073', '08166147161,', '', '2017', 'DISM', '', ''),
(1239, 'Awofolaju Olaniyi Oluwaseun', 'DIPG/2017/0074', '', 'DIPG/2017/0074', '07033305561,', '', '2017', 'DISM', '', ''),
(1240, 'Momoh Aloaye John', 'DIABJ/2017/0001', '', 'DIABJ/2017/0001', '8065386702', '', '2017', 'DISM', '', ''),
(1241, 'Yusuf Rabiu', 'DIABJ/2017/0002', '', 'DIABJ/2017/0002', '8133016905', '', '2017', 'DISM', '', ''),
(1242, 'Buba Zakari Mahir', 'DIABJ/2017/0003', '', 'DIABJ/2017/0003', '8062790898', '', '2017', 'DISM', '', ''),
(1243, 'Oladapo Zacchaeus Oluwole', 'DIABJ/2017/0004', '', 'DIABJ/2017/0004', '8067234259', '', '2017', 'DISM', '', ''),
(1244, 'Okafor Ejikeme Stanley', 'DIABJ/2017/0005', '', 'DIABJ/2017/0005', '8179715801', '', '2017', 'DISM', '', ''),
(1245, 'Ohiero Christopher Ikaba', 'DIABJ/2017/0006', '', 'DIABJ/2017/0006', '8098077746', '', '2017', 'DISM', '', ''),
(1246, 'Aminu Samuel Ugbodumana', 'DIABJ/2017/0007', '', 'DIABJ/2017/0007', '7062319958', '', '2017', 'DISM', '', ''),
(1247, 'Daniel Oricha Anthony', 'DIABJ/2017/0008', '', 'DIABJ/2017/0008', '7065582300', '', '2017', 'DISM', '', ''),
(1248, 'Ogunjana Bamidele', 'DIABJ/2017/0009', '', 'DIABJ/2017/0009', '8036993071', '', '2017', 'DISM', '', ''),
(1249, 'Amabi Lucky', 'DIABJ/2017/0010', '', 'DIABJ/2017/0010', '8064572633', '', '2017', 'DISM', '', ''),
(1250, 'Ojeh Blessing Ogochukwu', 'DIABJ/2017/0011', '', 'DIABJ/2017/0011', '8034720699', '', '2017', 'DISM', '', ''),
(1251, 'Momoh Ishmael Sumaila', 'DIABJ/2017/0012', '', 'DIABJ/2017/0012', '8066113890', '', '2017', 'DISM', '', ''),
(1252, 'Chigbu Samson Chibueze', 'DIABJ/2017/0013', '', 'DIABJ/2017/0013', '8066463429', '', '2017', 'DISM', '', ''),
(1253, 'Ajodo Kenneth', 'DIABJ/2017/0014', '', 'DIABJ/2017/0014', '8065445209', '', '2017', 'DISM', '', ''),
(1254, 'Audu Gabriel Ojonimi', 'DIABJ/2017/0015', '', 'DIABJ/2017/0015', '7037556465', '', '2017', 'DISM', '', ''),
(1255, 'Olaniyan Julius Oluwaseun', 'DIABJ/2017/0016', '', 'DIABJ/2017/0016', '8033915154', '', '2017', 'DISM', '', ''),
(1256, 'Saviour Pius', 'DIABJ/2017/0017', '', 'DIABJ/2017/0017', '8038561566', '', '2017', 'DISM', '', ''),
(1257, 'Shaagee Moses', 'DIABJ/2017/0018', '', 'DIABJ/2017/0018', '8099799855', '', '2017', 'DISM', '', ''),
(1258, 'Okpor Ikechukwu Jude', 'DIABJ/2017/0019', '', 'DIABJ/2017/0019', '806594010', '', '2018', 'DISM', '', ''),
(1259, 'Simon Emmanuel Igban', 'DIABJ/2017/0020', '', 'DIABJ/2017/0020', '7035527021', '', '2018', 'DISM', '', ''),
(1260, 'Olowoniwa Femi', 'DIABJ/2017/0021', '', 'DIABJ/2017/0021', '8062916939', '', '2018', 'DISM', '', ''),
(1261, 'Ufaruna Ugbede', 'DIABJ/2017/0022', '', 'DIABJ/2017/0022', '8109013945', '', '2018', 'DISM', '', ''),
(1262, 'Okanlawon Ebenezer Taiwo', 'DIABJ/2017/0023', '', 'DIABJ/2017/0023', '8069310968', '', '2018', 'DISM', '', ''),
(1263, 'Ahmed Hassan Hassan', 'DIABJ/2017/0024', '', 'DIABJ/2017/0024', '8036949910', '', '2018', 'DISM', '', ''),
(1264, 'Edom Anthony Ayewku', 'DIABJ/2017/0025', '', 'DIABJ/2017/0025', '8035529834', '', '2018', 'DISM', '', ''),
(1265, 'Omole Olusayo Emmanuel', 'DIABJ/2017/0026', '', 'DIABJ/2017/0026', '805202662', '', '2018', 'DISM', '', ''),
(1266, 'Agaregh Osward Orduen', 'DIABJ/2017/0027', '', 'DIABJ/2017/0027', '8066459494', '', '2018', 'DISM', '', ''),
(1267, 'Ukpo Sam David', 'DIABJ/2017/0028', '', 'DIABJ/2017/0028', '8060311103', '', '2018', 'DISM', '', ''),
(1268, 'Okai Jonah', 'DIABJ/2017/0029', '', 'DIABJ/2017/0029', '7034807486', '', '2018', 'DISM', '', ''),
(1269, 'Odeh Ochiwu Michael', 'DIABJ/2017/0030', '', 'DIABJ/2017/0030', '8036925314', '', '2018', 'DISM', '', ''),
(1270, 'Akhigbe Osagie Henry', 'DIABJ/2017/0031', '', 'DIABJ/2017/0031', '8059986748', '', '2018', 'DISM', '', ''),
(1271, 'Enock Sunama Samuel', 'DIABJ/2017/0032', '', 'DIABJ/2017/0032', '8069420027', '', '2018', 'DISM', '', ''),
(1272, 'Paul Samuel Ademola', 'DIABJ/2017/0033', '', 'DIABJ/2017/0033', '8038876525', '', '2018', 'DISM', '', ''),
(1273, 'Esan Ayodele', 'DIABJ/2017/0034', '', 'DIABJ/2017/0034', '7062541799', '', '2018', 'DISM', '', ''),
(1274, 'Agbakwuru Obinna Maurice', 'DIABJ/2017/0035', '', 'DIABJ/2017/0035', '8035546039', '', '2018', 'DISM', '', ''),
(1275, 'Akintola Samson Lanre', 'DIABJ/2017/0036', '', 'DIABJ/2017/0036', '7032636089', '', '2018', 'DISM', '', ''),
(1276, 'Aninweke Chinyere Virginia', 'DIABJ/2017/0037', '', 'DIABJ/2017/0037', '8037781357', '', '2018', 'DISM', '', ''),
(1277, 'Archer Ogbenyi Job', 'DIABJ/2017/0038', '', 'DIABJ/2017/0038', '08034915017, 08', '', '2018', 'DISM', '', ''),
(1278, 'Chime Nkechi Evangeline', 'DIABJ/2017/0039', '', 'DIABJ/2017/0039', '7030878604', '', '2018', 'DISM', '', ''),
(1279, 'Ezekiel Jeremiah Jave', 'DIABJ/2017/0040', '', 'DIABJ/2017/0040', '8100839389', '', '2018', 'DISM', '', ''),
(1280, 'Fakorede Ayodele Israel', 'DIABJ/2017/0041', '', 'DIABJ/2017/0041', '8064360553', '', '2018', 'DISM', '', ''),
(1281, 'Igbatim Fidelis', 'DIABJ/2017/0042', '', 'DIABJ/2017/0042', '8066019234', '', '2018', 'DISM', '', ''),
(1282, 'Iwu Augustine Onyekwere', 'DIABJ/2017/0043', '', 'DIABJ/2017/0043', '7065235407', '', '2018', 'DISM', '', ''),
(1283, 'Kwaghger Aondohemba Godwin', 'DIABJ/2017/0044', '', 'DIABJ/2017/0044', '8165792277', '', '2018', 'DISM', '', ''),
(1284, 'Lashinde Emmanuel', 'DIABJ/2017/0045', '', 'DIABJ/2017/0045', '09034447492, 08', '', '2018', 'DISM', '', ''),
(1285, 'Maduakor Joseph Ndubuisi', 'DIABJ/2017/0046', '', 'DIABJ/2017/0046', '08062067085, 08', '', '2018', 'DISM', '', ''),
(1286, 'Maude Fatima', 'DIABJ/2017/0047', '', 'DIABJ/2017/0047', '08053546111, 08', '', '2018', 'DISM', '', ''),
(1287, 'Musa Polycarp Titus', 'DIABJ/2017/0048', '', 'DIABJ/2017/0048', '08069785520, 08', '', '2018', 'DISM', '', ''),
(1288, 'Nasiru Aliyu', 'DIABJ/2017/0049', '', 'DIABJ/2017/0049', '8069764755', '', '2018', 'DISM', '', ''),
(1289, 'Obinani Chukwuka Anthony', 'DIABJ/2017/0050', '', 'DIABJ/2017/0050', '8122562489', '', '2018', 'DISM', '', ''),
(1290, 'Ogah Paul Odey', 'DIABJ/2017/0051', '', 'DIABJ/2017/0051', '8036468596', '', '2018', 'DISM', '', ''),
(1291, 'Ogwu Robert', 'DIABJ/2017/0052', '', 'DIABJ/2017/0052', '9023590393', '', '2018', 'DISM', '', ''),
(1292, 'Okoro Mary Moyo', 'DIABJ/2017/0053', '', 'DIABJ/2017/0053', '07017565401, 08', '', '2018', 'DISM', '', ''),
(1293, 'Okwe Oheji Justice', 'DIABJ/2017/0054', '', 'DIABJ/2017/0054', '7019191954', '', '2018', 'DISM', '', ''),
(1294, 'Peter Nandom Bwaghatle', 'DIABJ/2017/0055', '', 'DIABJ/2017/0055', '810089581', '', '2018', 'DISM', '', ''),
(1295, 'Tanko Ibrahim', 'DIABJ/2017/0056', '', 'DIABJ/2017/0056', '8094536441', '', '2018', 'DISM', '', ''),
(1296, 'Tondoh Aondohemba Godwin', 'DIABJ/2017/0057', '', 'DIABJ/2017/0057', '07068811551, 07', '', '2018', 'DISM', '', ''),
(1297, 'Ujah Adah', 'DIABJ/2017/0058', '', 'DIABJ/2017/0058', '8106283653', '', '2018', 'DISM', '', ''),
(1298, 'OSUALA  JACOB  CHINEDU', 'DIPG/2018/0001', '', 'DIPG/2018/0001', '09037335862,', '', '2018', 'DISM', '', ''),
(1299, 'LAWAL  OLAYINKA  B.', 'DIPG/2018/0002', '', 'DIPG/2018/0002', '08147662424,', '', '2018', 'DISM', '', ''),
(1300, 'AKOMOLAFE  ANTHONY  DEJI', 'DIPG/2018/0003', '', 'DIPG/2018/0003', '08135033040,', '', '2018', 'DISM', '', ''),
(1301, 'ADENE  FRIDAY  ALFRED', 'DIPG/2018/0004', '', 'DIPG/2018/0004', '08065411119,', '', '2018', 'DISM', '', ''),
(1302, 'BABA  JOSEPH', 'DIPG/2018/0005', '', 'DIPG/2018/0005', '07038666025, 08', '', '2018', 'DISM', '', ''),
(1303, 'NWODO  CHRISTIAN  CHIEDOZIE', 'DIPG/2018/0006', '', 'DIPG/2018/0006', '08185750830,', '', '2018', 'DISM', '', ''),
(1304, 'EKE  FELIX  CHINEDU', 'DIPG/2018/0007', '', 'DIPG/2018/0007', '08065336850,', '', '2018', 'DISM', '', ''),
(1305, 'ADERIBIGBE  ADEYEMI  TIMOTHY', 'DIPG/2018/0008', '', 'DIPG/2018/0008', '09098082550,', '', '2018', 'DISM', '', ''),
(1306, 'Samson   Adeeyo', 'DIPG/2018/0009', '', 'DIPG/2018/0009', '08062330695,', '', '2018', 'DISM', '', ''),
(1307, 'JAMIU  ADAM  OPEYEMI', 'DIPG/2018/0010', '', 'DIPG/2018/0010', '08106230109,', '', '2018', 'DISM', '', ''),
(1308, 'UDEH  TOCHUKWU  KELVIN', 'DIPG/2018/0011', '', 'DIPG/2018/0011', '08035189950,', '', '2018', 'DISM', '', ''),
(1309, 'EMEDEM-CHUKWUJI  JOSEPH  NDUKA', 'DIPG/2018/0012', '', 'DIPG/2018/0012', '08037548859,', '', '2018', 'DISM', '', ''),
(1310, 'ONWURAH  PATRICK', 'DIPG/2018/0013', '', 'DIPG/2018/0013', '08061614611,', '', '2018', 'DISM', '', ''),
(1311, 'DUGBELE  DESTINY  OGOCHUKWU', 'DIPG/2018/0014', '', 'DIPG/2018/0014', '08189703072,', '', '2018', 'DISM', '', ''),
(1312, 'OKE  OLUWAGBENGA  SESAN', 'DIPG/2018/0015', '', 'DIPG/2018/0015', '08026788146,', '', '2018', 'DISM', '', ''),
(1313, 'EZE  NDIDI JULIANA', 'DIPG/2018/0016', '', 'DIPG/2018/0016', '07031652144,', '', '2018', 'DISM', '', ''),
(1314, 'EKPENYONG  UWEM  OKON', 'DIPG/2018/0017', '', 'DIPG/2018/0017', '08145527833,', '', '2018', 'DISM', '', ''),
(1315, 'AMEH  FRIDAY', 'DIPG/2018/0018', '', 'DIPG/2018/0018', '07065126678, 08', '', '2018', 'DISM', '', ''),
(1316, 'OGBEKE  MOSES  GOD\'STIME', 'DIPG/2018/0019', '', 'DIPG/2018/0019', '08140707974,', '', '2018', 'DISM', '', ''),
(1317, 'MBAEYI  NNAMDI  SYLVESTER', 'DIPG/2018/0020', '', 'DIPG/2018/0020', '09076067002,', '', '2018', 'DISM', '', ''),
(1318, 'ADAMA  EMMANUEL', 'DIPG/2018/0021', '', 'DIPG/2018/0021', '07064408073,', '', '2018', 'DISM', '', ''),
(1319, 'UDOIDIONG JOSEPH  OKON', 'DIPG/2018/0022', '', 'DIPG/2018/0022', '08036477592,', '', '2018', 'DISM', '', ''),
(1320, 'SANNI  LUKMAN  ADEBAYO', 'DIPG/2018/0023', '', 'DIPG/2018/0023', '08075982783,', '', '2018', 'DISM', '', ''),
(1321, 'ONWUEGBUCHI  CHIOMA  EDITH', 'DIPG/2018/0024', '', 'DIPG/2018/0024', '08141568582,', '', '2018', 'DISM', '', ''),
(1322, 'ONWUASOANYA  SUNDAY  CHIGOZIE', 'DIPG/2018/0025', '', 'DIPG/2018/0025', '08064488529,', '', '2018', 'DISM', '', ''),
(1323, 'OCHOGA  PAUL  OGBU', 'DIPG/2018/0026', '', 'DIPG/2018/0026', '07057321763,  0', '', '2018', 'DISM', '', ''),
(1324, 'ADEOYE  SEUN  ADEKUNLE', 'DIPG/2018/0027', '', 'DIPG/2018/0027', '08138792639,', '', '2018', 'DISM', '', ''),
(1325, 'AKINADE  OLUKAYODE  AMOS', 'DIPG/2018/0028', '', 'DIPG/2018/0028', '08033445606,', '', '2018', 'DISM', '', ''),
(1326, 'AJAYI  ABIOLA  OLUTOSIN', 'DIPG/2018/0029', '', 'DIPG/2018/0029', '09037875478,', '', '2018', 'DISM', '', ''),
(1327, 'AUDU  MICHAEL  JOHN', 'DIPG/2018/0030', '', 'DIPG/2018/0030', '07038668471,', '', '2018', 'DISM', '', ''),
(1328, 'ONYEWOTU  BENJAMIN  CHIAKA', 'DIPG/2018/0031', '', 'DIPG/2018/0031', '07081250563,', '', '2018', 'DISM', '', '');
INSERT INTO `alumni` (`id`, `name`, `matric`, `email`, `password`, `phone`, `sex`, `class_year`, `course`, `passport`, `date`) VALUES
(1329, 'BASSEY  FELIX  IKPI', 'DIPG/2018/0032', '', 'DIPG/2018/0032', '07037442279,', '', '2018', 'DISM', '', ''),
(1330, 'OWOBI  MONDAY  ITODO', 'DIPG/2018/0033', '', 'DIPG/2018/0033', '08064675373,', '', '2018', 'DISM', '', ''),
(1331, 'ADEBAYO  ADAM  ATILOLA', 'DIPG/2018/0034', '', 'DIPG/2018/0034', '07080738227,', '', '2018', 'DISM', '', ''),
(1332, 'UKWAH  ABEL  OKOH', 'DIPG/2018/0035', '', 'DIPG/2018/0035', '08104961827,', '', '2018', 'DISM', '', ''),
(1333, 'ATSER  HUFAN  AUSTIN', 'DIPG/2018/0036', '', 'DIPG/2018/0036', '07032323972,', '', '2018', 'DISM', '', ''),
(1334, 'KAYODE  LAURENCE  BUSAYO ', 'DIPG/2018/0037', '', 'DIPG/2018/0037', '08037471144,', '', '2018', 'DISM', '', ''),
(1335, 'KANGER  EMMANUEL', 'DIPG/2018/0038', '', 'DIPG/2018/0038', '08121688715,', '', '2018', 'DISM', '', ''),
(1336, 'AGU  EKENE  EMMANUEL', 'DIPG/2018/0039', '', 'DIPG/2018/0039', '08161333751,', '', '2018', 'DISM', '', ''),
(1337, 'ACHONWA  IKECHUKWU  ISAIAH', 'DIPG/2018/0040', '', 'DIPG/2018/0040', '08104481248,', '', '2018', 'DISM', '', ''),
(1338, 'OLANIPEKUN  OLUWAFEMI  ISAIAH', 'DIPG/2018/0041', '', 'DIPG/2018/0041', '08168023334,', '', '2018', 'DISM', '', ''),
(1339, 'OLUBODE  OLUNIYI', 'DIPG/2018/0042', '', 'DIPG/2018/0042', '08079182903,', '', '2018', 'DISM', '', ''),
(1340, 'IGBERI  BARNABAS  AMECHI', 'DIPG/2018/0043', '', 'DIPG/2018/0043', '07034715749,', '', '2018', 'DISM', '', ''),
(1341, 'OMOSIGHO  SUNDAY', 'DIPG/2018/0044', '', 'DIPG/2018/0044', '08034843399,', '', '2018', 'DISM', '', ''),
(1342, 'ODIGIE  UWA  WASHINGTON', 'DIPG/2018/0045', '', 'DIPG/2018/0045', '09069956186,', '', '2018', 'DISM', '', ''),
(1343, 'JOSEPH  JOEL', 'DIPG/2018/0046', '', 'DIPG/2018/0046', '08084400450,', '', '2018', 'DISM', '', ''),
(1344, 'OLAPADE  FUNSHO  THOMAS', 'DIPG/2018/0047', '', 'DIPG/2018/0047', '08133001440,', '', '2018', 'DISM', '', ''),
(1345, 'UDOFIA  ANIEKAN', 'DIPG/2018/0048', '', 'DIPG/2018/0048', '08126882295,', '', '2018', 'DISM', '', ''),
(1346, 'CYPRIAN  ABEL  OBINNA', 'DIPG/2018/0049', '', 'DIPG/2018/0049', '08028438519, 09', '', '2018', 'DISM', '', ''),
(1347, 'MURAINA  BABATUNDE  ISIAKA', 'DIPG/2018/0050', '', 'DIPG/2018/0050', '08139505402,', '', '2018', 'DISM', '', ''),
(1348, 'Egbune Kingsley Bartholomew', 'DIPG/2018/0051', '', 'DIPG/2018/0051', '07033305561,', '', '2018', 'DISM', '', ''),
(1349, 'GWAZAH  BULUS  ', 'DIPG/2018/0052', '', 'DIPG/2018/0052', '08062243102,', '', '2018', 'DISM', '', ''),
(1350, 'LAJI  JAMES  IORLAHA', 'DIPG/2018/0053', '', 'DIPG/2018/0053', '07037667294,', '', '2018', 'DISM', '', ''),
(1351, 'MURAINA  BABATUNDE  ISIAKA', 'DIPG/2018/0054', '', 'DIPG/2018/0054', '08139505402,', '', '2018', 'DISM', '', ''),
(1352, 'UPEH ERNEST  THOMAS', 'DIPG/2018/0055', '', 'DIPG/2018/0055', '08060648566,', '', '2018', 'DISM', '', ''),
(1353, 'ADEBAYO  ADAM  ATILOLA', 'DIPG/2018/0056', '', 'DIPG/2018/0056', '07080738227,', '', '2018', 'DISM', '', ''),
(1354, 'ZAKI  PHILIP', 'DIPG/2018/0057', '', 'DIPG/2018/0057', '07062612666, 07', '', '2018', 'DISM', '', ''),
(1355, 'AGAMBA  COLLINS  ARINZE', 'DIPG/2018/0058', '', 'DIPG/2018/0058', '07056488588,', '', '2018', 'DISM', '', ''),
(1356, 'AKPAN  ANIEKAN  CHRISTOPHER', 'DIPG/2018/0059', '', 'DIPG/2018/0059', '09061658257,', '', '2018', 'DISM', '', ''),
(1357, 'ONAH  BERNARD', 'DIPG/2018/0060', '', 'DIPG/2018/0060', '08180874437,', '', '2018', 'DISM', '', ''),
(1358, 'ONYEISI  CHUKWUMA  GOODLUCK', 'DIPG/2018/0061', '', 'DIPG/2018/0061', '07035230441,', '', '2018', 'DISM', '', ''),
(1359, 'DAVID ADEWUNMI  SAMUEL', 'DIPG/2018/0062', '', 'DIPG/2018/0062', '08054249013,', '', '2018', 'DISM', '', ''),
(1360, 'PETER  EGWU   JUDE', 'DIPG/2018/0063', '', 'DIPG/2018/0063', '07019612869,', '', '2018', 'DISM', '', ''),
(1361, 'JAMES  MODUPE  ESTHER', 'DIPG/2018/0064', '', 'DIPG/2018/0064', '08091612017, 08', '', '2018', 'DISM', '', ''),
(1362, 'MICHAEL  EMMANUEL  ADAVIRUKU', 'DIPG/2018/0065', '', 'DIPG/2018/0065', '09024042054,', '', '2018', 'DISM', '', ''),
(1363, 'RABIU  KOREDE', 'DIPG/2018/0066', '', 'DIPG/2018/0066', '08132123150,', '', '2018', 'DISM', '', ''),
(1364, 'AYANGBESAN  SAMSON', 'DIPG/2018/0067', '', 'DIPG/2018/0067', '08132161914,', '', '2018', 'DISM', '', ''),
(1365, 'OLANIPEKUN  OLUWAFEMI  ISAIAH', 'DIPG/2018/0068', '', 'DIPG/2018/0068', '08168023334,', '', '2018', 'DISM', '', ''),
(1366, 'ADENIRAN  DAVID  ADEWALE', 'DIPG/2018/0069', '', 'DIPG/2018/0069', '08178788307,', '', '2018', 'DISM', '', ''),
(1367, 'THOMAS   AYORINDE  FOLORUNSHO', 'DIPG/2018/0070', '', 'DIPG/2018/0070', '09033732743,', '', '2018', 'DISM', '', ''),
(1368, 'AKIBA  EYOH  DANIEL', 'DIPG/2018/0071', '', 'DIPG/2018/0071', '09094643819,', '', '2018', 'DISM', '', ''),
(1369, 'ABOLADE  YINKA  ROTIMI', 'DIPG/2018/0072', '', 'DIPG/2018/0072', '08170108939,', '', '2018', 'DISM', '', ''),
(1370, 'MADU  PHILIP', 'DIPG/2018/0073', '', 'DIPG/2018/0073', '08147614178,', '', '2018', 'DISM', '', ''),
(1371, 'ONIBUDO  OLUSEGUN  OLUDARE', 'DIPG/2018/0074', '', 'DIPG/2018/0074', '08177411435,', '', '2018', 'DISM', '', ''),
(1372, 'BASSEY  EMMANUEL  UBI', 'DIPG/2018/0075', '', 'DIPG/2018/0075', '09039228403,', '', '2018', 'DISM', '', ''),
(1373, 'OJOBO  AUGUSTINE  CHINASA', 'DIPG/2018/0076', '', 'DIPG/2018/0076', '08062489209,', '', '2018', 'DISM', '', ''),
(1374, 'AUGUSTINE  OYINLAYEFA  DAVID', 'DIPG/2018/0077', '', 'DIPG/2018/0077', '08108126219,', '', '2018', 'DISM', '', ''),
(1375, 'Ogbonna Thank-God', 'DIPG/2018/0078', '', 'DIPG/2018/0078', '07089470692,', '', '2018', 'DISM', '', ''),
(1376, 'ENEBELI  EDWIN  OGOCHUKWU', 'DIPG/2018/0079', '', 'DIPG/2018/0079', '08067538545, 09', '', '2018', 'DISM', '', ''),
(1377, 'JOHNNIE  JAMES  ETUKUDO', 'DIPG/2018/0080', '', 'DIPG/2018/0080', '08037023651,', '', '2018', 'DISM', '', ''),
(1378, 'AYANDIBU  AYO  LANRE', 'DIPG/2018/0081', '', 'DIPG/2018/0081', '08133125233,', '', '2018', 'DISM', '', ''),
(1379, 'CYPRIAN  ABEL  OBINNA', 'DIPG/2018/0082', '', 'DIPG/2018/0082', '08028438519, 09', '', '2018', 'DISM', '', ''),
(1380, 'ADEDEJI  BABATUNDE  ABDUIQUDUS', 'DIPG/2018/0083', '', 'DIPG/2018/0083', '08084784854,', '', '2018', 'DISM', '', ''),
(1381, 'ADISA  RASHEED  TOPE', 'DIPG/2018/0084', '', 'DIPG/2018/0084', '09098624504,', '', '2018', 'DISM', '', ''),
(1382, 'ETIM  WILSON  UDUAK', 'DIPG/2018/0085', '', 'DIPG/2018/0085', '08121601205, 08', '', '2018', 'DISM', '', ''),
(1383, 'CHUKWUKA  MICHAEL  NDUBUISI', 'DIPG/2018/0086', '', 'DIPG/2018/0086', '07034925535,', '', '2018', 'DISM', '', ''),
(1384, 'OSINOWO  SAMUEL  OLUWASEGUN', 'DIPG/2018/0087', '', 'DIPG/2018/0087', '09033257178, 08', '', '2018', 'DISM', '', ''),
(1385, 'AIDELOKHAI  ESECHIE  ISAAC', 'DIPG/2018/0088', '', 'DIPG/2018/0088', '07031368782,', '', '2018', 'DISM', '', ''),
(1386, 'CHUKWUNWEGO  OSIKE  GODSWILL', 'DIPG/2018/0089', '', 'DIPG/2018/0089', '08175342931,', '', '2018', 'DISM', '', ''),
(1387, 'EDAGU  MAXWELL  BARTHOLOMEW', 'DIPG/2018/0090', '', 'DIPG/2018/0090', '08169496063,', '', '2018', 'DISM', '', ''),
(1388, 'FADUMILA  OLUWAGBENGA  PETER', 'DIPG/2018/0091', '', 'DIPG/2018/0091', '08065018343,', '', '2018', 'DISM', '', ''),
(1389, 'IBHAZUKOR  NICHOLAS  EHIS', 'DIPG/2018/0092', '', 'DIPG/2018/0092', '07039403370,', '', '2018', 'DISM', '', ''),
(1390, 'DAVID  OLWATIMILEHIN RAPHAEL', 'DIPG/2018/0093', '', 'DIPG/2018/0093', '08182797667,', '', '2018', 'DISM', '', ''),
(1391, 'PERETOMODE  MARY', 'DIPG/2018/0094', '', 'DIPG/2018/0094', '07066081459,', '', '2018', 'DISM', '', ''),
(1392, 'MBANG  OBETEN   EKPO', 'DIPG/2018/0095', '', 'DIPG/2018/0095', '07085085067, 07', '', '2018', 'DISM', '', ''),
(1393, 'AKOSILE  OJO  ABRAHAM ', 'DIPG/2018/0096', '', 'DIPG/2018/0096', '07010073291,', '', '2018', 'DISM', '', ''),
(1394, 'OGUNRO  OLAYEMI  SUNDAY', 'DIPG/2018/0097', '', 'DIPG/2018/0097', '08104986175, 08', '', '2018', 'DISM', '', ''),
(1395, 'OGUNBIYI  OLUSOLA  MICHAEL', 'DIPG/2018/0098', '', 'DIPG/2018/0098', '08063848002,', '', '2018', 'DISM', '', ''),
(1396, 'ADETAYO  BABATUNDE  ADEMOLA', 'DIPG/2018/0099', '', 'DIPG/2018/0099', '08038994429,', '', '2018', 'DISM', '', ''),
(1397, 'ADEYEMI  ADEOYE  FRANCIS', 'DIPG/2018/0100', '', 'DIPG/2018/0100', '08088567342, 08', '', '2018', 'DISM', '', ''),
(1398, 'ADESANYA  ABDOUL-HAMMED  ADESOJI', 'DIPG/2018/0101', '', 'DIPG/2018/0101', '08032283417, 08', '', '2018', 'DISM', '', ''),
(1399, 'ASIJE  LUCKY  OMAMUYOUWI', 'DIPG/2018/0102', '', 'DIPG/2018/0102', '08163306044,', '', '2018', 'DISM', '', ''),
(1400, 'ASARE   AFOLAKEMI  CYNTHIA', 'DIPG/2018/0103', '', 'DIPG/2018/0103', '07087127530,', '', '2018', 'DISM', '', ''),
(1401, 'ADELEKE  JELIL  ADE', 'DIPG/2018/0104', '', 'DIPG/2018/0104', '08166681271,', '', '2018', 'DISM', '', ''),
(1402, 'ALIM  SUNDAY  PANYA', 'DIPG/2018/0105', '', 'DIPG/2018/0105', '08168053653,', '', '2018', 'DISM', '', ''),
(1403, 'SALAMI  AYUBA ', 'DIPG/2018/0106', '', 'DIPG/2018/0106', '08122333817,', '', '2018', 'DISM', '', ''),
(1404, 'JOHN  EPERETEI  KELVIN', 'DIPG/2018/0107', '', 'DIPG/2018/0107', '07059868730,', '', '2018', 'DISM', '', ''),
(1405, 'YAYA  RAZAK  BOLAKALE', 'DIPG/2018/0108', '', 'DIPG/2018/0108', '08064062556,', '', '2018', 'DISM', '', ''),
(1406, 'ADENEKAN  KUDIRAT  AMOKE', 'DIPG/2018/0109', '', 'DIPG/2018/0109', '08035170342,', '', '2018', 'DISM', '', ''),
(1407, 'IGBOBA  EMMANUEL  IFECHUKWUDE', 'DIPG/2018/0110', '', 'DIPG/2018/0110', '08080016939,', '', '2018', 'DISM', '', ''),
(1408, 'OKOYE   CHINEDU  PHILIP', 'DIPG/2018/0111', '', 'DIPG/2018/0111', '08178124609,', '', '2018', 'DISM', '', ''),
(1409, 'PATRICK  BENEDICT  NOYEREM', 'DIPG/2018/0112', '', 'DIPG/2018/0112', '07063364512,', '', '2018', 'DISM', '', ''),
(1410, 'UMAR  AHMAD BILYAMINU', 'DIPG/2018/0113', '', 'DIPG/2018/0113', '07068606493,  0', '', '2018', 'DISM', '', ''),
(1411, 'USMAN  WASIU  ALABI', 'DIPG/2018/0114', '', 'DIPG/2018/0114', '09076604103,', '', '2018', 'DISM', '', ''),
(1412, 'OMEFE  TAIWO  ADEDOTUN', 'DIPG/2018/0115', '', 'DIPG/2018/0115', '07017404800,', '', '2018', 'DISM', '', ''),
(1413, 'OMOROGBE  MOSES', 'DIPG/2018/0116', '', 'DIPG/2018/0116', '081338710744,', '', '2018', 'DISM', '', ''),
(1414, 'NWOKOLO  STEPHEN  NDIDI', 'DIPG/2018/0117', '', 'DIPG/2018/0117', '08060489324,', '', '2018', 'DISM', '', ''),
(1415, 'UDOFIA  ANIEKAN', 'DIPG/2018/0118', '', 'DIPG/2018/0118', '08126882295,', '', '2018', 'DISM', '', ''),
(1416, 'OKPE ALIH  AMOS', 'DIPG/2018/0119', '', 'DIPG/2018/0119', '08039358558,', '', '2018', 'DISM', '', ''),
(1417, 'EKPENYONG  UWEM', 'DIPG/2018/0120', '', 'DIPG/2018/0120', '08145527833,', '', '2018', 'DISM', '', ''),
(1418, 'AYILA SAMUEL', 'DIPG/2018/0121', '', 'DIPG/2018/0121', '07033680557, 08', '', '2018', 'DISM', '', ''),
(1419, 'OBATHA  GABRIEL', 'DIPG/2018/0122', '', 'DIPG/2018/0122', '08075303154,', '', '2018', 'DISM', '', ''),
(1420, 'ONONIWU  FAUSTINUS', 'DIPG/2018/0123', '', 'DIPG/2018/0123', '08035084583,', '', '2018', 'DISM', '', ''),
(1421, 'ADEKOYA  SAMUEL  OLORUNSOGO', 'DIPG/2018/0124', '', 'DIPG/2018/0124', '08026540604,', '', '2018', 'DISM', '', ''),
(1422, 'ABOLADE ROTIMI  YINKA', 'DIPG/2018/0125', '', 'DIPG/2018/0125', '08170108939,', '', '2018', 'DISM', '', ''),
(1423, 'EMMANUEL HILLARY CHIJIOKE', 'DIPG/2018/0126', '', 'DIPG/2018/0126', '08130901510,', '', '2018', 'DISM', '', ''),
(1424, 'EDET PETER OKON', 'DIPG/2018/0127', '', 'DIPG/2018/0127', '08166749519,', '', '2018', 'DISM', '', ''),
(1425, 'OGUNKOYA  OMOTAYO  PAUL', 'DIPG/2018/0128', '', 'DIPG/2018/0128', '08067321845, 08', '', '2018', 'DISM', '', ''),
(1426, 'OLADIMEJI  BARAKAT  OMOWUNMI', 'DIPG/2018/0129', '', 'DIPG/2018/0129', '07010028657,  0', '', '2018', 'DISM', '', ''),
(1427, 'OBI  SAVIOUR  TOCHUKWU', 'DIPG/2018/0130', '', 'DIPG/2018/0130', '07053717636,', '', '2018', 'DISM', '', ''),
(1428, 'OPAOLA  ADEDAYO  EMMANUEL', 'DIPG/2018/0131', '', 'DIPG/2018/0131', '08137597056,', '', '2018', 'DISM', '', ''),
(1429, 'ANTE  JACKSON', 'DIPG/2018/0132', '', 'DIPG/2018/0132', '07010098864,', '', '2018', 'DISM', '', ''),
(1430, 'ANYAEGBU  STANLEY  CHIBUEZE', 'DIPG/2018/0133', '', 'DIPG/2018/0133', '08165535919,', '', '2018', 'DISM', '', ''),
(1431, 'OLUWADARE  SEYI', 'DIPG/2018/0134', '', 'DIPG/2018/0134', '08066641404, 08', '', '2018', 'DISM', '', ''),
(1432, 'EZE  CHARLES', 'DIPG/2018/0135', '', 'DIPG/2018/0135', '07050546659,', '', '2018', 'DISM', '', ''),
(1433, 'OGUGU VINCENT  SATURDAY', 'DIPG/2018/0136', '', 'DIPG/2018/0136', '09036606552,', '', '2018', 'DISM', '', ''),
(1434, 'IDOWU OLUGBENGA  OLANREWAJU', 'DIPG/2018/0137', '', 'DIPG/2018/0137', '08058458798,', '', '2018', 'DISM', '', ''),
(1435, 'ODUM  CYRIL  CHIEDU', 'DIPG/2018/0138', '', 'DIPG/2018/0138', '08062465194, 08', '', '2018', 'DISM', '', ''),
(1436, 'BELLO ADESOJI', 'DIPG/2018/0139', '', 'DIPG/2018/0139', '08063701605,', '', '2018', 'DISM', '', ''),
(1437, 'Samson   Adeeyo', 'DIPG/2018/0140', '', 'DIPG/2018/0140', '08062330695,', '', '2018', 'DISM', '', ''),
(1438, 'Offa  Fredrick  Tuiboukebina', 'DIPG/2018/0141', '', 'DIPG/2018/0141', '08138435173,', '', '2018', 'DISM', '', ''),
(1439, 'UBAHAKWE CHINEDU', 'DIPG/2018/0142', '', 'DIPG/2018/0142', '08023205892,', '', '2018', 'DISM', '', ''),
(1440, 'UBAHAKWE  CHINEDUM  UZOEZIE', 'DIPG/2018/0144', '', 'DIPG/2018/0144', '08023205892,', '', '2018', 'DISM', '', ''),
(1441, 'EHIGIATOR  IYABOSA  AMOS', 'DIPG/2018/0145', '', 'DIPG/2018/0145', '07060633055,', '', '2018', 'DISM', '', ''),
(1442, 'ADESUYI  GODWIN  OLUWASEGUN', 'DIPG/2018/0146', '', 'DIPG/2018/0146', '08061170078,  0', '', '2018', 'DISM', '', ''),
(1443, 'ANIEDI  UDO  ESSIEN', 'DIPG/2018/0147', '', 'DIPG/2018/0147', '08036645460,', '', '2018', 'DISM', '', ''),
(1444, 'ADEBANJO  ADETOYE  ABIMBOLA', 'DIPG/2018/0148', '', 'DIPG/2018/0148', '08028073191, 08', '', '2018', 'DISM', '', ''),
(1445, 'NYONG  EFFIONG  HERBERT', 'DIPG/2018/0149', '', 'DIPG/2018/0149', '08181040504,', '', '2018', 'DISM', '', ''),
(1446, 'OBOROKUMO  JOSHUA  DEIGBOMO', 'DIPG/2018/0150', '', 'DIPG/2018/0150', '08101340042,', '', '2018', 'DISM', '', ''),
(1447, 'ADECHABO  PETER   OCHOHEPO', 'DIPG/2018/0151', '', 'DIPG/2018/0151', '08030715919,', '', '2018', 'DISM', '', ''),
(1448, 'AHMED  USMAN  JUNIOR', 'DIPG/2018/0152', '', 'DIPG/2018/0152', '08034500557,', '', '2018', 'DISM', '', ''),
(1449, 'IGUE  EMMANUEL', 'DIPG/2018/0153', '', 'DIPG/2018/0153', '08072104548,', '', '2018', 'DISM', '', ''),
(1450, 'EZEANYIKA  VICTORIA  CHIZOBA', 'DIPG/2018/0154', '', 'DIPG/2018/0154', '08037612781,', '', '2018', 'DISM', '', ''),
(1451, 'ILUFOYE  OPEYEMI  SAMSON', 'DIPG/2018/0155', '', 'DIPG/2018/0155', '07035557626,', '', '2018', 'DISM', '', ''),
(1452, 'ODOMODE OLUWAGBEMIGA HENRY', 'DIPG/2018/0156', '', 'DIPG/2018/0156', '09095341615,', '', '2018', 'DISM', '', ''),
(1453, 'JIMOH  ILIAS  AFEIKE', 'DIPG/2018/0157', '', 'DIPG/2018/0157', '08034617988,', '', '2018', 'DISM', '', ''),
(1454, 'GODDEY  OGIE  OLADIMEJI', 'DIPG/2018/0158', '', 'DIPG/2018/0158', '08125983989, 08', '', '2018', 'DISM', '', ''),
(1455, 'OBELE  UCHECHUKWU  UZODINMA', 'DIPG/2018/0159', '', 'DIPG/2018/0159', '08068494611, 08', '', '2018', 'DISM', '', ''),
(1456, 'EBONYI  EDWARD  ELIAS', 'DIPG/2018/0160', '', 'DIPG/2018/0160', '09057038697, 07', '', '2018', 'DISM', '', ''),
(1457, 'MATHEW  RAPHAEL  AMEH', 'DIPG/2018/0161', '', 'DIPG/2018/0161', '09032890468,', '', '2018', 'DISM', '', ''),
(1458, 'AKINGBE  MICHAEL  SHOGO', 'DIPG/2018/0162', '', 'DIPG/2018/0162', '07060666606, 08', '', '2018', 'DISM', '', ''),
(1459, 'OKON  CHRISTOPHER  EDEM', 'DIPG/2018/0163', '', 'DIPG/2018/0163', '08103281957,  0', '', '2018', 'DISM', '', ''),
(1460, 'AKINMOYE  ILEMOBAYO  AUSTINE', 'DIPG/2018/0164', '', 'DIPG/2018/0164', '08037341611, 08', '', '2018', 'DISM', '', ''),
(1461, 'AGIM  TERNGU  MOSES', 'DIPG/2018/0165', '', 'DIPG/2018/0165', '07039009639,', '', '2018', 'DISM', '', ''),
(1462, 'TORUFA  RICHARD', 'DIPG/2018/0166', '', 'DIPG/2018/0166', '07062849430,', '', '2018', 'DISM', '', ''),
(1463, 'AZEEZ  RILIWAN', 'DIPG/2018/0167', '', 'DIPG/2018/0167', '09072272504,', '', '2018', 'DISM', '', ''),
(1464, 'AKINGBADE  LUKMAN  ', 'DIPG/2018/0168', '', 'DIPG/2018/0168', '08035950884,', '', '2018', 'DISM', '', ''),
(1465, 'ECHIPUE  CHUKWUJINDU  MAXWELL', 'DIPG/2018/0169', '', 'DIPG/2018/0169', '08063558687,', '', '2018', 'DISM', '', ''),
(1466, 'OYONO  OFEM  OMALERO', 'DIPG/2018/0170', '', 'DIPG/2018/0170', '08031337139,', '', '2018', 'DISM', '', ''),
(1467, 'OKORO  PATRICK  UDOKA', 'DIPG/2018/0171', '', 'DIPG/2018/0171', '08033809940, 09', '', '2018', 'DISM', '', ''),
(1468, 'EZE SYLVANUS  OGONNAYA', 'DIPG/2018/0172', '', 'DIPG/2018/0172', '08104701708,', '', '2018', 'DISM', '', ''),
(1469, 'OYINBODARE TIMOTHY OLAKUNLE', 'DIPG/2018/0173', '', 'DIPG/2018/0173', '08037891564,', '', '2018', 'DISM', '', ''),
(1470, 'ADERIBIGBE  EBENEZER   OLUWASEGUN', 'DIPG/2018/0174', '', 'DIPG/2018/0174', '08082178459, 08', '', '2018', 'DISM', '', ''),
(1471, 'KALU  MIRACLE  CHINONSO', 'DIPG/2018/0175', '', 'DIPG/2018/0175', '08080536995,', '', '2018', 'DISM', '', ''),
(1472, 'AMOS-NNANNA AGWARA  ISRAEL', 'DIPG/2018/0176', '', 'DIPG/2018/0176', '07032440257,', '', '2018', 'DISM', '', ''),
(1473, 'SANNI  SAMUEL', 'DIPG/2018/0177', '', 'DIPG/2018/0177', '08021347643,', '', '2018', 'DISM', '', ''),
(1474, 'ODU  PASCHAL  ABANG', 'DIPG/2018/0178', '', 'DIPG/2018/0178', '08082412465,', '', '2018', 'DISM', '', ''),
(1475, 'AROGUNDADE  BABAJIDE', 'DIPG/2018/0179', '', 'DIPG/2018/0179', '09082848302,', '', '2018', 'DISM', '', ''),
(1476, 'OLOPADE  OLUFEMI    PETER', 'DIPG/2018/0180', '', 'DIPG/2018/0180', '08086321925,', '', '2018', 'DISM', '', ''),
(1477, 'NWOKENTA   OSONDU', 'DIPG/2018/0181', '', 'DIPG/2018/0181', '08167719356,', '', '2018', 'DISM', '', ''),
(1478, 'NWANETO  UZOMA  ANTHONY', 'DIPG/2018/0182', '', 'DIPG/2018/0182', '08165319688,', '', '2018', 'DISM', '', ''),
(1479, 'AGAN  SAMUEL  SEGBAWAN', 'DIPG/2018/0183', '', 'DIPG/2018/0183', '07036222605, 09', '', '2018', 'DISM', '', ''),
(1480, 'AJAYI  OSATO  JEPUTHAH', 'DIPG/2018/0184', '', 'DIPG/2018/0184', '09035970254,', '', '2018', 'DISM', '', ''),
(1481, 'SULEIMAN  KAWO  IBRAHIM', 'DIPG/2018/0185', '', 'DIPG/2018/0185', '08167297403,', '', '2018', 'DISM', '', ''),
(1482, 'ADEMUYIWA  RASHEED  ADEWALE', 'DIPG/2018/0186', '', 'DIPG/2018/0186', '08084869154, 09', '', '2018', 'DISM', '', ''),
(1483, 'UGWU  IFEANYI  VALENTINE', 'DIIKY/2018/0001', '', 'DIIKY/2018/0001', '08136549111,', '', '2018', 'DISM', '', ''),
(1484, 'GLABA  JOSEPH  MALO', 'DIIKY/2018/0002', '', 'DIIKY/2018/0002', '07063225626,', '', '2018', 'DISM', '', ''),
(1485, 'ATANDA  MAROOPH  ADEYINKA', 'DIIKY/2018/0003', '', 'DIIKY/2018/0003', '08033373159, 08', '', '2018', 'DISM', '', ''),
(1486, 'DIRIBE  CHIKE  HYGINUS', 'DIIKY/2018/0004', '', 'DIIKY/2018/0004', '08097746907,', '', '2018', 'DISM', '', ''),
(1487, 'IKECHUKWU  CHUKS  CHIEDU', 'DIIKY/2018/0005', '', 'DIIKY/2018/0005', '08030557797,', '', '2018', 'DISM', '', ''),
(1488, 'OKOLI  CHARLES  IFEANYI', 'DIIKY/2018/0006', '', 'DIIKY/2018/0006', '08083458963,', '', '2018', 'DISM', '', ''),
(1489, 'VIWAHO  OGUNGBE  EMMANUEL', 'DIIKY/2018/0007', '', 'DIIKY/2018/0007', '08061509781,', '', '2018', 'DISM', '', ''),
(1490, 'IDOKO  BEN   EMMANUEL', 'DIIKY/2018/0008', '', 'DIIKY/2018/0008', '08104255097,', '', '2018', 'DISM', '', ''),
(1491, 'UMOEKA  UWEMEDIMO  ENEFIOK', 'DIIKY/2018/0009', '', 'DIIKY/2018/0009', '07034702007,', '', '2018', 'DISM', '', ''),
(1492, 'OGWIJI  GODWIN  ROBERT', 'DIIKY/2018/0010', '', 'DIIKY/2018/0010', '07069054886,', '', '2018', 'DISM', '', ''),
(1493, 'AKINJOLE  KINGSLEY  AKINGBADE', 'DIIKY/2018/0011', '', 'DIIKY/2018/0011', '08055348084,', '', '2018', 'DISM', '', ''),
(1494, 'ANYA  IFEANYI  KALU', 'DIIKY/2018/0012', '', 'DIIKY/2018/0012', '08039145789,', '', '2018', 'DISM', '', ''),
(1495, 'MBANWU  CHIBUZOR  MATTHEW', 'DIIKY/2018/0013', '', 'DIIKY/2018/0013', '08145556365,', '', '2018', 'DISM', '', ''),
(1496, 'MOMOH  ADINUYI  JIMOH', 'DIIKY/2018/0014', '', 'DIIKY/2018/0014', '08066496638,', '', '2018', 'DISM', '', ''),
(1497, 'ODUWOLE  ADEOLA  HAKEEM', 'DIIKY/2018/0015', '', 'DIIKY/2018/0015', '08052042935,', '', '2018', 'DISM', '', ''),
(1498, 'ENI  IBOR', 'DIIKY/2018/0016', '', 'DIIKY/2018/0016', '08065997611,', '', '2018', 'DISM', '', ''),
(1499, 'IBEABUCHI  ANTHONY  CHUKWUKA', 'DIIKY/2018/0017', '', 'DIIKY/2018/0017', '08061365394,', '', '2018', 'DISM', '', ''),
(1500, 'OGWUCHE  MICHAEL  ABAH', 'DIIKY/2018/0018', '', 'DIIKY/2018/0018', '08114556814,', '', '2018', 'DISM', '', ''),
(1501, 'OGEBE  VICTOR  IDOKO', 'DIIKY/2018/0019', '', 'DIIKY/2018/0019', '08105850339,', '', '2018', 'DISM', '', ''),
(1502, 'ISICHELI  GODWIN  SHERIN', 'DIIKY/2018/0020', '', 'DIIKY/2018/0020', '08023313690,', '', '2018', 'DISM', '', ''),
(1503, 'BALOGUN  FAMOUS  FRANKLIN', 'DIIKY/2018/0021', '', 'DIIKY/2018/0021', '09060148233,', '', '2018', 'DISM', '', ''),
(1504, 'AJAEGBU  JOHN-PAUL  UGOCHUKWU', 'DIIKY/2018/0022', '', 'DIIKY/2018/0022', '08063199941, 08', '', '2018', 'DISM', '', ''),
(1505, 'ADENIYI OLUSHOLA MATHEW', 'DIIKY/2018/0023', '', 'DIIKY/2018/0023', '08032509382,', '', '2018', 'DISM', '', ''),
(1506, 'ADAMADE SIMON', 'DIIKY/2018/0024', '', 'DIIKY/2018/0024', '08137881025,', '', '2018', 'DISM', '', ''),
(1507, 'SAFIRIYU  ABIOLA', 'DIIKY/2018/0025', '', 'DIIKY/2018/0025', '', '', '2018', 'DISM', '', ''),
(1508, 'NWAOKOLO CHUKWUWEIKE  EUGENE', 'DIIKY/2018/0026', '', 'DIIKY/2018/0026', '', '', '2018', 'DISM', '', ''),
(1509, 'AKUMA  EMMANUEL  CHUKWUEMEKA', 'DIIKY/2018/0027', '', 'DIIKY/2018/0027', '08179577220,', '', '2018', 'DISM', '', ''),
(1510, 'OKEOWO OLUGBENGA OLUWASEUN', 'DIIKY/2018/0028', '', 'DIIKY/2018/0028', '08033899707,', '', '2018', 'DISM', '', ''),
(1511, 'IGWEMBA CHIOMA BLESSING', 'DIIKY/2018/0029', '', 'DIIKY/2018/0029', '07039806443,', '', '2018', 'DISM', '', ''),
(1512, 'ANIH  NWABUEZE  REX', 'DIIKY/2018/0030', '', 'DIIKY/2018/0030', '07068752736,', '', '2018', 'DISM', '', ''),
(1513, 'FAYEMI FELIX? ', 'DIIKY/2018/0031', '', 'DIIKY/2018/0031', '08057657576,', '', '2018', 'DISM', '', ''),
(1514, 'STEPHEN EMEM ', 'DIIKY/2018/0032', '', 'DIIKY/2018/0032', '08163392902,', '', '2018', 'DISM', '', ''),
(1515, '?ARCHEBONG ANIETIE ', 'DIIKY/2018/0033', '', 'DIIKY/2018/0033', '08060883708,', '', '2018', 'DISM', '', ''),
(1516, 'OMOYELE FELIX OLATUNDE? ', 'DIIKY/2018/0034', '', 'DIIKY/2018/0034', '08118065286,', '', '2018', 'DISM', '', ''),
(1517, 'DANIEL JOHN ', 'DIIKY/2018/0035', '', 'DIIKY/2018/0035', '08106122359,', '', '2018', 'DISM', '', ''),
(1518, 'GARBA MUSA? ?', 'DIIKY/2018/0036', '', 'DIIKY/2018/0036', '07032983456,', '', '2018', 'DISM', '', ''),
(1519, 'BENJAMIN IMO KULE?', 'DIIKY/2018/0037', '', 'DIIKY/2018/0037', '08039531708,', '', '2018', 'DISM', '', ''),
(1520, 'OGEH DESTINY ONYEKA', 'DIIKY/2018/0038', '', 'DIIKY/2018/0038', ' 08027292193,', '', '2018', 'DISM', '', ''),
(1521, 'ADEKUNLE  KEHINDE  ISAIAH', 'DISGO/2018/0001', '', 'DISGO/2018/0001', '08102125562,', '', '2018', 'DISM', '', ''),
(1522, 'OLADOSU  FUNSHO', 'DISGO/2018/0002', '', 'DISGO/2018/0002', '08091863916,', '', '2018', 'DISM', '', ''),
(1523, 'OSINAIKE  OLUWADAMILOLA  O.', 'DISGO/2018/0003', '', 'DISGO/2018/0003', '08034634998,', '', '2018', 'DISM', '', ''),
(1524, 'PHILLIPS  OLADIPO  AGBOOLA', 'DISGO/2018/0004', '', 'DISGO/2018/0004', '08100102331, 08', '', '2018', 'DISM', '', ''),
(1525, 'CHIJIOKE  U.  SUNDAY', 'DISGO/2018/0005', '', 'DISGO/2018/0005', '09072237867,', '', '2018', 'DISM', '', ''),
(1526, 'FATOKUN  DAMILOLA  ELIJAH', 'DISGO/2018/0006', '', 'DISGO/2018/0006', '09035233329,', '', '2018', 'DISM', '', ''),
(1527, 'MATTHEW  IKWULONO  FELIX', 'DISGO/2018/0007', '', 'DISGO/2018/0007', '08062112767,', '', '2018', 'DISM', '', ''),
(1528, 'OYEGOKE  ADEWUMI  JOSHUA', 'DISGO/2018/0008', '', 'DISGO/2018/0008', '8039726853', '', '2018', 'DISM', '', ''),
(1529, 'JEIFA  AZEEZ  ADEWALE', 'DISGO/2018/0009', '', 'DISGO/2018/0009', '08106197740,', '', '2018', 'DISM', '', ''),
(1530, 'EGBE  AKPOMIEMIEODAFE  KELVIN', 'DISGO/2018/0010', '', 'DISGO/2018/0010', '08060590912,  0', '', '2018', 'DISM', '', ''),
(1531, 'ALARAPE  ADEMOLA  AYINDE', 'DISGO/2018/0011', '', 'DISGO/2018/0011', '08032187276,', '', '2018', 'DISM', '', ''),
(1532, 'SANNI  OZOVEHE  NASIP', 'DISGO/2018/0012', '', 'DISGO/2018/0012', '07061519022,', '', '2018', 'DISM', '', ''),
(1533, 'OKONKWO  SUNDAY  ANTHONY', 'DISGO/2018/0013', '', 'DISGO/2018/0013', '08036606488,', '', '2018', 'DISM', '', ''),
(1534, 'ADEWOLE SAMSON', 'DISGO/2018/0014', '', 'DISGO/2018/0014', '08149222111,', '', '2018', 'DISM', '', ''),
(1535, 'ESUKU EMMANUEL EFOLI', 'DISGO/2018/0015', '', 'DISGO/2018/0015', '08065233778,', '', '2018', 'DISM', '', ''),
(1536, 'UCTTU PETER IDAGU', 'DISGO/2018/0016', '', 'DISGO/2018/0016', '08032902499,', '', '2018', 'DISM', '', ''),
(1537, 'AKINBOHUN  AKINDELE  EZEKIEL', 'DISGO/2018/0017', '', 'DISGO/2018/0017', '08036495697,', '', '2018', 'DISM', '', ''),
(1538, 'OHAKA  LONGINUS', 'DISGO/2018/0018', '', 'DISGO/2018/0018', '08034894517,', '', '2018', 'DISM', '', ''),
(1539, 'OLATUNJI OLUWASEYI ABRAHAM  ', 'DISGO/2018/0019', '', 'DISGO/2018/0019', '09091498421,', '', '2018', 'DISM', '', ''),
(1540, 'SOFEKUN  WALE  DAVID', 'DISGO/2018/0020', '', 'DISGO/2018/0020', '07066010401,', '', '2018', 'DISM', '', ''),
(1541, 'FABODE  BUKOLA  EUNICE', 'DISGO/2018/0021', '', 'DISGO/2018/0021', '08102077467,', '', '2018', 'DISM', '', ''),
(1542, 'CHEGWE  AZUKA  COLLINS', 'DISGO/2018/0022', '', 'DISGO/2018/0022', '08034455546,', '', '2018', 'DISM', '', ''),
(1543, 'AWODIRE  OLUROTIMI  SAMUEL', 'DISGO/2018/0023', '', 'DISGO/2018/0023', '08032901017, 08', '', '2018', 'DISM', '', ''),
(1544, 'BOLU-UFOEGBUNE  EMMANUEL  NNAMDI', 'DISGO/2018/0024', '', 'DISGO/2018/0024', '08137649599,', '', '2018', 'DISM', '', ''),
(1545, 'ADEBISI  FOLAGBADE  JOSHUA', 'DISGO/2018/0025', '', 'DISGO/2018/0025', '08067411568,', '', '2018', 'DISM', '', ''),
(1546, 'AGU  FRANCIS', 'DISGO/2018/0026', '', 'DISGO/2018/0026', '09074118293,', '', '2018', 'DISM', '', ''),
(1547, 'JABIR  SABO  MUSA', 'DISGO/2018/0027', '', 'DISGO/2018/0027', '09099087511, 08', '', '2018', 'DISM', '', ''),
(1548, 'NNAMDI  VICTOR', 'DISGO/2018/0028', '', 'DISGO/2018/0028', '09071703320,', '', '2018', 'DISM', '', ''),
(1549, 'ADANS CHRISTOPHER EMMANUEL', 'DISGO/2018/0029', '', 'DISGO/2018/0029', '08182933486,', '', '2018', 'DISM', '', ''),
(1550, 'KASIMU  ABDULSALAM  ', 'DISGO/2018/0030', '', 'DISGO/2018/0030', '08022508938,', '', '2018', 'DISM', '', ''),
(1551, 'KALU  MIRACLE  CHINONSO', 'DISGO/2018/0031', '', 'DISGO/2018/0031', '08080536995,', '', '2018', 'DISM', '', ''),
(1552, 'AMOS-NNANNA AGWARA  ISRAEL', 'DISGO/2018/0032', '', 'DISGO/2018/0032', '07032440257,', '', '2018', 'DISM', '', ''),
(1553, 'SANNI  SAMUEL', 'DISGO/2018/0033', '', 'DISGO/2018/0033', '08021347643,', '', '2018', 'DISM', '', ''),
(1554, 'ODU  PASCHAL  ABANG', 'DISGO/2018/0034', '', 'DISGO/2018/0034', '08082412465,', '', '2018', 'DISM', '', ''),
(1555, 'AROGUNDADE  BABAJIDE', 'DISGO/2018/0035', '', 'DISGO/2018/0035', '09082848302,', '', '2018', 'DISM', '', ''),
(1556, 'OLOPADE  OLUFEMI    PETER', 'DISGO/2018/0036', '', 'DISGO/2018/0036', '08086321925,', '', '2018', 'DISM', '', ''),
(1557, 'NWOKENTA   OSONDU', 'DISGO/2018/0037', '', 'DISGO/2018/0037', '08167719356,', '', '2018', 'DISM', '', ''),
(1558, 'NWANETO  UZOMA  ANTHONY', 'DISGO/2018/0038', '', 'DISGO/2018/0038', '08165319688,', '', '2018', 'DISM', '', ''),
(1559, 'AGAN  SAMUEL  SEGBAWAN', 'DISGO/2018/0039', '', 'DISGO/2018/0039', '07036222605, 09', '', '2018', 'DISM', '', ''),
(1560, 'AJAYI  OSATO  JEPUTHAH', 'DISGO/2018/0040', '', 'DISGO/2018/0040', '09035970254,', '', '2018', 'DISM', '', ''),
(1561, 'SULEIMAN  KAWO  IBRAHIM', 'DISGO/2018/0041', '', 'DISGO/2018/0041', '08167297403,', '', '2018', 'DISM', '', ''),
(1562, 'ADEMUYIWA  RASHEED  ADEWALE', 'DISGO/2018/0042', '', 'DISGO/2018/0042', '08084869154, 09', '', '2018', 'DISM', '', ''),
(1563, 'ADELEKE YINKA ABRAHAM', 'DIBDN/2018/0001', '', 'DIBDN/2018/0001', '08080712050,', '', '2018', 'DISM', '', ''),
(1564, 'DADA ELIJAH ADEBOWALE', 'DIBDN/2018/0002', '', 'DIBDN/2018/0002', '08030861233, 08', '', '2018', 'DISM', '', ''),
(1565, 'AJAM SHAIBU SHAIBU', 'DIBDN/2018/0003', '', 'DIBDN/2018/0003', '09081719060,', '', '2018', 'DISM', '', ''),
(1566, 'ADETUNJI OLUMIDE EMMANUEL', 'DIBDN/2018/0004', '', 'DIBDN/2018/0004', '08165373445,', '', '2018', 'DISM', '', ''),
(1567, 'ADAMU PETER', 'DIBDN/2018/0005', '', 'DIBDN/2018/0005', '08121655224,', '', '2018', 'DISM', '', ''),
(1568, 'OLAIYA GBENGA AYODELE', 'DIBDN/2018/0006', '', 'DIBDN/2018/0006', '07030128991,', '', '2018', 'DISM', '', ''),
(1569, 'SALAWU ABIOLA SHEHU', 'DIBDN/2018/0007', '', 'DIBDN/2018/0007', '08077228172,', '', '2018', 'DISM', '', ''),
(1570, 'OGUNGBEMI OLUWASEGUN', 'DIBDN/2018/0008', '', 'DIBDN/2018/0008', '08055525310,', '', '2018', 'DISM', '', ''),
(1571, 'BERNARD AYOBAMI', 'DIBDN/2018/0009', '', 'DIBDN/2018/0009', '07062636940,', '', '2018', 'DISM', '', ''),
(1572, 'ADETOLA SAHEED ADEKUNLE', 'DIBDN/2018/0010', '', 'DIBDN/2018/0010', '07033609944,', '', '2018', 'DISM', '', ''),
(1573, 'ADESINA ADEOLA', 'DIBDN/2018/0011', '', 'DIBDN/2018/0011', '8065311200', '', '2018', 'DISM', '', ''),
(1574, 'PETER MICHAEL', 'DIBDN/2018/0012', '', 'DIBDN/2018/0012', '07030525773,', '', '2018', 'DISM', '', ''),
(1575, 'OMEJE SOLOMON', 'DIBDN/2018/0013', '', 'DIBDN/2018/0013', '08032886242,', '', '2018', 'DISM', '', ''),
(1576, 'ADEYEMO ADEWALE TAOFEEK', 'DIBDN/2018/0014', '', 'DIBDN/2018/0014', '08136651094,', '', '2018', 'DISM', '', ''),
(1577, 'ALADEJARE AYODELE ADEOLA', 'DIBDN/2018/0015', '', 'DIBDN/2018/0015', '09039098534,', '', '2018', 'DISM', '', ''),
(1578, 'GBADAMOSI NOAH', 'DIBDN/2018/0016', '', 'DIBDN/2018/0016', '08037200074,', '', '2018', 'DISM', '', ''),
(1579, 'OJETADE TEMITOPE PETER', 'DIBDN/2018/0017', '', 'DIBDN/2018/0017', '07033046286,', '', '2018', 'DISM', '', ''),
(1580, 'OYEBANJI OLUMUYIWA JAMES', 'DIBDN/2018/0018', '', 'DIBDN/2018/0018', '08176156936,', '', '2018', 'DISM', '', ''),
(1581, 'AL-AZIM BADMUS SAMIR', 'DIBDN/2018/0019', '', 'DIBDN/2018/0019', '07068753400,', '', '2018', 'DISM', '', ''),
(1582, 'ABOLARINWA KAZEEM ABIODUN', 'DIBDN/2018/0020', '', 'DIBDN/2018/0020', '08106415400,', '', '2018', 'DISM', '', ''),
(1583, 'SALIU AZEEZ', 'DIBDN/2018/0021', '', 'DIBDN/2018/0021', '07054849673,', '', '2018', 'DISM', '', ''),
(1584, 'MOMOSANMI ABUBAKAR', 'DIBDN/2018/0022', '', 'DIBDN/2018/0022', '08066267301,', '', '2018', 'DISM', '', ''),
(1585, 'ADESUGBA FESTUS', 'DIBDN/2018/0023', '', 'DIBDN/2018/0023', '09067124226,', '', '2018', 'DISM', '', ''),
(1586, 'ADEYEMO TOMILAYO MONISOLA', 'DIBDN/2018/0024', '', 'DIBDN/2018/0024', '08132673928,', '', '2018', 'DISM', '', ''),
(1587, 'OLUWADARE SAMUEL OLUSEUN', 'DIBDN/2018/0025', '', 'DIBDN/2018/0025', '08034982446,', '', '2018', 'DISM', '', ''),
(1588, 'OLAYIWOLA TAWA', 'DIBDN/2018/0026', '', 'DIBDN/2018/0026', '08180839326,', '', '2018', 'DISM', '', ''),
(1589, 'ADESHOKAN  DANIEL  OLUSHOLA', 'DIPH/2018/0001', '', 'DIPH/2018/0001', '08037729739,', '', '2018', 'DISM', '', ''),
(1590, 'ENYINWA  BASIL  ', 'DIPH/2018/0002', '', 'DIPH/2018/0002', '09036112578, 08', '', '2018', 'DISM', '', ''),
(1591, 'ABOH  ALEX MICHAEL', 'DIPH/2018/0003', '', 'DIPH/2018/0003', '07036543920, 08', '', '2018', 'DISM', '', ''),
(1592, 'UKANAH  ERIC  ASISHANA', 'DIPH/2018/0004', '', 'DIPH/2018/0004', '08038830640,', '', '2018', 'DISM', '', ''),
(1593, 'OGIRIMA  YUSUF', 'DIPH/2018/0005', '', 'DIPH/2018/0005', '08065697240,', '', '2018', 'DISM', '', ''),
(1594, 'MOGAN  BULLEM PATRICK', 'DIPH/2018/0006', '', 'DIPH/2018/0006', '08034304920,', '', '2018', 'DISM', '', ''),
(1595, 'ISAAC A.', 'DIPH/2018/0007', '', 'DIPH/2018/0007', '', '', '2018', 'DISM', '', ''),
(1596, 'DAVID  FRIDAY  ', 'DIPH/2018/0008', '', 'DIPH/2018/0008', '', '', '2018', 'DISM', '', ''),
(1597, 'DAN  DAVID OKERE ', 'DIPH/2018/0009', '', 'DIPH/2018/0009', '08066594605,', '', '2018', 'DISM', '', ''),
(1598, 'PHILIP  EYO', 'DIPH/2018/0010', '', 'DIPH/2018/0010', '', '', '2018', 'DISM', '', ''),
(1599, 'DENNIS  OKON', 'DIPH/2018/0011', '', 'DIPH/2018/0011', '', '', '2018', 'DISM', '', ''),
(1600, 'VICTOR  KINGSLEY', 'DIPH/2018/0012', '', 'DIPH/2018/0012', '', '', '2018', 'DISM', '', ''),
(1601, 'OBASI  ANDREW  CHIBUZOR', 'DIKRD/2018/0001', '', 'DIKRD/2018/0001', '08169833874,  0', '', '2018', 'DISM', '', ''),
(1602, 'OGUNBIYI  MORUF  ADEYIGA', 'DIKRD/2018/0002', '', 'DIKRD/2018/0002', '08086182787,  0', '', '2018', 'DISM', '', ''),
(1603, 'OWOYELE  SAMOD', 'DIKRD/2018/0003', '', 'DIKRD/2018/0003', '08174029884,', '', '2018', 'DISM', '', ''),
(1604, 'SUNMOLA  IBRAHIM  YOMI', 'DIKRD/2018/0004', '', 'DIKRD/2018/0004', '08026489186,', '', '2018', 'DISM', '', ''),
(1605, 'ABDU  GARBA  MUSA', 'DIKRD/2018/0005', '', 'DIKRD/2018/0005', '09033042892,  0', '', '2018', 'DISM', '', ''),
(1606, 'YUSUFF  HAMMED  ADELARIN', 'DIKRD/2018/0006', '', 'DIKRD/2018/0006', '08030434090,', '', '2018', 'DISM', '', ''),
(1607, 'ERIOM  PETER  BANA', 'DIKRD/2018/0007', '', 'DIKRD/2018/0007', '08028966942,', '', '2018', 'DISM', '', ''),
(1608, 'MZE  FELIX  GOWON', 'DIKRD/2018/0008', '', 'DIKRD/2018/0008', '08139119460, 07', '', '2018', 'DISM', '', ''),
(1609, 'OBONYILO  SHAIBU', 'DIKRD/2018/0009', '', 'DIKRD/2018/0009', '08034958940,', '', '2018', 'DISM', '', ''),
(1610, 'AYODEJI  COSMOS', 'DIKRD/2018/0010', '', 'DIKRD/2018/0010', '08131122321,', '', '2018', 'DISM', '', ''),
(1611, 'FANUGA  FOLASHADE', 'DIKRD/2018/0011', '', 'DIKRD/2018/0011', '07030780039,', '', '2018', 'DISM', '', ''),
(1612, 'RAJI  ABDUSSALAM', 'DIKRD/2018/0012', '', 'DIKRD/2018/0012', '08131123174,', '', '2018', 'DISM', '', ''),
(1613, 'HASSAN  MURITALA  ADEWALE', 'DIKRD/2018/0013', '', 'DIKRD/2018/0013', '08083987747,', '', '2018', 'DISM', '', ''),
(1614, 'OYEBANJO  KABIRU  OLUWADAMILARE', 'DIKRD/2018/0014', '', 'DIKRD/2018/0014', '08180201776,', '', '2018', 'DISM', '', ''),
(1615, 'ASHAFA  BASHIRU ', 'DIKRD/2018/0015', '', 'DIKRD/2018/0015', '08083170655,', '', '2018', 'DISM', '', ''),
(1616, 'AGBOOLA  OLUWASEGUN  OLATEJU', 'DIKRD/2018/0016', '', 'DIKRD/2018/0016', '08060200441,', '', '2018', 'DISM', '', ''),
(1617, 'KAREEM ADEYEMI  OLUWATOSIN', 'DIKRD/2018/0017', '', 'DIKRD/2018/0017', '08025315247, 08', '', '2018', 'DISM', '', ''),
(1618, 'OCHIA FIDELIS OTUNUYA', 'DIKRD/2018/0018', '', 'DIKRD/2018/0018', '08061241178, 08', '', '2018', 'DISM', '', ''),
(1619, 'ASHIRU  OLUWASEYI', 'DIKRD/2018/0019', '', 'DIKRD/2018/0019', '08062380095,', '', '2018', 'DISM', '', ''),
(1620, 'OMOTOSHO  SHEHU', 'DIKRD/2018/0020', '', 'DIKRD/2018/0020', '08086798565,', '', '2018', 'DISM', '', ''),
(1621, 'KOLAWOLE  SAMSONDEEN', 'DIKRD/2018/0021', '', 'DIKRD/2018/0021', '08050712820,', '', '2018', 'DISM', '', ''),
(1622, 'UGWA  SAMUEL  ANAYO', 'DIKRD/2018/0022', '', 'DIKRD/2018/0022', '08035125174,', '', '2018', 'DISM', '', ''),
(1623, 'BAMA  POWEILA  MERCY', 'DIKRD/2018/0023', '', 'DIKRD/2018/0023', '08025245133,  0', '', '2018', 'DISM', '', ''),
(1624, 'IDEMUDIA  ODEMWIGIE  IMAFIDON', 'DIKRD/2018/0024', '', 'DIKRD/2018/0024', '07039729256,', '', '2018', 'DISM', '', ''),
(1625, 'DADA  OLUWASHINA', 'DIKRD/2018/0025', '', 'DIKRD/2018/0025', '09095195915,', '', '2018', 'DISM', '', ''),
(1626, 'OGBUJI  COMFORT  IFEOMA', 'DIKRD/2018/0026', '', 'DIKRD/2018/0026', '098084340947,', '', '2018', 'DISM', '', ''),
(1627, 'SAULA  AZEEZ  OMOBOLAJI', 'DIKRD/2018/0027', '', 'DIKRD/2018/0027', '07081101859,', '', '2018', 'DISM', '', ''),
(1628, 'MAJINNASOLA  WAHAB  OYELERE', 'DIKRD/2018/0028', '', 'DIKRD/2018/0028', '07036286166,', '', '2018', 'DISM', '', ''),
(1629, 'YAKUB  ISMAIL ADEDAYO', 'DIKRD/2018/0029', '', 'DIKRD/2018/0029', '08179518030,', '', '2018', 'DISM', '', ''),
(1630, 'AJAYI-PRATT  OLUYINKA  OLAWALE', 'DIKRD/2018/0030', '', 'DIKRD/2018/0030', '08023598655,  0', '', '2018', 'DISM', '', ''),
(1631, 'OKOTIE  VICTOR   OGHENESEDE', 'DIKRD/2018/0031', '', 'DIKRD/2018/0031', '08167471885,', '', '2018', 'DISM', '', ''),
(1632, 'ENECHE  JOHN', 'DIKRD/2018/0032', '', 'DIKRD/2018/0032', '08027883361,', '', '2018', 'DISM', '', ''),
(1633, 'OYEGUNU  AKINTOLA  ABEL', 'DIKRD/2018/0033', '', 'DIKRD/2018/0033', '08166613041,', '', '2018', 'DISM', '', ''),
(1634, 'RASAQ  AKEEM', 'DIKRD/2018/0034', '', 'DIKRD/2018/0034', '', '', '2018', 'DISM', '', ''),
(1635, 'SOLOMON  AGNES', 'DIKRD/2018/0035', '', 'DIKRD/2018/0035', '08165996774,', '', '2018', 'DISM', '', ''),
(1636, 'ELAIWONU  SIMON  ULOKO', 'DIKRD/2018/0036', '', 'DIKRD/2018/0036', '08055070195, 07', '', '2018', 'DISM', '', ''),
(1637, 'GBENLE  ADEYEMI  OLUWASEYI', 'DIKRD/2018/0037', '', 'DIKRD/2018/0037', '08025953404,', '', '2018', 'DISM', '', ''),
(1638, 'JAMES FIDELIS DUNIYA', 'DIKRD/2018/0038', '', 'DIKRD/2018/0038', '08036291171,', '', '2018', 'DISM', '', ''),
(1639, 'ISAH  USMAN', 'DIKRD/2018/0039', '', 'DIKRD/2018/0039', '07057603984,', '', '2018', 'DISM', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `apply_program`
--

CREATE TABLE `apply_program` (
  `id` int(11) NOT NULL,
  `program` varchar(255) DEFAULT NULL,
  `course` varchar(255) DEFAULT NULL,
  `days` varchar(100) DEFAULT NULL,
  `price` varchar(100) DEFAULT NULL,
  `description` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `apply_program`
--

INSERT INTO `apply_program` (`id`, `program`, `course`, `days`, `price`, `description`) VALUES
(1, 'Senior Management Programs [SMP]', 'Corporate Reporting', '2 days', 'N80k', 'This programme will equip participants with the skills to investigate in a corporate setting and also develop and present \"SMART\" reporting.'),
(2, 'Senior Management Programs [SMP]', 'Introduction to Risk Management', '1 Day', 'N100k', 'This programme will introduce the concept of risk management and equip participants in assessing and mitigating risks using an international toolkit: Control Assurance Framework');

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `id` int(50) NOT NULL,
  `banner_type` varchar(200) NOT NULL,
  `title` varchar(200) NOT NULL,
  `description` blob NOT NULL,
  `button_caption` varchar(200) NOT NULL,
  `button_url` varchar(200) NOT NULL,
  `image_url` varchar(200) NOT NULL,
  `ext_link` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `careers`
--

CREATE TABLE `careers` (
  `id` int(50) NOT NULL,
  `firstname` varchar(200) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `phone` varchar(200) NOT NULL,
  `position` varchar(200) NOT NULL,
  `filename` varchar(200) NOT NULL,
  `additional_info` blob NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `id` int(50) NOT NULL,
  `title` varchar(200) DEFAULT NULL,
  `content` blob DEFAULT NULL,
  `image_url` varchar(200) DEFAULT NULL,
  `status` varchar(20) NOT NULL,
  `link` varchar(200) DEFAULT NULL,
  `ext_link` varchar(200) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`id`, `title`, `content`, `image_url`, `status`, `link`, `ext_link`) VALUES
(1, 'Babcock', '', 'Clients_Babcock.jpg', 'partner', '', ''),
(2, 'acfica', '', 'Clients_acfica.jpg', 'partner', '', ''),
(3, 'trinity', '', 'Clients_trinity.jpg', 'partner', '', ''),
(4, 'oau', '', 'Clients_oau.jpg', 'partner', '', ''),
(5, 'Highfield', '', 'Clients_Highfield.jpg', 'partner', '', ''),
(6, 'risk', '', 'Clients_risk.jpg', 'partner', '', ''),
(7, 'assos', '', 'Clients_assos.jpg', 'partner', '', ''),
(8, 'elizade', '', 'Clients_elizade.jpg', 'partner', '', ''),
(9, 'first', '', 'Clients_first.jpg', 'partner', '', ''),
(10, 'Andela', '', 'Clients_Andela.jpg', 'client', '', ''),
(11, 'Intak', '', 'Clients_Intak.jpg', 'client', '', ''),
(12, 'USaid', '', 'Clients_USaid.jpg', 'client', '', ''),
(13, 'lbs', '', 'Clients_lbs.jpg', 'client', '', ''),
(14, 'Embassy', '', 'Clients_Embassy.jpg', 'client', '', ''),
(15, 'pfa', '', 'Clients_pfa.jpg', 'client', '', ''),
(16, 'main', '', 'Clients_main.jpg', 'client', '', ''),
(19, 'gtb', '', 'Clients_gtb.jpg', 'client', '', ''),
(18, 'RCCG', '', 'Clients_RCCG.jpg', 'client', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `topic` text NOT NULL,
  `comment` text NOT NULL,
  `date` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `name`, `topic`, `comment`, `date`) VALUES
(1, 'Emmanuel Oduola', 'How much is bitcoin worth in Naira', 'Recently the price of bitcoin keeps crashing so its hard to really tell how much it is worth but it is well over 2 million naira', '2018-07-22');

-- --------------------------------------------------------

--
-- Table structure for table `counter`
--

CREATE TABLE `counter` (
  `id` int(10) NOT NULL,
  `ip` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(50) NOT NULL,
  `title` varchar(200) DEFAULT NULL,
  `mp_title` varchar(200) DEFAULT NULL,
  `keyword` varchar(200) DEFAULT NULL,
  `days` varchar(100) DEFAULT NULL,
  `price` varchar(100) DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `banner_text` varchar(200) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `banner_url` varchar(200) DEFAULT NULL,
  `ext_link` varchar(200) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `title`, `mp_title`, `keyword`, `days`, `price`, `location`, `banner_text`, `content`, `banner_url`, `ext_link`) VALUES
(1, 'Corporate Investigation and Intelligence Gathering', 'International Management Programs [IMP]', NULL, '5 days', 'N550,000K', 'Ghana', NULL, '', 'uploads/Corporate Investigation.jpg', 'yes'),
(2, 'Strategic Security Management', 'International Management Programs [IMP]', NULL, '7 days', 'N750,000K', 'Gambia', NULL, '', 'uploads/Strategic Security Management.jpg', 'yes'),
(3, 'Cyber Security for Senior Managers', 'International Management Programs [IMP]', NULL, '5 days', 'N700,000K', 'Kenya', NULL, '', '', 'yes'),
(4, 'Enterprise Security Risk Management', 'International Management Programs [IMP]', NULL, '5 days', 'N700,000K', 'London', NULL, '', '', 'yes'),
(5, 'Business Continuity', 'International Management Programs [IMP]', NULL, '5 days', 'N720,000K', 'Spain', NULL, '', '', 'yes'),
(6, 'Security Operations Management', 'International Management Programs [IMP]', NULL, '5 days', 'N650,000K', 'Rwanda', NULL, '', '', 'yes'),
(7, 'Security Compliance', 'International Management Programs [IMP]', NULL, '5 days', 'N650,000K', 'Dubai', NULL, '', '', 'yes'),
(8, 'Certificate in Security Management (CISM)', 'Academic Qualifications in Security Management', '', '4 Months', 'N45,000.00 (N5,000.00 Non-Refundable)', 'Online/Classroom', NULL, '<p class=\"MsoNormal\"><span style=\"font-size: 12pt; line-height: 107%;\"><font color=\"#ffffff\">The\r\ncourse provides you with knowledge on the basic management tools/knowledge\r\nnecessary to address the implementation and maintenance of processes,\r\nprocedures, and other issues in security management.</font></span><span style=\"font-size:12.0pt;line-height:107%\"><o:p></o:p></span></p>', 'uploads/cert1.jpg', 'yes'),
(9, 'Diploma in Security Management (DISM)', 'Academic Qualifications in Security Management', '', '9 Months', 'N75,000.00 (N5,000.00 Non-Refundable)', '', NULL, '<span style=\"\" segoe=\"\" ui\",=\"\" roboto,=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" \"noto=\"\" sans\",=\"\" sans-serif,=\"\" \"apple=\"\" color=\"\" emoji\",=\"\" \"segoe=\"\" ui=\"\" symbol\",=\"\" emoji\";=\"\" font-size:=\"\" 16px;\"=\"\"><font color=\"#ffffff\">The DISM program is a more advanced management program in security studies that builds on the tools and knowledge gleaned in the CISM. It offers a more robust approach to the key relatable issues in security management.</font></span>', 'uploads/cert2.jpg', 'yes'),
(10, 'Advanced Diploma in Security Management (ADISM)', 'Academic Qualifications in Security Management', '', '12 Months', 'N120,000.00 (N10,000.00 Non-Refundable)', '', NULL, '<p class=\"MsoNormal\"><span style=\"font-size: 13.5pt; line-height: 107%;\"><font color=\"#ffffff\">This\r\nprogram is designed for security experts in leadership roles as well as those\r\nseeking to advance their knowledge and academic qualification in security\r\nmanagement. It advances on the DISM program and offers a more robust approach\r\nto security management.</font></span><o:p></o:p></p><br>', 'uploads/cert3.jpg', 'yes'),
(11, 'Cryptography', 'Senior Management Programs [SMP]', '', '5 days', 'N50K', '', NULL, 'Cryptography is a method of protecting information and communications through the use of codes so that only those for whom the information is intended can read and process it. It refers to secure information and communication techniques derived from mathematical concepts and a set of rule-based calculations called algorithms to transform messages in ways that are hard to decipher.', 'uploads/Cryptography.jpeg', 'yes'),
(12, 'Criminology', 'Senior Management Programs [SMP]', '', '2 days', 'N30K', '', NULL, 'Criminology as a field of study developed from a concern about crime and the need for an effective means by which criminal behavior can be controlled. It involves the scientific approach to the study of criminal behavior.', 'uploads/Criminology.jpg', 'yes'),
(13, 'Intelligence Management', 'Senior Management Programs [SMP]', '', '2 days', 'N40K', '', NULL, 'Intelligence Management processes allow decisions to be made about priorities and tactical options. Intelligence in information that has been collected and developed for action. Intelligence collection is a continuous process and there may be specific requirements for its recording and use. Individuals involved in intelligence collection must be specially trained and have specific, critical skills to perform their work successfully.', 'uploads/Intelli.jpg', 'yes'),
(14, 'Emergency and Disaster Management', 'Senior Management Programs [SMP]', '', '3 days', 'N35K', '', NULL, 'Emergency Management is a continuous process by which all individuals, groups, and communities manage hazards in an effort to avoid or ameliorate the impact of disasters resulting from the hazards.', 'uploads/Emergency.jpg', 'yes'),
(15, 'Advanced Intelligence Management', 'Senior Management Programs [SMP]', '', '3 days', 'N55K', '', NULL, 'The main purpose of intelligence management is to provide necessary information to policy makers, which may help to illuminate their decision options. The goal is to eliminate or reduce any form of uncertainty for government decision-maker. When information is accurate, comprehensive, and timely.', 'uploads/Advanced.jpeg', 'yes'),
(16, 'Surveillance Tradecraft', 'Senior Management Programs [SMP]', '', '2 days', 'N40K', '', NULL, 'This recognizes the advances in technology as a major factor in defining what surveillance and as they enable previously unavailable methods, techniques and tools for conducting surveillance operations. It refers to the techniques, methods and technologies used in modern espionage activities.', 'uploads/Surveillance.jpg', 'yes'),
(17, 'Corporate Reporting', 'Senior Management Programs [SMP]', '', '2 days', 'CLASSROOM â€“ N80k ONLINE â€“ 40K', '', NULL, 'This programme will equip participants with the skills to investigate in a corporate setting and also develop and present â€œSMARTâ€ reporting.', 'uploads/Corporate Reporting.jpg', 'yes'),
(18, 'Introduction to Risk Management[Co-certified by AERMP]', 'Senior Management Programs [SMP]', '', '1 day', 'CLASSROOM - N100k ONLINE â€“ 30K', '', NULL, 'This programme will introduce the concept of risk management and equip participants in assessing and mitigating risks using an international toolkit: â€œControl Assurance Frameworkâ€.', 'uploads/Risk Management.jpg', 'yes'),
(19, 'Leadership[co-certified by Transformational Leadership Journal USA]', 'Senior Management Programs [SMP]', '', '2 days', 'CLASSROOM - N150k', '', NULL, 'This programme will examine the role of leadership in providing strategic directions in an organization. Participants will come away with a set of toolkits to excel in leadership positions, whilst transforming their organization for market readiness and environmental relevance.', 'uploads/Transformational Leadership.jpg', 'yes'),
(20, 'Emotional Intelligence Masterclass', 'Senior Management Programs [SMP]', '', '2 days', 'CLASSROOM â€“ N80k ONLINE â€“ 35K', '', NULL, 'This program will help increase participantsâ€™ knowledge of â€œEQâ€ and to improve their interpersonal and intrapersonal skills, as well as their adaptability, stress management, and general mood.&nbsp;<div><br></div><div>Our emotional intelligence training builds an understanding of how emotions shape who we are, how we relate to others, and how to improve relationships. Participants will leave with tools that shine a light on the consequences of behavior and weigh decisions before action.</div>', 'uploads/Emotional Intelligence .jpg', 'yes'),
(21, 'Emergency Preparedness & Business Continuity', 'Senior Management Programs [SMP]', '', '2 Days', 'CLASSROOM - N100k ONLINE â€“ 20K', '', NULL, 'Participants will learn about enterprise security risksâ€™ implications of any disaster and how to develop policy and business continuity systems to mitigate against pending disasters and manage them if/when they occur.', 'uploads/Emergency Preparedness & Business Continuity.jpg', 'yes'),
(22, 'Finance for Non-Finance Managers', 'Senior Management Programs [SMP]', '', '2 Days', 'CLASSROOM - N100k ONLINE â€“ 20K', '', NULL, 'Managers at all levels and in all functions are required to demonstrate sound financial orientation and knowledge. Understanding finance is central to their relevance and effective contribution to decision making.&nbsp;<div><br></div><div>This program focuses on both Accounting and Finance. It will help participants develop a well-rounded understanding of commercial/finance language for better communication with customers and relevant stakeholders. They will also be able to interpret financial statements and compute relevant ratios.</div>', 'uploads/finance for Non-Finance Managers.jpg', 'yes'),
(23, 'Selling for Non-Sales Managers', 'Senior Management Programs [SMP]', '', '2 Days', 'CLASSROOM â€“ N75k ONLINE â€“ 25K', '', NULL, 'The new business order is to fundamentally shape the concept that everyone is involved in the Business of sales â€“ promoting the Product and service of the Business. This practical and interactive course is designed for technical/Non-Customer Facing personnel who have contact with clients/customers but are not in a sales or business development positions.&nbsp;<div><br></div><div>Participants will learn the secret to selling in a non-sales way and the ability to articulate ideas in a persuasive and compelling manner, present benefits, recognize buying signals and close the sale. â€“ allowing them to promote your product or service and increase business for your organization.</div>', 'uploads/Selling for Non-Sales Managers.jpg', 'yes'),
(24, 'Strategy & Tactics for Public Sector', 'Senior Management Programs [SMP]', '', '2 Days', 'CLASSROOM - N120k ONLINE â€“ N40K', '', NULL, '<div>This program is suitable for Mid-Level to Senior Level Leaders in the public sector looking to close the gap between the time spent sculpting strategy and the time spent executing results.&nbsp;</div><div><br></div><div>The capability to skillfully navigate challenges and obstacles and Hone their communication and leadership skills in a diverse group of peers and gain the confidence to translate Governmental strategy into action with the expertise to provide a swift response to change within the public sector.</div>', 'uploads/Strategy & Tactics for Public Sector.jpg', 'yes'),
(25, 'Self-awareness & Personal Power for Developing Managers', 'Senior Management Programs [SMP]', '', '1 Day', 'CLASRROOM - N50k ONLINE â€“ 20K', '', NULL, 'This programme provides a valuable introduction to developing self-awareness and self-management of personal emotions and responding to those emotions in order to inspire high performance. The course also provides individuals with the skills and knowledge to enable them to communicate more confidently and effectively, using assertive behavioral techniques.', 'uploads/Self-awareness & Personal Power for Developing Manager.jpg', 'yes'),
(26, 'High Performance tools for Mid-level Managers', 'Senior Management Programs [SMP]', '', '2 Days', 'CLASSROOM - N120k ONLINE â€“ 50K', '', NULL, 'The high-performance tools course is designed to help managers and team leaders develop the knowledge and skills to create and maintain a high-performance team.&nbsp;<div><br></div><div>The course will utilize the Belbin Team Roles model and self-perception inventory to raise self-awareness of participantâ€™s preferred team role within a team, as well as the other behavioral characteristics that need to be present to achieve a high performing team.&nbsp;</div><div><br></div><div>Participants will also learn techniques that will engage and inspire their teams to achieve a higher level of team performance and synergy.</div>', 'uploads/High Performance tools for Mid-level Managers.jpg', 'yes'),
(27, 'Selecting, Managing and Sustaining Continuous Improvement Projects', 'Senior Management Programs [SMP]', '', '2 days', 'CLASSROOM â€“ N65K', '', NULL, 'These two-day courses are devoted to presenting practical information to professionals who are assigned one or more of the following responsibilities: identifying, prioritizing, organizing, executing, sustaining, and/or reviewing the results of continuous improvement events.Most importantly, the course emphasizes how continuous improvement events fit into a continuous improvement strategy.', 'uploads/Selecting, Managing and Sustaining Continuous Improvement Projects.jpg', 'yes'),
(28, 'Excellence in Contract Administration and Project Management', 'Senior Management Programs [SMP]', '', '2 Days', 'CLASSROOM â€“ N65K', '', NULL, 'Forward thinking organizations understand the benefits of lower cost and higher productivity resulting from mastering best practices in the important phases of project and contract management. With a focus on the best practices for processes, methods, and techniques, this training course will make a great contribution to the skill sets of those involved in contracts and projects.', 'uploads/Excellence in Contract Administration and Project Management.jpg', 'yes'),
(29, 'Management Skills â€“ Team Leadership Masterclass', 'Senior Management Programs [SMP]', '', '2 Days', 'CLASSROOM â€“ N80k ONLINE â€“ 35K', '', NULL, 'The Team Leadership Masterclass is specially designed for senior management executives desirous on maximizing the potentials of their Team members. The program includes how to inspire and motivate individuals, manage talent, influence without authority, and lead teams. You will have an opportunity to apply new leadership skills by working through a series of practical leadership scenarios.', 'uploads/Management Skills â€“ Team Leadership Masterclass.jpg', 'yes'),
(30, 'Public Speaking Masterclass', 'Senior Management Programs [SMP]', '', '2 Days', 'CLASSROOM â€“ N50k ONLINE â€“ 25K', '', NULL, 'Public speaking is a complex act. It demands confidence, humor, and experience. It both an art and a science. Our 2 Day program offers our participants with the simple strategies in delivering great speeches, unforgettable stories with that captivates the audience and overcoming your fears of public speaking â€“ no doubt mastery is at the heart of our masterclass program', 'uploads/Public Speaking Masterclass.jpg', 'yes'),
(31, 'Change Management Masterclass', 'Senior Management Programs [SMP]', '', '2 Days', 'CLASSROOM â€“ N50k ONLINE â€“ 35K', '', NULL, 'The 2 Day change management masterclass program focuses on developing critical skills needed to effectively manage and motivate change within the workplace. It provides Business leaders with clear insights on how to effectively motivate people through corporate culture or organizational change. The training will also equip them with some effective skills and knowledge for managing and communicating change', 'uploads/Change Management Masterclass.jpg', 'yes'),
(32, 'Management Retreat Program', 'Senior Management Programs [SMP]', '', '3 Days', 'N250k Per Participants (Excludes Feeding)', '', NULL, 'Our management retreat program can be tailor made to cover a wide range of strategic topics that demonstrably shapes your organizations Business needs along identifiable areas â€“ It covers a very rich and practical array of modules and infused into it is our fun learning approach to spice up the retreat', 'uploads/Management Retreat Program.jpg', 'yes'),
(33, 'Strategic Customer Service Program for Business Leaders', 'Senior Management Programs [SMP]', '', '2 Days', 'CLASSROOM â€“ N50k ONLINE â€“ 20K', '', NULL, 'Customer service is beyond a department or brand strategy â€“ it has become the lifeblood of any organization seeking relevance. This program is ideal for organizations seeking to reinforce the strategic imperative of Customer centricity amongst their Business leaders.&nbsp;<br><br>The program is aligned to the most frequent method of communication used to connect with you across multiple levels and gaining insights into the role of management in strategically positioning each Business Leader in understanding the dynamics in service delivery.', 'uploads/Strategic Customer Service Program for Business Leaders.jpg', 'yes'),
(34, 'New Managers Development Program (NMDP)', 'Senior Management Programs [SMP]', '', '3 Days', 'Classroom â€“ 250k', '', NULL, 'The program is targeted at developing the competencies required for personnel who are having their first taste of leadership experience â€“ understanding the concepts of people management, vision development, change management, motivation and leadership, performance management, and delegation. Participants will be better equipped to function effectively in their new leadership roles.', 'uploads/New Managers Development Program (NMDP).jpg', 'yes'),
(35, 'Executive Trainee Program (ETP)', 'Senior Management Programs [SMP]', '', '2 Months', 'N1,500,000.00 Per participants', '', NULL, 'This program is designed for organizations focused on developing leadership and succession planning amongst their generationNEXT â€“ It focuses on shaping culture, building technical and soft competencies, refining professional skills and building character for organizational change.', 'uploads/Executive Trainee Program (ETP).jpg', 'yes'),
(36, 'Train the Trainer Program', 'Senior Management Programs [SMP]', '', '3 Days', 'Classroom ONLY â€“ 50k', '', NULL, 'A comprehensive Three-day train the trainer course which provides the skills, confidence and structure to design and deliver one-to-one training sessions in the workplace.', 'uploads/Train the Trainer Program.jpg', 'yes'),
(37, 'Project Management Program', 'Senior Management Programs [SMP]', '', '3 Days', 'CLASSROOM â€“ N50k ONLINE â€“ 25K', '', NULL, 'The Project management program has been designed to offer best practice project management methodologies that provides the most effective method of delivering projects within cost, time, and resource. This 3 Day hands-on series provides you with the skills to ensure your projects are completed on time and on budget while giving the user the product they expect.', 'uploads/Project Management Program.jpg', 'yes'),
(38, 'Art of Communication', 'Soft Skills & Executive Development programs', '', '2 Days', 'N5000', 'Online', NULL, '<div>A practical two-day training course focusing on effective communication and interpersonal skills for business. Also available in truncated form as a one or half-day course.</div><div><br></div>', 'uploads/art of communication.jpg', 'yes'),
(39, 'Presentation Skills', 'Soft Skills & Executive Development programs', '', '2 Days', 'N8000', 'Online', NULL, '<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"499\" style=\"border-collapse:\r\n collapse;width:375pt\"><tbody><tr height=\"73\" style=\"height:54.5pt\">\r\n  <td height=\"73\" class=\"xl65\" width=\"499\" style=\"height:54.5pt;width:375pt\">This\r\n  course will improve participantsâ€™ public speaking skills and knowledge. The\r\n  training includes effective presentation techniques to enable delegates to\r\n  present professionally and confidently, as well as engage well with the\r\n  audience.</td></tr></tbody></table>', 'uploads/Presentation skills.jpg', 'yes'),
(40, 'Public Speaking', 'Soft Skills & Executive Development programs', '', '2 Days', 'N8000', 'Online', NULL, '<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"499\" style=\"border-collapse:\r\n collapse;width:375pt\"><tbody><tr height=\"109\" style=\"height:81.5pt\">\r\n  <td height=\"109\" class=\"xl65\" width=\"499\" style=\"height:81.5pt;width:375pt\">Learn\r\n  how to sharpen your presentation skills, overcome the fear of public\r\n  speaking, how body language changes everything, the art of persuasive\r\n  speeches, public speaking tips, and how to deliver effective presentations\r\n  each and every time. Brush up on your public speaking skills and become an\r\n  effective presenter and public speaker today!</td></tr></tbody></table>', 'uploads/Public Speaking .jpg', 'yes'),
(41, 'Interviewing', 'Soft Skills & Executive Development programs', '', '2 Days', 'N3500', 'Online', NULL, '<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"499\" style=\"border-collapse:\r\n collapse;width:375pt\"><tbody><tr height=\"73\" style=\"height:54.5pt\">\r\n  <td height=\"73\" class=\"xl65\" width=\"499\" style=\"height:54.5pt;width:375pt\">This course is targeted at hiring managers to help develop the strategies, models, and best practices in interviewing and hiring the best candidates. It is a practical class that focuses on all the processes in the interviewing process\r\n  value chain.</td></tr></tbody></table>', 'uploads/interview.jpg', 'yes'),
(42, 'Report Writing', 'Soft Skills & Executive Development programs', '', '2 Days', 'N5000', 'Online', NULL, '<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"499\" style=\"border-collapse:\r\n collapse;width:375pt\"><tbody><tr height=\"91\" style=\"height:68.0pt\">\r\n  <td height=\"91\" class=\"xl65\" width=\"499\" style=\"height:68.0pt;width:375pt\">The\r\n  training teaches delegates how to write informative and effective reports\r\n  which are compelling, persuasive and easily understood. Participants will\r\n  also learn how to plan, organize their objectives, structure, construct\r\n  arguments and summarize their content effectively</td></tr></tbody></table>', 'uploads/Report writing.jpg', 'yes'),
(43, 'Facilitation Skills', 'Soft Skills & Executive Development programs', '', '2 days', 'N10k', 'Online', NULL, 'Facilitation', 'uploads/Facilitation.jpg', 'yes'),
(44, 'Team Building & Management', 'Soft Skills & Executive Development programs', '', '2 Days', 'N5000', 'Online', NULL, '<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"499\" style=\"border-collapse:\r\n collapse;width:375pt\"><tbody><tr height=\"55\" style=\"height:41.0pt\">\r\n  <td height=\"55\" class=\"xl65\" width=\"499\" style=\"height:41.0pt;width:375pt\">This\r\n  program focuses on proven strategies for managers and team leaders in\r\n  building a high performing team to achieve the strategic team and\r\n  organizational goals</td></tr></tbody></table>', 'uploads/Team Building & Management.jpg', 'yes'),
(45, 'Coaching and Mentoring', 'Soft Skills & Executive Development programs', '', '2 Days', 'N5000', 'Online', NULL, '<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"499\" style=\"border-collapse:\r\n collapse;width:375pt\"><tbody><tr height=\"91\" style=\"height:68.0pt\">\r\n  <td height=\"91\" class=\"xl65\" width=\"499\" style=\"height:68.0pt;width:375pt\">To equip\r\n  managers and team leaders with the skills, knowledge and process to coach\r\n  team members to improve their own performance. The training gives\r\n  participants the opportunity to practice the GROW model devised by Sir John\r\n  Whitmore, based on successful coaching in the world of sport.&nbsp;</td></tr></tbody></table>', 'uploads/Mentoring.jpg', 'yes'),
(46, 'Delegation and Supervising', 'Soft Skills & Executive Development programs', '', '2 Days', 'N5000', 'Online', NULL, '<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"499\" style=\"border-collapse:\r\n collapse;width:375pt\"><tbody><tr height=\"91\" style=\"height:68.0pt\">\r\n  <td height=\"91\" class=\"xl65\" width=\"499\" style=\"height:68.0pt;width:375pt\">The\r\n  training teaches delegates how to write informative and effective reports\r\n  which are compelling, persuasive and easily understood. Participants will\r\n  also learn how to plan, organize their objectives, structure, construct\r\n  arguments and summarize their content effectively.</td></tr></tbody></table>', 'uploads/delegation.jpg', 'yes'),
(47, 'Decision Making', 'Soft Skills & Executive Development programs', '', '2 days', 'N10k', 'Online', NULL, 'Decision making', 'uploads/decision.jpg', 'yes'),
(48, 'Performance Management', 'Soft Skills & Executive Development programs', '', '2 Days', 'N10000', 'Online', NULL, '<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"499\" style=\"border-collapse:\r\n collapse;width:375pt\"><tbody><tr height=\"73\" style=\"height:54.5pt\">\r\n  <td height=\"73\" class=\"xl65\" width=\"499\" style=\"height:54.5pt;width:375pt\">The\r\n  high-performance teamsâ€™ course is designed to help managers and team leaders\r\n  develop the knowledge and skills to create and maintain a high performing\r\n  team covering practical techniques and processes for managing employee and\r\n  team performance.</td></tr></tbody></table>', 'uploads/performance.jpg', 'yes'),
(49, 'Talent Management', 'Soft Skills & Executive Development programs', '', '2 days', 'N10k', 'Online', NULL, 'Talent&nbsp;', 'uploads/Talent.jpg', 'yes'),
(50, 'Meeting Management', 'Soft Skills & Executive Development programs', '', '2 Days', 'N5000', 'Online', NULL, '<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"499\" style=\"border-collapse:\r\n collapse;width:375pt\"><tbody><tr height=\"109\" style=\"height:81.5pt\">\r\n  <td height=\"109\" class=\"xl65\" width=\"499\" style=\"height:81.5pt;width:375pt\">This\r\n  training provides valuable techniques to help you structure meetings more\r\n  professionally, in order to get the best contributions from the meeting\r\n  participants. To help managers get the most from the meetings they chair. The\r\n  training will also help them achieve clearly defined meeting outcomes, by\r\n  improving participant contributions and overcoming meeting challenges.</td></tr></tbody></table>', 'uploads/Meeting.jpg', 'yes'),
(51, 'Crisis Management', 'Soft Skills & Executive Development programs', '', '2 days', 'N10k', 'Online', NULL, 'Crisis management', 'uploads/crisis management.jpg', 'yes'),
(52, 'Problem Solving', 'Soft Skills & Executive Development programs', '', '2 Days', 'N4500', 'Online', NULL, '<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"499\" style=\"border-collapse:\r\n collapse;width:375pt\"><tbody><tr height=\"109\" style=\"height:81.5pt\">\r\n  <td height=\"109\" class=\"xl65\" width=\"499\" style=\"height:81.5pt;width:375pt\">This\r\n  program will help leaders develop their ability to tackle complex problems in\r\n  the workplace using known analytical problem-solving techniques, design\r\n  thinking, and effective research. It provides managers and specialists with a\r\n  range of simple creative thinking techniques that they can use to generate\r\n  ideas and solve problems at work</td></tr></tbody></table>', 'uploads/problem solving.jpg', 'yes'),
(53, 'Innovation and Critical Thinking', 'Soft Skills & Executive Development programs', '', '2 days ', 'N10000', 'Online', NULL, 'Innovation', 'uploads/critical thinking.jpg', 'yes'),
(54, 'Influencing for result and change', 'Soft Skills & Executive Development programs', '', '2 days', 'N10000', 'Online', NULL, 'Innovation', 'uploads/change invovation.jpg', 'yes'),
(55, 'First Managers Training', 'Soft Skills & Executive Development programs', '', '2 days', 'N10000', 'Online', NULL, 'first managers&nbsp;', 'uploads/first managers .jpg', 'yes'),
(56, 'Negotiation Skills', 'Soft Skills & Executive Development programs', '', '2 Days', 'N8000', 'Online', NULL, '<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"499\" style=\"border-collapse:\r\n collapse;width:375pt\"><tbody><tr height=\"55\" style=\"height:41.0pt\">\r\n  <td height=\"55\" class=\"xl65\" width=\"499\" style=\"height:41.0pt;width:375pt\">To\r\n  enable participants to negotiate constructively with customers and to carry\r\n  out a sales negotiation that creates a â€˜win-win outcome for all parties.</td></tr></tbody></table>', 'uploads/nego skills.jpg', 'yes'),
(57, 'Business Networking', 'Soft Skills & Executive Development programs', '', '2 Days', 'N8000', 'Online', NULL, '<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"499\" style=\"border-collapse:\r\n collapse;width:375pt\"><tbody><tr height=\"55\" style=\"height:41.0pt\">\r\n  <td height=\"55\" class=\"xl65\" width=\"499\" style=\"height:41.0pt;width:375pt\">The\r\n  course provides participants with a range of business networking tools and\r\n  techniques. As a result, they will be able to develop a networking strategy\r\n  and plan to achieve their goals.</td></tr></tbody></table>', 'uploads/Networking.jpg', 'yes'),
(58, 'Relationship Management', 'Soft Skills & Executive Development programs', '', '2 days', 'N10000', 'Online', NULL, 'Relationship', 'uploads/relationship.jpg', 'yes'),
(59, 'Cold Calling Skills', 'Soft Skills & Executive Development programs', '', '2 Days', 'N10000', 'Online', NULL, '<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"499\" style=\"border-collapse:\r\n collapse;width:375pt\"><tbody><tr height=\"55\" style=\"height:41.0pt\">\r\n  <td height=\"55\" class=\"xl65\" width=\"499\" style=\"height:41.0pt;width:375pt\">This\r\n  two-day course will introduce participants to the practical skills and\r\n  processes of successful sales managers in meeting sales demands through the\r\n  cold calling approach</td></tr></tbody></table>', 'uploads/cold calling.jpg', 'yes'),
(60, 'Approach and Engagement Skills', 'Soft Skills & Executive Development programs', '', '2 days', 'N10000', 'Online', NULL, 'Approach', 'uploads/approach.jpg', 'yes'),
(61, 'Objection Handling Skills', 'Soft Skills & Executive Development programs', '', '2 Days', 'N10000', 'Online', NULL, '<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"499\" style=\"border-collapse:\r\n collapse;width:375pt\"><tbody><tr height=\"73\" style=\"height:54.5pt\">\r\n  <td height=\"73\" class=\"xl65\" width=\"499\" style=\"height:54.5pt;width:375pt\">A skill\r\n  vital to every sales professional. The art of objection handling program\r\n  focuses on the practical side of sales in objection handling and how to\r\n  respond effectively to turn negatives to positives and achieve the sales\r\n  result</td></tr></tbody></table>', 'uploads/objection.jpg', 'yes'),
(62, 'Complaint Handling', 'Soft Skills & Executive Development programs', '', '2 Days', 'N7500', 'Online', NULL, '<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"499\" style=\"border-collapse:\r\n collapse;width:375pt\"><tbody><tr height=\"73\" style=\"height:54.5pt\">\r\n  <td height=\"73\" class=\"xl65\" width=\"499\" style=\"height:54.5pt;width:375pt\">This\r\n  course provides participants with the crucial skills and confidence to\r\n  improve their handling of customer complaints, with the goal of reaching a\r\n  satisfactory solution that increases customer retention and loyalty.</td></tr></tbody></table>', 'uploads/complaint.jpg', 'yes'),
(63, 'Customer Relationship & Service', 'Soft Skills & Executive Development programs', '', '2 Days', 'N10000', 'Online', NULL, '<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"499\" style=\"border-collapse:\r\n collapse;width:375pt\"><tbody><tr height=\"91\" style=\"height:68.0pt\">\r\n  <td height=\"91\" class=\"xl65\" width=\"499\" style=\"height:68.0pt;width:375pt\">This\r\n  course is ideal for anyone seeking training in customer service and customer\r\n  care. The majority of participants attending our customer services courses\r\n  are in customer facing or customer support roles, who want to develop their\r\n  customer service skills and behaviors.&nbsp;</td></tr></tbody></table>', 'uploads/ne.jpg', 'yes'),
(64, 'Networking', 'Soft Skills & Executive Development programs', '', '2 days', 'N10000', 'Online', NULL, 'Network', 'uploads/networkk.jpg', 'yes'),
(65, 'Interpersonal Relationships', 'Soft Skills & Executive Development programs', '', '2 days ', 'N10000', 'Online', NULL, 'Relatioship', 'uploads/re.jpg', 'yes'),
(66, 'Dealing with Difficult People', 'Soft Skills & Executive Development programs', '', '2 Days', 'N5000', 'Online', NULL, '<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"499\" style=\"border-collapse:\r\n collapse;width:375pt\"><tbody><tr height=\"55\" style=\"height:41.0pt\">\r\n  <td height=\"55\" class=\"xl65\" width=\"499\" style=\"height:41.0pt;width:375pt\">The aim\r\n  of this training is to provide individuals with the skills and strategies to\r\n  enable them to address difficult behavior in the workplace.</td></tr></tbody></table>', 'uploads/difficult.jpg', 'yes'),
(67, 'Conflict Resolution', 'Soft Skills & Executive Development programs', '', '2 Days', 'N8000', 'Online', NULL, '<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"499\" style=\"border-collapse:\r\n collapse;width:375pt\"><tbody><tr height=\"73\" style=\"height:54.5pt\">\r\n  <td height=\"73\" class=\"xl65\" width=\"499\" style=\"height:54.5pt;width:375pt\">This\r\n  program introduces techniques and strategies that managers and team leaders\r\n  can effectively utilize when managing conflict in the workplace. It focuses\r\n  on practical step by step approaches that can be used by any leader.</td></tr></tbody></table>', 'uploads/Conflict.jpg', 'yes'),
(68, 'Personal Branding', 'Soft Skills & Executive Development programs', '', '2 Days', 'N10000', 'Online', NULL, '<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"499\" style=\"border-collapse:\r\n collapse;width:375pt\"><tbody><tr height=\"73\" style=\"height:54.5pt\">\r\n  <td height=\"73\" class=\"xl65\" width=\"499\" style=\"height:54.5pt;width:375pt\">This\r\n  course will help participants understand both what personal branding means\r\n  and what it means to inhabit their brand, establish themselves and create a\r\n  mission statement for their personal brand that effectively guides their\r\n  approach in all affairs</td></tr></tbody></table>', 'uploads/branding.jpg', 'yes'),
(69, 'Emotional Intelligence', 'Soft Skills & Executive Development programs', '', '2 Days', 'N10000', 'Online', NULL, '<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"499\" style=\"border-collapse:\r\n collapse;width:375pt\"><tbody><tr height=\"55\" style=\"height:41.0pt\">\r\n  <td height=\"55\" class=\"xl65\" width=\"499\" style=\"height:41.0pt;width:375pt\">To\r\n  increase participantsâ€™ knowledge of â€œEQâ€ and to improve their interpersonal\r\n  and intra-personal skills, as well as their adaptability, stress management\r\n  and general mood.</td></tr></tbody></table>', 'uploads/emotional.jpg', 'yes'),
(70, 'Stress Management', 'Soft Skills & Executive Development programs', '', '2 Days', 'N8000', 'Online', NULL, '<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"499\" style=\"border-collapse:\r\n collapse;width:375pt\"><tbody><tr height=\"73\" style=\"height:54.5pt\">\r\n  <td height=\"73\" class=\"xl65\" width=\"499\" style=\"height:54.5pt;width:375pt\">The\r\n  course will enable participants to consider the management of workplace\r\n  stress at an individual and organizational level, and will help participants\r\n  develop and implement effective strategies to prevent and manage stress at\r\n  work.</td></tr></tbody></table>', 'uploads/stress .jpg', 'yes'),
(71, 'Change Management', 'Soft Skills & Executive Development programs', '', '2 days', 'N10000', 'Online', NULL, 'Change', 'uploads/Change Management Masterclass.jpg', 'yes'),
(72, 'Self-Leadership', 'Soft Skills & Executive Development programs', '', '2 days ', 'N10000', 'Online', NULL, 'Self', 'uploads/Self-awareness & Personal Power for Developing Manager.jpg', 'yes'),
(73, 'Work-Life Balance', 'Soft Skills & Executive Development programs', '', '2 days ', 'N10000', 'Online', NULL, 'Work life', 'uploads/Work life.jpg', 'yes'),
(74, 'Grooming and Personal Etiquette', 'Soft Skills & Executive Development programs', '', '2 days ', 'N10000', 'Online', NULL, 'Personal', 'uploads/personal.jpg', 'yes'),
(75, 'Planning and Time Management', 'Soft Skills & Executive Development programs', '', '2 Days', 'N5000', 'Online', NULL, '<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"499\" style=\"border-collapse:\r\n collapse;width:375pt\"><tbody><tr height=\"55\" style=\"height:41.0pt\">\r\n  <td height=\"55\" class=\"xl65\" width=\"499\" style=\"height:41.0pt;width:375pt\">This\r\n  course introduces time management tools and techniques that allow\r\n  participants to manage their time more effectively and feel more in control.</td></tr></tbody></table>', 'uploads/time.jpg', 'yes'),
(76, 'Technology Trend Awareness', 'Soft Skills & Executive Development programs', '', '2 days ', 'N10000', 'Online', NULL, 'Technology', 'uploads/Technology Awareness.jpg', 'yes'),
(77, 'Business Trend Awareness', 'Soft Skills & Executive Development programs', '', '2 days ', 'N10000', 'Online', NULL, 'T', 'uploads/Business awareness.jpg', 'yes'),
(78, 'Research Methodology', 'Soft Skills & Executive Development programs', '', '2 days ', 'N10000', 'Online', NULL, 'RE', 'uploads/Reseach .jpg', 'yes'),
(79, 'Business Etiquette and Ethics', 'Soft Skills & Executive Development programs', '', '2 days ', 'N10000', 'Online', NULL, 'b', 'uploads/etii.jpg', 'yes'),
(80, 'Diversity and Culture Process Management', 'Soft Skills & Executive Development programs', '', '2 Days', 'N5000', 'Online', NULL, '<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"499\" style=\"border-collapse:\r\n collapse;width:375pt\"><tbody><tr height=\"73\" style=\"height:54.5pt\">\r\n  <td height=\"73\" class=\"xl65\" width=\"499\" style=\"height:54.5pt;width:375pt\">This\r\n  program introduces participants to the concept of diversity and how to adapt,\r\n  leverage and participate in a multi-cultural environment. It also focuses on\r\n  the culturization for organizations seeking to build a culture DNA into their\r\n  employees.</td></tr></tbody></table>', 'uploads/Diversity and Culture Process Management.jpg', 'yes'),
(81, 'Train the Trainer', 'Soft Skills & Executive Development programs', '', '3days', 'N50k', '', NULL, 'The course is to train the trainer&nbsp;', 'uploads/Train the Trainer Program.jpg', 'yes'),
(82, 'Process Improvement', 'Soft Skills & Executive Development programs', '', '2 days ', 'N10000', 'Online', NULL, 'Process', 'uploads/Process improvment.jpg', 'yes'),
(83, 'Knowledge Management', 'Soft Skills & Executive Development programs', '', '2 days ', 'N10000', 'Online', NULL, 'Knowledge', 'uploads/Knowledge.jpg', 'yes'),
(84, 'Writing Reports and Proposals', 'Soft Skills & Executive Development programs', '', '2 days ', 'N10000', 'Online', NULL, 'Wr', 'uploads/Report writing.jpg', 'yes'),
(85, 'Entrepreneurial & Intrapreneurial Thinking', 'Soft Skills & Executive Development programs', '', '2 days ', 'N10000', 'Online', NULL, 'E', 'uploads/entrrepre.jpg', 'yes'),
(86, 'Recruitment and Selection Skills', 'Soft Skills & Executive Development programs', '', '2 days ', 'N10000', 'Online', NULL, 'H', 'uploads/bus.jpg', 'yes'),
(87, 'Talent Management Skills', 'Soft Skills & Executive Development programs', '', '2 days ', 'N10000', 'Online', NULL, 'Talent', 'uploads/process.jpg', 'yes'),
(88, 'Computer Networking', 'Cybersecurity Programs', '', '3 days', 'N7K (Online) 50k Classroom', '', NULL, '<span style=\"font-size: 10pt; line-height: 107%; font-family: \" gotham=\"\" rounded=\"\" book\";\"=\"\">This program covers\r\nadvanced topics in Computer Networking</span>', 'uploads/computer networking.jpg', 'yes'),
(89, 'Networking Security', 'Cybersecurity Programs', '', '2 Days', 'N8K (Online) 45k Classroom', '', NULL, '<span style=\"font-size: 10pt; line-height: 107%; font-family: \" gotham=\"\" rounded=\"\" book\";\"=\"\">Networking security consists\r\nof policies and practices adopted to prevent and monitor unauthorized access,\r\nmisuse of computer network and network accessible resources.</span>', 'uploads/network security.jpg', 'yes'),
(90, 'Masters in Cybersecurity', 'Cybersecurity Programs', '', '18 Months', 'N750k', '', NULL, '<span style=\"font-size: 10pt; line-height: 107%; font-family: \" gotham=\"\" rounded=\"\" book\";\"=\"\">This program will enable participants\r\nto gain knowledge and expertise to evaluate, design and build secure computer\r\nsystems, processes that are involved in cyber security.</span>', 'uploads/cybersecurity.jpg', 'yes'),
(91, 'Information Security Management Program (ISMP)', 'Cybersecurity Programs', '', '3 days', 'N50k', 'Online/Classroom', NULL, 'Information Security Management Program (ISMP)', 'uploads/ISMP.jpg', 'yes'),
(94, 'Data Analysis using Microsoft Excel', 'Technical Skills (Computer Appreciation Skills)', '', '2 Days', 'N10K (Online) 35K Classroom', '', NULL, '<span style=\"line-height: 107%;\" gotham=\"\" rounded=\"\" book\";\"=\"\">The ability to analyze data\r\nis a powerful skill that helps you make better decisions. Microsoft Excel is\r\none of the top tools for data analysis.</span>', 'uploads/Data analysis.jpg', 'yes'),
(95, 'Microsoft PowerPoint', 'Technical Skills (Computer Appreciation Skills)', '', '2 Days', 'N10K (Online)', '', NULL, '<span style=\"line-height: 107%;\" gotham=\"\" rounded=\"\" book\";\"=\"\">Microsoft PowerPoint is at the\r\nheart of effective communication in business. This program aims to provide\r\nessential skills needed to create, edit and present professional looking presentations.&nbsp;</span>', 'uploads/micro.jpg', 'yes'),
(96, 'Microsoft Power BI ', 'Technical Skills (Computer Appreciation Skills)', '', '2 Days', 'N80K CLASSROOM ONLY', '', NULL, '<div>Power BI is a robust business analytical for creating visual, interactive reports and dashboards</div>', 'uploads/BI.jpg', 'yes'),
(97, 'Tableau', 'Technical Skills (Computer Appreciation Skills)', '', '2 Days', 'N15K (Online)', '', NULL, '<span style=\"line-height: 107%;\" gotham=\"\" rounded=\"\" book\";\"=\"\">Tableau is a software that\r\ncreate informative and insightful visuals, perform scripting by combining\r\nmultiple databases. The program covers essential concepts of working with\r\nTableau.</span>', 'uploads/TABLEU.jpg', 'yes'),
(98, 'Python Programming', 'Programming and Software Development', '', '3 Days (Online)', 'N10K', '', NULL, '<span style=\"font-size: 10pt; line-height: 107%; font-family: \" gotham=\"\" rounded=\"\" book\";\"=\"\">Python is an object-oriented\r\ninteractive programming language. This program will guide you through the various\r\nfundamentals of Python going from basic to advanced.</span>', 'uploads/Pyphon.jpg', 'yes'),
(99, 'Software Development', 'Programming and Software Development', '', '5 Days (Online)', 'N10K', '', NULL, '<span style=\"font-size: 10pt; line-height: 107%; font-family: \" gotham=\"\" rounded=\"\" book\";\"=\"\">This program will guide you\r\nto build web and software applications.</span>', 'uploads/software development.jpg', 'yes'),
(100, 'Data Science with Python', 'Programming and Software Development', '', '3 Days (Online)', 'N15K', '', NULL, '<span style=\"font-size: 10pt; line-height: 107%; font-family: \" gotham=\"\" rounded=\"\" book\";\"=\"\">Data Science with Python\r\nwill introduce the field of Data science, knowledge in data analysis, data\r\nvisualization, machine learning and Natural Processing Language</span>', 'uploads/data with python.jpg', 'yes'),
(101, 'Machine Learning with Python', 'Programming and Software Development', '', '3 Days (Online)', 'N15K', '', NULL, '<span style=\"font-size: 10pt; line-height: 107%; font-family: \" gotham=\"\" rounded=\"\" book\";\"=\"\">Machine Learning with\r\nPython dives into the basics of machine learning, learning various machine learning\r\nalgorithms and deploying machine learning models.</span>', 'uploads/phyton.jpg', 'yes'),
(102, 'Data Science Bootcamp', 'Programming and Software Development', '', '10 Weeks (Online)', 'N15K', '', NULL, '<span style=\"font-size: 10pt; line-height: 107%; font-family: \" gotham=\"\" rounded=\"\" book\";\"=\"\">Data Science Bootcamp is an\r\nintensive, project-based, online learning program designed to groom skills in\r\ndata science</span>', 'uploads/Data analysis.jpg', 'yes'),
(103, 'INVESTIGATION AND CRIME SCENE PRESERVATION', 'Security Studies', '', '3 Days', 'N10000', 'Online', NULL, 'At the end of this program, participants will be able to develop an understanding of scientific principles and practice of crime scene management, investigation and reconstruction including evidence collection and preservation.', 'uploads/crime scene.jpg', 'yes'),
(104, 'SECURITY TECHNOLOGIES AND SYSTEMS', 'Security Studies', '', '1 Day', 'N10000', 'Online/Classroom', NULL, 'This program is designed to provide participants with an overview of security and the convergence with information security and its implication for organizations, whilst also exposing them to innovative technologies that enable/support security functions and processes', 'uploads/security ststem.jpg', 'yes'),
(105, 'HEALTH AND SAFETY (LEVELS 1, 2, & 3)', 'Security Studies', '', '3 Days', 'N10000', 'Classroom/Online', NULL, 'This program will introduce the concept of H.S.E and safety management and equip participants on assessing and mitigating hazards using control assurance framework.', 'uploads/work safety.jpg', 'yes'),
(106, 'SECURITY INTELLIGENCE FOR OPERATIONS', 'Security Studies', '', '2 Days', 'N10000', 'Classroom/Online', NULL, 'This program will enable participants to describe the process and practice of collecting, standardizing, and analyzing data that is generated by networks, applications, and other IT infrastructures in real-time and apply this information to organizational security posture. Participants will also be exposed to data-gathering technologies and Humit (Human Intelligence)', 'uploads/security intelligence.jpg', 'yes'),
(107, 'CUSTOMER RELATIONSHIP MANAGEMENT', 'Security Studies', '', '1 Day', 'N10000', 'Online', NULL, 'This program will examine the practice of customer relationship and the business impact of customer service. Participants will learn how to profile customers in any establishment thereby reducing potential security breaches. Whilst improving on good services delivery.', 'uploads/Security management .jpg', 'yes'),
(108, 'SECURITY COMMUNICATIONS AND REPORT WRITING', 'Security Studies', '', '1 Day', 'N10000', 'Online', NULL, 'At the end of this program participants will be equipped with proper communication skills and competencies that will enable them to understand communication conventions and report writing, as well as the elements of report writing that aids security.', 'uploads/Security communications.jpg', 'yes'),
(109, 'SECURITY PROFILING', 'Security Studies', '', '1 Day', 'N10000', 'Classroom/Online', NULL, '<span style=\"font-size:11.0pt;line-height:115%;\r\nfont-family:\" calibri\",sans-serif;mso-ascii-theme-font:minor-latin;mso-fareast-font-family:=\"\" calibri;mso-fareast-theme-font:minor-latin;mso-hansi-theme-font:minor-latin;=\"\" mso-bidi-theme-font:minor-latin;mso-ansi-language:en-us;mso-fareast-language:=\"\" en-us;mso-bidi-language:ar-sa\"=\"\">This program will focus on profiling for security\r\npurposes and will provide participants the skills to monitor and analyze\r\npeopleâ€™s behavioral, physical and psychological characteristics.</span>', 'uploads/secuu.jpg', 'yes'),
(110, 'EMERGENCY MANAGEMENT', 'Security Studies', '', '2 Days', 'N10000', 'Online', NULL, '<span style=\"font-size:11.0pt;line-height:115%;\r\nfont-family:\" calibri\",sans-serif;mso-ascii-theme-font:minor-latin;mso-fareast-font-family:=\"\" calibri;mso-fareast-theme-font:minor-latin;mso-hansi-theme-font:minor-latin;=\"\" mso-bidi-theme-font:minor-latin;mso-ansi-language:en-us;mso-fareast-language:=\"\" en-us;mso-bidi-language:ar-sa\"=\"\">Participants will learn about security\r\nimplications of any disaster and how to develop business continuity systems to\r\nmitigate against pending disasters and manage them if/when they occur.</span>', 'uploads/Emergency Preparedness & Business Continuity.jpg', 'yes'),
(111, 'SECURITY THREATS AND PERSONAL SAFETY', 'Security Studies', '', '2 Days', 'N10000', 'Online', NULL, '<span style=\"font-size:11.0pt;line-height:115%;\r\nfont-family:\" calibri\",sans-serif;mso-ascii-theme-font:minor-latin;mso-fareast-font-family:=\"\" calibri;mso-fareast-theme-font:minor-latin;mso-hansi-theme-font:minor-latin;=\"\" mso-bidi-theme-font:minor-latin;mso-ansi-language:en-us;mso-fareast-language:=\"\" en-us;mso-bidi-language:ar-sa\"=\"\">This program will examine the different\r\nforms/types of insecurity. Participants will learn what approach to adopt in\r\nsecuring self/organization/assets from unwanted parties.</span>', 'uploads/personal se.jpg', 'yes'),
(112, 'RADIO COMMUNICATIONS AND SITREP', 'Security Studies', '', '1 Day', 'N10000', 'Online', NULL, '<span style=\"font-size:11.0pt;line-height:115%;\r\nfont-family:\" calibri\",sans-serif;mso-ascii-theme-font:minor-latin;mso-fareast-font-family:=\"\" calibri;mso-fareast-theme-font:minor-latin;mso-hansi-theme-font:minor-latin;=\"\" mso-bidi-theme-font:minor-latin;mso-ansi-language:en-us;mso-fareast-language:=\"\" en-us;mso-bidi-language:ar-sa\"=\"\">At the end of this program participants will be\r\nable to effectively use a digital radio and discern radio messages, recognize\r\napproved and prohibited messages contents. Identify prosper procedures for\r\ncalling and acknowledge radio messages. Identify radio codes etc.</span>', 'uploads/Radio.jpg', 'yes'),
(113, 'SECURITY PROFESSIONALISM AND CODE OF ETHICS', 'Security Studies', '', '1 Day', 'N10000', 'Online', NULL, '<span style=\"font-size:11.0pt;line-height:115%;\r\nfont-family:\" calibri\",sans-serif;mso-ascii-theme-font:minor-latin;mso-fareast-font-family:=\"\" calibri;mso-fareast-theme-font:minor-latin;mso-hansi-theme-font:minor-latin;=\"\" mso-bidi-theme-font:minor-latin;mso-ansi-language:en-us;mso-fareast-language:=\"\" en-us;mso-bidi-language:ar-sa\"=\"\">At the end of this program participants will be\r\nequipped to deal with constraints that affect security operations and security\r\noperatives in the line of duty.</span>', 'uploads/security progamme.jpeg', 'yes');
INSERT INTO `courses` (`id`, `title`, `mp_title`, `keyword`, `days`, `price`, `location`, `banner_text`, `content`, `banner_url`, `ext_link`) VALUES
(114, 'CRIMINOLOGY', 'Security Studies', '', '3 Days', 'N10000', 'Online', NULL, '<span style=\"font-size:11.0pt;line-height:115%;\r\nfont-family:\" calibri\",sans-serif;mso-ascii-theme-font:minor-latin;mso-fareast-font-family:=\"\" calibri;mso-fareast-theme-font:minor-latin;mso-hansi-theme-font:minor-latin;=\"\" mso-bidi-theme-font:minor-latin;mso-ansi-language:en-us;mso-fareast-language:=\"\" en-us;mso-bidi-language:ar-sa\"=\"\">Upon completion of this program participants\r\nwill be able to recognize the causes and consequences of crime at the micro and\r\nmacro levels and match these with prominent criminological perspectives,\r\ndescribe the interrelated institutions and processes of criminal justicesâ€™\r\nsystem.</span>', 'uploads/Criminology.jpg', 'yes'),
(115, 'SECURITY OPERATIONS TRAINING', 'Security Studies', '', '3 Days', 'N10000', 'Online', NULL, '<span style=\"font-size:11.0pt;line-height:115%;\r\nfont-family:\" calibri\",sans-serif;mso-ascii-theme-font:minor-latin;mso-fareast-font-family:=\"\" calibri;mso-fareast-theme-font:minor-latin;mso-hansi-theme-font:minor-latin;=\"\" mso-bidi-theme-font:minor-latin;mso-ansi-language:en-us;mso-fareast-language:=\"\" en-us;mso-bidi-language:ar-sa\"=\"\">This training program is aimed to support the development\r\nof the core competencies, skills, characters, attitude and professionalism of\r\nsecurity operatives at their location.</span>', 'uploads/security ststem.jpg', 'yes'),
(116, 'INTELLIGENCE REPORT WRITING TRAINING', 'Security Studies', '', '2 Days', 'N100000', 'Online', NULL, '<span style=\"font-size:11.0pt;line-height:115%;\r\nfont-family:\" calibri\",sans-serif;mso-ascii-theme-font:minor-latin;mso-fareast-font-family:=\"\" calibri;mso-fareast-theme-font:minor-latin;mso-hansi-theme-font:minor-latin;=\"\" mso-bidi-theme-font:minor-latin;mso-ansi-language:en-us;mso-fareast-language:=\"\" en-us;mso-bidi-language:ar-sa\"=\"\">Participants will learn how to develop a\r\nstructured reporting competencies and format that will meet corporate\r\nrequirements. Upon the completion of the program, the participants will become\r\nskilled report writers with in-depth knowledge of how to present detailed\r\nreport.</span>', 'uploads/Report writing.jpg', 'yes'),
(117, 'HOSTILE ENVIRONMENT AWARENESS TRAINING', 'Security Studies', '', '1 Day', 'N10000', 'Online', NULL, '<span style=\"font-size:11.0pt;line-height:115%;\r\nfont-family:\" calibri\",sans-serif;mso-ascii-theme-font:minor-latin;mso-fareast-font-family:=\"\" calibri;mso-fareast-theme-font:minor-latin;mso-hansi-theme-font:minor-latin;=\"\" mso-bidi-theme-font:minor-latin;mso-ansi-language:en-us;mso-fareast-language:=\"\" en-us;mso-bidi-language:ar-sa\"=\"\">The training will examine the critical threats\r\nthat are prevalent in hostile areas and advise participants on how to keep safe\r\nat work, on the road and while at home. At the end of the training,\r\nparticipants will be trained and equipped on how to use bespoke basic risk and\r\nvulnerability assessment toolkit for individuals and families.</span>', 'uploads/environ.jpg', 'yes'),
(118, 'CORPORATE INVESTIGATION & INTELLIGENCE TRAINING', 'Security Studies', '', '2 Days', 'N10000', 'Online', NULL, '<div>\r\n\r\n<table cellspacing=\"0\" cellpadding=\"0\" hspace=\"0\" vspace=\"0\" align=\"center\">\r\n <tbody><tr>\r\n  <td valign=\"top\" align=\"left\" style=\"padding-top:0in;padding-right:9.0pt;\r\n  padding-bottom:0in;padding-left:9.0pt\">\r\n  <p class=\"MsoNormal\">At the\r\n  end of the training, delegates will:<o:p></o:p></p>\r\n  <p class=\"MsoListParagraphCxSpFirst\" style=\"margin-left:.75in;mso-add-space:\r\n  auto;text-indent:-.25in;mso-list:l0 level1 lfo1;mso-element:frame;mso-element-frame-hspace:\r\n  9.0pt;mso-element-wrap:around;mso-element-anchor-horizontal:margin;\r\n  mso-element-left:center;mso-element-top:-70.6pt;mso-height-rule:exactly\"><!--[if !supportLists]-->â€¢<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n  </span><!--[endif]-->Have the ability to carry out detailed\r\n  investigations<o:p></o:p></p>\r\n  <p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-left:.75in;mso-add-space:\r\n  auto;text-indent:-.25in;mso-list:l0 level1 lfo1;mso-element:frame;mso-element-frame-hspace:\r\n  9.0pt;mso-element-wrap:around;mso-element-anchor-horizontal:margin;\r\n  mso-element-left:center;mso-element-top:-70.6pt;mso-height-rule:exactly\"><!--[if !supportLists]-->â€¢<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n  </span><!--[endif]-->Fraud investigation techniques<o:p></o:p></p>\r\n  <p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-left:.75in;mso-add-space:\r\n  auto;text-indent:-.25in;mso-list:l0 level1 lfo1;mso-element:frame;mso-element-frame-hspace:\r\n  9.0pt;mso-element-wrap:around;mso-element-anchor-horizontal:margin;\r\n  mso-element-left:center;mso-element-top:-70.6pt;mso-height-rule:exactly\"><!--[if !supportLists]-->â€¢<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n  </span><!--[endif]-->Apply professional techniques to corporate\r\n  investigation<o:p></o:p></p>\r\n  <p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-left:.75in;mso-add-space:\r\n  auto;text-indent:-.25in;mso-list:l0 level1 lfo1;mso-element:frame;mso-element-frame-hspace:\r\n  9.0pt;mso-element-wrap:around;mso-element-anchor-horizontal:margin;\r\n  mso-element-left:center;mso-element-top:-70.6pt;mso-height-rule:exactly\"><!--[if !supportLists]-->â€¢<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n  </span><!--[endif]-->Play the role of corporate investigators in\r\n  a corporate environment.<o:p></o:p></p>\r\n  <p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-left:.75in;mso-add-space:\r\n  auto;text-indent:-.25in;mso-list:l0 level1 lfo1;mso-element:frame;mso-element-frame-hspace:\r\n  9.0pt;mso-element-wrap:around;mso-element-anchor-horizontal:margin;\r\n  mso-element-left:center;mso-element-top:-70.6pt;mso-height-rule:exactly\"><!--[if !supportLists]-->â€¢<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n  </span><!--[endif]-->Have digital competencies required to analyze\r\n  intelligence<o:p></o:p></p>\r\n  <p class=\"MsoListParagraphCxSpLast\" style=\"margin-left:.75in;mso-add-space:\r\n  auto;text-indent:-.25in;mso-list:l0 level1 lfo1;mso-element:frame;mso-element-frame-hspace:\r\n  9.0pt;mso-element-wrap:around;mso-element-anchor-horizontal:margin;\r\n  mso-element-left:center;mso-element-top:-70.6pt;mso-height-rule:exactly\"><!--[if !supportLists]-->â€¢<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n  </span><!--[endif]-->Display excellent corporate investigative techniques\r\n  ethics and attitude<o:p></o:p></p>\r\n  </td>\r\n </tr>\r\n</tbody></table>\r\n\r\n</div>\r\n\r\n<span style=\"font-size:11.0pt;line-height:115%;font-family:\" calibri\",sans-serif;=\"\" mso-ascii-theme-font:minor-latin;mso-fareast-font-family:calibri;mso-fareast-theme-font:=\"\" minor-latin;mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-latin;=\"\" mso-ansi-language:en-us;mso-fareast-language:en-us;mso-bidi-language:ar-sa\"=\"\">Skills\r\nin intelligence analytics- Gather, analyze, and decipher data to intelligence</span>', 'uploads/investigationn.jpg', 'yes'),
(119, 'CLOSE PROTECTION OFFICER TRAINING', 'Security Studies', '', '5 Days', 'N10000', 'Online', NULL, '<div>\r\n\r\n<table cellspacing=\"0\" cellpadding=\"0\" hspace=\"0\" vspace=\"0\" align=\"center\">\r\n <tbody><tr>\r\n  <td valign=\"top\" align=\"left\" style=\"padding-top:0in;padding-right:9.0pt;\r\n  padding-bottom:0in;padding-left:9.0pt\">\r\n  <p class=\"MsoNormal\">Become\r\n  an Internationally Certified Close Protection Officer &amp; Body Guard.<o:p></o:p></p>\r\n  <p class=\"MsoNormal\">At the\r\n  end of the training, attendees will learn the following;<o:p></o:p></p>\r\n  <p class=\"MsoListParagraphCxSpFirst\" style=\"text-indent:-.25in;mso-list:l0 level1 lfo1;\r\n  mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;\r\n  mso-element-anchor-horizontal:margin;mso-element-left:center;mso-element-top:\r\n  -70.6pt;mso-height-rule:exactly\"><!--[if !supportLists]--><span style=\"font-family:\r\n  Wingdings;mso-fareast-font-family:Wingdings;mso-bidi-font-family:Wingdings\">Ã˜<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp; </span></span><!--[endif]-->Threats\r\n  Assessment and Risk Management<o:p></o:p></p>\r\n  <p class=\"MsoListParagraphCxSpMiddle\" style=\"text-indent:-.25in;mso-list:l0 level1 lfo1;\r\n  mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;\r\n  mso-element-anchor-horizontal:margin;mso-element-left:center;mso-element-top:\r\n  -70.6pt;mso-height-rule:exactly\"><!--[if !supportLists]--><span style=\"font-family:\r\n  Wingdings;mso-fareast-font-family:Wingdings;mso-bidi-font-family:Wingdings\">Ã˜<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp; </span></span><!--[endif]-->CPO\r\n  Surveillance<o:p></o:p></p>\r\n  <p class=\"MsoListParagraphCxSpMiddle\" style=\"text-indent:-.25in;mso-list:l0 level1 lfo1;\r\n  mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;\r\n  mso-element-anchor-horizontal:margin;mso-element-left:center;mso-element-top:\r\n  -70.6pt;mso-height-rule:exactly\"><!--[if !supportLists]--><span style=\"font-family:\r\n  Wingdings;mso-fareast-font-family:Wingdings;mso-bidi-font-family:Wingdings\">Ã˜<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp; </span></span><!--[endif]-->Operational\r\n  planning Interpersonal skills: politeness and body language CPO teamwork\r\n  Reconnaissance.<o:p></o:p></p>\r\n  <p class=\"MsoListParagraphCxSpMiddle\" style=\"text-indent:-.25in;mso-list:l0 level1 lfo1;\r\n  mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;\r\n  mso-element-anchor-horizontal:margin;mso-element-left:center;mso-element-top:\r\n  -70.6pt;mso-height-rule:exactly\"><!--[if !supportLists]--><span style=\"font-family:\r\n  Wingdings;mso-fareast-font-family:Wingdings;mso-bidi-font-family:Wingdings\">Ã˜<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp; </span></span><!--[endif]-->Drills\r\n  Carriage and Comportment Communication Skill.<o:p></o:p></p>\r\n  <p class=\"MsoListParagraphCxSpLast\" style=\"text-indent:-.25in;mso-list:l0 level1 lfo1;\r\n  mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;\r\n  mso-element-anchor-horizontal:margin;mso-element-left:center;mso-element-top:\r\n  -70.6pt;mso-height-rule:exactly\"><!--[if !supportLists]--><span style=\"font-family:\r\n  Wingdings;mso-fareast-font-family:Wingdings;mso-bidi-font-family:Wingdings\">Ã˜<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp; </span></span><!--[endif]-->Conflict\r\n  Management Search Techniques and Procedures Vehicle Movement, Tactics and\r\n  Operations Conflict Management: practical CPO Self-Defence Techniques<o:p></o:p></p>\r\n  </td>\r\n </tr>\r\n</tbody></table>\r\n\r\n</div>\r\n\r\n<span style=\"font-size:11.0pt;line-height:115%;font-family:\" calibri\",sans-serif;=\"\" mso-ascii-theme-font:minor-latin;mso-fareast-font-family:calibri;mso-fareast-theme-font:=\"\" minor-latin;mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-latin;=\"\" mso-ansi-language:en-us;mso-fareast-language:en-us;mso-bidi-language:ar-sa\"=\"\">Weapons\r\nHandling: practical CPO Standard Operating Procedure HEPCO Embus and Debus\r\nTraining CPO/VIP Assessment and Executive Outing.</span>', 'uploads/close protection.jpg', 'yes'),
(120, 'FORENSIC ACCOUNTING Certified by ACFICA (Association of Certified Forensic Intelligence and Crime Analysts)', 'Security Studies', '', '2 Days', 'N30,000K', '', NULL, '<div>\r\n\r\n<table cellspacing=\"0\" cellpadding=\"0\" hspace=\"0\" vspace=\"0\" align=\"center\">\r\n <tbody><tr>\r\n  <td valign=\"top\" align=\"left\" style=\"padding-top:0in;padding-right:9.0pt;\r\n  padding-bottom:0in;padding-left:9.0pt\">\r\n  <p class=\"MsoNormal\">At the\r\n  end of the programme, participants will:<o:p></o:p></p>\r\n  <p class=\"MsoListParagraphCxSpFirst\" style=\"text-indent:-.25in;mso-list:l0 level1 lfo1;\r\n  mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;\r\n  mso-element-anchor-horizontal:margin;mso-element-left:center;mso-element-top:\r\n  -70.6pt;mso-height-rule:exactly\"><!--[if !supportLists]--><span lang=\"EN-GB\" style=\"font-family:Wingdings;mso-fareast-font-family:Wingdings;mso-bidi-font-family:\r\n  Wingdings;mso-ansi-language:EN-GB\">Ã˜<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp; </span></span><!--[endif]-->Understand\r\n  and apply the principles of forensics to accounting.<span lang=\"EN-GB\"><o:p></o:p></span></p>\r\n  <p class=\"MsoListParagraphCxSpMiddle\" style=\"text-indent:-.25in;mso-list:l0 level1 lfo1;\r\n  mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;\r\n  mso-element-anchor-horizontal:margin;mso-element-left:center;mso-element-top:\r\n  -70.6pt;mso-height-rule:exactly\"><!--[if !supportLists]--><span lang=\"EN-GB\" style=\"font-family:Wingdings;mso-fareast-font-family:Wingdings;mso-bidi-font-family:\r\n  Wingdings;mso-ansi-language:EN-GB\">Ã˜<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp; </span></span><!--[endif]-->Apply\r\n  investigative and analytical skills in the resolution of financial issues\r\n  according to standards required by courts of law.<span lang=\"EN-GB\"><o:p></o:p></span></p>\r\n  <p class=\"MsoListParagraphCxSpLast\" style=\"text-indent:-.25in;mso-list:l0 level1 lfo1;\r\n  mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;\r\n  mso-element-anchor-horizontal:margin;mso-element-left:center;mso-element-top:\r\n  -70.6pt;mso-height-rule:exactly\"><!--[if !supportLists]--><span lang=\"EN-GB\" style=\"font-family:Wingdings;mso-fareast-font-family:Wingdings;mso-bidi-font-family:\r\n  Wingdings;mso-ansi-language:EN-GB\">Ã˜<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp; </span></span><!--[endif]-->Acquaint\r\n  themselves with forensic analytical tools<span lang=\"EN-GB\"><o:p></o:p></span></p>\r\n  </td>\r\n </tr>\r\n</tbody></table>\r\n\r\n</div>\r\n\r\n<span style=\"font-size:11.0pt;line-height:115%;font-family:\" calibri\",sans-serif;=\"\" mso-ascii-theme-font:minor-latin;mso-fareast-font-family:calibri;mso-fareast-theme-font:=\"\" minor-latin;mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-latin;=\"\" mso-ansi-language:en-us;mso-fareast-language:en-us;mso-bidi-language:ar-sa\"=\"\">Effectively\r\ncarry out fraud investigation, using forensic tools</span>', 'uploads/Forensis.jpg', 'yes'),
(121, 'CRIME SCENE MANAGEMENT', 'Security Studies', '', '2 Days', 'N35,000', '', NULL, '<div>At the end of the programme, participants should be able to;</div><div><br></div><div>1. Recognize crime scenes and observe key evidential element.</div><div><br></div><div>2. Differentiate between primary and secondary crime scenes.</div><div><br></div><div>3. Minimize contamination of crime scenes.</div><div><br></div><div>4. Reduce their vulnerability to danger/ insecurity at crime scene. Understand chain of custody.</div><div><br></div><div>5. Understand the Legal framework covering the practice of crime scene management.</div><div><br></div><div>6. Process various crime scenes</div>', 'uploads/crime scene.jpg', 'yes'),
(122, 'DIGITAL FORENSICS', 'Security Studies', '', '2 Days', 'N35,000', '', NULL, '<div>\r\n\r\n<table cellspacing=\"0\" cellpadding=\"0\" hspace=\"0\" vspace=\"0\" align=\"center\">\r\n <tbody><tr>\r\n  <td valign=\"top\" align=\"left\" style=\"padding-top:0in;padding-right:9.0pt;\r\n  padding-bottom:0in;padding-left:9.0pt\">\r\n  <p class=\"MsoNormal\">At the\r\n  end of the program, attendees will be able to;<o:p></o:p></p>\r\n  <p class=\"MsoListParagraphCxSpFirst\" style=\"text-indent:-.25in;mso-list:l0 level1 lfo1;\r\n  mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;\r\n  mso-element-anchor-horizontal:margin;mso-element-left:center;mso-element-top:\r\n  -70.6pt;mso-height-rule:exactly\"><!--[if !supportLists]--><span style=\"font-family:\r\n  Wingdings;mso-fareast-font-family:Wingdings;mso-bidi-font-family:Wingdings\">Ã˜<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp; </span></span><!--[endif]-->Understand\r\n  the basics of digital forensics.<o:p></o:p></p>\r\n  <p class=\"MsoListParagraphCxSpMiddle\" style=\"text-indent:-.25in;mso-list:l0 level1 lfo1;\r\n  mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;\r\n  mso-element-anchor-horizontal:margin;mso-element-left:center;mso-element-top:\r\n  -70.6pt;mso-height-rule:exactly\"><!--[if !supportLists]--><span style=\"font-family:\r\n  Wingdings;mso-fareast-font-family:Wingdings;mso-bidi-font-family:Wingdings\">Ã˜<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp; </span></span><!--[endif]-->Describe\r\n  the various digital crime constituents.<o:p></o:p></p>\r\n  <p class=\"MsoListParagraphCxSpLast\" style=\"text-indent:-.25in;mso-list:l0 level1 lfo1;\r\n  mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;\r\n  mso-element-anchor-horizontal:margin;mso-element-left:center;mso-element-top:\r\n  -70.6pt;mso-height-rule:exactly\"><!--[if !supportLists]--><span style=\"font-family:\r\n  Wingdings;mso-fareast-font-family:Wingdings;mso-bidi-font-family:Wingdings\">Ã˜<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp; </span></span><!--[endif]-->Identify\r\n  some digital forensic investigative/auditing tools.<o:p></o:p></p>\r\n  </td>\r\n </tr>\r\n</tbody></table>\r\n\r\n</div>\r\n\r\n<span style=\"font-size:11.0pt;line-height:115%;font-family:\" calibri\",sans-serif;=\"\" mso-ascii-theme-font:minor-latin;mso-fareast-font-family:calibri;mso-fareast-theme-font:=\"\" minor-latin;mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-latin;=\"\" mso-ansi-language:en-us;mso-fareast-language:en-us;mso-bidi-language:ar-sa\"=\"\">Digital\r\ncrime scene processing.</span>', 'uploads/digital.jpg', 'yes'),
(123, 'FINGERPRINT ANALYSIS', 'Security Studies', '', '1 Day', 'N30K', '', NULL, '<div>At the end of the training, participants should be able to;</div><div><br></div><div>1. Identify different types of fingerprints.</div><div><br></div><div>2. Identify different techniques of processing fingerprints.</div><div><br></div><div>3. Process fingerprints from various surfaces.</div><div><br></div><div>4. Understand the discriminatory power of fingerprinting.</div><div><br></div><div>5. Explain fingerprint identification processes.</div>', 'uploads/fingerprint.jpg', 'yes'),
(124, 'QUESTIONED DOCUMENT ANALYSIS', 'Security Studies', '', '2 Days', 'N30K', '', NULL, '<div>\r\n\r\n<table cellspacing=\"0\" cellpadding=\"0\" hspace=\"0\" vspace=\"0\" align=\"center\">\r\n <tbody><tr>\r\n  <td valign=\"top\" align=\"left\" style=\"padding-top:0in;padding-right:9.0pt;\r\n  padding-bottom:0in;padding-left:9.0pt\">\r\n  <p class=\"MsoNormal\">At the\r\n  end of the training, participants should be able to;<o:p></o:p></p>\r\n  <p class=\"MsoListParagraphCxSpFirst\" style=\"text-indent:-.25in;mso-list:l0 level1 lfo1;\r\n  mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;\r\n  mso-element-anchor-horizontal:margin;mso-element-left:center;mso-element-top:\r\n  -70.6pt;mso-height-rule:exactly\"><!--[if !supportLists]--><span style=\"font-family:\r\n  Wingdings;mso-fareast-font-family:Wingdings;mso-bidi-font-family:Wingdings\">Ã˜<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp; </span></span><!--[endif]-->Identify\r\n  questioned document using various parameters.<o:p></o:p></p>\r\n  <p class=\"MsoListParagraphCxSpMiddle\" style=\"text-indent:-.25in;mso-list:l0 level1 lfo1;\r\n  mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;\r\n  mso-element-anchor-horizontal:margin;mso-element-left:center;mso-element-top:\r\n  -70.6pt;mso-height-rule:exactly\"><!--[if !supportLists]--><span style=\"font-family:\r\n  Wingdings;mso-fareast-font-family:Wingdings;mso-bidi-font-family:Wingdings\">Ã˜<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp; </span></span><!--[endif]-->Differentiate\r\n  between different types of questioned documents.<o:p></o:p></p>\r\n  <p class=\"MsoListParagraphCxSpLast\" style=\"text-indent:-.25in;mso-list:l0 level1 lfo1;\r\n  mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;\r\n  mso-element-anchor-horizontal:margin;mso-element-left:center;mso-element-top:\r\n  -70.6pt;mso-height-rule:exactly\"><!--[if !supportLists]--><span style=\"font-family:\r\n  Wingdings;mso-fareast-font-family:Wingdings;mso-bidi-font-family:Wingdings\">Ã˜<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp; </span></span><!--[endif]-->Resolve\r\n  conflicts arising from questioned documents.<o:p></o:p></p>\r\n  </td>\r\n </tr>\r\n</tbody></table>\r\n\r\n</div>\r\n\r\n<span style=\"font-size:11.0pt;line-height:115%;font-family:\" calibri\",sans-serif;=\"\" mso-ascii-theme-font:minor-latin;mso-fareast-font-family:calibri;mso-fareast-theme-font:=\"\" minor-latin;mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-latin;=\"\" mso-ansi-language:en-us;mso-fareast-language:en-us;mso-bidi-language:ar-sa\"=\"\">&nbsp;&nbsp;</span><div><span style=\"font-size:11.0pt;line-height:115%;font-family:\" calibri\",sans-serif;=\"\" mso-ascii-theme-font:minor-latin;mso-fareast-font-family:calibri;mso-fareast-theme-font:=\"\" minor-latin;mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-latin;=\"\" mso-ansi-language:en-us;mso-fareast-language:en-us;mso-bidi-language:ar-sa\"=\"\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span><span style=\"font-family: Wingdings; text-indent: -24px;\">Ã˜<font size=\"1\">&nbsp;</font></span><span style=\"font-size: 11pt;\">Identify\r\nmanuscripts patterns.</span></div>', 'uploads/doc analysis.jpg', 'yes'),
(125, 'EVIDENCE COLLECTION & PRESERVATION', 'Security Studies', '', '2 Days', 'N35,000', '', NULL, '\r\n\r\n<table cellspacing=\"0\" cellpadding=\"0\" hspace=\"0\" vspace=\"0\" align=\"center\">\r\n <tbody><tr>\r\n  <td valign=\"top\" align=\"left\" style=\"padding-top:0in;padding-right:9.0pt;\r\n  padding-bottom:0in;padding-left:9.0pt\">\r\n  <p class=\"MsoNormal\">At the\r\n  end of the training, participants should be able to;<o:p></o:p></p>\r\n  <p class=\"MsoListParagraphCxSpFirst\" style=\"text-indent:-.25in;mso-list:l0 level1 lfo1;\r\n  mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;\r\n  mso-element-anchor-horizontal:margin;mso-element-left:center;mso-element-top:\r\n  -70.6pt;mso-height-rule:exactly\"><!--[if !supportLists]--><span style=\"font-family:\r\n  Wingdings;mso-fareast-font-family:Wingdings;mso-bidi-font-family:Wingdings\">Ã˜<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp; </span></span><!--[endif]-->Observe\r\n  and document evidence as soon as possible.<o:p></o:p></p>\r\n  <p class=\"MsoListParagraphCxSpMiddle\" style=\"text-indent:-.25in;mso-list:l0 level1 lfo1;\r\n  mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;\r\n  mso-element-anchor-horizontal:margin;mso-element-left:center;mso-element-top:\r\n  -70.6pt;mso-height-rule:exactly\"><!--[if !supportLists]--><span style=\"font-family:\r\n  Wingdings;mso-fareast-font-family:Wingdings;mso-bidi-font-family:Wingdings\">Ã˜<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp; </span></span><!--[endif]-->Preserve\r\n  evidence/crime scene information.<o:p></o:p></p>\r\n  <p class=\"MsoListParagraphCxSpMiddle\" style=\"text-indent:-.25in;mso-list:l0 level1 lfo1;\r\n  mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;\r\n  mso-element-anchor-horizontal:margin;mso-element-left:center;mso-element-top:\r\n  -70.6pt;mso-height-rule:exactly\"><!--[if !supportLists]--><span style=\"font-family:\r\n  Wingdings;mso-fareast-font-family:Wingdings;mso-bidi-font-family:Wingdings\">Ã˜<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp; </span></span><!--[endif]-->Conduct\r\n  interviews.<o:p></o:p></p>\r\n  <p class=\"MsoListParagraphCxSpMiddle\" style=\"text-indent:-.25in;mso-list:l0 level1 lfo1;\r\n  mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;\r\n  mso-element-anchor-horizontal:margin;mso-element-left:center;mso-element-top:\r\n  -70.6pt;mso-height-rule:exactly\"><!--[if !supportLists]--><span style=\"font-family:\r\n  Wingdings;mso-fareast-font-family:Wingdings;mso-bidi-font-family:Wingdings\">Ã˜<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp; </span></span><!--[endif]-->Conduct an effective chain of custody.<o:p></o:p></p>\r\n  <p class=\"MsoListParagraphCxSpLast\" style=\"text-indent:-.25in;mso-list:l0 level1 lfo1;\r\n  mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;\r\n  mso-element-anchor-horizontal:margin;mso-element-left:center;mso-element-top:\r\n  -70.6pt;mso-height-rule:exactly\"><!--[if !supportLists]--><span style=\"font-family:\r\n  Wingdings;mso-fareast-font-family:Wingdings;mso-bidi-font-family:Wingdings\">Ã˜<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp; </span></span><!--[endif]-->Collect and preserve samples efficiently.<o:p></o:p></p>\r\n  </td>\r\n </tr>\r\n</tbody></table><span style=\"font-size: 11pt;\"><br></span><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<span style=\"font-family: Wingdings; text-indent: -24px;\">Ã˜</span><span times=\"\" new=\"\" roman\";\"=\"\" style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: Wingdings; text-indent: -24px;\">&nbsp;&nbsp;</span>Take\r\npresentable media evidence.</div>', 'uploads/evidence.jpg', 'yes'),
(126, 'SECURITY MANAGEMENT + CCTV/CONTROL ROOM OPERATIONS', 'Security Studies', '', '3 Days', 'N70,000', '', NULL, '<span style=\"font-size:11.0pt;line-height:115%;\r\nfont-family:\" calibri\",sans-serif;mso-ascii-theme-font:minor-latin;mso-fareast-font-family:=\"\" calibri;mso-fareast-theme-font:minor-latin;mso-hansi-theme-font:minor-latin;=\"\" mso-bidi-theme-font:minor-latin;mso-ansi-language:en-us;mso-fareast-language:=\"\" en-us;mso-bidi-language:ar-sa\"=\"\">Participants will discover applicable skills and\r\nknowledge of security risk profiling, assessment and management and the\r\ncompetencies to effectively maximize the working and operations of CCTV and\r\ncontrol room equipment. This interactive workshop will open the mind of\r\nparticipants to new security solutions and techniques for crime prevention.</span>', 'uploads/secuu.jpg', 'yes'),
(127, 'DEFENSIVE DRIVING', 'Security Studies', '', '2 Days', 'N40K', '', NULL, '<div>\r\n\r\n<table cellspacing=\"0\" cellpadding=\"0\" hspace=\"0\" vspace=\"0\" align=\"center\">\r\n <tbody><tr>\r\n  <td valign=\"top\" align=\"left\" style=\"padding-top:0in;padding-right:9.0pt;\r\n  padding-bottom:0in;padding-left:9.0pt\">\r\n  <p class=\"MsoNormal\">At the\r\n  end of this programme, delegates will:<o:p></o:p></p>\r\n  <p class=\"MsoListParagraphCxSpFirst\" style=\"text-indent:-.25in;mso-list:l0 level1 lfo1;\r\n  mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;\r\n  mso-element-anchor-horizontal:margin;mso-element-left:center;mso-element-top:\r\n  -70.6pt;mso-height-rule:exactly\"><!--[if !supportLists]--><span style=\"font-family:\r\n  Wingdings;mso-fareast-font-family:Wingdings;mso-bidi-font-family:Wingdings\">Ã˜<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp; </span></span><!--[endif]-->Apply\r\n  basic defensive and evasive driving techniques<o:p></o:p></p>\r\n  <p class=\"MsoListParagraphCxSpMiddle\" style=\"text-indent:-.25in;mso-list:l0 level1 lfo1;\r\n  mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;\r\n  mso-element-anchor-horizontal:margin;mso-element-left:center;mso-element-top:\r\n  -70.6pt;mso-height-rule:exactly\"><!--[if !supportLists]--><span style=\"font-family:\r\n  Wingdings;mso-fareast-font-family:Wingdings;mso-bidi-font-family:Wingdings\">Ã˜<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp; </span></span><!--[endif]-->Play the\r\n  role of security operative and close protection whilst driving<o:p></o:p></p>\r\n  <p class=\"MsoListParagraphCxSpMiddle\" style=\"text-indent:-.25in;mso-list:l0 level1 lfo1;\r\n  mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;\r\n  mso-element-anchor-horizontal:margin;mso-element-left:center;mso-element-top:\r\n  -70.6pt;mso-height-rule:exactly\"><!--[if !supportLists]--><span style=\"font-family:\r\n  Wingdings;mso-fareast-font-family:Wingdings;mso-bidi-font-family:Wingdings\">Ã˜<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp; </span></span><!--[endif]-->Have\r\n  digital competencies required for driving e.g. Use Google map etc<o:p></o:p></p>\r\n  <p class=\"MsoListParagraphCxSpMiddle\" style=\"text-indent:-.25in;mso-list:l0 level1 lfo1;\r\n  mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;\r\n  mso-element-anchor-horizontal:margin;mso-element-left:center;mso-element-top:\r\n  -70.6pt;mso-height-rule:exactly\"><!--[if !supportLists]--><span style=\"font-family:\r\n  Wingdings;mso-fareast-font-family:Wingdings;mso-bidi-font-family:Wingdings\">Ã˜<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp; </span></span><!--[endif]-->Display\r\n  excellent work ethics and attitude<o:p></o:p></p>\r\n  <p class=\"MsoListParagraphCxSpMiddle\" style=\"text-indent:-.25in;mso-list:l0 level1 lfo1;\r\n  mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;\r\n  mso-element-anchor-horizontal:margin;mso-element-left:center;mso-element-top:\r\n  -70.6pt;mso-height-rule:exactly\"><!--[if !supportLists]--><span style=\"font-family:\r\n  Wingdings;mso-fareast-font-family:Wingdings;mso-bidi-font-family:Wingdings\">Ã˜<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp; </span></span><!--[endif]-->Gain the\r\n  ability to safely avoid accidents and unsafe road occurrences.<o:p></o:p></p>\r\n  <p class=\"MsoListParagraphCxSpMiddle\" style=\"text-indent:-.25in;mso-list:l0 level1 lfo1;\r\n  mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;\r\n  mso-element-anchor-horizontal:margin;mso-element-left:center;mso-element-top:\r\n  -70.6pt;mso-height-rule:exactly\"><!--[if !supportLists]--><span style=\"font-family:\r\n  Wingdings;mso-fareast-font-family:Wingdings;mso-bidi-font-family:Wingdings\">Ã˜<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp; </span></span><!--[endif]-->Greater\r\n  understanding of basic vehicle maintenance and repair<o:p></o:p></p>\r\n  <p class=\"MsoListParagraphCxSpLast\" style=\"text-indent:-.25in;mso-list:l0 level1 lfo1;\r\n  mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:around;\r\n  mso-element-anchor-horizontal:margin;mso-element-left:center;mso-element-top:\r\n  -70.6pt;mso-height-rule:exactly\"><!--[if !supportLists]--><span style=\"font-family:\r\n  Wingdings;mso-fareast-font-family:Wingdings;mso-bidi-font-family:Wingdings\">Ã˜<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp; </span></span><!--[endif]-->Become\r\n  proficient in Trip planning and increase security awareness<o:p></o:p></p>\r\n  </td>\r\n </tr>\r\n</tbody></table>\r\n\r\n</div>\r\n\r\n<span style=\"font-size:11.0pt;line-height:115%;font-family:\" calibri\",sans-serif;=\"\" mso-ascii-theme-font:minor-latin;mso-fareast-font-family:calibri;mso-fareast-theme-font:=\"\" minor-latin;mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-latin;=\"\" mso-ansi-language:en-us;mso-fareast-language:en-us;mso-bidi-language:ar-sa\"=\"\">Understand\r\nthe environmental impacts of driving</span>', 'uploads/defensive.jpg', 'yes'),
(128, 'ASSOCIATION OF CERTIFIED FORENSIC INTELLIGENCE AND CRIME ANALYSTS (ACFICA)', 'Security Studies', '', '4 Weeks', 'N10000', 'Online', NULL, '<p class=\"MsoNormal\">This is a month of training for police officers in Lagos\r\nstate, organized by the Association of Certified Forensic Intelligence and\r\nCrime Analysts (ACFICA)<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\">At the end of the training, participants will:<o:p></o:p></p>\r\n\r\n<p class=\"MsoListParagraphCxSpFirst\" style=\"margin-left:45.0pt;mso-add-space:\r\nauto\"><o:p>&nbsp;</o:p></p>\r\n\r\n<p class=\"MsoListParagraphCxSpLast\" style=\"margin-left:45.0pt;mso-add-space:auto;\r\ntext-indent:-.25in;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-family:Wingdings;mso-fareast-font-family:Wingdings;mso-bidi-font-family:\r\nWingdings\"><span style=\"mso-list:Ignore\">Ã˜<span style=\"font:7.0pt \" times=\"\" new=\"\" roman\"\"=\"\">&nbsp;\r\n</span></span></span><!--[endif]-->Become proficient in Crime prevention and\r\ncommunity safety<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-left:9.0pt\"><o:p>&nbsp;</o:p></p>\r\n\r\n<p class=\"MsoListParagraph\" style=\"margin-left:45.0pt;mso-add-space:auto;\r\ntext-indent:-.25in;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-family:Wingdings;mso-fareast-font-family:Wingdings;mso-bidi-font-family:\r\nWingdings\"><span style=\"mso-list:Ignore\">Ã˜<span style=\"font:7.0pt \" times=\"\" new=\"\" roman\"\"=\"\">&nbsp;\r\n</span></span></span><!--[endif]-->Have a greater understanding of community\r\npolicing and counter-terrorism<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-left:9.0pt\"><o:p>&nbsp;</o:p></p>\r\n\r\n<p class=\"MsoListParagraph\" style=\"margin-left:45.0pt;mso-add-space:auto;\r\ntext-indent:-.25in;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-family:Wingdings;mso-fareast-font-family:Wingdings;mso-bidi-font-family:\r\nWingdings\"><span style=\"mso-list:Ignore\">Ã˜<span style=\"font:7.0pt \" times=\"\" new=\"\" roman\"\"=\"\">&nbsp;\r\n</span></span></span><!--[endif]-->Develop skills in Cybersecurity and surveillance\r\ntradecraft<o:p></o:p></p><br>', 'uploads/Forensis.jpg', 'yes'),
(129, 'AVIATION SECURITY TRAINING (AVSEC)', 'Security Studies', '', '4 Days', 'N10000', 'Online', NULL, '<div>The course is designed to train base or entry-level airport security personnel to enforce, monitor and apply airport security measures in accordance with locally approved programmes and to communicate and cooperate with other airport agencies.</div><div><br></div><div>At the end of the training, participants will:</div><div><br></div><div>1. Understand civil aviation security threats</div><div><br></div><div>2. Become proficient in reporting procedures</div><div><br></div><div>3. Gain knowledge of response to security-related incidents</div><div><br></div><div><br></div><div>Develop competencies in Access control and relevant screening procedures.</div>', 'uploads/Aviation.jpg', 'yes'),
(130, 'CERTIFIED SECURITY SUPERVISORS COURSE (CSSC)', 'Security Studies', '', '3 Days', 'N5K', 'Online/Classroom', NULL, '<p class=\"MsoNormal\"></p><p class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;\r\nline-height:normal\"><br></p><p class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;\r\nline-height:normal\"><span style=\"font-size: 13.5pt; font-family: &quot;Times New Roman&quot;, serif;\">CSSC certification and\r\nHABC British Accreditation will afford you the privilege to learn more about\r\nyour responsibilities and preparedness in the security industry.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;\r\nline-height:normal\"><span style=\"font-size: 13.5pt; font-family: &quot;Times New Roman&quot;, serif;\">At the end of the\r\ntraining, the participants will:<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;\r\ntext-indent:-.25in;line-height:normal\"><span style=\"font-size: 13.5pt; font-family: Wingdings;\">&nbsp;Ã˜</span><span style=\"font-size: 7pt; font-family: &quot;Times New Roman&quot;, serif;\">&nbsp;&nbsp;</span><span style=\"font-size: 13.5pt; font-family: &quot;Times New Roman&quot;, serif;\">Develop required skills in Security Risk Management.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;\r\ntext-indent:-.25in;line-height:normal\"><span style=\"font-size: 13.5pt; font-family: Wingdings;\">&nbsp;Ã˜</span><span style=\"font-size: 7pt; font-family: &quot;Times New Roman&quot;, serif;\">&nbsp;&nbsp;</span><span style=\"font-size: 13.5pt; font-family: &quot;Times New Roman&quot;, serif;\">Competencies in HSE &amp; Infectious control Emergency Plaining\r\nand Business continuity<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;\r\ntext-indent:-.25in;line-height:normal\"><span style=\"font-size: 13.5pt; font-family: Wingdings;\">&nbsp;Ã˜</span><span style=\"font-size: 7pt; font-family: &quot;Times New Roman&quot;, serif;\">&nbsp;&nbsp;</span><span style=\"font-size: 13.5pt; font-family: &quot;Times New Roman&quot;, serif;\">Gain knowledge in supervision of security operatives and manage\r\noperational risk under the new normal<o:p></o:p></span></p><p></p>', 'uploads/cert3.jpg', 'yes'),
(131, 'CERTIFIED ENTERPRISE SECURITY OPERATIVE (CESO)', 'Security Studies', '', '2 Days', 'N30K', 'Online/Classroom', NULL, '<div style=\"mso-element:frame;mso-element-frame-hspace:9.0pt;mso-element-wrap:\r\naround;mso-element-anchor-horizontal:margin;mso-element-left:center;mso-element-top:\r\n-70.6pt;mso-height-rule:exactly\"><p class=\"MsoListParagraphCxSpFirst\" style=\"margin-left:45.0pt;mso-add-space:\r\nauto\">This is a certification program that equips security operatives on\r\nenterprise security and risk-based approach to assetsâ€™ protection.<o:p></o:p></p>\r\n\r\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-left:45.0pt;mso-add-space:\r\nauto\"><o:p>&nbsp;</o:p>Added Value for Participants:</p><p class=\"MsoListParagraphCxSpMiddle\" style=\"text-indent: 0px; margin-left: 45pt;\"><span style=\"text-indent: -0.25in;\">&nbsp;</span><span style=\"text-indent: -0.25in; font-family: Wingdings;\">Ã˜<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;\r\n</span></span><span style=\"text-indent: -0.25in;\">Co-certification with a professional institute-\r\nAERMP</span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-left:81.0pt;mso-add-space:\r\nauto;text-indent:-.25in;mso-list:l0 level1 lfo1\"><o:p></o:p></p>\r\n\r\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-left:45.0pt;mso-add-space:\r\nauto\"><o:p>&nbsp;</o:p><span style=\"text-indent: -0.25in; font-family: Wingdings;\">Ã˜<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;\r\n</span></span><span style=\"text-indent: -0.25in;\">International Career Opportunities in Enterprise\r\nSecurity Risks</span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-left:81.0pt;mso-add-space:\r\nauto;text-indent:-.25in;mso-list:l0 level1 lfo1\"><o:p></o:p></p>\r\n\r\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-left:45.0pt;mso-add-space:\r\nauto\"><o:p style=\"\">&nbsp;</o:p><span style=\"text-indent: -0.25in; font-family: Wingdings;\">Ã˜<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;\r\n</span></span><span style=\"text-indent: -0.25in;\">Provides easy access to a professional\r\ncertificate in ESRM- certESRM</span></p><p class=\"MsoListParagraphCxSpLast\" style=\"margin-left:81.0pt;mso-add-space:auto;\r\ntext-indent:-.25in;mso-list:l0 level1 lfo1\"><o:p></o:p></p>\r\n\r\n</div>', 'uploads/cert2.jpg', 'yes'),
(132, 'MARITIME SECURITY - PFSO', 'Security Studies', '', '3 Days', 'N10000', 'Online', NULL, '<p class=\"MsoNormal\">Maritime security is a specialized field in the marine\r\nsector that requires security officers to employ the best practices to defend\r\ntheir vessel against both internal and external threats.</p>\r\n\r\n<p class=\"MsoNormal\">With this training, participants will;</p>\r\n\r\n<p class=\"MsoListParagraph\" style=\"margin-left:45.0pt;mso-add-space:auto;\r\ntext-indent:-.25in;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-family:Wingdings;mso-fareast-font-family:Wingdings;mso-bidi-font-family:\r\nWingdings\"><span style=\"mso-list:Ignore\">Ã˜<span style=\"font:7.0pt \" times=\"\" new=\"\" roman\"\"=\"\">&nbsp;\r\n</span></span></span><!--[endif]-->Have an understanding of key aspects of the\r\nsecurity requirements and responsibilities of a Port Facility Security Officer\r\n(PFSO)</p>\r\n\r\n<p class=\"MsoListParagraph\" style=\"margin-left:45.0pt;mso-add-space:auto;\r\ntext-indent:-.25in;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-family:Wingdings;mso-fareast-font-family:Wingdings;mso-bidi-font-family:\r\nWingdings\"><span style=\"mso-list:Ignore\">Ã˜<span style=\"font:7.0pt \" times=\"\" new=\"\" roman\"\"=\"\">&nbsp;\r\n</span></span></span><!--[endif]-->Good understanding of what maritime security\r\nentails.</p>\r\n\r\n<p class=\"MsoListParagraph\" style=\"margin-left:45.0pt;mso-add-space:auto;\r\ntext-indent:-.25in;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-family:Wingdings;mso-fareast-font-family:Wingdings;mso-bidi-font-family:\r\nWingdings\"><span style=\"mso-list:Ignore\">Ã˜<span style=\"font:7.0pt \" times=\"\" new=\"\" roman\"\"=\"\">&nbsp;\r\n</span></span></span><!--[endif]-->Knowledge of the Maritime Operating Environment\r\nand common security issues that the maritime space face</p>\r\n\r\n<p class=\"MsoListParagraph\" style=\"margin-left:45.0pt;mso-add-space:auto;\r\ntext-indent:-.25in;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-family:Wingdings;mso-fareast-font-family:Wingdings;mso-bidi-font-family:\r\nWingdings\"><span style=\"mso-list:Ignore\">Ã˜<span style=\"font:7.0pt \" times=\"\" new=\"\" roman\"\"=\"\">&nbsp;\r\n</span></span></span><!--[endif]--><span style=\"mso-spacerun:yes\">&nbsp;</span>Be able\r\nto demonstrate the security tactics of maritime security.</p>\r\n\r\n<p class=\"MsoListParagraph\" style=\"margin-left:45.0pt;mso-add-space:auto;\r\ntext-indent:-.25in;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span style=\"font-family:Wingdings;mso-fareast-font-family:Wingdings;mso-bidi-font-family:\r\nWingdings\"><span style=\"mso-list:Ignore\">Ã˜<span style=\"font:7.0pt \" times=\"\" new=\"\" roman\"\"=\"\">&nbsp;\r\n</span></span></span><!--[endif]--><span style=\"mso-spacerun:yes\">&nbsp;</span>In-depth\r\nknowledge of the ISPS Code<o:p></o:p></p>', 'uploads/marine.jpg', 'yes'),
(133, 'Enterprise Security Risk Management (ESRM)', 'Security Studies', '', '5 days', 'N10000', 'Online', NULL, '<span style=\"font-size:11.0pt;line-height:115%;\r\nfont-family:\" calibri\",sans-serif;mso-ascii-theme-font:minor-latin;mso-fareast-font-family:=\"\" calibri;mso-fareast-theme-font:minor-latin;mso-hansi-theme-font:minor-latin;=\"\" mso-bidi-theme-font:minor-latin;color:#202124;background:white;mso-ansi-language:=\"\" en-us;mso-fareast-language:en-us;mso-bidi-language:ar-sa\"=\"\">Enterprise Security\r\nRisk Management (ESRM) is a strategic security-program management approach that\r\nties an organizationâ€™s security practice to its mission and goals using\r\nglobally established and accepted risk management principles.</span>', 'uploads/enterprise.jpg', 'yes'),
(134, 'Event Security', 'Security Studies', '', '2 Days', 'N10000', 'Online', NULL, '<span style=\"font-size:11.0pt;line-height:115%;\r\nfont-family:\" calibri\",sans-serif;mso-ascii-theme-font:minor-latin;mso-fareast-font-family:=\"\" calibri;mso-fareast-theme-font:minor-latin;mso-hansi-theme-font:minor-latin;=\"\" mso-bidi-theme-font:minor-latin;mso-ansi-language:en-us;mso-fareast-language:=\"\" en-us;mso-bidi-language:ar-sa\"=\"\">At the end of the training, participants will be\r\ntrained and equipped on how to identify risk and understand how to minimize its\r\nimpact. Develop a contingency plan to mitigate risk and potential threats.</span>', 'uploads/event.jpg', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `downloads`
--

CREATE TABLE `downloads` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `company` varchar(255) NOT NULL,
  `date` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `downloads`
--

INSERT INTO `downloads` (`id`, `name`, `email`, `phone`, `company`, `date`) VALUES
(3, 'Bunmi', 'bunmiolabiyi@gmail.com', '08034612363', 'HALO', '2020-04-23'),
(4, 'KINGSLEY', 'kigbo799@gmail.com', '08074027113', 'Halogen', '2020-04-24'),
(5, 'Hassan Yusuf', 'hassyus2003@yahoo.com', '09062423912', 'Avant Halogen', '2020-04-28'),
(6, 'oluleye olasunkanmi albert', 'oluleyealbert@gmail.com', '08161174676', 'applicant', '2020-05-03'),
(7, '', '', '', '', '2020-05-03'),
(8, 'oluleye olasunkanmi albert', 'oluleyealbert@gmail.com', '08161174676', 'applicant', '2020-05-03'),
(9, '', '', '', '', '2020-05-03'),
(10, '', '', '', '', '2020-05-10'),
(11, '', '', '', '', '2020-05-11'),
(12, 'Godwin Ilabija', 'ilabija@hotmail.com', '8326826133', 'GreenShale EnergyServices', '2020-05-13'),
(13, 'dorcas', 'dorcas@dominionconsulting.com.ng', '08028790882', 'domi', '2020-05-15'),
(14, 'Friday Edet Okon', 'fridayokon1@gmail.com', '08062626196', 'Security', '2020-05-16'),
(15, '', '', '', '', '2020-05-16'),
(16, '', '', '', '', '2020-05-16'),
(17, '', '', '', '', '2020-05-16'),
(18, '', '', '', '', '2020-05-21'),
(19, '', '', '', '', '2020-05-21'),
(20, 'Bukola ', 'oluwabukolaadeyemi86@gmail.com', '08135119657', 'Perfect Zecure ', '2020-05-22'),
(21, 'Ronald Martin', 'ron@theose.org', '7063601162', 'Open Security Exchange', '2020-05-26'),
(22, 'Ebosetale oluwatomisin festus', 'cheerheartofjesus@gmail.com', '08141795181', 'Shunda west africa limited', '2020-05-31'),
(23, 'Ebosetale oluwatomisin festus', 'cheerheartofjesus@gmail.com', '08141795181', 'Shunda west africa limited', '2020-05-31'),
(24, 'Ebosetale oluwatomisin festus', 'cheerheartofjesus@gmail.com', '08141795181', 'Shunda west africa limited', '2020-05-31'),
(25, '', '', '', '', '2020-05-31'),
(26, 'Jess', 'jessicahaqins6601@gmail.com', '08185982191', 'JHawk', '2020-06-02'),
(27, 'JIDE ADAMS', 'jide_adams@yahoo.com', '08074871896', 'RE', '2020-06-04'),
(28, '', '', '', '', '2020-06-04'),
(29, 'opeyemi amuda', 'engopeyemi@gmail.com', '08063120318', 'army', '2020-06-04'),
(30, 'Bunmi Odunowo', 'bunmiod_2000@yahoo.com', '07034118934', 'Roswell Consultants', '2020-06-04'),
(31, 'Bunmi Odunowo', 'bunmiod_2000@yahoo.com', '07034118934', 'Roswell Consultants', '2020-06-04'),
(32, 'Temidayo Adegbite', 't.adegbite01@gmail.com', '08022555031', 'horizon', '2020-06-05'),
(33, '', '', '', '', '2020-06-10'),
(34, 'Ampitan Mathew', 'eleampitan@gmail.com', '08037207882', 'Alogen Academy', '2020-06-11'),
(35, '', '', '', '', '2020-06-11'),
(36, 'Alhasssan Aboko', 'solomonhassan22mama@gmail.com', '08060881586', 'Halogen Security', '2020-06-11'),
(37, '', '', '', '', '2020-06-11'),
(38, '', '', '', '', '2020-06-11'),
(39, '', '', '', '', '2020-06-11'),
(40, '', '', '', '', '2020-06-11'),
(41, '', '', '', '', '2020-06-11'),
(42, '', '', '', '', '2020-06-11'),
(43, 'Ekoja Audu Atungwu', 'auduatungwuekoja@gmail.com', '08133223777', 'Halogen', '2020-06-12'),
(44, 'Yinusa Abdulazeez', 'yinusaazummi@gmail.com', '09034043209', 'Halogen ', '2020-06-13'),
(45, 'AREMU OWOLABI', 'aremuowolabi39@gmail.com', '07063357177', 'PS Halogen', '2020-06-19'),
(46, '', '', '', '', '2020-06-19'),
(47, '', '', '', '', '2020-06-20'),
(48, '', '', '', '', '2020-06-20'),
(49, '', '', '', '', '2020-06-21'),
(50, 'AMADU  ABRAHAM  AYEH ', 'ayeh.amaduibro@gmail.com ', '08136470620', 'Seacof  engineering  company ', '2020-06-22'),
(51, 'AMADU  ABRAHAM  AYEH ', 'ayeh.amaduibro@gmail.com ', '08136470620', 'Seacof  engineering  company ', '2020-06-22'),
(52, '', '', '', '', '2020-06-22'),
(53, 'Yinusa Abdulazeez', 'yinusaazummi@gmail.com', '09034043209', 'Halogen ', '2020-06-25');

-- --------------------------------------------------------

--
-- Table structure for table `download_manager`
--

CREATE TABLE `download_manager` (
  `id` int(50) NOT NULL,
  `title` varchar(200) NOT NULL,
  `file_url` varchar(200) NOT NULL,
  `file_size` varchar(200) NOT NULL,
  `page` varchar(200) NOT NULL,
  `ext_link` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eventreg`
--

CREATE TABLE `eventreg` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `event` varchar(255) NOT NULL,
  `ip` varchar(50) NOT NULL,
  `date` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `eventreg`
--

INSERT INTO `eventreg` (`id`, `name`, `email`, `phone`, `event`, `ip`, `date`) VALUES
(1, 'Emmanuel Oduola', 'femi@pollsandcomments.com', '8089438520', 'DIGITIZING NIGERIA', '::1', '2018-09-14'),
(2, 'Michael Ewa Onun', 'mikkoewamike@yahoo.com', '08023177353', 'DIGITIZING NIGERIA', '197.210.45.71', '2018-10-02'),
(3, 'Michael Ewa Onun', 'mikkoewamike@yahoo.com', '08023177353', 'DIGITIZING NIGERIA', '197.210.45.71', '2018-10-02'),
(4, 'NAFIU OSAM SHITTU', 'nafiu.osam.shittu@gmail.com', '07017030354', 'DIGITIZING NIGERIA', '41.58.50.123', '2018-10-02'),
(5, 'Egbe Joshua', 'bca4we@gmail.com', '08054936716', 'DIGITIZING NIGERIA', '197.211.63.169', '2018-10-02'),
(6, 'Simileoluwa Babalola', 'simi.banal play halogen security.com', '07031731752', 'DIGITIZING NIGERIA', '197.255.167.214', '2018-10-02'),
(7, 'ZANNA Modu galadima', 'Gmoduzanna2@gmail.com', '08038059085', 'DIGITIZING NIGERIA', '168.235.198.153', '2018-10-02'),
(8, 'ZANNA Modu galadima', 'Gmoduzanna2@gmail.com', '08038059085', 'DIGITIZING NIGERIA', '168.235.198.153', '2018-10-02'),
(9, 'Constance Enyaosah ', 'Constance.enyaosah@halogensecurity.com', '08038430018', 'DIGITIZING NIGERIA', '105.112.18.156', '2018-10-02'),
(10, 'Yomi Oyelola', 'Yomi@toyotanigeria.com', '08023125191', 'DIGITIZING NIGERIA', '105.112.35.52', '2018-10-02'),
(11, 'Yomi Oyelola', 'Yomi@toyotanigeria.com', '08023125191', 'DIGITIZING NIGERIA', '105.112.35.52', '2018-10-02'),
(12, 'Yomi Oyelola', 'Yomi@toyotanigeria.com', '08023125191', 'DIGITIZING NIGERIA', '105.112.35.52', '2018-10-02'),
(13, '', '', '', '', '105.112.35.52', '2018-10-02'),
(14, '', '', '', '', '105.112.35.52', '2018-10-02'),
(15, '', '', '', '', '105.112.35.52', '2018-10-02'),
(16, 'Yomi Oyelola', 'Yomi@toyotanigeria.com', '08023125191', 'DIGITIZING NIGERIA', '105.112.35.52', '2018-10-02'),
(17, 'UWEM Jimmy', 'davuwem@yahoo.com', '08062418863', 'DIGITIZING NIGERIA', '217.14.90.210', '2018-10-02'),
(18, 'Olajide Makinde', 'secureassets.om@gmail.com ', '08939758825', 'DIGITIZING NIGERIA', '197.210.61.29', '2018-10-02'),
(19, 'Nwogo Onyejepu', 'nwogo@zoyamediang.com', '08033239309', 'DIGITIZING NIGERIA', '41.184.174.30', '2018-10-03'),
(20, '', '', '', '', '46.235.158.196', '2018-10-03'),
(21, 'Shamsideen Oyesile', 'shamsideen.oyesile@dhl.com', '+2348028611915', 'DIGITIZING NIGERIA', '165.72.200.11', '2018-10-03'),
(22, 'Oka Osaigbovo Famous', 'osaigbovofamous@gmail.com', '09072797676', 'DIGITIZING NIGERIA', '197.210.54.83', '2018-10-03'),
(23, 'Akabuogu Vivian Olachi', 'vivian.akabuogu@halogensecurity.com', '0803344892', 'DIGITIZING NIGERIA', '41.75.206.194', '2018-10-03'),
(24, 'Akabuogu Vivian Olachi', 'vivian.akabuogu@halogensecurity.com', '0803344892', 'DIGITIZING NIGERIA', '41.75.206.194', '2018-10-03'),
(25, 'Ejayeta Imoh', 'ejayeta.imoh@halogensecurity.com', '09098098106', 'DIGITIZING NIGERIA', '41.75.206.194', '2018-10-03'),
(26, 'Ejayeta Imoh', 'ejayeta.imoh@halogensecurity.com', '09098098106', 'DIGITIZING NIGERIA', '41.75.206.194', '2018-10-03'),
(27, 'Kayode Ayeni', 'kayodeayeni@gmail.com', '08023038286', 'DIGITIZING NIGERIA', '62.173.40.217', '2018-10-03'),
(28, 'Adetayo Abiola', 'abiola.adetayo@smilecoms.com', '08032006444', 'DIGITIZING NIGERIA', '154.66.1.250', '2018-10-03'),
(29, 'Adetayo Abiola', 'abiola.adetayo@smilecoms.com', '08032006444', 'DIGITIZING NIGERIA', '154.66.1.250', '2018-10-03'),
(30, '', '', '', '', '185.2.196.196', '2018-10-03'),
(31, 'Ibrahim Hammed', 'ibrahim.hammed@sanofi.com', '08023384040', 'DIGITIZING NIGERIA', '193.202.91.11', '2018-10-03'),
(32, 'Paul Waniko', 'pwani@equinor.com', '+234 803 403 5196', 'DIGITIZING NIGERIA', '197.210.62.23', '2018-10-03'),
(33, 'Anthony Anyebe', 'anthonyanyebe@yahoo.com', '07064181066', 'DIGITIZING NIGERIA', '197.210.54.90', '2018-10-03'),
(34, 'Yomi Oyelola', 'Yomi@toyotanigeria.com', '08023125191', 'DIGITIZING NIGERIA', '105.112.23.245', '2018-10-04'),
(35, '', '', '', '', '184.154.164.186', '2018-10-08'),
(36, '', '', '', '', '184.154.139.16', '2018-10-09'),
(37, '', '', '', '', '184.154.139.16', '2018-10-09'),
(38, '', '', '', '', '184.154.139.16', '2018-10-16'),
(39, '', '', '', '', '184.154.139.16', '2018-10-17'),
(40, '', '', '', '', '184.154.139.16', '2018-10-18'),
(41, '', '', '', '', '67.212.188.154', '2018-10-26'),
(42, '', '', '', '', '184.154.164.186', '2019-04-17'),
(43, '', '', '', '', '67.212.188.154', '2019-04-18'),
(44, '', '', '', '', '67.212.188.154', '2019-04-21'),
(45, '', '', '', '', '184.154.164.186', '2019-04-24'),
(46, '', '', '', '', '173.236.59.218', '2019-04-25'),
(47, '', '', '', '', '173.236.59.218', '2019-05-03'),
(48, '', '', '', '', '184.154.76.18', '2019-05-04'),
(49, '', '', '', '', '184.154.139.16', '2019-05-06'),
(50, '', '', '', '', '184.154.139.16', '2019-05-06'),
(51, '', '', '', '', '184.154.164.186', '2019-05-07'),
(52, '', '', '', '', '184.154.139.16', '2019-05-10'),
(53, '', '', '', '', '184.154.139.16', '2019-05-12'),
(54, '', '', '', '', '184.154.139.16', '2019-05-14'),
(55, '', '', '', '', '184.154.139.16', '2019-05-16'),
(56, '', '', '', '', '184.154.139.16', '2019-05-21'),
(57, '', '', '', '', '184.154.139.16', '2019-05-22'),
(58, '', '', '', '', '184.154.139.16', '2019-06-01'),
(59, '', '', '', '', '184.154.139.16', '2019-06-02'),
(60, '', '', '', '', '173.236.59.218', '2019-06-04'),
(61, '', '', '', '', '173.236.59.218', '2019-06-04'),
(62, '', '', '', '', '184.154.76.18', '2019-06-05'),
(63, '', '', '', '', '184.154.164.186', '2019-06-06'),
(64, '', '', '', '', '184.154.164.186', '2019-06-06'),
(65, '', '', '', '', '184.154.139.16', '2019-06-07'),
(66, '', '', '', '', '184.154.76.18', '2019-06-12'),
(67, '', '', '', '', '184.154.76.18', '2019-06-12'),
(68, '', '', '', '', '184.154.139.16', '2019-06-16'),
(69, '', '', '', '', '184.154.139.16', '2019-06-17'),
(70, '', '', '', '', '188.166.98.249', '2019-06-22'),
(71, '', '', '', '', '184.154.76.18', '2019-06-22'),
(72, '', '', '', '', '184.154.164.186', '2019-06-28'),
(73, '', '', '', '', '184.154.139.16', '2019-06-29'),
(74, '', '', '', '', '184.154.139.16', '2019-07-01'),
(75, '', '', '', '', '67.212.188.154', '2019-07-06'),
(76, '', '', '', '', '67.212.188.154', '2019-07-06'),
(77, '', '', '', '', '173.236.59.218', '2019-07-08'),
(78, '', '', '', '', '184.154.139.16', '2019-07-11'),
(79, '', '', '', '', '188.166.98.249', '2019-07-12'),
(80, '', '', '', '', '184.154.76.18', '2019-07-13'),
(81, '', '', '', '', '184.154.139.16', '2019-07-15'),
(82, '', '', '', '', '184.154.139.16', '2019-07-18'),
(83, '', '', '', '', '184.154.164.186', '2019-07-20'),
(84, '', '', '', '', '184.154.139.16', '2019-07-24'),
(85, '', '', '', '', '184.154.139.16', '2019-07-29'),
(86, '', '', '', '', '184.154.139.16', '2019-08-02'),
(87, '', '', '', '', '184.154.164.186', '2019-08-07'),
(88, '', '', '', '', '184.154.164.186', '2019-08-07'),
(89, '', '', '', '', '184.154.139.16', '2019-08-08'),
(90, '', '', '', '', '173.236.59.218', '2019-08-11'),
(91, '', '', '', '', '184.154.139.16', '2019-08-18'),
(92, '', '', '', '', '184.154.139.16', '2019-08-31'),
(93, '', '', '', '', '184.154.139.16', '2019-08-31'),
(94, '', '', '', '', '173.236.59.218', '2019-09-06'),
(95, '', '', '', '', '67.212.188.154', '2019-09-19'),
(96, '', '', '', '', '173.236.59.218', '2019-09-20'),
(97, '', '', '', '', '184.154.139.16', '2019-09-22'),
(98, '', '', '', '', '67.212.188.154', '2019-09-23'),
(99, '', '', '', '', '67.212.188.154', '2019-09-24'),
(100, '', '', '', '', '184.154.139.16', '2019-09-25'),
(101, '', '', '', '', '184.154.139.16', '2019-09-25'),
(102, '', '', '', '', '67.212.188.154', '2019-09-27'),
(103, '', '', '', '', '184.154.139.16', '2019-09-30'),
(104, '', '', '', '', '67.212.188.154', '2019-10-03'),
(105, '', '', '', '', '184.154.139.16', '2019-10-04'),
(106, '', '', '', '', '67.212.188.154', '2019-10-06'),
(107, '', '', '', '', '67.212.188.154', '2019-10-06'),
(108, '', '', '', '', '67.212.188.154', '2019-10-06'),
(109, '', '', '', '', '67.212.188.154', '2019-10-06'),
(110, '', '', '', '', '67.212.188.154', '2019-10-07'),
(111, '', '', '', '', '184.154.139.46', '2019-10-13'),
(112, '', '', '', '', '184.154.139.46', '2019-10-14'),
(113, '', '', '', '', '184.154.139.46', '2019-10-14'),
(114, '', '', '', '', '184.154.139.48', '2019-10-17'),
(115, '', '', '', '', '184.154.139.48', '2019-10-18'),
(116, '', '', '', '', '184.154.139.48', '2019-10-25'),
(117, '', '', '', '', '184.154.139.46', '2019-10-26'),
(118, '', '', '', '', '184.154.139.24', '2019-10-28'),
(119, '', '', '', '', '184.154.139.46', '2019-11-05'),
(120, '', '', '', '', '184.154.139.46', '2019-11-05'),
(121, '', '', '', '', '184.154.139.25', '2019-11-09'),
(122, '', '', '', '', '184.154.139.48', '2019-11-12'),
(123, '', '', '', '', '184.154.139.47', '2019-11-13'),
(124, '', '', '', '', '184.154.139.47', '2019-11-16'),
(125, '', '', '', '', '184.154.139.25', '2019-11-19'),
(126, '', '', '', '', '184.154.139.24', '2019-11-21'),
(127, '', '', '', '', '184.154.139.24', '2019-11-23'),
(128, '', '', '', '', '184.154.139.25', '2019-11-24'),
(129, '', '', '', '', '184.154.139.24', '2019-12-01'),
(130, '', '', '', '', '184.154.139.24', '2019-12-02'),
(131, '', '', '', '', '184.154.139.48', '2019-12-03'),
(132, '', '', '', '', '184.154.139.25', '2019-12-04'),
(133, '', '', '', '', '184.154.139.25', '2019-12-05'),
(134, '', '', '', '', '184.154.139.25', '2019-12-05'),
(135, '', '', '', '', '184.154.76.23', '2019-12-09'),
(136, '', '', '', '', '184.154.76.23', '2019-12-09'),
(137, '', '', '', '', '184.154.139.24', '2019-12-21'),
(138, '', '', '', '', '184.154.139.48', '2019-12-23'),
(139, '', '', '', '', '184.154.76.23', '2019-12-25'),
(140, '', '', '', '', '184.154.139.25', '2019-12-30'),
(141, '', '', '', '', '184.154.139.24', '2019-12-31'),
(142, '', '', '', '', '184.154.139.47', '2020-01-04'),
(143, '', '', '', '', '184.154.139.47', '2020-01-04'),
(144, '', '', '', '', '184.154.76.23', '2020-01-08'),
(145, '', '', '', '', '184.154.139.25', '2020-01-09'),
(146, '', '', '', '', '184.154.139.47', '2020-01-10'),
(147, '', '', '', '', '184.154.76.23', '2020-01-11'),
(148, '', '', '', '', '184.154.139.46', '2020-01-13'),
(149, '', '', '', '', '184.154.139.47', '2020-01-14'),
(150, '', '', '', '', '184.154.139.47', '2020-01-14'),
(151, '', '', '', '', '184.154.139.48', '2020-01-16'),
(152, '', '', '', '', '184.154.139.47', '2020-01-18'),
(153, '', '', '', '', '184.154.139.48', '2020-01-19'),
(154, '', '', '', '', '184.154.139.46', '2020-01-21'),
(155, '', '', '', '', '184.154.139.46', '2020-01-22'),
(156, '', '', '', '', '184.154.139.46', '2020-01-22'),
(157, '', '', '', '', '184.154.139.46', '2020-01-25'),
(158, '', '', '', '', '184.154.76.23', '2020-01-26'),
(159, '', '', '', '', '184.154.139.46', '2020-01-28'),
(160, '', '', '', '', '184.154.139.47', '2020-01-29'),
(161, '', '', '', '', '184.154.139.48', '2020-01-30'),
(162, '', '', '', '', '184.154.139.47', '2020-02-01'),
(163, '', '', '', '', '184.154.139.46', '2020-02-04'),
(164, '', '', '', '', '184.154.139.48', '2020-02-05'),
(165, '', '', '', '', '184.154.139.47', '2020-02-11'),
(166, '', '', '', '', '184.154.139.47', '2020-02-11'),
(167, '', '', '', '', '184.154.139.25', '2020-02-12'),
(168, '', '', '', '', '184.154.139.47', '2020-02-13'),
(169, '', '', '', '', '184.154.139.24', '2020-02-16'),
(170, '', '', '', '', '184.154.139.25', '2020-02-17'),
(171, '', '', '', '', '184.154.139.48', '2020-02-18'),
(172, '', '', '', '', '184.154.139.47', '2020-02-20'),
(173, '', '', '', '', '184.154.139.46', '2020-02-24'),
(174, '', '', '', '', '184.154.139.46', '2020-02-24'),
(175, '', '', '', '', '184.154.139.48', '2020-02-28'),
(176, '', '', '', '', '184.154.139.48', '2020-02-28'),
(177, '', '', '', '', '184.154.139.47', '2020-02-29'),
(178, '', '', '', '', '184.154.139.46', '2020-03-01'),
(179, '', '', '', '', '184.154.139.48', '2020-03-06'),
(180, '', '', '', '', '184.154.139.25', '2020-04-01'),
(181, '', '', '', '', '184.154.139.25', '2020-04-01'),
(182, '', '', '', '', '184.154.139.47', '2020-04-02'),
(183, '', '', '', '', '184.154.139.48', '2020-04-06'),
(184, '', '', '', '', '184.154.139.48', '2020-04-07'),
(185, '', '', '', '', '184.154.76.23', '2020-04-08'),
(186, '', '', '', '', '184.154.139.25', '2020-04-11'),
(187, '', '', '', '', '184.154.139.47', '2020-04-13'),
(188, '', '', '', '', '184.154.139.48', '2020-04-15'),
(189, '', '', '', '', '184.154.139.46', '2020-04-19'),
(190, '', '', '', '', '184.154.76.23', '2020-04-21'),
(191, '', '', '', '', '184.154.76.23', '2020-04-21'),
(192, '', '', '', '', '184.154.139.24', '2020-04-23'),
(193, '', '', '', '', '184.154.76.23', '2020-04-25'),
(194, '', '', '', '', '184.154.139.47', '2020-05-07'),
(195, '', '', '', '', '184.154.139.25', '2020-05-12'),
(196, '', '', '', '', '184.154.76.23', '2020-05-21'),
(197, '', '', '', '', '184.154.139.24', '2020-05-31'),
(198, '', '', '', '', '184.154.139.48', '2020-06-02'),
(199, '', '', '', '', '184.154.139.48', '2020-06-03'),
(200, '', '', '', '', '184.154.139.48', '2020-06-20'),
(201, '', '', '', '', '184.154.139.48', '2020-06-20'),
(202, '', '', '', '', '184.154.139.25', '2020-06-21'),
(203, '', '', '', '', '184.154.139.48', '2020-06-24');

-- --------------------------------------------------------

--
-- Table structure for table `events_page`
--

CREATE TABLE `events_page` (
  `id` int(50) NOT NULL,
  `title` varchar(255) NOT NULL,
  `mp_title` varchar(200) NOT NULL,
  `keyword` varchar(200) NOT NULL,
  `banner_text` varchar(200) NOT NULL,
  `content` blob NOT NULL,
  `event_type` varchar(50) NOT NULL,
  `date` varchar(50) NOT NULL,
  `time` varchar(50) NOT NULL,
  `banner_url` varchar(200) NOT NULL,
  `ext_link` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `events_page`
--

INSERT INTO `events_page` (`id`, `title`, `mp_title`, `keyword`, `banner_text`, `content`, `event_type`, `date`, `time`, `banner_url`, `ext_link`) VALUES
(1, 'DIGITIZING NIGERIA', 'Events', '', 'Academy Halogen Executive Learning Center at No 1, Sasegbon Street, Ikeja GRA, Lagos', 0x3c646976207374796c653d22223e3c7020636c6173733d224d736f4e6f726d616c2220616c69676e3d2263656e74657222207374796c653d22746578742d616c69676e3a206c6566743b206d617267696e2d626f74746f6d3a20302e3030303170743b223e41204d656574696e67206f6620546f776e20616e6420476f776e3c2f703e3c7020636c6173733d224d736f4e6f726d616c2220616c69676e3d2263656e74657222207374796c653d22746578742d616c69676e3a206c6566743b206d617267696e2d626f74746f6d3a20302e3030303170743b223e4f626166656d692041776f6c6f776f20556e697665727369747920e2809c4943542044524956454e204b4e4f574c45444745205041524be2809d205b4f414b205041524b5d20696e20636f6c6c61626f726174696f6e20776974682041636164656d792048616c6f67656e2c20696e766974657320796f7520746f2061205354414b45484f4c44455220464f52554d3c2f703e3c7020636c6173733d224d736f4e6f726d616c2220616c69676e3d2263656e74657222207374796c653d22746578742d616c69676e3a206c6566743b206d617267696e2d626f74746f6d3a20302e3030303170743b223e546865204f414b205041524b20e2809320612043656e746572206f6620457863656c6c656e6365202d2061696d7320746f20666163696c69746174652074686520636f6e76657267656e6365206f6620746563686e6f6c6f676963616c20616476616e63657320696e20766172696f7573206469736369706c696e6573207768696c737420656e68616e63696e672074686520646576656c6f706d656e742c207472616e736665722c20616e6420636f6d6d65726369616c697a6174696f6e206f6620746563686e6f6c6f677920616e64207265736561726368206f7574707574732e2049742077696c6c20616c736f2070726f6d6f746520746865206c61756e63682070616420666f722073746172742d757020636f6d70616e69657320626f726e65206f7574206f6620756e697665727369747920726573656172636820616374697669746965732c20616e6420616476616e63656d656e7420627920706172746e6572696e6720636f6d70616e6965732c2077686f2077696c6c20686176652074686520636f6d706574697469766520616476616e74616765206f6620636c6f73652070726f78696d69747920616e64206469726563742061636365737320746f2074686520696e74656c6c65637475616c20696e66726173747275637475726520616e64206f7574707574206f662074686520756e69766572736974792e3c2f703e3c7020636c6173733d224d736f4e6f726d616c2220616c69676e3d2263656e74657222207374796c653d22746578742d616c69676e3a206c6566743b206d617267696e2d626f74746f6d3a20302e3030303170743b223e3c62723e3c2f703e3c7020636c6173733d224d736f4e6f726d616c2220616c69676e3d2263656e74657222207374796c653d22746578742d616c69676e3a206c6566743b206d617267696e2d626f74746f6d3a20302e3030303170743b223e3c623e486967686c69676874733a3c2f623e3c2f703e3c7020636c6173733d224d736f4e6f726d616c2220616c69676e3d2263656e74657222207374796c653d22746578742d616c69676e3a206c6566743b206d617267696e2d626f74746f6d3a20302e3030303170743b223e3c2f703e3c756c207374796c653d22223e3c6c693e546f20696e74696d61746520616e642073656e736974697a65207374616b65686f6c64657273206f6e2074686520696e697469617469766573206f6620746865204f414b205041524b20616e6420686f7720746f20656e67656e646572207374616b65686f6c6465727320656e676167656d656e7420616e642062656e65666974732d7265616c697a6174696f6e3c2f6c693e3c6c693e546f20656e67616765207374616b65686f6c646572732061626f7574204f414b205041524b20746f776172647320706172746e6572736869707320616e6420636f6c6c61626f726174696f6e733c2f6c693e3c6c693e546f20756e7665696c20746865204f4155204b6e6f776c65646765205061726b20616e642041636164656d792048616c6f67656ee280997320706172746e657273686970206f6e20637962657220746563686e6f6c6f67792c2070726f66657373696f6e616c2063657274696669636174696f6e7320616e6420746865204578656375746976652050726f66657373696f6e616c204d6173746572732044656772656520696e2043796265722053656375726974793c2f6c693e3c2f756c3e3c70207374796c653d22223e3c2f703e3c646976207374796c653d22223e3c623e3c62723e3c2f623e3c2f6469763e3c646976207374796c653d22223e3c623e50726f706f736564205061727469636970616e74732f417474656e646565733c2f623e3c2f6469763e3c646976207374796c653d22223e3c6469763e3c62723e3c2f6469763e3c6469763e3c756c3e3c6c693e5072697661746520536563746f72204f7267616e69736174696f6e7320696e2043796265722026616d703b20546563686e6f6c6f67792073706163653c2f6c693e3c6c693e4d656d62657273206f6620746865205370656369616c20496e7465726573742047726f7570206f6e20456e7465727072697365205365637572697479205269736b204d616e6167656d656e7420616e64204173736f63696174696f6e206f6620456e7465727072697365205269736b204d616e6167656d656e742050726f66657373696f6e616c733c2f6c693e3c6c693e52656c6576616e7420476f7665726e6d656e7420616e64205374617475746f7279204167656e636965733c2f6c693e3c2f756c3e3c2f6469763e3c2f6469763e3c7020636c6173733d224d736f4c697374506172616772617068437853704c61737422207374796c653d226d617267696e2d626f74746f6d3a20302e3030303170743b20746578742d616c69676e3a206a7573746966793b20746578742d696e64656e743a202d302e3235696e3b206261636b67726f756e643a2077686974653b223e3c7370616e206c616e673d22454e2d474222207374796c653d226c696e652d6865696768743a2031352e3333333370783b2220626f6f6b6d616e3d2222206f6c643d2222207374796c65222c3d22222073657269663b223d22223e3c62723e3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f4e6f726d616c22207374796c653d226d617267696e2d626f74746f6d3a20302e3030303170743b223e3c7370616e207374796c653d226c696e652d6865696768743a2031352e3333333370783b2220626f6f6b6d616e3d2222206f6c643d2222207374796c65222c3d22222073657269663b223d22223e266e6273703b3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f4e6f726d616c22207374796c653d226d617267696e2d626f74746f6d3a20302e3030303170743b223e3c623e3c7370616e207374796c653d226c696e652d6865696768743a2031352e3333333370783b2220626f6f6b6d616e3d2222206f6c643d2222207374796c65222c3d22222073657269663b223d22223e3c666f6e742073697a653d2234223e486f7374733c2f666f6e743e3c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f623e3c2f703e3c2f6469763e3c646976207374796c653d22223e3c646976207374796c653d22223e3c7370616e207374796c653d2277686974652d73706163653a207072653b223e093c2f7370616e3e3c2f6469763e3c646976207374796c653d22223e3c62723e3c2f6469763e3c646976207374796c653d22223e3c6469763e266e6273703b3c7461626c6520626f726465723d2230222063656c6c70616464696e673d2230222063656c6c73706163696e673d223022207374796c653d22424f524445522d434f4c4c415053453a2073657061726174653b20626f726465723a2030707820736f6c696420233030303030303b2077696474683a20313030253b206261636b67726f756e642d636f6c6f723a20234646464646463b2220616c69676e6d656e743d22223e203c74626f64793e3c74723e203c7464207374796c653d22626f726465723a2030707820736f6c696420233030303030303b2070616464696e673a20353b223e266e6273703b3c623e3c696d67207372633d22687474703a2f2f616c65646f792e636f6d2f61636164656d792f61636d732f70616765732f75706c6f6164732f5663206f61752e6a70672220636c6173733d22696d672d726573706f6e7369766520696d672d6369726c652220616c743d222220616c69676e6d656e743d222220626f726465723d2222206873706163653d2222207673706163653d22223e3c62723e3c2f623e3c623e50726f6620457969746f7065204f2e4f3c2f623e3c6469763e56696365204368616e63656c6c6f722c204f41553c2f6469763e3c623e3c62723e3c2f623e3c6469763e3c6469763e266e6273703b3c2f6469763e3c2f6469763e3c2f74643e203c7464207374796c653d22626f726465723a2030707820736f6c696420233030303030303b2070616464696e673a20353b223e266e6273703b3c696d67207372633d22687474703a2f2f616c65646f792e636f6d2f61636164656d792f61636d732f70616765732f75706c6f6164732f6a696d692e6a70672220636c6173733d22696d672d726573706f6e7369766520696d672d6369726c652220c2a0616c743d222220616c69676e6d656e743d222220626f726465723d2222206873706163653d2222207673706163653d22223e3c6469763e3c7370616e20626f6f6b6d616e3d2222206f6c643d2222207374796c65222c3d22222073657269663b3d222220666f6e742d73697a653a3d22222031332e3333333370783b223d22223e3c623e3c62723e3c2f623e3c2f7370616e3e3c2f6469763e3c6469763e3c6469763e3c623e4a696d692041776f73696b613c2f623e3c2f6469763e3c6469763e566963652043686169722f474d442c266e6273703b5472796f6b61266e6273703b47726f75703c2f6469763e3c2f6469763e3c2f74643e203c7464207374796c653d22626f726465723a2030707820736f6c696420233030303030303b2070616464696e673a20353b223e3c6469763e3c696d67207372633d22687474703a2f2f616c65646f792e636f6d2f61636164656d792f61636d732f70616765732f75706c6f6164732f77616c652e6a70672220636c6173733d22696d672d726573706f6e7369766520696d672d6369726c652220c2a0616c743d222220616c69676e6d656e743d222220626f726465723d2222206873706163653d2222207673706163653d22223e3c2f6469763e3c6469763e3c62723e3c2f6469763e3c6469763e3c6469763e3c623e57616c65204f6c616f79653c2f623e3c2f6469763e3c2f6469763e43454f2c2048616c6f67656e2047726f7570266e6273703b266e6273703b3c2f74643e203c2f74723e3c74723e203c7464207374796c653d22626f726465723a2030707820736f6c696420233030303030303b2070616464696e673a20353b223e266e6273703b3c623e3c696d67207372633d22687474703a2f2f616c65646f792e636f6d2f61636164656d792f61636d732f70616765732f75706c6f6164732f6461796f2e6a70672220636c6173733d22696d672d726573706f6e7369766520696d672d6369726c652220616c743d222220616c69676e6d656e743d222220626f726465723d2222206873706163653d2222207673706163653d22223e3c62723e3c2f623e3c623e4164656461796f2041626567756e64653c2f623e3c6469763e4469726563746f722c205669727475616c20546563686e6f6c6f67792026616d703b204e6577204d61726b6574733c2f6469763e3c623e3c62723e3c2f623e3c6469763e3c6469763e266e6273703b3c2f6469763e3c2f6469763e3c2f74643e203c7464207374796c653d22626f726465723a2030707820736f6c696420233030303030303b2070616464696e673a20353b223e266e6273703b3c2f74643e203c7464207374796c653d22626f726465723a2030707820736f6c696420233030303030303b2070616464696e673a20353b223e266e6273703b3c2f74643e203c2f74723e3c2f74626f64793e3c2f7461626c653e203c2f6469763e3c62723e3c7020636c6173733d224d736f4e6f726d616c22207374796c653d226d617267696e2d626f74746f6d3a20302e3030303170743b223e3c623e3c7370616e207374796c653d226c696e652d6865696768743a2031352e3333333370783b2220626f6f6b6d616e3d2222206f6c643d2222207374796c65222c3d22222073657269663b223d22223e3c2f7370616e3e3c2f623e3c2f703e3c6469763e3c62723e3c2f6469763e3c2f6469763e3c2f6469763e3c7020636c6173733d224d736f4e6f726d616c22207374796c653d226d617267696e2d626f74746f6d3a20302e3030303170743b223e3c7370616e207374796c653d226c696e652d6865696768743a2031352e3333333370783b2220626f6f6b6d616e3d2222206f6c643d2222207374796c65222c3d22222073657269663b223d22223e3c623e3c666f6e742073697a653d2234223e5370656369616c2047756573743c2f666f6e743e3c2f623e3c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f703e266e6273703b3c7461626c6520626f726465723d2230222063656c6c70616464696e673d2230222063656c6c73706163696e673d223022207374796c653d22424f524445522d434f4c4c415053453a2073657061726174653b20626f726465723a2030707820736f6c696420233030303030303b2077696474683a20313030253b206261636b67726f756e642d636f6c6f723a20234646464646463b2220616c69676e6d656e743d22223e203c74626f64793e3c74723e203c7464207374796c653d22626f726465723a2030707820736f6c696420233030303030303b2070616464696e673a20353b223e266e6273703b3c623e3c696d67207372633d22687474703a2f2f616c65646f792e636f6d2f61636164656d792f61636d732f70616765732f75706c6f6164732f6e64752e6a70672220636c6173733d22696d672d726573706f6e7369766520696d672d6369726c652220616c743d222220616c69676e6d656e743d222220626f726465723d2222206873706163653d2222207673706163653d22223e3c62723e3c2f623e3c623e50726f66204e6475627569736920456b656b77653c2f623e3c703e4368616972204641534d4943524f2047726f75702c205553413c2f703e3c703e44722e20456b656b776520686f6c64732074776f20646f63746f72616c20616e6420666f7572206d61737465722773206465677265657320696e636c7564696e6720612050682e442e20696e20656c656374726963616c2026616d703b20636f6d707574657220656e67696e656572696e672066726f6d20746865204a6f686e7320486f706b696e7320556e69766572736974792c2055534120616e64204d42412066726f6d2074686520556e6976657273697479206f662043616c616261722c204e6967657269612e204865206f627461696e65642042456e672066726f6d20746865204665646572616c20556e6976657273697479206f6620546563686e6f6c6f67792c204f7765727269207768657265206865206772616475617465642061732068697320636c61737320626573742073747564656e742e20412055532073656d69636f6e647563746f7220696e647573747279207665746572616e2c2068697320776f726b696e6720657870657269656e63657320696e636c756465204469616d6f6e642042616e6b2c20416e616c6f67204465766963657320436f72702c20616e64204e4e50433c2f703e3c2f74643e3c74643e266e6273703b3c2f74643e3c74643e266e6273703b3c2f74643e3c74643e266e6273703b3c2f74643e3c74643e266e6273703b3c2f74643e3c74643e266e6273703b3c2f74643e3c74643e266e6273703b3c2f74643e3c74643e266e6273703b3c2f74643e3c7464207374796c653d22626f726465723a2030707820736f6c696420233030303030303b2070616464696e673a20353b223e266e6273703b3c696d67207372633d22687474703a2f2f616c65646f792e636f6d2f61636164656d792f61636d732f70616765732f75706c6f6164732f6967652e6a70672220636c6173733d22696d672d726573706f6e7369766520696d672d6369726c652220c2a0616c743d222220616c69676e6d656e743d222220626f726465723d2222206873706163653d2222207673706163653d22223e3c6469763e3c7370616e20626f6f6b6d616e3d2222206f6c643d2222207374796c65222c3d22222073657269663b3d222220666f6e742d73697a653a3d22222031332e3333333370783b223d22223e3c623e3c62723e3c2f623e3c2f7370616e3e3c2f6469763e3c6469763e3c703e3c623e546169776f2053696c69666174204967653c2f623e3c2f703e3c2f6469763e3c6469763e507265736964656e74206f66204e6967657269612773204173736f63696174696f6e206f6620456e7465727072697365205269736b204d616e6167656d656e742050726f66657373696f6e616c7320284145524d50293c62723e3c703e3c2f703e3c703e4d727320496765206973206120636f6d706574656e7420737472617465676973742063617061626c65206f6620646576656c6f70696e6720696e6e6f76617469766520706c616e7320616e6420616374697669746965732064657369676e656420746f20666163696c697461746520636f6d70657469746976652067726f77746820616e6420636f6d7065746974697665207375706572696f726974792e266e6273703b20506f7373657373657320657863656c6c656e7420696e746572706572736f6e616c2c20636f6d6d756e69636174696f6e20616e64206e65676f74696174696f6e20736b696c6c733b20746865206162696c69747920746f20696e666c75656e6365206465636973696f6e7320616e6420746f20646576656c6f7020706f7369746976652072656c6174696f6e736869707320626f746820696e7465726e616c6c7920616e642065787465726e616c6c792e2053686520686173206f766572203332207965617273206f722062616e6b696e6720657870657269656e63652e3c2f703e3c703e3c62723e3c2f703e3c703e3c62723e3c2f703e3c2f6469763e3c2f74643e203c2f74723e3c2f74626f64793e3c2f7461626c653e3c7020636c6173733d224d736f4e6f726d616c22207374796c653d226d617267696e2d626f74746f6d3a20302e3030303170743b223e3c7370616e207374796c653d226c696e652d6865696768743a2031352e3333333370783b2220626f6f6b6d616e3d2222206f6c643d2222207374796c65222c3d22222073657269663b223d22223e3c623e3c666f6e742073697a653d2234223e525356503c2f666f6e743e3c2f623e3c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f703e266e6273703b3c7461626c6520626f726465723d2230222063656c6c70616464696e673d2230222063656c6c73706163696e673d223022207374796c653d22424f524445522d434f4c4c415053453a2073657061726174653b20626f726465723a2030707820736f6c696420233030303030303b2077696474683a20313030253b206261636b67726f756e642d636f6c6f723a20234646464646463b2220616c69676e6d656e743d22223e203c74626f64793e3c74723e203c7464207374796c653d22626f726465723a2030707820736f6c696420233030303030303b2070616464696e673a20353b223e266e6273703b3c623e3c696d67207372633d22687474703a2f2f616c65646f792e636f6d2f61636164656d792f61636d732f70616765732f75706c6f6164732f6164652e6a70672220636c6173733d22696d672d726573706f6e7369766520696d672d6369726c652220616c743d222220616c69676e6d656e743d222220626f726465723d2222206873706163653d2222207673706163653d22223e3c62723e3c2f623e3c623e50726f666573736f7220472e20412e20416465726f756e6d753c2f623e3c6469763e4465616e2c20466163756c7479206f6620546563686e6f6c6f67792026616d703b20436f2d43656e747265204c65616465722c3c62723e494354204b6e6f776c65646765205061726b2c204f41552c20496c652d4966653c2f6469763e3c623e3c62723e3c2f623e3c6469763e3c6469763e266e6273703b3c2f6469763e3c2f6469763e3c2f74643e203c7464207374796c653d22626f726465723a2030707820736f6c696420233030303030303b2070616464696e673a20353b223e266e6273703b3c696d67207372633d22687474703a2f2f616c65646f792e636f6d2f61636164656d792f61636d732f70616765732f75706c6f6164732f646f632e6a70672220636c6173733d22696d672d726573706f6e7369766520696d672d6369726c652220c2a0616c743d222220616c69676e6d656e743d222220626f726465723d2222206873706163653d2222207673706163653d22223e3c6469763e3c7370616e20626f6f6b6d616e3d2222206f6c643d2222207374796c65222c3d22222073657269663b3d222220666f6e742d73697a653a3d22222031332e3333333370783b223d22223e3c623e3c62723e3c2f623e3c2f7370616e3e3c2f6469763e3c6469763e3c6469763e3c623e44722057616c65204164656167626f3c2f623e3c2f6469763e3c6469763e4368696566204f7065726174696e67204f666669636572266e6273703b41636164656d792048616c6f67656e3c2f6469763e3c6469763e3038313634363934303834202f2077616c652e6164656167626f4068616c6f67656e73656375726974792e636f6d3c2f6469763e3c2f6469763e3c2f74643e203c2f74723e3c2f74626f64793e3c2f7461626c653e, 'event', '2018-10-04', '9.30 am - 1.00 pm', 'uploads/digitizing.jpg', ''),
(15, 'ACADEMY HALOGEN GRADUATION', '', '', '', '', 'picture', '2018-09-12', '', 'CUT_6590.jpg', ''),
(14, 'ACADEMY HALOGEN GRADUATION', '', '', '', '', 'picture', '2018-09-12', '', 'CUT_6578.jpg', ''),
(13, 'ACADEMY HALOGEN GRADUATION', '', '', '', '', 'picture', '2018-09-12', '', 'CUT_6568.jpg', ''),
(16, 'ACADEMY HALOGEN GRADUATION', '', '', '', '', 'picture', '2018-09-12', '', 'CUT_6601.jpg', ''),
(17, 'ACADEMY HALOGEN GRADUATION', '', '', '', '', 'picture', '2018-09-12', '', 'CUT_6602.jpg', ''),
(18, 'ACADEMY HALOGEN GRADUATION', '', '', '', '', 'picture', '2018-09-12', '', 'CUT_6605.jpg', ''),
(19, 'HALOGEN & BABCOCK MOU', '', '', '', '', 'picture', '2017-08-29', '', 'CUT_2951.jpg', ''),
(20, 'HALOGEN & BABCOCK MOU', '', '', '', '', 'picture', '2017-08-29', '', 'CUT_2956.jpg', ''),
(21, 'HALOGEN & BABCOCK MOU', '', '', '', '', 'picture', '2017-08-29', '', 'CUT_2957.jpg', ''),
(22, 'HALOGEN & BABCOCK MOU', '', '', '', '', 'picture', '2017-08-29', '', 'CUT_2964.jpg', ''),
(23, 'HALOGEN & BABCOCK MOU', '', '', '', '', 'picture', '2017-08-29', '', 'CUT_2980.jpg', ''),
(24, 'HALOGEN & BABCOCK MOU', '', '', '', '', 'picture', '2017-08-29', '', 'CUT_2982.jpg', ''),
(25, 'HALOGEN & BABCOCK MOU', '', '', '', '', 'picture', '2017-08-29', '', 'CUT_2984.jpg', ''),
(26, 'HALOGEN & BABCOCK MOU', '', '', '', '', 'picture', '2017-08-29', '', 'CUT_2985.jpg', ''),
(27, 'HALOGEN & BABCOCK MOU', '', '', '', '', 'picture', '2017-08-29', '', 'CUT_2987.jpg', ''),
(28, 'HALOGEN & BABCOCK MOU', '', '', '', '', 'picture', '2017-08-29', '', 'CUT_3000.jpg', ''),
(29, 'HALOGEN & BABCOCK MOU', '', '', '', '', 'picture', '2017-08-29', '', 'CUT_3031.jpg', ''),
(30, 'HALOGEN & BABCOCK MOU', '', '', '', '', 'picture', '2017-08-29', '', 'CUT_3007.jpg', ''),
(31, 'HALOGEN & BABCOCK MOU', '', '', '', '', 'picture', '2017-08-29', '', 'CUT_3052.jpg', ''),
(32, 'HALOGEN & BABCOCK MOU', '', '', '', '', 'picture', '2017-08-29', '', 'CUT_3060.jpg', ''),
(33, 'HALOGEN & BABCOCK MOU', '', '', '', '', 'picture', '2017-08-29', '', 'CUT_3044.jpg', ''),
(34, 'Security Management Graduation Ceremony ', '', '', '', '', 'picture', '2018-07-12', '', 'DEC_1389.jpg', ''),
(35, 'Security Management Graduation Ceremony ', '', '', '', '', 'picture', '2018-07-12', '', 'DEC_1401.jpg', ''),
(36, 'Security Management Graduation Ceremony ', '', '', '', '', 'picture', '2018-07-12', '', 'DEC_1403.jpg', ''),
(37, 'Security Management Graduation Ceremony ', '', '', '', '', 'picture', '2018-07-12', '', 'DEC_1406.jpg', ''),
(38, 'Security Management Graduation Ceremony ', '', '', '', '', 'picture', '2018-07-12', '', 'DEC_1408.jpg', ''),
(39, 'Security Management Graduation Ceremony', '', '', '', '', 'picture', '2018-07-12', '', 'DEC_1411.jpg', ''),
(40, 'Security Management Graduation Ceremony', '', '', '', '', 'picture', '2018-07-12', '', 'DEC_1412.jpg', ''),
(41, 'Security Management Graduation Ceremony', '', '', '', '', 'picture', '2018-07-12', '', 'DEC_1413.jpg', ''),
(42, 'Security Management Graduation Ceremony', '', '', '', '', 'picture', '2018-07-12', '', 'DEC_1416.jpg', ''),
(43, 'Security Management Graduation Ceremony', '', '', '', '', 'picture', '2018-07-12', '', 'DEC_1419.jpg', ''),
(44, 'Security Management Graduation Ceremony', '', '', '', '', 'picture', '2018-07-12', '', 'DEC_1420.jpg', ''),
(45, 'Security Management Graduation Ceremony', '', '', '', '', 'picture', '2018-07-12', '', 'DEC_1424.jpg', ''),
(46, 'Security Management Graduation Ceremony', '', '', '', '', 'picture', '2018-07-12', '', 'DEC_1428.jpg', ''),
(47, 'Security Management Graduation Ceremony', '', '', '', '', 'picture', '2018-07-12', '', 'DEC_1432.jpg', ''),
(48, 'Security Management Graduation Ceremony', '', '', '', '', 'picture', '2018-07-12', '', 'DEC_1433.jpg', ''),
(49, 'Security Management Graduation Ceremony', '', '', '', '', 'picture', '2018-07-12', '', 'DEC_1436.jpg', ''),
(50, 'Security Management Graduation Ceremony', '', '', '', '', 'picture', '2018-07-12', '', 'DEC_1437.jpg', ''),
(51, 'Security Management Graduation Ceremony', '', '', '', '', 'picture', '2018-07-12', '', 'DEC_1439.jpg', ''),
(52, 'Security Management Graduation Ceremony', '', '', '', '', 'picture', '2018-07-12', '', 'DEC_1441.jpg', ''),
(53, 'Security Management Graduation Ceremony', '', '', '', '', 'picture', '2018-07-12', '', 'DEC_1443.jpg', ''),
(54, 'Security Management Graduation Ceremony', '', '', '', '', 'picture', '2018-07-12', '', 'DEC_1444.jpg', ''),
(55, 'Security Management Graduation Ceremony', '', '', '', '', 'picture', '2018-07-12', '', 'DEC_1445.jpg', ''),
(56, 'Security Management Graduation Ceremony', '', '', '', '', 'picture', '2018-07-12', '', 'DEC_1447.jpg', ''),
(57, 'Security Management Graduation Ceremony', '', '', '', '', 'picture', '2018-07-12', '', 'DEC_1452.jpg', ''),
(58, 'Security Management Graduation Ceremony', '', '', '', '', 'picture', '2018-07-12', '', 'DEC_1457.jpg', ''),
(59, 'Security Management Graduation Ceremony', '', '', '', '', 'picture', '2018-07-12', '', 'DEC_1460.jpg', ''),
(60, 'Security Management Graduation Ceremony', '', '', '', '', 'picture', '2018-07-12', '', 'DEC_1463.jpg', ''),
(61, 'Security Management Graduation Ceremony', '', '', '', '', 'picture', '2018-07-12', '', 'DEC_1464.jpg', ''),
(62, 'Security Management Graduation Ceremony', '', '', '', '', 'picture', '2018-07-12', '', 'DEC_1471.jpg', ''),
(63, 'Security Management Graduation Ceremony', '', '', '', '', 'picture', '2018-07-12', '', 'DEC_1474.jpg', ''),
(65, 'Customer Retention in a Crisis', '', '', 'Webinar', 0x437573746f6d657220526574656e74696f6e20696e2061204372697369730d0a0d0a0d0a, 'event', '2020-04-28', '10am - 11.15am', 'uploads/Customer Retention in a Crises', '');

-- --------------------------------------------------------

--
-- Table structure for table `faq_page`
--

CREATE TABLE `faq_page` (
  `id` int(50) NOT NULL,
  `title` varchar(200) NOT NULL,
  `content` blob NOT NULL,
  `banner_url` varchar(200) NOT NULL,
  `keyword` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `gallery_album`
--

CREATE TABLE `gallery_album` (
  `id` int(50) NOT NULL,
  `album_title` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gallery_album`
--

INSERT INTO `gallery_album` (`id`, `album_title`) VALUES
(2, 'Facilities');

-- --------------------------------------------------------

--
-- Table structure for table `home_page`
--

CREATE TABLE `home_page` (
  `id` int(50) NOT NULL,
  `title` varchar(200) NOT NULL,
  `content` blob NOT NULL,
  `image_url` varchar(200) NOT NULL,
  `ext_link` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `home_page`
--

INSERT INTO `home_page` (`id`, `title`, `content`, `image_url`, `ext_link`) VALUES
(1, 'Overview', 0x3c68313e41636164656d792048616c6f67656e3c2f68313e3c703e3c2f703e3c7020636c6173733d224d736f4e6f726d616c223e3c7370616e207374796c653d226c696e652d6865696768743a20313037253b223e3c666f6e742073697a653d2234223e497320616e20696e737469747574696f6e20746861742064656d6f6e73747261626c792073686170657320746865206167656e64610d0a666f72207269736b206d616e6167656d656e7420616e64207365637572697479207072616374696365206163726f73732074686520696e647573747279e28099732076616c756520636861696e3c2f666f6e743e3c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f4e6f726d616c223e3c623e3c7370616e207374796c653d226c696e652d6865696768743a20313037253b223e576520646f2074686973207669613b3c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f623e3c2f703e3c756c207374796c653d226d617267696e2d746f703a30696e2220747970653d2264697363223e0d0a203c6c6920636c6173733d224d736f4e6f726d616c22207374796c653d226d617267696e2d626f74746f6d3a30696e3b6d617267696e2d626f74746f6d3a2e3030303170743b6d736f2d6c6973743a0d0a20202020206c30206c6576656c31206c666f31223e3c7370616e207374796c653d226c696e652d6865696768743a20313037253b223e54686f75676874204c6561646572736869703c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f6c693e0d0a203c6c6920636c6173733d224d736f4e6f726d616c22207374796c653d226d617267696e2d626f74746f6d3a30696e3b6d617267696e2d626f74746f6d3a2e3030303170743b6d736f2d6c6973743a0d0a20202020206c30206c6576656c31206c666f31223e3c7370616e207374796c653d226c696e652d6865696768743a20313037253b223e4372656174696e6720616e642064697373656d696e6174696e67206e6577206b6e6f776c65646765207669610d0a20202020206361706163697479206275696c64696e67206163726f7373206b657920636f6d706574656e636965733c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f6c693e0d0a203c6c6920636c6173733d224d736f4e6f726d616c22207374796c653d226d617267696e2d626f74746f6d3a30696e3b6d617267696e2d626f74746f6d3a2e3030303170743b6d736f2d6c6973743a0d0a20202020206c30206c6576656c31206c666f31223e3c7370616e207374796c653d226c696e652d6865696768743a20313037253b223e4120737061636520666f722072657365617263682c207265666c656374696f6e732c20616e6420706f6c6963790d0a20202020206469616c6f677565732e3c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f6c693e0d0a203c6c6920636c6173733d224d736f4e6f726d616c22207374796c653d226d617267696e2d626f74746f6d3a30696e3b6d617267696e2d626f74746f6d3a2e3030303170743b6d736f2d6c6973743a0d0a20202020206c30206c6576656c31206c666f31223e3c7370616e207374796c653d226c696e652d6865696768743a20313037253b223e45737461626c697368696e6720746865207374616e6461726420696e20746865207072616374696365206f660d0a202020202073656375726974792e3c2f7370616e3e3c2f6c693e3c2f756c3e3c7020636c6173733d224d736f4e6f726d616c223e3c7370616e207374796c653d226c696e652d6865696768743a20313037253b223e3c666f6e742073697a653d2234223e4f7572207363686f6f6c206f66666572732070726f6772616d7320666f7220626f746820626173696320616e640d0a616476616e6365642070726f66657373696f6e616c732074686174207365656b20746f20656e68616e636520746865697220736b696c6c732c20636f6d706574656e636965732c20657870657269656e6365732c20616e64207175616c696669636174696f6e7320696e2074686520736563757269747920616e64207269736b206d616e6167656d656e742073706163652e3c6f3a703e3c2f6f3a703e3c2f666f6e743e3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f4e6f726d616c223e3c7370616e207374796c653d226c696e652d6865696768743a20313037253b223e3c666f6e742073697a653d2234223e412063657274696669636174652066726f6d2041636164656d792048616c6f67656e2067756172616e74656573206120736f6c69640d0a666f756e646174696f6e20696e20746865207374756479206f66207269736b206d616e6167656d656e7420616e642073656375726974792e3c6f3a703e3c2f6f3a703e3c2f666f6e743e3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f4e6f726d616c223e0d0a0d0a0d0a0d0a0d0a0d0a0d0a0d0a0d0a0d0a0d0a0d0a3c2f703e3c7020636c6173733d224d736f4e6f726d616c223e3c7370616e207374796c653d226c696e652d6865696768743a20313037253b223e3c666f6e742073697a653d2234223e5468726f756768206f757220636f75727365732c2077652067726f6f6d20616e642070726f766964650d0a70726f66657373696f6e616c7320616e6420636f6d706574656e742074616c656e74732074686174207265646566696e6520736563757269747920656475636174696f6e2e3c2f666f6e743e3c7370616e207374796c653d22666f6e742d73697a653a20313070743b223e3c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f7370616e3e3c2f703e0d0a0d0a3c7020636c6173733d224d736f4e6f726d616c223e3c623e3c7370616e207374796c653d22666f6e742d73697a653a31302e3070743b6c696e652d6865696768743a313037253b0d0a6d736f2d626964692d666f6e742d66616d696c793a43616c696272693b6d736f2d6e6f2d70726f6f663a796573223e3c6f3a703e266e6273703b3c2f6f3a703e3c2f7370616e3e3c2f623e3c2f703e3c62723e3c703e3c2f703e, '', ''),
(2, 'facility', 0x3c68313e4f757220466163696c69746965733c2f68313e3c703e4f757220666163696c69746965732061726520636f6d666f727461626c6520616e642066756c6c792065717569707065642c2077697468206c61726765206f70656e2073706163657320616e642067617264656e2e3c2f703e3c703e4f757220656e7669726f6e6d656e7420697320696465616c20666f7220636f72706f72617465206576656e74732c2073656d696e6172732c20776f726b73686f70732c20616e6420636f72706f7261746520747261696e696e672e3c2f703e, '', ''),
(3, 'Banner Content', 0x3c6c693e3c6120687265663d22232220636c6173733d22616e696d6174656420776f772066616465496e557020616e696d617465642220646174612d776f772d64656c61793d222e35732220646174612d776f772d6f66667365743d223522207374796c653d227669736962696c6974793a2076697369626c653b20616e696d6174696f6e2d64656c61793a20302e35733b20616e696d6174696f6e2d6e616d653a2066616465496e55703b223e4e657720746f2041636164656d792048616c6f67656e3f3c2f613e3c2f6c693e3c6c693e3c6120687265663d22232220636c6173733d22616e696d6174656420776f772066616465496e557020616e696d617465642220646174612d776f772d64656c61793d222e35732220646174612d776f772d6f66667365743d223522207374796c653d227669736962696c6974793a2076697369626c653b20616e696d6174696f6e2d64656c61793a20302e35733b20616e696d6174696f6e2d6e616d653a2066616465496e55703b223e4f757220547261696e696e672050726f6772616d6d65733c2f613e3c2f6c693e3c6c693e3c6120687265663d226e6577732d6d656469612220636c6173733d22616e696d6174656420776f772066616465496e557020616e696d617465642220646174612d776f772d64656c61793d222e35732220646174612d776f772d6f66667365743d223522207374796c653d227669736962696c6974793a2076697369626c653b20616e696d6174696f6e2d64656c61793a20302e35733b20616e696d6174696f6e2d6e616d653a2066616465496e55703b223e4d656469613c2f613e3c2f6c693e3c6c693e3c6120687265663d22616c756d2d72656769737465722220636c6173733d22616e696d6174656420776f772066616465496e557020616e696d617465642220646174612d776f772d64656c61793d222e35732220646174612d776f772d6f66667365743d223522207374796c653d227669736962696c6974793a2076697369626c653b20616e696d6174696f6e2d64656c61793a20302e35733b20616e696d6174696f6e2d6e616d653a2066616465496e55703b223e416c756d6e6920616e6420667269656e64733c2f613e3c2f6c693e3c6c6920636c6173733d22616e696d6174656420776f772066616465496e557020616e696d617465642220646174612d776f772d64656c61793d222e35732220646174612d776f772d6f66667365743d223522207374796c653d227669736962696c6974793a2076697369626c653b20616e696d6174696f6e2d64656c61793a20302e35733b20616e696d6174696f6e2d6e616d653a2066616465496e55703b223e3c627574746f6e20747970653d22627574746f6e2220646174612d746f67676c653d226d6f64616c2220646174612d7461726765743d22236d794d6f64616c322220636c6173733d2262746e2062746e2d736d20627574746f6e2d7768697465223e446f776e6c6f6164204f75722042726f63687572653c2f627574746f6e3e3c2f6c693e, '', ''),
(6, 'Survey Monkey', 0x3c7363726970743e2866756e6374696f6e28742c652c732c6e297b766172206f2c612c633b742e534d43583d742e534d43587c7c5b5d2c652e676574456c656d656e7442794964286e297c7c286f3d652e676574456c656d656e747342795461674e616d652873292c613d6f5b6f2e6c656e6774682d315d2c633d652e637265617465456c656d656e742873292c632e747970653d22746578742f6a617661736372697074222c632e6173796e633d21302c632e69643d6e2c632e7372633d5b2268747470733a223d3d3d6c6f636174696f6e2e70726f746f636f6c3f2268747470733a2f2f223a22687474703a2f2f222c227769646765742e7375727665796d6f6e6b65792e636f6d2f636f6c6c6563742f776562736974652f6a732f745261694554716e4c676a373538685442617a6764344166397457395756515f324637736362347756796647704c686e6b755f324676533979756d626934526d45674c592e6a73225d2e6a6f696e282222292c612e706172656e744e6f64652e696e736572744265666f726528632c6129297d292877696e646f772c646f63756d656e742c22736372697074222c22736d63782d73646b22293b3c2f7363726970743e3c61207374796c653d22666f6e743a20313270782048656c7665746963612c2073616e732d73657269663b20636f6c6f723a20233939393b20746578742d6465636f726174696f6e3a206e6f6e653b2220687265663d68747470733a2f2f7777772e7375727665796d6f6e6b65792e636f6d3e2043726561746520796f7572206f776e207573657220666565646261636b20737572766579203c2f613e, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `image_manager`
--

CREATE TABLE `image_manager` (
  `id` int(50) NOT NULL,
  `title` varchar(200) NOT NULL,
  `filename` varchar(200) NOT NULL,
  `file_size` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `image_manager`
--

INSERT INTO `image_manager` (`id`, `title`, `filename`, `file_size`) VALUES
(1, 'About Academy Halogen', 'About Academy Halogen.jpg', '331 KB'),
(2, 'security progamme', 'security progamme.jpeg', '53 KB'),
(3, 'News 1', 'News 1.png', '415 KB'),
(4, 'Babcock', 'Clients_Babcock.jpg', '38 KB'),
(5, 'acfica', 'Clients_acfica.jpg', '20 KB'),
(6, 'trinity', 'Clients_trinity.jpg', '32 KB'),
(7, 'oau', 'Clients_oau.jpg', '48 KB'),
(8, 'Highfield', 'Clients_Highfield.jpg', '31 KB'),
(9, 'risk', 'Clients_risk.jpg', '21 KB'),
(10, 'assos', 'Clients_assos.jpg', '48 KB'),
(11, 'elizade', 'Clients_elizade.jpg', '28 KB'),
(12, 'News 2', 'News 2.jpg', '82 KB'),
(13, 'first', 'Clients_first.jpg', '35 KB'),
(14, 'News 3', 'News 3.jpg', '80 KB'),
(15, 'Facility 1', 'Facility 1.jpg', '66 KB'),
(16, 'Facility 2', 'Facility 2.jpg', '68 KB'),
(17, 'Facility 3', 'Facility 3.jpg', '51 KB'),
(18, 'Facility 4', 'Facility 4.jpg', '177 KB'),
(19, 'Facility 5', 'Facility 5.jpg', '51 KB'),
(20, 'New 4', 'New 4.png', '469 KB'),
(21, 'Andela', 'Clients_Andela.jpg', '28 KB'),
(22, 'Intak', 'Clients_Intak.jpg', '28 KB'),
(23, 'USaid', 'Clients_USaid.jpg', '39 KB'),
(24, 'lbs', 'Clients_lbs.jpg', '41 KB'),
(25, 'Embassy', 'Clients_Embassy.jpg', '38 KB'),
(26, 'pfa', 'Clients_pfa.jpg', '37 KB'),
(27, 'main', 'Clients_main.jpg', '35 KB'),
(28, 'gtb', 'Clients_gtb.jpg', '18 KB'),
(29, 'RCCG', 'Clients_RCCG.jpg', '53 KB'),
(30, 'wale', 'wale.jpg', '78 KB'),
(31, 'jimi', 'jimi.jpg', '62 KB'),
(32, 'Vc oau', 'Vc oau.jpg', '28 KB'),
(33, 'ndu', 'ndu.jpg', '57 KB'),
(34, 'dayo', 'dayo.jpg', '65 KB'),
(35, 'ige', 'ige.jpg', '82 KB'),
(36, 'doc', 'doc.jpg', '81 KB'),
(37, 'Facility 30', 'gallery_Facility 30.JPG', '5777 KB'),
(38, 'Facility 31', 'gallery_Facility 31.JPG', '5777 KB'),
(39, 'Facility 32', 'Facility 32.JPG', '5777 KB'),
(40, 'Facility30', 'Facility30.JPG', '71 KB'),
(41, 'facility5', 'facility5.JPG', '5965 KB'),
(42, 'Diploma', 'Diploma.jpg', '71 KB'),
(43, 'DISM', 'DISM.jpg', '136 KB'),
(44, 'CISM', 'CISM.jpg', '112 KB'),
(45, 'Dr', 'dr.jpg', '37kb'),
(46, 'Nnamdi', 'a3.jpg', '37kb'),
(47, 'WaleOlaoye', 't1.jpg', '37kb'),
(48, 'Francis', 'a2.jpg', '37kb'),
(52, 'International Programmes', 'International Programmes.PNG', '168 KB'),
(50, 'olufemi ', 'a5.jpg', '37kb'),
(51, 'olubunmi', 'olubunmi.jpeg', '1952 KB'),
(53, 'Customer Retention in a Crises', 'Customer Retention in a Crises.jpeg', '100 KB'),
(54, 'webinar series', 'webinar series.jpeg', '126 KB'),
(55, 'Corporate Investigation', 'Corporate Investigation.jpg', '773 KB'),
(56, 'Strategic Security Management', 'Strategic Security Management.jpg', '5222 KB'),
(57, 'management', 'management.jpg', '1430 KB'),
(58, 'Cryptography', 'Cryptography.jpeg', '49 KB'),
(59, 'Criminology', 'Criminology.jpg', '40 KB'),
(60, 'Intelligence Management', 'Intelligence Management.jpeg', '27 KB'),
(61, 'Surveillance', 'Surveillance.jpg', '45 KB'),
(62, 'Emergency', 'Emergency.jpg', '66 KB'),
(63, 'Advanced', 'Advanced.jpeg', '12 KB'),
(71, 'SSM', 'SSM.jpg', '45 KB'),
(65, 'SST', 'SST.jpg', '40 KB'),
(66, 'Vid', 'Vid.jpg', '133 KB'),
(67, 'Academy', 'Academy.jpg', '138 KB'),
(68, 'Manage', 'Manage.jpg', '122 KB'),
(69, 'Mba', 'Mba.jpg', '126 KB'),
(70, 'Soft Skills', 'Soft Skills.jpg', '106 KB'),
(72, 'tech', 'tech.jpg', '40 KB'),
(73, 'cert1', 'cert1.jpg', '108 KB'),
(74, 'cert2', 'cert2.jpg', '121 KB'),
(75, 'cert3', 'cert3.jpg', '118 KB'),
(76, 'mba sec', 'mba sec.jpg', '129 KB'),
(77, 'Corporate Reporting', 'Corporate Reporting.jpg', '32 KB'),
(78, 'Risk Management', 'Risk Management.jpg', '49 KB'),
(79, 'Transformational Leadership', 'Transformational Leadership.jpg', '46 KB'),
(80, 'Emotional Intelligence ', 'Emotional Intelligence .jpg', '28 KB'),
(81, 'Emergency Preparedness & Business Continuity', 'Emergency Preparedness & Business Continuity.jpg', '31 KB'),
(82, 'finance for Non-Finance Managers', 'finance for Non-Finance Managers.jpg', '22 KB'),
(83, 'Selling ', 'Selling .jpg', '40 KB'),
(84, 'Selling for Non-Sales Managers', 'Selling for Non-Sales Managers.jpg', '40 KB'),
(85, 'Strategy & Tactics for Public Sector', 'Strategy & Tactics for Public Sector.jpg', '67 KB'),
(86, 'Self-awareness & Personal Power for Developing Manager', 'Self-awareness & Personal Power for Developing Manager.jpg', '31 KB'),
(87, 'High Performance tools for Mid-level Managers', 'High Performance tools for Mid-level Managers.jpg', '44 KB'),
(88, 'Selecting, Managing and Sustaining Continuous Improvement Projects', 'Selecting, Managing and Sustaining Continuous Improvement Projects.jpg', '22 KB'),
(89, 'Excellence in Contract Administration and Project Management', 'Excellence in Contract Administration and Project Management.jpg', '41 KB'),
(90, 'Management Skills â€“ Team Leadership Masterclass', 'Management Skills â€“ Team Leadership Masterclass.jpg', '38 KB'),
(94, 'Public Speaking Masterclass', 'Public Speaking Masterclass.jpg', '14 KB'),
(92, 'Change Management Masterclass', 'Change Management Masterclass.jpg', '23 KB'),
(93, 'Management Retreat Program', 'Management Retreat Program.jpg', '32 KB'),
(95, 'Strategic Customer Service Program for Business Leaders', 'Strategic Customer Service Program for Business Leaders.jpg', '34 KB'),
(96, 'New Managers Development Program (NMDP)', 'New Managers Development Program (NMDP).jpg', '26 KB'),
(97, 'Executive Trainee Program (ETP)', 'Executive Trainee Program (ETP).jpg', '31 KB'),
(98, 'Train the Trainer Program', 'Train the Trainer Program.jpg', '39 KB'),
(99, 'Project Management Program', 'Project Management Program.jpg', '21 KB'),
(100, 'banner-about', 'banner-about.jpg', '203 KB'),
(101, 'Senior Management Programme', 'Senior Management Programme.jpg', '41 KB'),
(102, 'Intelli', 'Intelli.jpg', '31 KB'),
(103, 'crime scene', 'crime scene.jpg', '32 KB'),
(104, 'security ststem', 'security ststem.jpg', '39 KB'),
(105, 'work safety', 'work safety.jpg', '34 KB'),
(106, 'Security communications', 'Security communications.jpg', '49 KB'),
(107, 'Security management ', 'Security management .jpg', '37 KB'),
(108, 'security intelligence', 'security intelligence.jpg', '24 KB'),
(109, 'art of communication', 'art of communication.jpg', '35 KB'),
(110, 'Presentation skills', 'Presentation skills.jpg', '36 KB'),
(111, 'Public Speaking ', 'Public Speaking .jpg', '34 KB'),
(112, 'Report writing', 'Report writing.jpg', '25 KB'),
(113, 'Facilitation', 'Facilitation.jpg', '37 KB'),
(114, 'interview', 'interview.jpg', '36 KB'),
(115, 'Team Building & Management', 'Team Building & Management.jpg', '34 KB'),
(116, 'Mentoring', 'Mentoring.jpg', '49 KB'),
(117, 'delegation', 'delegation.jpg', '30 KB'),
(118, 'Intern', 'Intern.jpg', '41 KB'),
(119, 'hub', 'hub.jpg', '41 KB'),
(120, 'Progamme', 'Progamme.jpg', '40 KB'),
(121, 'skill', 'skill.jpg', '45 KB'),
(122, 'cybersecurity', 'cybersecurity.jpg', '65 KB'),
(123, 'Cyber Photo', 'Cyber Photo.jpg', '31 KB'),
(124, 'Talent', 'Talent.jpg', '23 KB'),
(125, 'decision', 'decision.jpg', '22 KB'),
(126, 'performance', 'performance.jpg', '46 KB'),
(127, 'process', 'process.jpg', '44 KB'),
(128, 'Meeting', 'Meeting.jpg', '31 KB'),
(129, 'crisis management', 'crisis management.jpg', '25 KB'),
(130, 'problem solving', 'problem solving.jpg', '32 KB'),
(131, 'critical thinking', 'critical thinking.jpg', '22 KB'),
(132, 'change invovation', 'change invovation.jpg', '37 KB'),
(133, 'first managers ', 'first managers .jpg', '42 KB'),
(134, 'Networking', 'Networking.jpg', '27 KB'),
(135, 'nego skills', 'nego skills.jpg', '40 KB'),
(136, 'cold calling', 'cold calling.jpg', '29 KB'),
(137, 'ne', 'ne.jpg', '45 KB'),
(138, 'relationship', 'relationship.jpg', '37 KB'),
(139, 'approach', 'approach.jpg', '13 KB'),
(140, 'objection', 'objection.jpg', '38 KB'),
(141, 'complaint', 'complaint.jpg', '32 KB'),
(142, 'networkk', 'networkk.jpg', '42 KB'),
(143, 'ISMP', 'ISMP.jpg', '33 KB'),
(144, 'Conflict', 'Conflict.jpg', '25 KB'),
(145, 'difficult', 'difficult.jpg', '35 KB'),
(146, 're', 're.jpg', '44 KB'),
(147, 'branding', 'branding.jpg', '15 KB'),
(148, 'stress ', 'stress .jpg', '22 KB'),
(149, 'emotional', 'emotional.jpg', '29 KB'),
(150, 'Work life', 'Work life.jpg', '39 KB'),
(151, 'time', 'time.jpg', '54 KB'),
(152, 'personal', 'personal.jpg', '34 KB'),
(153, 'Technology Awareness', 'Technology Awareness.jpg', '24 KB'),
(154, 'Business awareness', 'Business awareness.jpg', '46 KB'),
(155, 'Reseach ', 'Reseach .jpg', '43 KB'),
(156, 'etii', 'etii.jpg', '23 KB'),
(157, 'bus', 'bus.jpg', '44 KB'),
(158, 'teamm', 'teamm.jpg', '39 KB'),
(159, 'Process improvment', 'Process improvment.jpg', '79 KB'),
(160, 'Diversity and Culture Process Management', 'Diversity and Culture Process Management.jpg', '35 KB'),
(161, 'Knowledge', 'Knowledge.jpg', '24 KB'),
(162, 'entrrepre', 'entrrepre.jpg', '31 KB'),
(163, 'secuu', 'secuu.jpg', '85 KB'),
(164, 'personal se', 'personal se.jpg', '31 KB'),
(165, 'Radio', 'Radio.jpg', '26 KB'),
(166, 'environ', 'environ.jpg', '42 KB'),
(167, 'Forensis', 'Forensis.jpg', '46 KB'),
(168, 'close protection', 'close protection.jpg', '22 KB'),
(169, 'investigationn', 'investigationn.jpg', '29 KB'),
(170, 'fingerprint', 'fingerprint.jpg', '68 KB'),
(171, 'digital', 'digital.jpg', '25 KB'),
(172, 'doc analysis', 'doc analysis.jpg', '19 KB'),
(173, 'evidence', 'evidence.jpg', '48 KB'),
(174, 'defensive', 'defensive.jpg', '34 KB'),
(175, 'marine', 'marine.jpg', '64 KB'),
(176, 'event', 'event.jpg', '27 KB'),
(177, 'enterprise', 'enterprise.jpg', '31 KB'),
(178, 'Aviation', 'Aviation.jpg', '40 KB'),
(179, 'network security', 'network security.jpg', '54 KB'),
(180, 'computer networking', 'computer networking.jpg', '49 KB'),
(181, 'Data analysis', 'Data analysis.jpg', '35 KB'),
(182, 'micro', 'micro.jpg', '75 KB'),
(183, 'BI', 'BI.jpg', '46 KB'),
(184, 'TABLEU', 'TABLEU.jpg', '29 KB'),
(185, 'phyton', 'phyton.jpg', '32 KB'),
(186, 'Pyphon', 'Pyphon.jpg', '33 KB'),
(187, 'software development', 'software development.jpg', '42 KB'),
(188, 'data with python', 'data with python.jpg', '32 KB');

-- --------------------------------------------------------

--
-- Table structure for table `job`
--

CREATE TABLE `job` (
  `id` int(10) NOT NULL,
  `job_title` varchar(150) DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `qualification` varchar(100) DEFAULT NULL,
  `deadline` date DEFAULT NULL,
  `send_to` varchar(255) NOT NULL,
  `author` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `job`
--

INSERT INTO `job` (`id`, `job_title`, `location`, `qualification`, `deadline`, `send_to`, `author`) VALUES
(1, 'Accounting Officer', 'Lagos ', 'BACHELOR DEGREE', '2018-08-09', 'oduolafemi@femi.com', 'stella'),
(2, 'Web developer', 'Lagos', 'OND', '2018-07-23', 'test@ymail.com', 'Emmanuel Oduola');

-- --------------------------------------------------------

--
-- Table structure for table `log`
--

CREATE TABLE `log` (
  `id` int(10) NOT NULL,
  `user` varchar(20) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `department` varchar(30) NOT NULL,
  `action` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `time` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `log`
--

INSERT INTO `log` (`id`, `user`, `fullname`, `department`, `action`, `date`, `time`) VALUES
(1, 'administrator', 'Administrator', 'Administrator', 'Logged in', '2018-08-30', '06:21pm'),
(2, 'administrator', 'Administrator', 'Administrator', 'Deleted Our Vision from sub_page', '2018-08-31', '12:15pm'),
(3, 'administrator', 'Administrator', 'Administrator', 'Deleted gtb from client', '2018-08-31', '01:27pm'),
(4, 'administrator', 'Administrator', 'Administrator', 'Logged in', '2018-09-01', '08:37pm'),
(5, 'administrator', 'Administrator', 'Administrator', 'Logged in', '2018-09-03', '03:42pm'),
(6, 'administrator', 'Administrator', 'Administrator', 'Logged in', '2018-09-05', '09:53am'),
(7, 'administrator', 'Administrator', 'Administrator', 'Logged in', '2018-09-06', '06:07pm'),
(8, 'administrator', 'Administrator', 'Administrator', 'Logged in', '2018-09-06', '09:31pm'),
(9, 'administrator', 'Administrator', 'Administrator', 'Logged in', '2018-09-09', '03:26am'),
(10, 'administrator', 'Administrator', 'Administrator', 'Logged in', '2018-09-11', '06:16pm'),
(11, 'administrator', 'Administrator', 'Administrator', 'Deleted Market Engagement from programmes', '2018-09-13', '10:26am'),
(12, 'administrator', 'Administrator', 'Administrator', 'Deleted ADMINISTRATIVE SKILLS FOR ASSISTANTS from ', '2018-09-13', '10:28am'),
(13, 'administrator', 'Administrator', 'Administrator', 'Deleted ROOT CAUSE ANALYSIS LEVEL 2 from courses', '2018-09-13', '10:37am'),
(14, 'administrator', 'Administrator', 'Administrator', 'Logged in', '2018-09-13', '05:37pm'),
(15, 'administrator', 'Administrator', 'Administrator', 'Logged in', '2018-09-14', '02:04pm'),
(16, 'administrator', 'Administrator', 'Administrator', 'Logged in', '2018-09-14', '02:05pm'),
(17, 'administrator', 'Administrator', 'Administrator', 'Logged in', '2018-09-18', '04:39pm'),
(18, 'administrator', 'Administrator', 'Administrator', 'Deleted Survey Monkey from home_page', '2018-09-28', '09:58am'),
(19, 'administrator', 'Administrator', 'Administrator', 'Logged in', '2018-09-28', '10:29am'),
(20, 'administrator', 'Administrator', 'Administrator', 'Logged in', '2018-10-05', '10:38am'),
(21, 'administrator', 'Administrator', 'Administrator', 'Logged in', '2018-10-05', '10:41am'),
(22, 'administrator', 'Administrator', 'Administrator', 'Logged in', '2018-10-05', '10:41am'),
(23, 'administrator', 'Administrator', 'Administrator', 'Logged in', '2018-10-05', '10:41am'),
(24, 'administrator', 'Administrator', 'Administrator', 'Logged in', '2018-10-05', '10:41am'),
(25, 'administrator', 'Administrator', 'Administrator', 'Logged in', '2018-10-05', '10:42am'),
(26, 'administrator', 'Administrator', 'Administrator', 'Logged in', '2018-10-05', '10:42am'),
(27, 'administrator', 'Administrator', 'Administrator', 'Logged in', '2018-10-05', '10:42am'),
(28, 'administrator', 'Administrator', 'Administrator', 'Logged in', '2018-10-05', '10:45am'),
(29, 'administrator', 'Administrator', 'Administrator', 'Logged in', '2018-10-05', '10:46am'),
(30, 'administrator', 'Administrator', 'Administrator', 'Logged in', '2018-10-05', '10:46am'),
(31, 'administrator', 'Administrator', 'Administrator', 'Logged in', '2018-10-05', '10:54am'),
(32, 'administrator', 'Administrator', 'Administrator', 'Logged in', '2018-10-08', '11:22am'),
(33, 'administrator', 'Administrator', 'Administrator', 'Logged in', '2018-10-08', '01:23pm'),
(34, 'administrator', 'Administrator', 'Administrator', 'Logged in', '2018-10-08', '02:33pm'),
(35, 'administrator', 'Administrator', 'Administrator', 'Logged in', '2018-10-11', '01:49pm'),
(36, 'administrator', 'Administrator', 'Administrator', 'Logged in', '2018-10-11', '02:50pm'),
(37, 'aledoy', 'Lu Abikoye', 'Creative Director', 'Logged in', '2018-10-12', '09:18am'),
(38, 'administrator', 'Administrator', 'Administrator', 'Logged in', '2018-11-07', '03:22pm'),
(39, 'administrator', 'Administrator', 'Administrator', 'Logged in', '2018-12-12', '11:03am'),
(40, 'administrator', 'Administrator', 'Administrator', 'Logged in', '2019-01-07', '02:28pm'),
(41, 'administrator', 'Administrator', 'Administrator', 'Deleted Managing Enterprise Security Risks - Elect', '2019-01-08', '11:09am'),
(42, 'administrator', 'Administrator', 'Administrator', 'Deleted Digitizing Nigeria from policy', '2019-01-08', '11:15am'),
(43, 'administrator', 'Administrator', 'Administrator', 'Logged in', '2019-02-05', '12:20pm'),
(44, 'administrator', 'Administrator', 'Administrator', 'Logged in', '2019-02-12', '10:55am'),
(45, 'administrator', 'Administrator', 'Administrator', 'Deleted Ijeoma from image_manager', '2019-02-12', '10:57am'),
(46, 'administrator', 'Administrator', 'Administrator', 'Deleted Ijeoma Opara from management_team', '2019-02-12', '10:58am'),
(47, 'administrator', 'Administrator', 'Administrator', 'Logged in', '2019-02-18', '02:31pm'),
(48, 'administrator', 'Administrator', 'Administrator', 'Logged in', '2019-02-18', '03:51pm'),
(49, 'administrator', 'Administrator', 'Administrator', 'Logged in', '2019-02-19', '10:55am'),
(50, 'administrator', 'Administrator', 'Administrator', 'Logged in', '2019-03-13', '01:11pm'),
(51, 'administrator', 'Administrator', 'Administrator', 'Logged in', '2019-07-01', '10:44am'),
(52, 'administrator', 'Administrator', 'Administrator', 'Logged in', '2019-08-29', '10:47am'),
(53, 'administrator', 'Administrator', 'Administrator', 'Logged in', '2019-08-29', '11:57am'),
(54, 'administrator', 'Administrator', 'Administrator', 'Logged in', '2019-09-04', '05:35am'),
(55, 'administrator', 'Administrator', 'Administrator', 'Logged in', '2019-09-14', '03:49am'),
(56, 'administrator', 'Administrator', 'Administrator', 'Logged in', '2019-11-13', '10:17am'),
(57, 'administrator', 'Administrator', 'Administrator', 'Logged in', '2019-11-27', '02:56pm'),
(58, 'administrator', 'Administrator', 'Administrator', 'Deleted  from prospect', '2019-11-27', '03:24pm'),
(59, 'administrator', 'Administrator', 'Administrator', 'Deleted  from prospect', '2019-11-27', '03:24pm'),
(60, 'administrator', 'Administrator', 'Administrator', 'Deleted  from prospect', '2019-11-27', '03:24pm'),
(61, 'administrator', 'Administrator', 'Administrator', 'Deleted  from prospect', '2019-11-27', '03:25pm'),
(62, 'administrator', 'Administrator', 'Administrator', 'Deleted  from prospect', '2019-11-27', '03:25pm'),
(63, 'administrator', 'Administrator', 'Administrator', 'Deleted  from prospect', '2019-11-27', '03:25pm'),
(64, 'administrator', 'Administrator', 'Administrator', 'Deleted  from prospect', '2019-11-27', '03:25pm'),
(65, 'administrator', 'Administrator', 'Administrator', 'Deleted  from prospect', '2019-11-27', '03:25pm'),
(66, 'administrator', 'Administrator', 'Administrator', 'Deleted  from prospect', '2019-11-27', '03:25pm'),
(67, 'administrator', 'Administrator', 'Administrator', 'Logged in', '2019-11-27', '04:25pm'),
(68, 'administrator', 'Administrator', 'Administrator', 'Logged in', '2019-12-02', '11:28am'),
(69, 'Administrator', 'Administrator', 'Administrator', 'Logged in', '2019-12-02', '10:17pm'),
(70, 'administrator', 'Administrator', 'Administrator', 'Logged in', '2019-12-03', '11:27am'),
(71, 'administrator', 'Administrator', 'Administrator', 'Logged in', '2019-12-03', '11:27am'),
(72, 'administrator', 'Administrator', 'Administrator', 'Logged in', '2019-12-03', '12:02pm'),
(73, 'Administrator', 'Administrator', 'Administrator', 'Logged in', '2019-12-03', '12:09pm'),
(74, 'Administrator', 'Administrator', 'Administrator', 'Logged in', '2020-01-27', '01:56pm'),
(75, 'Administrator', 'Administrator', 'Administrator', 'Logged in', '2020-01-28', '11:53am'),
(76, 'Administrator', 'Administrator', 'Administrator', 'Logged in', '2020-01-28', '11:53am'),
(77, 'administrator', 'Administrator', 'Administrator', 'Logged in', '2020-03-19', '03:23pm'),
(78, 'administrator', 'Administrator', 'Administrator', 'Logged in', '2020-03-20', '05:00pm'),
(79, 'administrator', 'Administrator', 'Administrator', 'Logged in', '2020-03-23', '03:55pm'),
(80, 'administrator', 'Administrator', 'Administrator', 'Logged in', '2020-03-24', '11:24am'),
(81, 'administrator', 'Administrator', 'Administrator', 'Logged in', '2020-03-24', '02:59pm'),
(82, 'administrator', 'Administrator', 'Administrator', 'Logged in', '2020-03-24', '04:05pm'),
(83, 'administrator', 'Administrator', 'Administrator', 'Logged in', '2020-03-26', '11:14am'),
(84, 'administrator', 'Administrator', 'Administrator', 'Logged in', '2020-03-29', '10:03pm'),
(85, 'administrator', 'Administrator', 'Administrator', 'Logged in', '2020-03-30', '06:52am'),
(86, 'administrator', 'Administrator', 'Administrator', 'Logged in', '2020-03-30', '08:36am'),
(87, 'administrator', 'Administrator', 'Administrator', 'Logged in', '2020-03-30', '11:04am'),
(88, 'administrator', 'Administrator', 'Administrator', 'Logged in', '2020-03-30', '07:50pm'),
(89, 'administrator', 'Administrator', 'Administrator', 'Logged in', '2020-04-22', '09:59pm'),
(90, 'administrator', 'Administrator', 'Administrator', 'Deleted Emmanuel Oduola from downloads', '2020-04-22', '10:00pm'),
(91, 'administrator', 'Administrator', 'Administrator', 'Deleted Emmanuel Oduola from downloads', '2020-04-22', '10:00pm'),
(92, 'administrator', 'Administrator', 'Administrator', 'Logged in', '2020-04-24', '12:30pm'),
(93, 'administrator', 'Administrator', 'Administrator', 'Logged in', '2020-04-24', '01:04pm'),
(94, 'administrator', 'Administrator', 'Administrator', 'Logged in', '2020-04-24', '02:30pm'),
(95, 'administrator', 'Administrator', 'Administrator', 'Deleted International Programmes For Senior Execut', '2020-04-24', '02:42pm'),
(96, 'administrator', 'Administrator', 'Administrator', 'Logged in', '2020-04-27', '08:49pm'),
(97, 'administrator', 'Administrator', 'Administrator', 'Logged in', '2020-04-28', '01:03pm'),
(98, 'administrator', 'Administrator', 'Administrator', 'Logged in', '2020-04-28', '02:35pm'),
(99, 'administrator', 'Administrator', 'Administrator', 'Logged in', '2020-04-28', '08:43pm'),
(100, 'administrator', 'Administrator', 'Administrator', 'Logged in', '2020-04-28', '09:55pm'),
(101, 'administrator', 'Administrator', 'Administrator', 'Logged in', '2020-05-07', '01:43pm'),
(102, 'administrator', 'Administrator', 'Administrator', 'Logged in', '2020-06-12', '09:24am');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(50) NOT NULL,
  `fullname` varchar(200) NOT NULL,
  `designation` varchar(200) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(50) NOT NULL,
  `priviledge` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `fullname`, `designation`, `username`, `password`, `priviledge`) VALUES
(1, 'Administrator', 'Administrator', 'administrator', 'content', 'administrator'),
(2, 'Lu Abikoye', 'Creative Director', 'aledoy', '123toy', 'administrator');

-- --------------------------------------------------------

--
-- Table structure for table `management_team`
--

CREATE TABLE `management_team` (
  `id` int(50) NOT NULL,
  `fullname` varchar(200) NOT NULL,
  `designation` varchar(200) NOT NULL,
  `image_url` varchar(200) NOT NULL,
  `hierarchy` varchar(200) NOT NULL,
  `content` blob NOT NULL,
  `facebook_url` varchar(200) NOT NULL,
  `twitter_url` varchar(200) NOT NULL,
  `linkedin_url` varchar(200) NOT NULL,
  `instagram_url` varchar(200) NOT NULL,
  `social_url1` varchar(200) NOT NULL,
  `social_url2` varchar(200) NOT NULL,
  `social_url3` varchar(200) NOT NULL,
  `social_url4` varchar(200) NOT NULL,
  `social_url5` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `management_team`
--

INSERT INTO `management_team` (`id`, `fullname`, `designation`, `image_url`, `hierarchy`, `content`, `facebook_url`, `twitter_url`, `linkedin_url`, `instagram_url`, `social_url1`, `social_url2`, `social_url3`, `social_url4`, `social_url5`) VALUES
(1, 'Dr. Adebowale Adeagbo', 'COO Academy Halogen', 'uploads/dr.jpg					', '1', 0x3c7020636c6173733d224d736f4e6f726d616c22207374796c653d22746578742d616c69676e3a6a757374696679223e3c7020636c6173733d224d736f4e6f726d616c22207374796c653d22746578742d616c69676e3a6a757374696679223e3c62207374796c653d226d736f2d626964692d666f6e742d7765696768743a0d0a6e6f726d616c223e3c7370616e206c616e673d22454e2d474222207374796c653d22666f6e742d73697a653a31322e3070743b6d736f2d626964692d666f6e742d73697a653a31312e3070743b0d0a6c696e652d6865696768743a313135253b666f6e742d66616d696c793a2671756f743b50616c6174696e6f204c696e6f747970652671756f743b2c2671756f743b73657269662671756f743b3b6d736f2d616e73692d6c616e67756167653a0d0a454e2d4742223e416465626f77616c65204164656167626f3c2f7370616e3e3c2f623e3c7370616e206c616e673d22454e2d474222207374796c653d22666f6e742d73697a653a31322e3070743b0d0a6d736f2d626964692d666f6e742d73697a653a31312e3070743b6c696e652d6865696768743a313135253b666f6e742d66616d696c793a2671756f743b50616c6174696e6f204c696e6f747970652671756f743b2c2671756f743b73657269662671756f743b3b0d0a6d736f2d616e73692d6c616e67756167653a454e2d4742223e2069732074686520434f4f206f662041636164656d792048616c6f67656e2e2048652073657276656420617320610d0a636f6e73756c74616e7420746f20736f6d65204e69676572696120737461746520676f7665726e6d656e7473206f6e20646576656c6f706d656e7420706f6c6963792e2041646520616c736f0d0a7365727665642061732043454f206f6620726570757461626c65206f7267616e69736174696f6e7320696e2074686520554b20616e64204575726f70652e20486520686f6c6473206120446f63746f726174650d0a696e20427573696e6573732041646d696e697374726174696f6e2066726f6d20426f75726e656d6f75746820556e6976657273697479205b666f637573206f6e20536f6369616c0d0a45636f6e6f6d6963735d20616e6420616e204d42412066726f6d205468616d65732056616c6c657920556e69766572736974792c20554b2e204164652069732077656c6c207075626c69736865640d0a616e64206c6563747572657320696e7465726e6174696f6e616c6c792e2048656973206c697374656420696e207468652031363574682045646974696f6e206f66203c69207374796c653d226d736f2d626964692d666f6e742d7374796c653a6e6f726d616c223e57686fe28099732057686f20554b20616e64204575726f70653c2f693e2e3c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f703e3c62723e3c2f703e, '', '', 'https://www.linkedin.com/in/ade-adeagbo-88a04818/?originalSubdomain=ng', '', '', '', '', '', ''),
(2, 'Wale Olaoye', 'CEO Halogen Group', 'uploads/t1.jpg					', '2', 0x3c7020636c6173733d224d736f4e6f726d616c22207374796c653d22746578742d616c69676e3a6a757374696679223e3c7020636c6173733d224d736f4e6f726d616c22207374796c653d22746578742d616c69676e3a6a757374696679223e3c7370616e206c616e673d22454e2d474222207374796c653d22666f6e742d73697a653a31322e3070743b6d736f2d626964692d666f6e742d73697a653a31312e3070743b6c696e652d6865696768743a313135253b666f6e742d66616d696c793a0d0a2671756f743b50616c6174696e6f204c696e6f747970652671756f743b2c2671756f743b73657269662671756f743b3b6d736f2d616e73692d6c616e67756167653a454e2d4742223e3c6f3a703e266e6273703b3c2f6f3a703e3c2f7370616e3e3c2f703e0d0a0d0a3c7020636c6173733d224d736f4e6f726d616c22207374796c653d22746578742d616c69676e3a6a757374696679223e3c62207374796c653d226d736f2d626964692d666f6e742d7765696768743a0d0a6e6f726d616c223e3c7370616e206c616e673d22454e2d474222207374796c653d22666f6e742d73697a653a31322e3070743b6d736f2d626964692d666f6e742d73697a653a31312e3070743b0d0a6c696e652d6865696768743a313135253b666f6e742d66616d696c793a2671756f743b50616c6174696e6f204c696e6f747970652671756f743b2c2671756f743b73657269662671756f743b3b6d736f2d616e73692d6c616e67756167653a0d0a454e2d4742223e57616c65204f6c616f7965203c2f7370616e3e3c2f623e3c7370616e206c616e673d22454e2d474222207374796c653d22666f6e742d73697a653a31322e3070743b0d0a6d736f2d626964692d666f6e742d73697a653a31312e3070743b6c696e652d6865696768743a313135253b666f6e742d66616d696c793a2671756f743b50616c6174696e6f204c696e6f747970652671756f743b2c2671756f743b73657269662671756f743b3b0d0a6d736f2d616e73692d6c616e67756167653a454e2d4742223e697320746865204d616e6167696e67204469726563746f722f43454f6f66207468652048616c6f67656e2047726f75702e48652069730d0a61206869676820726964696e67207269736b206d616e6167656d656e742070726f66657373696f6e616c20616e6420627573696e657373207374726174656769737420636f6d6d697474656420746f0d0a746865207472616e73666f726d6174696f6e206f6620746865207072697661746520736563757269747920736563746f72202d206974732076616c756520616e6420696d70616374206f6e20627573696e6573730d0a616e64206e6174696f6e616c2073656375726974792e2057616c65e28099732070726f66657373696f6e616c20657870657269656e6365207370616e73207477656e747920666976652079656172730d0a6163726f737320666f757220636f6e74696e656e7473207769746820657874656e7369766520636170616369747920616e6420696e666c75656e636520746f207265736f757263650d0a676c6f62616c6c792e2048652069732061206d656d6265722c20612066656c6c6f7720616e6420616e20616c756d6e7573206f66206e6f7461626c65206173736f63696174696f6e7320616e640d0a696e737469747574696f6e73206163726f73732074686520676c6f62652e3c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f703e0d0a0d0a3c7020636c6173733d224d736f4e6f726d616c22207374796c653d22746578742d616c69676e3a6a757374696679223e3c7370616e206c616e673d22454e2d474222207374796c653d22666f6e742d73697a653a31322e3070743b6d736f2d626964692d666f6e742d73697a653a31312e3070743b6c696e652d6865696768743a313135253b666f6e742d66616d696c793a0d0a2671756f743b50616c6174696e6f204c696e6f747970652671756f743b2c2671756f743b73657269662671756f743b3b6d736f2d616e73692d6c616e67756167653a454e2d4742223e41206e6174696f6e616c2074686f75676874206c6561646572736869700d0a6173736574206f66206e6f74652c2057616c6520697320612076616c75656420737065616b65722077686f2069732077656c6c20736f75676874206f7574206174206c6f63616c20616e640d0a696e74656e74696f6e616c20636f6e666572656e63657320616e642073656d696e6172732e3c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f703e0d0a0d0a3c7020636c6173733d224d736f4e6f726d616c22207374796c653d22746578742d616c69676e3a6a757374696679223e3c7370616e206c616e673d22454e2d474222207374796c653d22666f6e742d73697a653a31322e3070743b6d736f2d626964692d666f6e742d73697a653a31312e3070743b6c696e652d6865696768743a313135253b666f6e742d66616d696c793a0d0a2671756f743b50616c6174696e6f204c696e6f747970652671756f743b2c2671756f743b73657269662671756f743b3b6d736f2d616e73692d6c616e67756167653a454e2d4742223e3c6f3a703e266e6273703b3c2f6f3a703e3c2f7370616e3e3c2f703e3c62723e3c2f703e, '', '', 'https://ng.linkedin.com/in/wale-olaoye-515a5331', '', '', '', '', '', ''),
(3, 'Nnamdi Melie', 'Director of Strategy, Halogen Group', 'uploads/a3.jpg					', '3', 0x3c7020636c6173733d224d736f4e6f726d616c22207374796c653d22746578742d616c69676e3a6a757374696679223e3c7020636c6173733d224d736f4e6f726d616c22207374796c653d22746578742d616c69676e3a6a757374696679223e3c7370616e206c616e673d22454e2d474222207374796c653d22666f6e742d73697a653a31322e3070743b6d736f2d626964692d666f6e742d73697a653a31312e3070743b6c696e652d6865696768743a313135253b666f6e742d66616d696c793a0d0a2671756f743b50616c6174696e6f204c696e6f747970652671756f743b2c2671756f743b73657269662671756f743b3b6d736f2d616e73692d6c616e67756167653a454e2d4742223e4e6e616d6469204d656c69656973204469726563746f722c0d0a436f72706f726174652053747261746567792061747468652048616c6f67656e2047726f75702e2048652067726164756174656420696e20696e737572616e63652066726f6d207468650d0a556e6976657273697479206f66204c61676f7320616e642068617320616e204d42412066726f6d204945534520427573696e657373205363686f6f6c2c20556e6976657273697479206f660d0a4e6176617272612c2042617263656c6f6e612c20537061696e2e2041206272696c6c69616e74207374726174656769737420616e642070617373696f6e617465206164766f63617465206f660d0a737472617465676963207269736b206d616e6167656d656e7420666f7220627573696e657373207375737461696e6162696c69747920616e642067726f7774682c4e6e616d64696861730d0a617474656e64656420636f75727365732061742074686520556e6976657273697479206f66204368696361676f2c20426f6f7468205363686f6f6c206f6620427573696e65737320696e0d0a416476616e63652053747261746567793b204869676820506572666f726d616e6365204c6561646572736869702e204865207370656369616c6973657320696e20636f72706f726174650d0a73747261746567792c20627573696e657373207472616e73666f726d6174696f6e20616e64206368616e6765206d616e6167656d656e742c206469676974616c207472616e73666f726d6174696f6e2e0d0a4e6e616d6469207468726976657320696e2073746172747570616e64206368616e6765206d616e6167656d656e7420656e7669726f6e6d656e74732e3c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f703e3c62723e3c2f703e, '', '', 'https://ng.linkedin.com/in/nnamdi-melie-44353133', '', '', '', '', '', ''),
(5, 'Femi Omotayo', 'Policy & Media', 'uploads/a5.jpg					', '5', 0x3c7020636c6173733d224d736f4e6f726d616c22207374796c653d22746578742d616c69676e3a6a757374696679223e3c623e3c7370616e207374796c653d22666f6e742d73697a653a31322e3070743b0d0a6d736f2d626964692d666f6e742d73697a653a31312e3070743b6c696e652d6865696768743a313135253b666f6e742d66616d696c793a2671756f743b50616c6174696e6f204c696e6f747970652671756f743b2c2671756f743b73657269662671756f743b223e4f6c7566656d690d0a4f6d6f7461796f203c2f7370616e3e3c2f623e3c7370616e206c616e673d22454e2d474222207374796c653d22666f6e742d73697a653a31322e3070743b6d736f2d626964692d666f6e742d73697a653a0d0a31312e3070743b6c696e652d6865696768743a313135253b666f6e742d66616d696c793a2671756f743b50616c6174696e6f204c696e6f747970652671756f743b2c2671756f743b73657269662671756f743b3b6d736f2d616e73692d6c616e67756167653a0d0a454e2d4742223e69732061206d756c7469706c652061776172642d77696e6e696e67206a6f75726e616c6973742c20617574686f7220616e64736f6369616c20696e6e6f766174696f6e0d0a66656c6c6f772077697468206f766572206120646563616465206f6620657870657269656e636520696e20746865206d656469612e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a31322e3070743b6d736f2d626964692d666f6e742d73697a653a31312e3070743b6c696e652d6865696768743a313135253b666f6e742d66616d696c793a0d0a2671756f743b50616c6174696e6f204c696e6f747970652671756f743b2c2671756f743b73657269662671756f743b223e486520686f6c6473616e204d536320696e204d61737320436f6d6d756e69636174696f6e2066726f6d207468650d0a556e6976657273697479206f66204c61676f7320616e642069732070726f66696369656e7420696e2077726974696e672c20737065616b696e672c20616e64206469676974616c0d0a6d61726b6574696e672e2048652069732061206d656d626572206f6620746865204844504320596f757468205375622d636f6d6d6974746565206f6620746865204e6967657269616e2045636f6e6f6d69630d0a53756d6d69742047726f757020284e4553472920616e6420616e204173686f6b61204d617374657243617264206368616e6765206d616b657273e28099207363686f6c61722e204f6c7566656d690d0a63757272656e746c79207365727665732061732074686520506f6c696379204c65616420666f722041636164656d792048616c6f67656e2077686572652068652061646d696e6973746572730d0a74686520656666656374697665206f7065726174696f6e73206f6620617370656369616c20696e7465726573742067726f7570206f6e20656e7465727072697365207365637572697479207269736b0d0a6d616e6167656d656e7420284553524d2920616d6f6e67206f746865722066756e6374696f6e732e3c2f7370616e3e3c7370616e206c616e673d22454e2d474222207374796c653d22666f6e742d73697a653a31322e3070743b6d736f2d626964692d666f6e742d73697a653a31312e3070743b6c696e652d6865696768743a313135253b666f6e742d66616d696c793a0d0a2671756f743b50616c6174696e6f204c696e6f747970652671756f743b2c2671756f743b73657269662671756f743b3b6d736f2d616e73692d6c616e67756167653a454e2d4742223e3c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f703e, '', '', 'https://www.linkedin.com/in/olufemiomotayo/', '', '', '', '', '', ''),
(6, 'Francis Okogwu', 'Administration', 'uploads/a2.jpg					', '6', '', '', '', 'https://www.linkedin.com/in/okogwu-francis-tobechukwu-a73a0995/', '', '', '', '', '', ''),
(7, 'Olubunmi Olabiyi', 'Academy', 'uploads/olubunmi.jpeg			', '7', 0x3c7020636c6173733d224d736f4e6f726d616c22207374796c653d22746578742d616c69676e3a2073746172743b223e3c666f6e7420636f6c6f723d22233333333333332220666163653d225365676f65205549223e3c7370616e207374796c653d22666f6e742d73697a653a20313470783b206261636b67726f756e642d636f6c6f723a20726762283234352c203234352c20323435293b223e4f6c7562756e6d69204f6c6162697969206973266e6273703b3c2f7370616e3e3c2f666f6e743e3c2f703e, '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `master_page`
--

CREATE TABLE `master_page` (
  `id` int(50) NOT NULL,
  `title` varchar(200) NOT NULL,
  `keyword` varchar(200) NOT NULL,
  `banner_text` varchar(200) NOT NULL,
  `content` blob NOT NULL,
  `banner_url` varchar(200) NOT NULL,
  `ext_link` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `master_page`
--

INSERT INTO `master_page` (`id`, `title`, `keyword`, `banner_text`, `content`, `banner_url`, `ext_link`) VALUES
(1, 'About us', 'Academy', 'Organisations need new tools and competencies to enable them to address the dynamics of todayâ€™s risk', 0x41626f75742041636164656d792048616c6f67656e, 'uploads/About Academy Halogen.jpg', ''),
(2, 'Press Release', 'Academy', 'Organisations need new tools and competencies to enable them to address the dynamics of todayâ€™s risk', 0x4e6577732026616d703b204d65646961, 'uploads/press releases.jpg', ''),
(3, 'Events', 'Academy Halogen', 'Events', 0x4f7267616e69736174696f6e73206e656564206e657720746f6f6c7320616e6420636f6d706574656e6369657320746f20656e61626c65207468656d20746f2061646472657373207468652064796e616d696373206f6620746f646179e2809973207269736b, 'uploads/events banner.jpg', ''),
(4, 'Policy', 'policy', 'Policy', 0x446f776e6c6f616420736f6d65206f66206f757220706f6c69636965733c6469763e3c62723e3c2f6469763e3c6469763e3c62723e3c2f6469763e, 'uploads/policy.jpg', ''),
(5, 'Services', 'Services', 'Services', 0x5365727669636573, 'uploads/facility5.JPG', '');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `content` text NOT NULL,
  `date` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `news_page`
--

CREATE TABLE `news_page` (
  `id` int(50) NOT NULL,
  `title` varchar(200) NOT NULL,
  `mp_title` varchar(200) NOT NULL,
  `category` varchar(20) DEFAULT NULL,
  `keyword` varchar(200) NOT NULL,
  `banner_text` varchar(200) NOT NULL,
  `content` blob NOT NULL,
  `date` varchar(50) NOT NULL,
  `banner_url` varchar(200) NOT NULL,
  `ext_link` varchar(200) NOT NULL,
  `link` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `news_page`
--

INSERT INTO `news_page` (`id`, `title`, `mp_title`, `category`, `keyword`, `banner_text`, `content`, `date`, `banner_url`, `ext_link`, `link`) VALUES
(1, 'Halogen, Babcock boost capacity on security, risk management', 'Press Release', 'News', 'Halogen, Babcock boost capacity on security, risk management', 'Halogen, Babcock boost capacity on security, risk management', 0x496e2076696577206f662074686520776f7273656e696e67207365637572697479206368616c6c656e67657320696e2074686520636f756e7472792c2041636164656d792048616c6f67656e2d20746865207363686f6f6c206f66207365637572697479206d616e6167656d656e742c2077686963682069732074686520696e737469747574696f6e616c2061726d206f66207468652048616c6f67656e20736563757269747920636f6d70616e7920696e20706172746e657273686970207769746820426162636f636b20556e69766572736974792c206861732070757420746f67657468657220747261696e696e672070726f6772616d6d657320746f2068656c702065717569702070726f66657373696f6e616c7320696e2074686520736563757269747920696e6475737472792e266e6273703b2057616c65204f6c616f79652c20746865204d616e6167696e67204469726563746f72206f662048616c6f67656e205365637572697479207361696420746865e280a6, '16-07-2018', 'uploads/News 1.png', 'https://www.businessdayonline.com/financial-inclusion/news-financial-inclusion/article/halogen-babcock-boost-capacity-security-risk-management/', NULL),
(2, 'Lagos lauds Babcock, Academy Halogen partnership on security studies', 'Press Release', 'News', 'Lagos lauds Babcock, Academy Halogen partnership on security studies', 'Lagos lauds Babcock, Academy Halogen partnership on security studies', 0x3c6469763e5370656369616c204164766973657220746f20746865204c61676f7320537461746520476f7665726e6d656e74266e6273703b6f6e20536563757269747920616e6420496e74656c6c6967656e63653b204d722e204164656b756e6c6520416a616e616b752c2068617320636f6d6d656e64656420426162636f636b20556e697665727369747920616e642048616c6f67656e20536563757269747920436f6d70616e7920666f7220746865697220636f6c6c61626f726174697665206566666f727420696e20646576656c6f70696e67207175616c69747920656475636174696f6e206672616d65776f726b20616e642073747261746567696320736563757269747920706f6c69637920646972656374696f6e20666f722074686520636f756e7472792e3c2f6469763e3c6469763e3c62723e3c2f6469763e3c6469763e416a616e616b752077686f2073706f6b652061742048616c6f67656e205363686f6f6c206f66205365637572697479204d616e6167656d656e7420616e6420546563686e6f6c6f677920284853534d26616d703b54292067726164756174696f6e20636572656d6f6e792c207768657265203437206772616475616e6473207265636569766564206469706c6f6d6120696e205365637572697479204d616e6167656d656e742c20736169642074686520636f6d70616e79206861732073686f776e20697473656c66206f6e20616c6c2066726f6e747320746f206265206120776f7274687920706172746e657220776974682074686520737461746520676f7665726e6d656e74206f6e20766172696f7573206566666f7274732061696d6564206174206372656174696e672061207365637572656420627573696e65737320656e7669726f6e6d656e742e3c2f6469763e3c6469763e3c62723e3c2f6469763e3c6469763e44657363726962696e672074686520706172746e657273686970206f662074686520636f6d70616e7920616e642074686520756e69766572736974792061732061207665727920756e69717565207374657020746f7761726473206275696c64696e6720656e766961626c6520636170616369747920666f722074686520736563757269747920736563746f7220696e204e6967657269612c20686520736169642c20e2809c4c6574206d652061636b6e6f776c6564676520746865206c656164696e6720726f6c65206f662048616c6f67656e20536563757269747920696e206f757220736563757269747920736563746f72207265666f726d7320696e204c61676f732053746174652c20706172746963756c61726c7920746865206d61696e73747265616d696e67206f6620746865207072697661746520736563757269747920736563746f7220696e746f206f7572207365637572697479206172636869746563747572652e3c2f6469763e3c6469763e3c62723e3c2f6469763e3c6469763e3c62723e3c2f6469763e3c6469763ee2809c5765206861766520666f6c6c6f776564206361726566756c6c792074686520737465726c696e6720706572666f726d616e6365206f662074686520636f6d70616e7920696e20746865697220766172696f757320626561747320616e6420746865207175616c697479206f6620746865697220736563757269747920737570706f72742073657276696365732e3c2f6469763e3c6469763e3c62723e3c2f6469763e3c6469763e5765207468657265666f72652c2068617665206e6f20646f7562742074686174206772616475616e6473206f6620746f6461792068617665206265656e20657175697070656420776974682073756368207175616c697469657320617420746869732074696d65206f66206f7572207365766572616c207365637572697479206368616c6c656e6765732ee2809d3c2f6469763e3c6469763e3c62723e3c2f6469763e3c6469763e47726f7570204d616e6167696e67204469726563746f72206f662048616c6f67656e20536563757269747920436f6d70616e79204c696d697465642c204d722e2057616c65204f6c616f796520736169642074686520636f6d70616e79206f766572207468652079656172732068617320636f6e747269627574656420696d6d656e73656c7920746f776172647320646576656c6f70696e67207072697661746520736563757269747920656475636174696f6e20616e64206361706163697479206275696c64696e6720666f72206c6f7720746f206d656469756d20616e6420737472617465676963206c6576656c20706572736f6e6e656c20696e2074686520636f756e7472792e266e6273703b3c2f6469763e3c6469763e266e6273703b266e6273703b3c2f6469763e3c6469763e486520656d7068617369736564207468617420696e20746865206c617374203236207965617273206f6620697473206578697374656e63652c2074686520636f6d70616e79206861766520747261696e65642061626f7574206f6e65206d696c6c696f6e20696e646976696475616c73207468726f7567682069747320766172696f757320747261696e696e672070726f6772616d6d657320616e6420636f6e7472696275746564206d6173736976656c7920746f207265647563696e6720756e656d706c6f796d656e7420696e204e6967657269612e266e6273703b266e6273703b3c2f6469763e3c6469763e3c62723e3c2f6469763e3c6469763e48616c6f67656e20697320746865206669727374204e6967657269616e207072697661746520736563757269747920636f6d70616e7920746f2062652049534f206365727469666965642c2068652068696e7465642e3c2f6469763e, '2018-07-26', 'uploads/News 2.jpg', 'https://guardian.ng/features/lagos-lauds-babcock-academy-halogen-partnership-on-security-studies/', NULL),
(3, 'Security: Group seeks collaboration with police', 'Press Release', 'News', 'Security: Group seeks collaboration with police', 'Security: Group seeks collaboration with police', 0x3c6469763e546865204d616e6167696e67204469726563746f722c2048616c6f67656e20536563757269747920436f6d70616e79204c696d697465642c204d722e2057616c65204f6c616f79652c20616e6420746865204368696566204f7065726174696e67204f6666696365722c2041636164656d792048616c6f67656e2c2044722e2057616c65204164656167626f2c20686176652075726765642074686520706f6c69636520746f20636f6c6c61626f7261746520776974682070726976617465207365637572697479206669726d7320746f20696d70726f766520736563757269747920696e2074686520636f756e7472792e3c2f6469763e3c6469763e3c62723e3c2f6469763e3c6469763e546865792073706f6b65206f6e20546875727364617920647572696e67206120776f726b73686f70207461676765642c20e280984372696d652050726576656e74696f6e20616e6420436f6d6d756e697479205361666574792ce2809920696e2074686520496b656a612061726561206f66204c61676f732e3c2f6469763e3c6469763e3c62723e3c2f6469763e3c6469763e4f6c616f796520736169642074686520706f6c696365206e65656465642074686520737570706f7274206f66207072697661746520736563757269747920636f6d70616e69657320666f72206772656174657220726573756c74732e3c2f6469763e3c6469763e3c62723e3c2f6469763e3c6469763e266e6273703b486520736169642c20e2809c546865204e69676572696120506f6c69636520466f726365206e6565647320746f20696e74656772617465207468652061637469766974696573206f66207072697661746520736563757269747920636f6d70616e69657320696e746f2074686569722073797374656d2e3c2f6469763e3c6469763e3c62723e3c2f6469763e3c6469763e266e6273703be2809c466f7220696e7374616e63652c207468657265206973206e6f776865726520696e2074686520776f726c642074686174206372696d65207363656e65206d616e6167656d656e7420697320656e746972656c79206d616e616765642062792074686520706f6c69636520616c6f6e652e20497420697320646f6e6520776974682074686520737570706f7274206f66206578706572747320696e20646966666572656e742061726561732e20596f752063616e206861766520636f6d70616e6965732074686174206f6666657220666f72656e73696320616e616c79736973206f7220636c65616e207570206372696d65207363656e65732e3c2f6469763e3c6469763e3c62723e3c2f6469763e3c6469763e266e6273703be2809c536f2c207765206172652062656e74206f6e206275696c64696e67206120626f6479206f66206b6e6f776c65646765207468617420657869737473206163726f737320657665727920617265612066726f6d20696e74656c6c6967656e636520746f20696e666f726d6174696f6e20676174686572696e6720616e64206d616e6167656d656e742c20746563686e6f6c6f67792c2074656c656d65747269632c20616d6f6e67206f74686572732c20746f20656e68616e63652074686520776f726b206f662074686520706f6c6963652e3c2f6469763e3c6469763e3c62723e3c2f6469763e3c6469763e266e6273703be2809c57652077696c6c20747261696e206f66666963657273206f6620746865206c617720616e642074686f73652077686f2068617665207265746972656420736f207468617420746865792063616e2062652062726f75676874206261636b20696e746f2074686520707269766174652073656375726974792061726368697465637475726520746f20737570706f727420746865206c6f63616c20706f6c69636520617320707269766174652073656375726974792070726163746974696f6e6572732ee2809d3c2f6469763e3c6469763e3c62723e3c2f6469763e3c6469763e4f6c616f79652075726765642074686520706f6c69636520746f206c65766572616765206f6e2074686520636f6d706574656e6365206f66207072697661746520736563757269747920636f6d70616e69657320746f20656e68616e636520746865697220776f726b206163726f737320646966666572656e742061726561732e3c2f6469763e3c6469763e3c62723e3c2f6469763e3c6469763e4164656167626f20736169642074686520496e73706563746f722d47656e6572616c206f6620506f6c6963652068616420617070726f76656420746861742041636164656d792048616c6f67656e2c20696e20636f6e6a756e6374696f6e207769746820746865204173736f63696174696f6e206f662043657274696669656420466f72656e73696320496e74656c6c6967656e636520616e64204372696d6520416e616c79737420616e64206f74686572732c2073686f756c6420747261696e20616e64206177617264206469706c6f6d612063657274696669636174657320746f207365637572697479206167656e7473206f6e206372696d652070726576656e74696f6e20616e6420636f6d6d756e697479207361666574792e3c2f6469763e3c6469763e3c62723e3c2f6469763e3c6469763e486520736169642c20e2809c5365637572697479206973206265636f6d696e67206120636f6d6d6f64697479206265636175736520697420697320657373656e7469616c2074686174207765206c69766520696e2061207361666520616e642073656375726520656e7669726f6e6d656e742c2077686963682069732077687920746869732070726f6772616d6d6520697320696d706f7274616e742e3c2f6469763e3c6469763e3c62723e3c2f6469763e3c6469763ee2809c43757272656e746c792c207765206861766520617070726f78696d6174656c7920343030206f6666696365727320646f696e67206f6e6c696e6520636f7572736573206f6e2074686573652070726f6772616d6d657320616e642077652070726f76696465206469706c6f6d61206365727469666963617465732c20616476616e6365206469706c6f6d6120616e64204d617374657273206f6620427573696e6573732041646d696e697374726174696f6e20696e207365637572697479206d616e6167656d656e74206173206f7572206261736b6574206f662061636164656d6963207175616c696669636174696f6e20697320696e20706172746e657273686970207769746820426162636f636b20556e69766572736974792ce2809d2068652061646465642e3c2f6469763e3c6469763e3c62723e3c2f6469763e3c6469763e4561726c6965722c2074686520417373697374616e7420496e73706563746f722047656e6572616c206f6620506f6c6963652c205a6f6e6520323b204164616d75204962726168696d2c2077686f2077617320726570726573656e74656420627920417373697374616e7420436f6d6d697373696f6e6572206f6620506f6c6963653b205061747269636b204174617965726f2c2061742074686520776f726b73686f702c2073706f6b65206f6e20e28098436f6e74656d706f72617279204372696d65733a204368616c6c656e67657320616e64205374726174656769657320496d706c656d656e74656420746f20726564756365206372696d652072617465732ee280993c2f6469763e3c6469763e3c62723e3c2f6469763e3c6469763e486520736169642074686520706f6c69636520776173206d616b696e67206566666f72747320746f20696d70726f766520736563757269747920696e2074686520636f756e7472792e3c2f6469763e, '2018-06-29', 'uploads/News 3.jpg', 'https://punchng.com/security-group-seeks-collaboration-with-police/', NULL),
(4, 'Halogen Run University Program Graduates 47 Security Experts', 'Press Release', 'News', 'Halogen Run University Program Graduates 47 Security Experts', 'Halogen Run University Program Graduates 47 Security Experts', 0x3c6469763e3c623e48616c6f67656e2052756e20556e69766572736974792050726f6772616d2047726164756174657320343720536563757269747920457870657274733c2f623e20e2809320546865206d616e6167656d656e74206f662048616c6f67656e20536563757269747920436f6d70616e79204c696d697465642068617320726563656976656420636f6d6d656e646174696f6e732066726f6d204c61676f7320537461746520476f7665726e6d656e7420616e64206b6579207365637572697479207374616b65686f6c64657273206f6e20697473206e756d65726f757320636f6e747269627574696f6e7320746f776172647320646576656c6f70696e67207175616c69747920656475636174696f6e206672616d65776f726b20616e642073747261746567696320736563757269747920706f6c69637920646972656374696f6e20666f72204e696765726961e280997320627573696e65737320656e7669726f6e6d656e742e3c2f6469763e3c6469763e3c62723e3c2f6469763e3c6469763e546865205370656369616c204164766973657220746f2074686520476f7665726e6f72206f66204c61676f73205374617465206f6e20536563757269747920616e6420496e74656c6c6967656e63653b204d722e204164656b756e6c6520416a616e616b752c2077686f2073706f6b652061742048616c6f67656e205363686f6f6c206f66205365637572697479204d616e6167656d656e742026616d703b20546563686e6f6c6f677920284853534d26616d703b5429206d616964656e2067726164756174696f6e20636572656d6f6e79206f66203437204469706c6f6d6120696e205365637572697479204d616e6167656d656e74206772616475617465732c206e6f74656420746861742048616c6f67656e205365637572697479206861732073686f776e20697473656c66206f6e20616c6c2066726f6e747320746f206265206120776f7274687920706172746e65722077697468204c61676f73205374617465206f6e20766172696f7573206566666f7274732061696d6564206174206372656174696e672061207365637572656420627573696e65737320656e7669726f6e6d656e742e3c2f6469763e3c6469763e3c62723e3c2f6469763e3c6469763ee2809c4c6574206d652061636b6e6f776c6564676520746865206c656164696e6720726f6c65206f662048616c6f67656e20536563757269747920696e206f757220536563757269747920536563746f72205265666f726d7320696e204c61676f732053746174652c20706172746963756c61726c7920746865206d61696e73747265616d696e67206f6620746865207072697661746520736563757269747920736563746f7220696e746f206f757220736563757269747920617263686974656374757265e2809d2c20416a616e616b75206e6f7465642e3c2f6469763e3c6469763e3c62723e3c2f6469763e3c6469763e4865206164646564207468617420746865204c61676f7320537461746520476f7665726e6d656e742068617320666f6c6c6f776564206361726566756c6c792074686520737465726c696e6720706572666f726d616e6365206f662048616c6f67656e20536563757269747920696e20746865697220766172696f757320626561747320616e6420746865207175616c697479206f6620746865697220736563757269747920737570706f72742073657276696365732e205765207468657265666f72652c2068617665206e6f20646f7562742074686174206772616475616e6473206f6620746f6461792068617665206265656e20657175697070656420776974682073756368207175616c697469657320617420746869732074696d65206f66206f7572207365766572616c207365637572697479206368616c6c656e6765732e3c2f6469763e3c6469763e3c62723e3c2f6469763e3c6469763e496e20686973206f70656e696e672072656d61726b732c2047726f7570204d616e6167696e67204469726563746f72206f662048616c6f67656e20536563757269747920436f6d70616e79204c696d697465643b204d722e2057616c65204f6c616f79652073747265737365642074686174206f766572207468652079656172732c2048616c6f67656e20536563757269747920436f6d70616e792068617320636f6e747269627574656420696d6d656e73656c7920746f776172647320646576656c6f70696e672061206675747572697374696320736563757269747920656475636174696f6e616c20637572726963756c756d20666f722074686520636f756e7472792e20486520656d70686173697a6564207468617420696e20746865206c617374203235207965617273206f6620697473206578697374656e63652c2074686520636f6d70616e79206d696768742068617665206772616475617465642061626f7574206f6e65206d696c6c696f6e2070656f706c652066726f6d2069747320747261696e696e6720666163696c69746965732e2048616c6f67656e20697320746865206669727374204e6967657269616e207072697661746520736563757269747920636f6d70616e7920746f2062652049534f2063657274696669656420696e20323030372c2068652068696e7465642e3c2f6469763e3c6469763e3c62723e3c2f6469763e3c6469763e3c62723e3c2f6469763e3c6469763e266e6273703b3c2f6469763e3c6469763ee2809c42656361757365206f757220696e64757374727920776173206368616e67696e672c207765207265616c697a656420746861742074686572652077617320616e20757267656e74206e65656420746f2066756c66696c20746865206361706163697479206275696c64696e67206761707320627920646576656c6f70696e672070656f706c6520746f206265636f6d652073656375726974792070726f66657373696f6e616c732e20546869732070726f6772616d6d6520697320696e20706172746e657273686970207769746820426162636f636b20556e697665727369747920616e64206769766573206f75722073747564656e7473206120626c656e64206f66207468656f7265746963616c20747261696e696e6720647572696e672074686569722073747564696573e2809d2c206865206578706c61696e65642e3c2f6469763e3c6469763e3c62723e3c2f6469763e3c6469763e537065616b696e67206f6e20626568616c66206f6620426162636f636b20556e69766572736974792c2050726f666573736f72204d69636861656c204f6e796564696b6163686920416b70612c204465707574792050726f766f73742c20436f6c6c656765206f6620506f737420477261647561746520537475646965732c2073616964206772616475617465732066726f6d2048616c6f67656e205363686f6f6c206f66205365637572697479204d616e6167656d656e742026616d703b20546563686e6f6c6f677920284853534d26616d703b54292073686f756c6420636f756e74207468656d73656c766573206c75636b7920666f72206c6561726e696e672066726f6d2074686520637572726963756c756d206f66206120776f726c6420636c61737320556e697665727369747920616e642061207365637572697479207363686f6f6c2065737461626c697368656420627920616e206f7267616e697a6174696f6e2077686f7365206f7065726174696f6e2069732062656e63686d61726b6564207769746820676c6f62616c2062657374207072616374696365732e20e28098e28099506172746e657273686970206265747765656e20426162636f636b20556e697665727369747920616e642048616c6f67656e2053656375726974792069732061207665727920756e69717565207374657020746f7761726473206275696c64696e6720656e766961626c6520636170616369747920666f722074686520736563757269747920736563746f7220696e204e6967657269612e20416c6c20746865206772616475616e64732073686f756c6420636f756e74207468656d73656c7665732076657279206c75636b79e28099e280992e3c2f6469763e3c6469763e3c62723e3c2f6469763e3c6469763e496e2068697320636f6e747269627574696f6e2c20746865204c61676f7320537461746520436f6d6d616e64616e74206f6620746865204e6967657269616e20536563757269747920616e6420436976696c20446566656e636520436f72707320284e53434443292c204d722e2054616a756465656e2042616c6f67756e206465736372696265642048616c6f67656e20536563757269747920436f6d70616e79e2809973206566666f72747320617320636f6d6d656e6461626c6520616d6f6e677374206f74686572207072697661746520736563757269747920636f6d70616e69657320696e2074686520636f756e7472792e20486520706c6561646564207769746820746865206772616475616e647320746f20686f6c642048616c6f67656e205363686f6f6c206f66205365637572697479204d616e6167656d656e742026616d703b20546563686e6f6c6f6779e2809973207072656d69756d20747261696e696e67207769746820686967682065737465656d20696e20746865697220766172696f757320706c61636573206f662070726163746963652e20e2809c57652077696c6c2062652077696c6c696e6720746f2062652070617274206f662048616c6f67656e205365637572697479206f7065726174696f6e2e205768656e65766572207765206172652063616c6c65642c207765207368616c6c20676c61646c7920686f6e6f7572206974e2809d2c20436f6d6d616e64616e742042616c6f67756e206e6f7465642e3c2f6469763e3c6469763e3c62723e3c2f6469763e3c6469763e435350205665726f6e69636120416b70612c204f6666696365722d496e2d436861726765206f66207468652053746174652d496e7665737469676174696f6e2d4275726561752028534942292c206578707265737365642068617070696e65737320617420746865207175616c697479206f6620736563757269747920706572736f6e6e656c206265696e672070726f64756365642062792048616c6f67656e205363686f6f6c206f66205365637572697479204d616e6167656d656e742026616d703b20546563686e6f6c6f67792e20416b70612c20656e636f75726167656420746865206e65776c7920747261696e6564207365637572697479206578706572747320746f20626520766967696c616e7420616c7761797320617320736563757269747920776f726b206973206d6f72652061626f757420696e74656c6c6967656e636520616e642074686f726f75676820696e73696768742e3c2f6469763e, '2018-07-15', 'uploads/New 4.png', 'https://www.financialwatchngr.com/2018/07/15/halogen-run-university-programme-graduates-47-security-experts/', NULL),
(5, 'Academy Halogen Unveils Brand Identity', 'Press Release', 'News', 'Academy Halogen Unveils Brand Identity', 'Academy Halogen Unveils Brand Identity', 0x3c70207374796c653d22626f782d73697a696e673a20626f726465722d626f783b20666f6e742d66616d696c793a2056657264616e612c2047656e6576612c2073616e732d73657269663b20666f6e742d73697a653a20313670783b206c696e652d6865696768743a20323670783b206d617267696e2d746f703a203070783b206d617267696e2d626f74746f6d3a20323670783b206f766572666c6f772d777261703a20627265616b2d776f72643b20636f6c6f723a207267622833342c2033342c203334293b206261636b67726f756e642d636f6c6f723a20726762283235352c203235352c20323535293b20746578742d616c69676e3a206a7573746966793b223e412073756273696469617279206f662048616c6f67656e2053656375726974792047726f75702c2041636164656d792048616c6f67656e20686173206f6666696369616c6c7920756e7665696c656420697473206e6577206272616e64206964656e7469747920617320616e20696e737469747574696f6e20666f7220636170616369747920646576656c6f706d656e742c2072657365617263682c2074686f75676874206c65616465727368697020616e6420616476616e63656d656e74206f6620656e7465727072697365207365637572697479207269736b206d616e6167656d656e742e3c2f703e3c70207374796c653d22626f782d73697a696e673a20626f726465722d626f783b20666f6e742d66616d696c793a2056657264616e612c2047656e6576612c2073616e732d73657269663b20666f6e742d73697a653a20313670783b206c696e652d6865696768743a20323670783b206d617267696e2d746f703a203070783b206d617267696e2d626f74746f6d3a20323670783b206f766572666c6f772d777261703a20627265616b2d776f72643b20636f6c6f723a207267622833342c2033342c203334293b206261636b67726f756e642d636f6c6f723a20726762283235352c203235352c20323535293b20746578742d616c69676e3a206a7573746966793b223e537065616b696e672061742074686520756e7665696c696e6720636572656d6f6e7920696e204c61676f73207965737465726461792c2074686520496e73706563746f722047656e6572616c206f6620506f6c696365202849475029204962726168696d2049647269732c2077686f2077617320726570726573656e746564206279207468652044657075747920436f6d6d697373696f6e6572206f6620506f6c69636520284f7065726174696f6e73292c204c61676f7320537461746520506f6c69636520436f6d6d616e642c2044435020416c6c69204d7568616d6d65642c20636f6d6d656e646564207468652067726f757020616e642069747320636f2d666163696c69746174696e67206f7267616e69736174696f6e7320666f7220696e6974696174696e67206120747261696e696e672070726f6772616d6d6520746172676574656420617420737472656e677468656e696e6720746865206361706163697479206f662074686520466f7263652e3c2f703e3c70207374796c653d22626f782d73697a696e673a20626f726465722d626f783b20666f6e742d66616d696c793a2056657264616e612c2047656e6576612c2073616e732d73657269663b20666f6e742d73697a653a20313670783b206c696e652d6865696768743a20323670783b206d617267696e2d746f703a203070783b206d617267696e2d626f74746f6d3a20323670783b206f766572666c6f772d777261703a20627265616b2d776f72643b20636f6c6f723a207267622833342c2033342c203334293b206261636b67726f756e642d636f6c6f723a20726762283235352c203235352c20323535293b20746578742d616c69676e3a206a7573746966793b223e486520616c736f206368617267656420746865206772616475616e647320746f206465706c6f7920746865206e65776c79206163717569726564206b6e6f776c6564676520746f20626f6f7374204e6967657269616e20506f6c696365206372696d652070726576656e74696f6e206361706163697479206e6174696f6e776964652e3c2f703e3c70207374796c653d22626f782d73697a696e673a20626f726465722d626f783b20666f6e742d66616d696c793a2056657264616e612c2047656e6576612c2073616e732d73657269663b20666f6e742d73697a653a20313670783b206c696e652d6865696768743a20323670783b206d617267696e2d746f703a203070783b206d617267696e2d626f74746f6d3a20323670783b206f766572666c6f772d777261703a20627265616b2d776f72643b20636f6c6f723a207267622833342c2033342c203334293b206261636b67726f756e642d636f6c6f723a20726762283235352c203235352c20323535293b20746578742d616c69676e3a206a7573746966793b223e48652061646465642c20e2809c4920636f6d6d656e6420746865207465616d206f662061636164656d696369616e7320616e6420666163756c7479206d656d626572732077686f206d616465207468697320747261696e696e672061207265616c6974792e204920656e6a6f696e206f7572206f6666696365727320746f2075736520746865206b6e6f776c65646765206163717569726564206865726520746f7761726473207461636b6c696e6720697373756573206f66206372696d6520616e6420636f6d6d756e6974792073616665747920696e206f757220636f756e747279e28099e280992e3c2f703e3c70207374796c653d22626f782d73697a696e673a20626f726465722d626f783b20666f6e742d66616d696c793a2056657264616e612c2047656e6576612c2073616e732d73657269663b20666f6e742d73697a653a20313670783b206c696e652d6865696768743a20323670783b206d617267696e2d746f703a203070783b206d617267696e2d626f74746f6d3a20323670783b206f766572666c6f772d777261703a20627265616b2d776f72643b20636f6c6f723a207267622833342c2033342c203334293b206261636b67726f756e642d636f6c6f723a20726762283235352c203235352c20323535293b20746578742d616c69676e3a206a7573746966793b223e496e20686973206b65796e6f746520616464726573732c2074686520566963652d4368616e63656c6c6f722c20456c697a61646520556e69766572736974792c2050726f662e205468656f7068696c75732046616461796f6d692c206f62736572766564207468617420736572696573206f662076696f6c656e7420616e6420736f6369616c2064697372757074696f6e73206163726f73732074686520636f756e747279207075742074686520737572766976616c206f662074686520636974697a656e73206174207269736b2e3c2f703e3c70207374796c653d22626f782d73697a696e673a20626f726465722d626f783b20666f6e742d66616d696c793a2056657264616e612c2047656e6576612c2073616e732d73657269663b20666f6e742d73697a653a20313670783b206c696e652d6865696768743a20323670783b206d617267696e2d746f703a203070783b206d617267696e2d626f74746f6d3a20323670783b206f766572666c6f772d777261703a20627265616b2d776f72643b20636f6c6f723a207267622833342c2033342c203334293b206261636b67726f756e642d636f6c6f723a20726762283235352c203235352c20323535293b20746578742d616c69676e3a206a7573746966793b223e4865206e6f7465642074686174207468652032303137206372696d6520696e636964656e6365206d61747269782073686f77696e6720686967682072617465206f66206f6666656e63657320616761696e73742070726f70657274792c20706572736f6e7320616e642061737365747320636f6e6669726d65642074686174207468652070726573656e7420706f6c6963696e67207374726174656779206e6565647320746f206265207265766973697465642e3c2f703e3c70207374796c653d22626f782d73697a696e673a20626f726465722d626f783b20666f6e742d66616d696c793a2056657264616e612c2047656e6576612c2073616e732d73657269663b20666f6e742d73697a653a20313670783b206c696e652d6865696768743a20323670783b206d617267696e2d746f703a203070783b206d617267696e2d626f74746f6d3a20323670783b206f766572666c6f772d777261703a20627265616b2d776f72643b20636f6c6f723a207267622833342c2033342c203334293b206261636b67726f756e642d636f6c6f723a20726762283235352c203235352c20323535293b20746578742d616c69676e3a206a7573746966793b223e48652073616964207468697320776f756c6420656e737572652074686174206372696d6520696e636964656e636573206172652072656475636564207769746820696e636c75736976656e657373206f662074686520636f6d6d756e69747920616e64206f74686572207374616b65686f6c646572732e3c2f703e3c70207374796c653d22626f782d73697a696e673a20626f726465722d626f783b20666f6e742d66616d696c793a2056657264616e612c2047656e6576612c2073616e732d73657269663b20666f6e742d73697a653a20313670783b206c696e652d6865696768743a20323670783b206d617267696e2d746f703a203070783b206d617267696e2d626f74746f6d3a20323670783b206f766572666c6f772d777261703a20627265616b2d776f72643b20636f6c6f723a207267622833342c2033342c203334293b206261636b67726f756e642d636f6c6f723a20726762283235352c203235352c20323535293b20746578742d616c69676e3a206a7573746966793b223e46616461796f6d6920686f77657665722c20657870726573736564206f7074696d69736d2074686174207468657365206973737565732068617665206265656e2070726f7065726c792061646472657373656420756e646572207468652070726f66657373696f6e616c20657865637574697665206469706c6f6d612070726f6772616d6d652e3c2f703e3c70207374796c653d22626f782d73697a696e673a20626f726465722d626f783b20666f6e742d66616d696c793a2056657264616e612c2047656e6576612c2073616e732d73657269663b20666f6e742d73697a653a20313670783b206c696e652d6865696768743a20323670783b206d617267696e2d746f703a203070783b206d617267696e2d626f74746f6d3a20323670783b206f766572666c6f772d777261703a20627265616b2d776f72643b20636f6c6f723a207267622833342c2033342c203334293b206261636b67726f756e642d636f6c6f723a20726762283235352c203235352c20323535293b20746578742d616c69676e3a206a7573746966793b223ee2809c4974206973206f75722066657276656e7420686f70652074686174207468697320747261696e696e672077696c6c206d616b65206120646966666572656e636520746f20746865207374617475732071756f2c20617320776520696e74656e6420746f20656e67616765206c617720656e666f7263656d656e74206f6666696365727320696e20686967686572206c6576656c73206f6620736563757269747920747261696e696e67206576656e20617420706f73742d6772616475617465206c6576656c732c20696e206f7264657220746f206275696c642061206e65772063726f70206f66206f6666696365727320776974682074686520636170616369747920666f7220666f72656e73696320696e74656c6c6967656e63652c206372696d6520616e616c7973697320616e6420696e7665737469676174696f6e2ce2809d206865206578706c61696e65642e3c2f703e3c70207374796c653d22626f782d73697a696e673a20626f726465722d626f783b20666f6e742d66616d696c793a2056657264616e612c2047656e6576612c2073616e732d73657269663b20666f6e742d73697a653a20313670783b206c696e652d6865696768743a20323670783b206d617267696e2d746f703a203070783b206d617267696e2d626f74746f6d3a20323670783b206f766572666c6f772d777261703a20627265616b2d776f72643b20636f6c6f723a207267622833342c2033342c203334293b206261636b67726f756e642d636f6c6f723a20726762283235352c203235352c20323535293b20746578742d616c69676e3a206a7573746966793b223e496e206869732072656d61726b732c207468652047726f7570204d616e6167696e67204469726563746f72206f662048616c6f67656e20536563757269747920436f6d70616e79204c696d697465642c204d722e2057616c65204f6c616f79652c20636f6d6d656e64656420746865206c656164657273686970206f662074686520666f72636520666f7220616c6c6f77696e6720697473206d656e20746f20626520747261696e656420666f72207468652070726f66657373696f6e616c20656e68616e63656d656e742070726f6772616d6d652e3c2f703e3c70207374796c653d22626f782d73697a696e673a20626f726465722d626f783b20666f6e742d66616d696c793a2056657264616e612c2047656e6576612c2073616e732d73657269663b20666f6e742d73697a653a20313670783b206c696e652d6865696768743a20323670783b206d617267696e2d746f703a203070783b206d617267696e2d626f74746f6d3a20323670783b206f766572666c6f772d777261703a20627265616b2d776f72643b20636f6c6f723a207267622833342c2033342c203334293b206261636b67726f756e642d636f6c6f723a20726762283235352c203235352c20323535293b20746578742d616c69676e3a206a7573746966793b223ee2809c54686973206973207468652074797065206f662067726561742073756363657373207769746e6573736564207768656e207072697661746520616e64207075626c696320736563746f7220636f6c6c61626f72617465732ce2809d20686520736169642e3c2f703e3c70207374796c653d22626f782d73697a696e673a20626f726465722d626f783b20666f6e742d66616d696c793a2056657264616e612c2047656e6576612c2073616e732d73657269663b20666f6e742d73697a653a20313670783b206c696e652d6865696768743a20323670783b206d617267696e2d746f703a203070783b206d617267696e2d626f74746f6d3a20323670783b206f766572666c6f772d777261703a20627265616b2d776f72643b20636f6c6f723a207267622833342c2033342c203334293b206261636b67726f756e642d636f6c6f723a20726762283235352c203235352c20323535293b20746578742d616c69676e3a206a7573746966793b223e4f6c616f7965206368617267656420746865206772616475616e647320746f206465706c6f79207468656972206e65776c79206163717569726564206b6e6f776c6564676520666f7220696d706163742c206e6f74696e672074686174207468657920617265207365656473207468617420776f756c64206765726d696e61746520746f206265636f6d6520636174616c7973747320666f72206368616e67652e3c2f703e3c70207374796c653d22626f782d73697a696e673a20626f726465722d626f783b20666f6e742d66616d696c793a2056657264616e612c2047656e6576612c2073616e732d73657269663b20666f6e742d73697a653a20313670783b206c696e652d6865696768743a20323670783b206d617267696e2d746f703a203070783b206d617267696e2d626f74746f6d3a20323670783b206f766572666c6f772d777261703a20627265616b2d776f72643b20636f6c6f723a207267622833342c2033342c203334293b206261636b67726f756e642d636f6c6f723a20726762283235352c203235352c20323535293b20746578742d616c69676e3a206a7573746966793b223e3c62723e3c2f703e, '2018-09-15', 'uploads/News 3.jpg ', 'https://www.thisdaylive.com/index.php/2018/09/19/academy-halogen-unveils-brand-identity/', NULL),
(6, 'Academy Halogen sparks conversation for improved forensic practice in Nigeria ', 'Press Release', 'News', 'forensic practice and security', 'forensic practice and security', 0x496d70726f76656420666f72656e736963206578706572746973652c207468652065737461626c6973686d656e74206f66206d6f6465726e206c61626f7261746f7269657320616e6420636f6c6c61626f726174696f6e20746f2073657420757020612050616e2d4e69676572696120696e64757374727920626f647920666f72207374616e64617264697a6174696f6e206f6620666f72656e736963207072616374696365207765726520736f6d65206f662074686520686967686c696768747320617420612074686f75676874206c65616465727368697020776f726b73686f70206265747765656e20666f72656e736963206578706572747320616e64207072697661746520736563757269747920636f6d70616e69657320686f73746564206279203c623e41636164656d792048616c6f67656e2c2074686520656475636174696f6e616c2061726d206f6620746865206c656164696e67207365637572697479207269736b20636f6e676c6f6d6572617465202d48616c6f67656e2047726f75702e3c2f623e266e6273703b3c6469763e3c62723e3c6469763e5374616b65686f6c646572732077686f20696e636c75646520666f72656e73696320616e616c797374732066726f6d20746865204e6967657269616e20506f6c6963652c20666f72656e73696320736369656e74697374732c204c696e6775697374696320666f72656e736963207370656369616c697374732c206a6f75726e616c697374732c20707269766174652073656375726974792070726163746974696f6e65727320616e64206d656d62657273206f6620746865207075626c696320756e616e696d6f75736c7920616772656564207468617420666f72656e73696320736369656e6365206973206765726d616e6520746f207265736f6c76696e67206372696d6573207468726f7567682074686f726f75676820696e7665737469676174696f6e20746f2064657465726d696e6520746f75676820697373756573207375636820617320636175736573206f662064656174682c2073757370656374e2809973206964656e74696669636174696f6e2c2066696e64696e67206d697373696e6720706572736f6e7320616e64206372696d696e616c2070726f66696c696e672065746365746572612e20537065616b696e672061742074686520776f726b73686f702c2044722e2057616c65204164656167626f2c204368696566204f7065726174696e67204f666669636572206f662041636164656d792048616c6f67656e206e6f746564207468617420e2809c5468697320776f726b73686f702069732070617274206f66207468652041636164656d79e28099732074686f75676874206c65616465727368697020616e6420706f6c696379206164766f636163792061696d6564206174207461636b6c696e67206d616a6f72206869636375707320757375616c6c7920656e636f756e746572656420696e207468652076616c756520636861696e206f6620656e7465727072697365207365637572697479207269736b20657370656369616c6c792074686f736520616666656374696e6720666f72656e73696320707261637469636520696e204e6967657269612e205468697320706c6174666f726d2070726f7669646573206120756e697175652061746d6f73706865726520746f206578706c6f726520686f7720746865207072697661746520736563757269747920696e6475737472792063616e206472697665206361706163697479206275696c64696e6720696e207468652061726561206f6620666f72656e73696320736369656e636520746f20626574746572206c6576657261676520656d657267696e67206f70706f7274756e697469657320696e20666f72656e73696320707261637469636520736964652062792073696465207769746820686f7720676f7665726e6d656e7420706f6c696369657320696d70616374206f6e2074686520707261637469636520696e204e696765726961e2809d2e3c2f6469763e3c6469763e3c62723e3c2f6469763e3c6469763e4d732e20417672696c20457965777520456465726f2c206120666f72656e73696320736369656e7469737420616e6420612070616e656c6973742061742074686520776f726b73686f70207361696420e2809c6d6f7265207468616e20616e79206f746865722074696d652c2074686572652069732061206e65656420666f7220726f62757374207072697661746520736563757269747920696e64757374727920636f6c6c61626f726174696f6e20776974682074686520676f7665726e6d656e7420616e64206f74686572207374616b65686f6c6465727320746f2074616b6520666f72656e73696320707261637469636520746f206120776f726c642d636c617373206c6576656c20696e204e6967657269612e20536865206578706c61696e65642074686174207765206e6f77206861766520612067726f77696e6720706f70756c6174696f6e206f6620636974697a656e732c2077686f20617265206177617265206f662074686520696d706f7274616e6365206f6620666f72656e73696320696e7665737469676174696f6e7320616e642074686579206172652077696c6c696e6720746f2070617920666f72207375636820616e616c79736973e2809d20417672696c206368616c6c656e676564207072697661746520736563757269747920636f6d70616e69657320616e64206f7267616e697a6174696f6e73206c696b652041636164656d792048616c6f67656e20746f206578706c6f726520706f73736962696c6974696573206f6620696e76657374696e6720696e2070757474696e67207570206120626566697474696e6720666f72656e736963206c61626f7261746f727920696e2074686520636f756e7472792e20e2809c4e6967657269616e20636974697a656e7320617265206265636f6d696e672076657279206177617265206f6620666f72656e7369632073657276696365732c2070656f706c65206172652064656d616e64696e6720666f7220666f72656e7369637320616e616c7973697320616e642061206c6f74206f66207468656d2061726520726561647920746f2070617920666f72207468652073657276696365732e205468697320697320616e2061726561207072697661746520736563757269747920696e6475737472792063616e2074616b6520616476616e74616765206f662e20546865792063616e206275696c6420746865697220666f72656e736963206c61626f7261746f72792c206765742070656f706c652070726f7065726c7920747261696e656420616e642070656f706c652077696c6c2070617920666f72206974e2809d2e266e6273703b3c2f6469763e3c6469763e3c62723e3c2f6469763e3c6469763e466f72636520666f72656e736963206578706572742c204e69676572696120506f6c69636520466f72636520284e5046292c204d722e2053616d75656c204f64657920636f6d6d656e6465642041636164656d792048616c6f67656e20666f722069676e6974696e672069737375657320616e6420706572737065637469766573206f6e20746865207072616374696365206f6620666f72656e73696320696e204e6967657269612e2048652063616c6c656420666f72207374616b65686f6c64657220656475636174696f6e206f6e20666f72656e7369632070726163746963652c206e6f74696e672074686174206372696d65207363656e6520696e7665737469676174696f6e20697320616e20696d706f7274616e7420617370656374206f6620666f72656e73696320616e616c797369732e20e2809c4372696d65207363656e6520696e7665737469676174696f6e206973206120766974616c2070617274206f6620666f72656e73696320696e7665737469676174696f6e732e204f6e20612073696e676c65206372696d65207363656e652c20796f752077696c6c2062652061626c6520746f2073656520323020646966666572656e7420706965636573206f662065766964656e63652c20616e64207468657365207477656e74792065766964656e6365206d6179207265717569726520646966666572656e74206578706572747320746f20616e616c797a65207468656d2e20466f7220696e7374616e63652c207175657374696f6e20646f63756d656e742c206469676974616c2065766964656e63652c20706174686f6c6f676963616c2065766964656e636520616e6420612077686f6c65206c6f74206f66206f746865722065766964656e63652e20417420616c6c2074696d65732c20746865207363656e65206d7573742072656d61696e20756e636f6e74616d696e6174656420666f722070726f70657220616e616c79736973e2809d2e2044722e2044656d6f6c61204c657769732c20616e2041636164656d696320616e642061206c696e6775697374696320666f72656e7369632065787065727420686164206561726c69657220636f72726f626f726174656420746865206e65656420666f7220636f6e636572746564206566666f727473206265747765656e20746865207072697661746520736563757269747920696e64757374727920616e6420666f72656e7369632070726163746974696f6e65727320746f206472697665207374616e646172647320696e20746865204e6967657269616e20666f72656e73696320736369656e63657320736563746f722e204865206e6f746564207468617420e2809c666f72656e736963207072616374696365206973206265796f6e64207573696e6720736369656e636520616c6f6e6520746f20736f6c7665206372696d65732e20497420696e766f6c766573206368656d69737472792c20706879736963732c2070737963686f6c6f677920616e64206d6f72652e205765206e656564206d6f726520636f6c6c61626f726174696f6e20746f20757067726164652074686520707261637469636520746f20616e20656e766961626c65206c6576656ce2809d2e20537065616b696e67206f6e2074686520706c616365206f6620746865206a756469636961727920696e20746865206170706c69636174696f6e206f6620666f72656e7369632065766964656e636520746f206f627461696e206a7573746963652c266e6273703b3c2f6469763e3c6469763e3c62723e3c2f6469763e3c6469763e4d727320e28098546f6d6920416a6179692061206c6567616c2070726163746974696f6e657220616e6420726573656172636865722c20736169642074686572652061726520736f206d616e7920666163746f72732074686174206d75737420626520696e20706c61636520666f7220666f72656e7369632065766964656e636520746f2062652061636365707461626c6520696e20636f7572742e20e2809c466f72656e7369632065766964656e6365206d75737420636f6d65207769746820636f6d6d6f6e2073656e73652c206974206d7573742062652070726573656e74656420696e2073696d706c6520616e6420636c656172206c616e67756167652c206974206d757374206265206572726f722d667265652c20616e64207468657265206d757374206e6f7420626520636f6e666c696374696e67206d65646963616c206f70696e696f6e20616d6f6e677374206d616e79206f7468657220766974616c20706f696e7473e2809d2e266e6273703b3c2f6469763e3c6469763e3c62723e3c2f6469763e3c6469763e496e2068657220636c6f73696e672072656d61726b2061742074686520776f726b73686f702c204d72732e204e656c6c6965204f6e77756368656b77612c2061207269736b206173736573736d656e7420616e64206261636b67726f756e6420636865636b20657870657274206164766f636174656420666f7220636f6c6c61626f726174696f6e206265747765656e206c61777965727320616e642074686520706f6c69636520696e207468652061646d696e697374726174696f6e206f6620666f72656e7369632065766964656e636520696e20636f7572742e20e2809c49207468696e6b206c6177796572732073686f756c6420627261636520757020746f206c6561726e206d6f72652061626f757420666f72656e736963732c2074686579206e65656420746f2068617665206d6f726520636f6c6c61626f726174696f6e207769746820706f6c69636520666f72656e736963732e20546869732c20697320666f7220757320746f206861766520617070726f707269617465206372696d696e616c206a75737469636520726573756c7473e2809d205374616b65686f6c6465727320756e616e696d6f75736c7920656e636f7572616765642041636164656d792048616c6f67656e20746f206368616d70696f6e20746865206269727468206f6620612072656c6961626c6520756d6272656c6c6120726567756c61746f727920626f647920666f7220666f72656e73696320707261637469636520696e204e6967657269612e3c2f6469763e3c2f6469763e, '2019-10-29', 'uploads/dr.jpg', 'https://www.vanguardngr.com/2019/10/academy-halogen-sparks-conversation-for-improved-forensic-practice-in-nigeria/', NULL),
(7, 'Academy Halogen tasks security professionals', 'Press Release', 'News', 'Academy Halogen tasks security professionals', 'Academy Halogen tasks security professionals', 0x3c7020636c6173733d224d736f4e6f726d616c223e48616c6f67656e2047726f7570e2809973205363686f6f6c206f66205365637572697479204d616e6167656d656e7420616e6420546563686e6f6c6f67792c0d0a41636164656d792048616c6f67656e2c206861732063616c6c6564206f6e2070726f66657373696f6e616c7320696e204e696765726961e280997320707269766174652073656375726974790d0a736563746f7220746f20646576656c6f70206469676974616c20736b696c6c7320616e642061207269736b206162736f7262696e67206d696e6473657420746f2062652066697420666f72207468650d0a656d657267696e67206368616c6c656e676573206f662074686520706f73742d6469676974616c2065636f6e6f6d792e3c6f3a703e3c2f6f3a703e3c2f703e0d0a0d0a3c7020636c6173733d224d736f4e6f726d616c223e3c6f3a703e266e6273703b3c2f6f3a703e3c2f703e0d0a0d0a3c7020636c6173733d224d736f4e6f726d616c223e546865204368696566204f7065726174696e67204f666669636572206f66207468652061636164656d792c2044722057616c65204164656167626f2c0d0a6d616465207468652063616c6c207768696c652064656c69766572696e6720746865206c656164206c656374757265207469746c65642c20e2809c496d706c656d656e74696e67207468650d0a656e7465727072697365207365637572697479207269736b206d616e6167656d656e742070726f6772616d6d652ce2809d20617420746865203132746820616e6e75616c20696e647573747269616c0d0a73656375726974792073756d6d6974206f6620746865204e6967657269616e20496e7374697475746520666f7220496e647573747269616c20536563757269747920696e204c61676f732e3c6f3a703e3c2f6f3a703e3c2f703e0d0a0d0a3c7020636c6173733d224d736f4e6f726d616c223e3c6f3a703e266e6273703b3c2f6f3a703e3c2f703e0d0a0d0a3c7020636c6173733d224d736f4e6f726d616c223e4164656167626f20736169642c20e2809c4974206973206e6f206c6f6e676572206e6577732074686174206f6c6420736b696c6c7320646f6ee28099740d0a77696e2061206e65772067616d653b2074686520676c6f62616c20627573696e6573732065636f73797374656d206973206368616e67696e672e205765206d7573742072657468696e6b206f75720d0a617070726f61636820746f20646f696e6720736563757269747920627573696e6573732e20536563757269747920616e642069747320646566696e6974696f6e20617265206368616e67696e670d0a7065722067656f67726170686963616c206c6f636174696f6e2ee2809d3c7370616e207374796c653d226d736f2d737061636572756e3a796573223e266e6273703b203c2f7370616e3ee2809c5468657265666f72652c0d0a61732073656375726974792070726f66657373696f6e616c73206f6620746865206675747572652c207765206d757374206265206177617265206f662074686520656d657267696e670d0a656e7465727072697365207365637572697479207269736b73206173736f63696174656420776974682074686520706f73742d6469676974616c2065636f6e6f6d792e205468650d0a656d657267696e672065636f6e6f6d792064656d616e64732065787472656d6520637265617469766974792e20427573696e657373206973207472616e73666f726d696e6720776974680d0a637573746f6d69736174696f6e20616e6420646967697469736174696f6e2e20496e657175616c69747920697320756e6c6561736865642e20546865206469766964657320616c6f6e670d0a6c696e6573206f66206167652c20726567696f6e2c20616e6420636c6173732061726520726973696e67207769746820646973747265737365732077697468696e2064656d6f6372617469630d0a7370616365732ee2809d3c6f3a703e3c2f6f3a703e3c2f703e0d0a0d0a3c7020636c6173733d224d736f4e6f726d616c223e3c6f3a703e266e6273703b3c2f6f3a703e3c2f703e0d0a0d0a3c7020636c6173733d224d736f4e6f726d616c223e4561726c6965722c2074686520507265736964656e74206f6620746865204e6967657269616e20496e7374697475746520666f720d0a496e647573747269616c2053656375726974792c20416c68616a69204973612053616c616d692c207361696420736563757269747920657870657274732061726520696e2074686520657261206f660d0a746563686e6f6c6f676963616c2064697372757074696f6e20616e642063616e206e6f206c6f6e676572206c6f6f6b20617761792066726f6d206b6e6f776c656467652e3c6f3a703e3c2f6f3a703e3c2f703e0d0a0d0a3c7020636c6173733d224d736f4e6f726d616c223e3c6f3a703e266e6273703b3c2f6f3a703e3c2f703e0d0a0d0a3c7020636c6173733d224d736f4e6f726d616c223ee2809c41732073656375726974792070726f66657373696f6e616c732c2074686973206973207468652074696d6520746f206c6561726e206e65770d0a736b696c6c7320616e6420746f2061646f7074206e657720746f6f6c7320746f20646f206f757220776f726b2ce2809d2053616c616d692061646465642e3c6f3a703e3c2f6f3a703e3c2f703e, '2019-11-17', 'uploads/New 4.png', 'https://punchng.com/academy-halogen-tasks-security-professionals/', NULL);
INSERT INTO `news_page` (`id`, `title`, `mp_title`, `category`, `keyword`, `banner_text`, `content`, `date`, `banner_url`, `ext_link`, `link`) VALUES
(8, '500 security operatives graduate from Academy Halogen', 'Press Release', 'News', 'security operatives ', '500 security operatives graduate from Academy Halogen', 0x3c6469763e466976652068756e6472656420736563757269747920706572736f6e6e656c20726563656e746c7920636f6d706c65746564206120636f75727365206f66207374756479206174207468652041636164656d792048616c6f67656e2c20612073756273696469617279206f662048616c6f67656e2053656375726974792047726f757020616e64207468657920676f742063657274696669656420696e207365637572697479206d616e6167656d656e742e3c2f6469763e3c6469763e3c62723e3c2f6469763e3c6469763e537065616b696e67206174207468652067726164756174696f6e2c207468652047726f7570204d616e6167696e67204469726563746f722c2048616c6f67656e20536563757269747920436f6d70616e79204c696d697465642c204d722057616c65204f6c616f79652c207572676564207468652067726164756174696e6720736563757269747920706572736f6e6e656c20746f20736565207468656972206e65776c79206163717569726564206b6e6f776c6564676520617320616e20696d706574757320746f206164642076616c756520746f2074686520736563757269747920656e74657270726973652073706163652c20776869636820746f64617920e2809c69732064726976656e206d6f726520627920696e6e6f76617469766520696465617320616e6420696e74656c6c6967656e63652c20616e20696e74656772616c2070617274206f66207468656972206a75737420636f6d706c6574656420737475646965732ee2809d3c2f6469763e3c6469763e3c62723e3c2f6469763e3c6469763e3c62723e3c2f6469763e3c6469763e266e6273703b3c2f6469763e3c6469763e4f6c616f79652077686f2077617320726570726573656e74656420627920746865204368696566204f7065726174696e67204f666669636572206f662041636164656d792048616c6f67656e2c2044722057616c65204164656167626f2c20617420746865206d616964656e2067726164756174696f6e2c206e6f746564207468617420746865206e65772067726164756174657320616e64206f74686572204e6967657269616e20796f757468732073686f756c6420626520726561647920746f2061637175697265206e657720736b696c6c7320746f2062652066697474656420696e746f2074686520656d657267696e6720676c6f62616c206b6e6f776c656467652065636f6e6f6d792e3c2f6469763e3c6469763e3c62723e3c2f6469763e3c6469763e4865207461736b6564204e6967657269616e20796f7574687320746f20656d6272616365206e6577206b6e6f776c656467652c20706172746963756c61726c7920696e207365637572697479207374756469657320746f206b65657020706163652077697468207468652066617374206368616e67696e67206e6174757265206f662074686520656e7669726f6e6d656e74207765206c69766520696e2e3c2f6469763e3c6469763e3c62723e3c2f6469763e3c6469763e486520736169642c20e2809c54686520667574757265206973206865726520616c726561647920616e64206f6e6c792074686f73652077686f206861766520726571756973697465206b6e6f776c656467652077696c6c2062652066697420666f722074686520656d657267696e67206b6e6f776c656467652065636f6e6f6d7920696e206f757220636f756e74727920616e642074686520776f726c642e20466f72207468697320726561736f6e2c2049206368616c6c656e676520616c6c206f6620796f7520616e64206f74686572206d696c6c696f6e73206f66204e6967657269616e20796f75746873206f757420746865726520746f20636f6e74696e756f75736c79207365656b206e6577206b6e6f776c6564676520696e207468656972206669656c6420616e64206576656e206265796f6e642e3c2f6469763e3c6469763e3c62723e3c2f6469763e3c6469763ee2809c4f757220736f6369657479206973206368616e67696e6720616e6420746865206b6e6f776c65646765206f662073746179696e6720696e2069742069732066617374206368616e67696e672061732077656c6c2e204b6e6f776c65646765206973206368616e67696e6720696e207465726d73206f662069747320666f726d2c2070726f63657373206f6620616371756972696e6720697420616e642074686520776179207765207573652069742e2049207468657265666f726520656e636f757261676520796f75206e6f7420746f2072657374206f6e20796f7572206f617273206279206c6f6f6b696e6720666f72206f70706f7274756e697469657320746f2067726f7720796f757220736b696c6c7320696e20736563757269747920656e746572707269736520616e6420746563686e6f6c6f67792ee2809d3c2f6469763e3c6469763e3c62723e3c2f6469763e3c6469763e4f6c616f796520667572746865722061646d6f6e697368656420746865206772616475616e647320746f20736565207468656972206e65776c79206163717569726564206b6e6f776c6564676520617320616e20696d706574757320746f206164642076616c756520746f2074686520736563757269747920656e74657270726973652073706163652c20e2809c776869636820746f6461792069732064726976656e206d6f726520627920696e6e6f76617469766520696465617320616e6420696e74656c6c6967656e63652c20616e20696e74656772616c2070617274206f66207468656972206a75737420636f6d706c6574656420737475646965732ee2809d3c2f6469763e3c6469763e3c62723e3c2f6469763e3c6469763e537065616b696e67206f6e20746865207175616c697479206f6620746865204349534d2061636164656d69632070726f6772616d6d652c204469726563746f722c20426162636f636b2043656e74726520666f722045786563757469766520456475636174696f6e2c2050726f6620456777616b6865204a6f686e736f6e2c2077686f20726570726573656e746564207468652056696365202d4368616e63656c6c6f72206f6620426162636f636b20556e69766572736974792c20496c6973616e2d52656d6f2c2050726f66204164656d6f6c61205461796f2c20636f6d6d656e64656420746865206772616475616e647320666f722073686f77696e672074656e616369747920616e642070617373696f6e20746f206c6561726e207468726f7567686f7574207468652070726f6772616d6d652e3c2f6469763e, '2019-04-24', 'uploads/security progamme.jpg', 'https://punchng.com/500-security-operatives-graduate-from-academy-halogen/', NULL),
(9, 'Halogen Group Promises Digital Solutions To Security Threats', 'Press Release', 'Videos', 'Halogen Group Promises Digital Solutions To Security Threats', 'Halogen Group Promises Digital Solutions To Security Threats', '', '2019-07-07', 'uploads/2491563378212.jpg', 'http://www.example.com', 'https://www.youtube.com/watch?v=qsmgDZOrhc4&feature=youtu.be'),
(10, 'Security and Traffic Gridlock in Nigeria', 'Press Release', 'Videos', 'Security and Traffic Gridlock in Nigeria', 'Security and Traffic Gridlock in Nigeria', '', '2020-12-11', 'uploads/Vid.jpg', 'http://www.example.com', 'https://www.youtube.com/watch?v=uHRu_7doSts');

-- --------------------------------------------------------

--
-- Table structure for table `photo_gallery`
--

CREATE TABLE `photo_gallery` (
  `id` int(50) NOT NULL,
  `title` varchar(200) NOT NULL,
  `content` blob NOT NULL,
  `image_url` varchar(200) NOT NULL,
  `album_id` varchar(200) NOT NULL,
  `album_cover` varchar(200) NOT NULL,
  `ext_link` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `photo_gallery`
--

INSERT INTO `photo_gallery` (`id`, `title`, `content`, `image_url`, `album_id`, `album_cover`, `ext_link`) VALUES
(4, 'Facility 4', '', 'Facility 4.jpg', '2', '', 'http://academyhalogen.com'),
(3, 'Facility 3', '', 'Facility 3.jpg', '2', '', 'http://academyhalogen.com'),
(38, 'facility5', '', 'facility5.JPG', '2', '', ''),
(12, 'Facility 12', '', 'Facility 12.jpg', '2', '', 'http://academyhalogen.com'),
(13, 'Facility 13', '', 'Facility 13.jpg', '2', '', 'http://academyhalogen.com'),
(14, 'Facility 14', '', 'Facility 14.jpg', '2', '', 'http://academyhalogen.com'),
(19, 'Facility 19', '', 'Facility 19.jpg', '2', '', 'http://academyhalogen.com'),
(20, 'Facility 20', '', 'Facility 20.jpg', '2', '', 'http://academyhalogen.com'),
(25, 'Facility 25', '', 'Facility 25.jpg', '2', '', 'http://academyhalogen.com');

-- --------------------------------------------------------

--
-- Table structure for table `policy`
--

CREATE TABLE `policy` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `policy` varchar(255) NOT NULL,
  `date` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `policy`
--

INSERT INTO `policy` (`id`, `title`, `policy`, `date`) VALUES
(1, 'State-of-the-Nation-JULY-2018', 'State-of-the-Nation-JULY-2018.pdf', '2018-09-13'),
(4, 'Digitizing Nigeria - October 2018', 'Digitizing Nigeria - October 2018.pdf', '2019-01-08'),
(5, 'Election 2019: Managing Enterprise Security Risks - December 2018', 'Election 2019: Managing Enterprise Security Risks - December 2018.pdf', '2019-01-08');

-- --------------------------------------------------------

--
-- Table structure for table `programs`
--

CREATE TABLE `programs` (
  `id` int(50) NOT NULL,
  `title` varchar(200) DEFAULT NULL,
  `mp_title` varchar(200) DEFAULT NULL,
  `keyword` varchar(200) DEFAULT NULL,
  `banner_text` varchar(200) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `banner_url` varchar(200) DEFAULT NULL,
  `ext_link` varchar(200) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `programs`
--

INSERT INTO `programs` (`id`, `title`, `mp_title`, `keyword`, `banner_text`, `content`, `banner_url`, `ext_link`) VALUES
(1, 'Senior Management Programs [SMP]', 'School of Security Management', '', NULL, 'Our Senior Management Program is a bouquet of specialized competencies designed and tailored to meet the business needs of Business and Industry Leaders, Chief Executives, Directors, Top Management, and Senior Executives within the corporate ladder.&nbsp;<div><br></div><div>The SMP is a set of programs designed for every decision-maker who sits in a strategic role. It covers an array of specialized programs specially focused to deliver overall strategic and enterprise objectives</div><div><br></div>', 'uploads/Senior Management Programme.jpg', 'yes'),
(2, 'Executive Development Programs [EDP]', 'School of Security Management', '', NULL, 'Our Executive is a bouquet of specialized competencies designed for professionals across different professional cadres and levels withing an organization. It is focused on skills needed to drive change, shape culture, sharpen corporate thinking skills and attitude and provide the participants with evolving competencies that have been identified to be the driving force behind the fortune 100 companies', 'uploads/p2.jpg', ''),
(3, 'Soft Skills & Executive Development programs', 'School of Security Management', '', NULL, 'Our bouquet of soft skills is a bouquet of over 66 programs tailored across multiple soft skills competencies that captures the essence of all areas of personal development and organizational development needs for employees. The program makes use of a blended learning style and can be tailored to fit your organizational demands â€“ online or Instructor-Led Training.<div><br></div>', 'uploads/Soft Skills.jpg', 'yes'),
(7, 'Cybersecurity Programs', 'School of Security Technology', '', NULL, 'Our cybersecurity programs are a bouquet of programs that covers a vast array of cybersecurity-related programs that demonstrably meets the training needs of anyone who is seeking to learn what the cybersecurity space entails. Our bouquet of programs is tailored to meet your needs at whatever level â€“ Beginners, intermediate or expert level and can be tailored as per organizational needs/demands.', 'uploads/Cyber Photo.jpg', 'yes'),
(8, 'Technical Skills (Computer Appreciation Skills)', 'School of Security Technology', '', NULL, 'Our technical skills/Computer appreciation skills are programs designed to bridge the technical skills gap in information technology. It ranges from computer-based applications and softwareâ€™s to basic hardware training skills for beginners&nbsp;', 'uploads/skill.jpg', 'yes'),
(9, 'Programming and Software Development', 'School of Security Technology', '', NULL, 'At our school of security technology, we are known for developing solutions that address your Business needs.', 'uploads/Progamme.jpg', 'yes'),
(10, 'Cybersecurity HUB', 'School of Security Technology', '', NULL, '<div class=\"container-fluid home-content1\"><div class=\"row\"><div class=\"col-md-6 content1-left\"><p>Academy Halogen is an institution that demonstrably shapes the agenda for risk management and security practice across the industryâ€™s value chain.</p><br><h5>Eligibility Criteria</h5><div><br></div><li>Anyone in Nigeria above the age of 13</li><li>Prior programming experience is not required</li><li>An ability to commit 10+ hours per week from March to May 2021</li><li>Have reliable access to a laptop</li><li>Have a strong passion for technology</li><h5><br></h5></div><div class=\"col-md-6 content1-right\"><h5>About Cyber Security HUB<br><br></h5><div>Cyber Security HUB is a Bootcamp to groom members intensively in becoming Cyber Security Experts and Software Developers.</div><div><br></div><h5>Upcoming Programs</h5><div><br></div><div><div>Cyber Security HUB Batch 1 2021</div><div>Join as a Learner:&nbsp; https://cutt.ly/aj7RPhk</div></div><div><br></div><br></div></div></div>', 'uploads/cybersecurity.jpg', 'yes'),
(11, 'Cybersecurity Internship', 'School of Security Technology', '', NULL, '<div class=\"container-fluid home-main\"><div class=\"row\"><div class=\"col-md-3\"></div><div class=\"col-md-6\"><p>The programme is a flagship initiative of Academy Halogen &amp; Armour X Halogen. The aim of this programme is to recruit young graduates and take them through a 3 monthsâ€™ internship programme.<br><br>During the Programme, interns will work on live cases of Cyber Security and develop solutions. Interns will also attend seminars &amp; workshops while undergoing internship.</p></div><div class=\"col-md-3\"></div></div><br></div><div class=\"container-fluid home-content1\" style=\"margin-top:-34px;\"><div class=\"row\"><div class=\"col-md-3\"></div><div class=\"col-md-6 content1-left\"><h5>BENEFITS</h5><li>An understanding and application of Cyber Security Solutions.</li><li>Learn to develop cyber solutions and products.</li><li>Appreciation of how a business works and operates, through immersion in Enterprise Security Risk Management.</li><br><br><h5>TRAINEE SPECIFICATION</h5><li>Vibrant, self-driven and passionate about continuous learning.</li><li>Must have a minimum of five Oâ€™ level credits (including English &amp; Mathematics).</li><li>A university graduate with a minimum of second class (Lower Division).</li><li>HND graduates can apply if they meet the requirements above.</li><li>About to complete or must have completed the National Youth Service Corps (NYSC) Scheme.</li><li>Interested in developing a career in Cyber Security.</li><li>Maximum 25 places available.</li><li>Successful candidates will be sponsored for the internship programme by Armour X Halogen.</li><li>Opportunity for job placement.</li><p></p></div><div class=\"col-md-3\"></div></div></div>', 'uploads/Intern.jpg', 'yes'),
(4, 'MBA in Security Management', 'School of Security Management', '', NULL, '<div class=\"container-fluid home-main\"><h2>The uniqueness of this MBA program</h2><br>The FIRST and ONLY accredited MBA in Security Management in West Africa.<br>The learning approach is a strategic integration of theories and practice<br>Participants acquire essential leadership and managerial skills in Enterprise Security Risk Management.	</div><div class=\"container-fluid\"><div class=\"container\"><div class=\"row\"><div class=\"col-md-4 jumbotron\" style=\"background:#fafafa;color:#000;border-radius: 140px 140px 140px 140px;\"><h3>Learning Methods</h3><br>Delivery is HYBRID - (Classroom + Online)<br>Flexible learning within your convenient100% practice-based approach </div><div class=\"col-md-4 jumbotron\" Â =\"\" style=\"background:#fff;color:#000\"><h3>Course Duration</h3><br>4 semesters over an 18-month period<br>Flexible payment options </div><div class=\"col-md-4 jumbotron\" Â =\"\" style=\"background:#fff;color:#000;border-radius: 140px 140px 140px 140px;\"><h3>Cost</h3><br>N500,000.00 (Excluding Non-Refundable Registration Fee: N50k) </div></div></div></div><div class=\"container-fluid home-content1\" style=\"margin-top:-34px;\"><div class=\"row\"><div class=\"col-md-6 content1-left\"><h3>Benefits of the MBA Program<span class=\"blinker\">?</span></h3><br><p>Learners belong to an exclusive global alumni/network of security experts<br><br>Career Push â€“ with recommendations to Top 10 Security brands<br><br>Increased earning potential and career advancement<br><br>Nomination into the Fellowship of Enterprise Security Risk Management<br><br>Profiling as a graduand<br><br>Publishing of revenant chapter(s) of the final dissertation as contributions to practice in the fastest growing security intelligence series in Nigeria<br><br>Admission into the Kilimanjaro group â€“ an exclusive think tank in security policy and practice</p></div><div class=\"col-md-6 content1-right\"><p></p><h5>Some Course Content Overview</h5><br>Financial Accounting<br>Marketing Management<br>Human Resources Management<br>Managerial Economic<br>Research Methods<br><br><h5>Practice-Based Professional Modules</h5><br>Forensic and Crime Analysis<br>Critical thinking and Intelligence Analysis<br>Management of private Security<br>Corrupt Practices &amp; Financial crime<br>Criminal Investigations &amp; Profiling<br>Forecasting Terrorism<p></p><br><br><h5>The MBA program is exclusively for managers, officers, and leaders in the security sectors - private and public.</h5></div></div></div>', 'uploads/mba sec.jpg', 'yes'),
(5, 'Academic Qualifications in Security Management', 'School of Security Management', '', NULL, '<div>Our security and risk education with training and certification is in partnership and certified by BABCOCK University offering varied Academic Degrees in the areas below:</div><div><br></div><div>1.<span style=\"white-space:pre\">	</span>Certificate in Security Management</div><div>2.<span style=\"white-space:pre\">	</span>Diploma in Security Management</div><div>3.<span style=\"white-space:pre\">	</span>Advanced Diploma in Security Management</div><div><br></div>', 'uploads/Academy.jpg', 'yes'),
(6, 'International Management Programs [IMP]', 'School of Security Management', '', NULL, '<br>', 'uploads/p6.jpg', '');

-- --------------------------------------------------------

--
-- Table structure for table `prospect`
--

CREATE TABLE `prospect` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `course` varchar(255) DEFAULT NULL,
  `organization` varchar(255) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `date` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prospect`
--

INSERT INTO `prospect` (`id`, `name`, `email`, `phone`, `course`, `organization`, `position`, `date`) VALUES
(1, 'Emmanuel Oduola', 'femi@pollsandcomments.com', '08089438520', 'PERSONAL BRANDING', NULL, NULL, '2018-09-01'),
(2, '', '', '', '', NULL, NULL, '2018-10-06'),
(3, 'balogun samuel', 'balogun samuel', '07014945955', 'CCTV + Control Room (International Cert. with HABC, UK)', NULL, NULL, '2018-10-06'),
(4, 'balogun samuel', 'balosammy@Gmail.com', '07014945955', 'DIPLOMA IN CYBERSECURITY TECHNOLOGY', NULL, NULL, '2018-10-06'),
(5, 'balogun samuel', 'balosammy@Gmail.com', '07014945955', 'CCTV + Control Room (International Cert. with HABC, UK)', NULL, NULL, '2018-10-06'),
(6, '', '', '', '', NULL, NULL, '2018-10-08'),
(7, 'Peter Kolade', 'peter@webcoupers.com', '8170079629', 'FORM (FUNDAMENTALS OF RISK MANAGEMENT)', NULL, NULL, '2018-10-09'),
(8, 'Peter Kolade', 'peter@webcoupers.com', '8170079629', 'RISK CHAMPIONS', NULL, NULL, '2018-10-09'),
(9, '', '', '', '', NULL, NULL, '2018-10-09'),
(10, '', '', '', '', NULL, NULL, '2018-10-09'),
(11, '', '', '', '', NULL, NULL, '2018-10-09'),
(12, '', '', '', '', NULL, NULL, '2018-10-11'),
(13, '', '', '', '', NULL, NULL, '2018-10-12'),
(14, '', '', '', '', NULL, NULL, '2018-10-13'),
(15, '', '', '', '', NULL, NULL, '2018-10-15'),
(16, '', '', '', '', NULL, NULL, '2018-10-16'),
(17, '', '', '', '', NULL, NULL, '2018-10-18'),
(18, '', '', '', '', NULL, NULL, '2018-10-20'),
(19, 'wale OLAOYE', 'wale.olaoye@halogensecurity.com', '7030000038', 'PRACTICAL RISK APPETITE AND TOLERANCE', NULL, NULL, '2018-10-23'),
(20, 'wale OLAOYE', 'wale.olaoye@halogensecurity.com', '7030000038', 'NANODEGREE IN CYBERSECURITY POLICY', NULL, NULL, '2018-10-23'),
(21, 'chikezie', 'chikezie2life@gmail.com', '08178872737', 'DIPLOMA IN CYBERSECURITY IN INTELLIGENCE & DIGITAL FORENSICS', NULL, NULL, '2018-11-14'),
(22, 'Abiola', 'allenlattrayabiola@gmail.com', '09094787870', 'Understanding Crime Prevention & Community Safety', NULL, NULL, '2018-12-10'),
(23, 'James chidi', 'james_chidi2011@yahoo.com', '08166617412g', 'CCTV + Control Room (International Cert. with HABC, UK)', NULL, NULL, '2019-03-07'),
(24, '', '', '', '', NULL, NULL, '2019-04-12'),
(25, '', '', '', '', NULL, NULL, '2019-04-14'),
(26, '', '', '', '', NULL, NULL, '2019-04-15'),
(27, '', '', '', '', NULL, NULL, '2019-04-17'),
(28, '', '', '', '', NULL, NULL, '2019-04-23'),
(29, '', '', '', '', NULL, NULL, '2019-04-24'),
(30, '', '', '', '', NULL, NULL, '2019-04-25'),
(31, '', '', '', '', NULL, NULL, '2019-04-27'),
(32, '', '', '', '', NULL, NULL, '2019-04-28'),
(33, '', '', '', '', NULL, NULL, '2019-04-30'),
(34, '', '', '', '', NULL, NULL, '2019-05-02'),
(35, '', '', '', '', NULL, NULL, '2019-05-03'),
(36, '', '', '', '', NULL, NULL, '2019-05-04'),
(37, '', '', '', '', NULL, NULL, '2019-05-05'),
(38, '', '', '', '', NULL, NULL, '2019-05-07'),
(39, '', '', '', '', NULL, NULL, '2019-05-07'),
(40, '', '', '', '', NULL, NULL, '2019-05-07'),
(41, '', '', '', '', NULL, NULL, '2019-05-13'),
(42, '', '', '', '', NULL, NULL, '2019-05-14'),
(43, '', '', '', '', NULL, NULL, '2019-05-18'),
(44, '', '', '', '', NULL, NULL, '2019-05-20'),
(45, '', '', '', '', NULL, NULL, '2019-05-24'),
(46, '', '', '', '', NULL, NULL, '2019-05-31'),
(47, '', '', '', '', NULL, NULL, '2019-06-02'),
(48, '', '', '', '', NULL, NULL, '2019-06-03'),
(49, '', '', '', '', NULL, NULL, '2019-06-05'),
(50, '', '', '', '', NULL, NULL, '2019-06-06'),
(51, '', '', '', '', NULL, NULL, '2019-06-06'),
(52, '', '', '', '', NULL, NULL, '2019-06-07'),
(53, '', '', '', '', NULL, NULL, '2019-06-16'),
(54, '', '', '', '', NULL, NULL, '2019-06-18'),
(55, '', '', '', '', NULL, NULL, '2019-06-18'),
(56, '', '', '', '', NULL, NULL, '2019-06-20'),
(57, '', '', '', '', NULL, NULL, '2019-06-22'),
(58, '', '', '', '', NULL, NULL, '2019-06-24'),
(59, '', '', '', '', NULL, NULL, '2019-06-24'),
(60, '', '', '', '', NULL, NULL, '2019-06-29'),
(61, '', '', '', '', NULL, NULL, '2019-06-30'),
(62, '', '', '', '', NULL, NULL, '2019-07-04'),
(63, '', '', '', '', NULL, NULL, '2019-07-06'),
(64, '', '', '', '', NULL, NULL, '2019-07-06'),
(65, '', '', '', '', NULL, NULL, '2019-07-11'),
(66, '', '', '', '', NULL, NULL, '2019-07-12'),
(67, '', '', '', '', NULL, NULL, '2019-07-12'),
(68, 'Uleh Brain Sunday', 'ulehsunnybrain@gmail.com', '08051004445', 'CCTV + Control Room (International Cert. with HABC, UK)', NULL, NULL, '2019-07-12'),
(69, '', '', '', '', NULL, NULL, '2019-07-14'),
(70, '', '', '', '', NULL, NULL, '2019-07-16'),
(71, 'Joseph Babatunde Ogunsetire', 'jogunsetire975@gmail.com', '+2348105712580', 'CERTIFICATE IN CYBERSECURITY INTELLIGENCE & DIGITAL FORENSICS', NULL, NULL, '2019-07-18'),
(72, '', '', '', '', NULL, NULL, '2019-07-20'),
(73, '', '', '', '', NULL, NULL, '2019-07-20'),
(74, 'peter damilare', 'peterdamilare007@gmail.com', '08083792316', 'RISK MANAGEMENT FOR SECURITY', NULL, NULL, '2019-07-21'),
(75, '', '', '', '', NULL, NULL, '2019-07-22'),
(76, '', '', '', '', NULL, NULL, '2019-07-24'),
(77, 'OBULOR KINGSLEY', 'obulorkingsley@gmail.com', '07039033482', 'Professional MBA in Security Management', NULL, NULL, '2019-07-25'),
(78, 'Abayomi ogunde', 'otaobayomi201032@yahoo.com', '07062677540', 'Advanced Diploma in Security Management', NULL, NULL, '2019-07-28'),
(79, '', '', '', '', NULL, NULL, '2019-07-31'),
(80, 'JUBRIL TOLANI  QUDUS', 'jubriltolani12@gmail.com', '08084839926', 'Close Protection (International Cert. with HABC, UK)', NULL, NULL, '2019-08-02'),
(81, 'ZUBAIRU BUBA', 'zbuba36@gmail.com', '08024529272', 'Professional MBA in Security Management', NULL, NULL, '2019-08-05'),
(82, 'Udoka Aniekan Mbioh', 'udokaaniekan@gmail.com', '07054321648', 'Certificate in Security Management', NULL, NULL, '2019-08-05'),
(83, 'Ijegbulem udochukwu Solomon', 'ijegbulemsolomon@gmail.com', '08176065875', 'DIPLOMA IN CYBERSECURITY TECHNOLOGY', NULL, NULL, '2019-08-05'),
(84, 'Udoka Aniekan Mbioh', 'udokaaniekan@gmail.com', '07054321648', 'Certificate in Security Management', NULL, NULL, '2019-08-05'),
(85, 'Ebieme bassey ', '', '07031204549', 'Diploma in Security Management', NULL, NULL, '2019-08-06'),
(86, 'Udeh', 'udehandu@gmail.com ', '07050800888', 'Diploma in Security Management', NULL, NULL, '2019-08-06'),
(87, '', '', '', '', NULL, NULL, '2019-08-07'),
(88, '', '', '', '', NULL, NULL, '2019-08-07'),
(89, 'Auwal Muhammad ibrahim', 'auwalmohammedibrahim@gmail.com', '07068151304', 'DIPLOMA IN CYBERSECURITY IN INTELLIGENCE & DIGITAL FORENSICS', NULL, NULL, '2019-08-07'),
(90, 'BULA HENRY', 'hnrbula@gmail.com', '07039657213', 'Diploma in Security Management', NULL, NULL, '2019-08-07'),
(91, 'Julfa nanjulJu kpargang ', 'Freedomnanjul@gmail.com', '07036307159', 'CCTV + Control Room (International Cert. with HABC, UK)', NULL, NULL, '2019-08-07'),
(92, 'Julfa nanjul kpargang ', 'Freedomnanjul@gmail.com', '07036307159', 'CERTIFICATE IN CYBERSECURITY POLICY', NULL, NULL, '2019-08-07'),
(93, 'Salamatu duya', 'Salamatuduya@yahoo.com', ' 07030702513', 'Diploma in Security Management', NULL, NULL, '2019-08-07'),
(94, 'Stephen Obrikogho ', 'steveunderscott10@ymail.com ', '08072629072', 'Advanced Diploma in Security Management', NULL, NULL, '2019-08-08'),
(95, 'ADAMU ADAMU YARIMA ', 'adamuyarima392@gmail.com', '07067630658', 'Certificate in Security Management', NULL, NULL, '2019-08-08'),
(96, 'ADAMU ADAMU YARIMA ', 'adamuyarima392@gmail.com', '07067630658', 'INTRODUCTION TO SECURITY', NULL, NULL, '2019-08-08'),
(97, 'Ajayi Matthew Abiodun.', 'Zyroqworld@yahoo.com', '08121521299', 'Professional MBA in Security Management', NULL, NULL, '2019-08-08'),
(98, 'Faith oluwatosin Akadi', 'pearloseka172016@gmail.com', '07039063913', 'Advanced Diploma in Security Management', NULL, NULL, '2019-08-08'),
(99, 'Zuby Eze-Ike', 'zdjoson25@yahoo.co.uk', '07064837741', 'Professional MBA in Security Management', NULL, NULL, '2019-08-08'),
(100, 'David oyediran Samuel', 'Davidsam653@gmail.com', '08060862974', 'Diploma  in Security Management', NULL, NULL, '2019-08-09'),
(101, 'FALADE SOLOMON ADEYEMI ', 'faladesolomona@gmail.com', '08162081197', 'Certificate in Security Management', NULL, NULL, '2019-08-09'),
(102, 'Habuzaidi Idris', 'abuzaididris1236@gmail.com', '08105476517', 'Diploma in Security Management', NULL, NULL, '2019-08-10'),
(103, 'Umar aliyu Abdullahi ', 'umaraliyuabdullahi83 ', '+2349099995714', 'Professional MBA in Security Management', NULL, NULL, '2019-08-11'),
(104, 'Henry Ameh', 'henry.ameh@nimc.gov.ng henryame4@gmail.com', '07036377407', 'Professional MBA Forensic', NULL, NULL, '2019-08-11'),
(105, 'Elisha Ileanwa Okolo ', 'okoloelisha@yahoo.com ', '08053877230', 'Professional MBA in Security Management', NULL, NULL, '2019-08-14'),
(106, 'Ajuwon Oluwafemi Emmanuel', 'femzyfemite@gmail.com', '08060754175', 'CERTIFICATE IN CYBERSECURITY MANAGEMENT', NULL, NULL, '2019-08-14'),
(107, 'Ajuwon Oluwafemi Emmanuel', 'femzyfemite@gmail.com', '08060754175', 'DIPLOMA IN CYBERSECURITY TECHNOLOGY', NULL, NULL, '2019-08-14'),
(108, 'Ajuwon Oluwafemi Emmanuel', 'femzyfemite@gmail.com', '08060754175', 'NANODEGREE IN CYBERSECURITY TECHNOLOGY', NULL, NULL, '2019-08-14'),
(109, 'Kennedy ', 'Kenn.martins@yahoo.com ', '+2348033406678', 'Professional MBA in Security Management', NULL, NULL, '2019-08-14'),
(110, 'Yusuf', 'yuxufabio14@yahoo.com', '07060421455', 'INTRODUCTION TO SECURITY TECHNOLOGY', NULL, NULL, '2019-08-14'),
(111, 'Ajuwon Oluwafemi Emmanuel', 'femzyfemite@gmail.com', '08060754175', 'NANODEGREE IN CYBERSECURITY TECHNOLOGY', NULL, NULL, '2019-08-14'),
(112, 'Ope', 'oshifekoopeoluwa@gmail.com', '08033779935', 'DIPLOMA IN CYBERSECURITY TECHNOLOGY', NULL, NULL, '2019-08-14'),
(113, 'Ameh oche Emmanuel', 'emmygreat56@gmail.com', '08083797825', 'CERTIFICATE IN CYBERSECURITY TECHNOLOGY', NULL, NULL, '2019-08-15'),
(114, 'Ogunleye Oluwakorede', 'oluwakorede.ogunleye@gmail.com', '09082559054', 'INTRODUCTION TO SECURITY TECHNOLOGY', NULL, NULL, '2019-08-15'),
(115, 'Ogunleye Oluwakorede', 'oluwakorede.ogunleye@gmail.com', '09082559054', 'CERTIFICATE IN CYBERSECURITY TECHNOLOGY', NULL, NULL, '2019-08-15'),
(116, 'Mohammed Bello Kasimu', 'mbkasimu@gmail.com', '+2348036763589', 'Advanced Diploma in Security Management', NULL, NULL, '2019-08-16'),
(117, 'Akintilo Akinshola', 'Sholaakintilo@gmail.com', '08094456204', 'Professional MBA in Security Management', NULL, NULL, '2019-08-16'),
(118, 'Olorunshola Oluwaseun', 'seunnzy90@gmail.com', '+2348096267825', 'Certificate in Security Management', NULL, NULL, '2019-08-16'),
(119, 'Babawale orungbamila ', 'Babawale.absolute@gmail.com', '08145958920', 'Professional MBA in Security Management', NULL, NULL, '2019-08-16'),
(120, 'Olorunshola Oluwaseun', 'seunnzy90@gmail.com', '+2348145137155', 'Professional MBA in Security Management', NULL, NULL, '2019-08-17'),
(121, 'Taiwo Adesanya ', 'timpsin@gtimpsin@gmail.com', '07051515909', 'Advanced Diploma in Security Management', NULL, NULL, '2019-08-17'),
(122, 'Abiola Obelawo ', 'bobelawo@gmail.com', '07030271137', 'Professional MBA in Security Management', NULL, NULL, '2019-08-17'),
(123, 'Olamide Okunoye l', 'Olamide.okunoye@yahoo.com', '08053920484', 'Professional MBA in Security Management', NULL, NULL, '2019-08-17'),
(124, 'Shehu yahaya', 'sypariya@gmail.com', '08036211244', 'Certificate in Security Management', NULL, NULL, '2019-08-17'),
(125, 'Grace Chinenye Chijioke Okereke ', 'Emeraldchinenye@gmail.com', '07062795898', 'Advanced Diploma in Security Management', NULL, NULL, '2019-08-17'),
(126, 'GIDEON FARINTO', 'gideon.farinto@gmail.com', '08036600060', 'Diploma in Security Management', NULL, NULL, '2019-08-17'),
(127, 'Adebayo Emmanuel', 'Korewolu@gmail.com', '8100451994', 'Professional MBA in Security Management', NULL, NULL, '2019-08-17'),
(128, 'Kefas Etiku Francis ', 'kefasetikufrancis@gmail.com ', '08102839482 ', 'Diploma in Security Management', NULL, NULL, '2019-08-18'),
(129, 'KIGHO OROBOSA', 'kighoorobosa@yahoo.com', '2348067630177', 'CERTIFICATE IN CYBERSECURITY INTELLIGENCE & DIGITAL FORENSICS', NULL, NULL, '2019-08-19'),
(130, 'Prince kalu', 'Princeumez33@yahoo.com', '08146779127', 'Diploma in Security Management', NULL, NULL, '2019-08-19'),
(131, 'Kokume John', 'kokumejohn@gmail.com', '07033139998', 'CCTV + Control Room (International Cert. with HABC, UK)', NULL, NULL, '2019-08-19'),
(132, 'GODSWILL BENJAMIN', 'benjizee@gmail.com', '08158040877', 'Diploma in Security Management', NULL, NULL, '2019-08-20'),
(133, 'Yakubu Luka', 'yabiutluka@gmail.com', '08133533285', 'Diploma in Security Management', NULL, NULL, '2019-08-20'),
(134, 'Musa Olayinka', 'msolayinka2@gmail.com', '07054921136', 'Certificate in Security Management', NULL, NULL, '2019-08-20'),
(135, 'Adeagbo Adeniyi ', 'Adeagboadeniyi@yahoo.com ', '08035905578', 'Professional MBA in Security Management', NULL, NULL, '2019-08-21'),
(136, 'Bamidele olaniyan ', 'bamideleolaniyan42@gmail.com', '08052640782', 'Certificate in Security Management', NULL, NULL, '2019-08-21'),
(137, 'Samuel Ejenobi ', '91B,  Adeniyi Jones Ikeja Lagos', '08130773009', 'Diploma in Security Management', NULL, NULL, '2019-08-21'),
(138, 'Yusuf Adams Adebayo ', 'adebayoadams30@gmail.com', '08080818346', 'Professional MBA in Security Management', NULL, NULL, '2019-08-22'),
(139, 'Babawale ', 'Babawale.absolute@gmail.com', '08145958920', 'Certificate in Security Management', NULL, NULL, '2019-08-22'),
(140, 'David ', 'davidwealthdavid@gmail.com ', '+234 8030467774', 'Professional MBA in Security Management', NULL, NULL, '2019-08-22'),
(141, 'Ugah divine ugwumusinachi ', 'Ugwumusinachi@gmail.com ', '08063106580', 'Professional MBA risk management ', NULL, NULL, '2019-08-23'),
(142, 'Zaharadeen Garba', 'microintelligent103@gmail.com', '08139135940', 'Certificate in Security Management', NULL, NULL, '2019-08-24'),
(143, 'Jonah Amodu Yakubu', 'ochofiejones@gmail.com', '+2348064344577', 'Certificate in Security Management', NULL, NULL, '2019-08-24'),
(144, 'Abel Roarli E', 'abelroseline2@gmail.com', '08060168956', 'Professional MBA in Security Management', NULL, NULL, '2019-08-25'),
(145, 'Akintilo Akinshola', 'Sholaakintilo@gmail.com', '08094456204', 'Professional MBA in Security Management', NULL, NULL, '2019-08-25'),
(146, 'Ayuba Bala', 'ayubabaladakoko@gmail.com', '07083884963', 'Certificate in Security Management', NULL, NULL, '2019-08-25'),
(147, 'Joshua AKINBANJO', 'akinbanjo.joshua@gmail.com ', '+2348121193081', 'Professional MBA in Security Management', NULL, NULL, '2019-08-25'),
(148, 'Joshua AKINBANJO', 'akinbanjo.joshua@gmail.com ', '+2348121193081', 'Professional MBA in Security Management', NULL, NULL, '2019-08-25'),
(149, 'Stephane nguessi', 'Stephane4ril@gmail.com', '07058265002', 'Professional MBA in Security Management', NULL, NULL, '2019-08-25'),
(150, 'Stephane nguessi', 'Stephane4ril@gmail.com', '07058265002', 'Professional MBA in Security Management', NULL, NULL, '2019-08-25'),
(151, 'Udoka Aniekan Mbioh', 'udokaaniekan@gmail.com', '07054321648', 'Certificate in Security Management', NULL, NULL, '2019-08-26'),
(152, 'Coker Busayo', 'coker.busayo@gmail.com', '+2348060453762', 'Professional MBA in Security Management', NULL, NULL, '2019-08-26'),
(153, 'Owhorji Isaac Chimene', 'Isaacchimene30@gmail.com', '08138270424', 'Certificate in Security Management', NULL, NULL, '2019-08-26'),
(154, 'Olubode seun tayo', 'burger5billion@gmail.com', '08166664603', 'Certificate in Security mangement', NULL, NULL, '2019-08-27'),
(155, 'Samson Jayeola ', 'profjaye@yahoo.com ', '07034247821', 'Professional MBA in Security Management', NULL, NULL, '2019-08-28'),
(156, 'jdsckks/,cx/.,c/', 'kmfc.m.,cxm.,cx@ymail.com', '09088564763', 'DIPLOMA IN CYBERSECURITY MANAGEMENT', NULL, NULL, '2019-08-28'),
(157, '', '', '', '', NULL, NULL, '2019-08-29'),
(158, 'samson', 'samsonogoh@gmail.com', '08100068623', 'DIPLOMA IN CYBERSECURITY IN INTELLIGENCE & DIGITAL FORENSICS', NULL, NULL, '2019-08-30'),
(159, '', '', '', '', NULL, NULL, '2019-09-02'),
(160, 'Richard', 'ogidi.richard@gmail.com', '8035436136', 'NANODEGREE IN CYBERSECURITY IN INTELLIGENCE & DIGITAL FORENSICS', NULL, NULL, '2019-09-03'),
(161, 'akara onyekachi', 'onyekachiakara@gmail.com', '08068819620', 'Certificate in Security Management', NULL, NULL, '2019-09-03'),
(162, '', '', '', '', NULL, NULL, '2019-09-03'),
(163, 'Adegunju Joshua Opeyemi', 'ayomideopeyemi453@gmail.com', '08103324457', 'INTRODUCTION TO SECURITY', NULL, NULL, '2019-09-03'),
(164, 'ONIYIDE Olumide ', 'Oniyideolumide@gmail.com', '08064409732', 'Advanced Diploma in Security Management', NULL, NULL, '2019-09-03'),
(165, 'slks alkja', 'bobcratchett@scroo.net', '2123456789', 'FORM (FUNDAMENTALS OF RISK MANAGEMENT)', NULL, NULL, '2019-09-04'),
(166, '', '', '', '', NULL, NULL, '2019-09-06'),
(167, '', '', '', '', NULL, NULL, '2019-09-06'),
(168, '', '', '', 'NANODEGREE IN CYBERSECURITY POLICY', NULL, NULL, '2019-09-10'),
(169, 'Osakwe favour', 'Breezywilliams60@gmail.com', '09081581948', 'INTRODUCTION TO SECURITY', NULL, NULL, '2019-09-12'),
(170, 'Isaac Edet', '', '09016536065', 'INTRODUCTION TO SECURITY', NULL, NULL, '2019-09-18'),
(171, 'Isaac edet', '', '09016536065', 'Understanding Crime Prevention & Community Safety', NULL, NULL, '2019-09-18'),
(172, 'dare samuel', 'samnise2018@gmail.com', '07062862840', 'RISK CHAMPIONS', NULL, NULL, '2019-09-19'),
(173, 'dare samuel', 'samnise2018@gmail.com', '07062862840', 'Understanding Crime Prevention & Community Safety', NULL, NULL, '2019-09-19'),
(174, 'Arulogun dare samuel', 'samnise2018@gmail.com', '07062862840', 'DIPLOMA IN CYBERSECURITY TECHNOLOGY', NULL, NULL, '2019-09-19'),
(175, 'Richard', 'amplifiedgls@gmail.com', '8126959897', 'PERSONAL AND FAMILY SECURITY', NULL, NULL, '2019-09-19'),
(176, '', '', '', '', NULL, NULL, '2019-09-19'),
(177, 'Christian Odemite Obamina', 'christianobas@yahoo.com', '+2348050422300', 'NANODEGREE IN CYBERSECURITY MANAGEMENT', NULL, NULL, '2019-09-20'),
(178, 'Christian Odemite Obamina', 'christianobas@yahoo.com', '+2348050422300', 'NANODEGREE IN CYBERSECURITY IN INTELLIGENCE & DIGITAL FORENSICS', NULL, NULL, '2019-09-20'),
(179, '', '', '', '', NULL, NULL, '2019-09-20'),
(180, '', '', '', '', NULL, NULL, '2019-09-21'),
(181, '', '', '', '', NULL, NULL, '2019-09-22'),
(182, '', '', '', '', NULL, NULL, '2019-09-24'),
(183, 'Busayo COKER', 'coker.busayo@gmail.com', '8060453762', 'NANODEGREE IN CYBERSECURITY IN INTELLIGENCE & DIGITAL FORENSICS', NULL, NULL, '2019-09-24'),
(184, 'Busayo COKER', 'coker.busayo@gmail.com', '8060453762', 'NANODEGREE IN CYBERSECURITY TECHNOLOGY', NULL, NULL, '2019-09-24'),
(185, '', '', '', '', NULL, NULL, '2019-09-26'),
(186, 'Temitope Adebajo', 'topeadebajo@gmail.com', '08055758828', 'INTRODUCTION TO SECURITY TECHNOLOGY', NULL, NULL, '2019-09-27'),
(187, 'Ali Habibat Oluwafolakemi', 'mailelkanem@gmail.com', '08157180111', 'FORM (FUNDAMENTALS OF RISK MANAGEMENT)', NULL, NULL, '2019-09-30'),
(188, '', '', '', '', NULL, NULL, '2019-09-30'),
(189, '', '', '', '', NULL, NULL, '2019-09-30'),
(190, 'Ali Habibat Oluwafolakemi', 'mailelkanem@gmail.com', '08157180111', 'CCTV + Control Room (International Cert. with HABC, UK)', NULL, NULL, '2019-09-30'),
(191, 'ebitukemi Deinsah', 'yinwari@gmail', '08142622279', 'Close Protection (International Cert. with HABC, UK)', NULL, NULL, '2019-10-01'),
(192, '', '', '', '', NULL, NULL, '2019-10-01'),
(193, '', '', '', '', NULL, NULL, '2019-10-02'),
(194, '', '', '', '', NULL, NULL, '2019-10-06'),
(195, '', '', '', '', NULL, NULL, '2019-10-06'),
(196, '', '', '', '', NULL, NULL, '2019-10-06'),
(197, '', '', '', '', NULL, NULL, '2019-10-06'),
(198, '', '', '', '', NULL, NULL, '2019-10-08'),
(199, '', '', '', '', NULL, NULL, '2019-10-08'),
(200, 'Olugbodi okasunkanmi', 'sunkanmiking4000@yahoo.com', '08067157230', 'INTRODUCTION TO SECURITY', NULL, NULL, '2019-10-09'),
(201, 'Temitope Balogun', 'temitope.lanase@courtevillegroup.com', '08036200876', 'BASIC SECURITY AWARENESS TRAINING', NULL, NULL, '2019-10-10'),
(202, 'Temitope Balogun', 'temitope.lanase@courtevillegroup.com', '08036200876', 'CORPORATE INVESTIGATION AND REPORTING', NULL, NULL, '2019-10-10'),
(203, '', '', '', '', NULL, NULL, '2019-10-11'),
(204, '', '', '', '', NULL, NULL, '2019-10-14'),
(205, 'Agboola Taiwo Oluwafemi', 'agboolafemi25@gmail.com', '08148873151', 'DIPLOMA IN CYBERSECURITY POLICY', NULL, NULL, '2019-10-14'),
(206, 'Agboola Taiwo Oluwafemi', 'agboolafemi25@gmail.com', '08148873151', 'INTRODUCTION TO SECURITY', NULL, NULL, '2019-10-14'),
(207, '', '', '', '', NULL, NULL, '2019-10-17'),
(208, '', '', '', '', NULL, NULL, '2019-10-18'),
(209, '', '', '', '', NULL, NULL, '2019-10-18'),
(210, '', '', '', '', NULL, NULL, '2019-10-20'),
(211, '', '', '', '', NULL, NULL, '2019-10-23'),
(212, '', '', '', '', NULL, NULL, '2019-10-24'),
(213, '', '', '', '', NULL, NULL, '2019-10-26'),
(214, '', '', '', '', NULL, NULL, '2019-10-28'),
(215, 'Tolulope Adedayo', 'adedayotolu01@gmail.com', '09067397002', 'Advanced Diploma in Security Management', NULL, NULL, '2019-10-31'),
(216, 'Adedayo Tolulope', 'adedayotolu01@gmail.com', '09067397002', 'Diploma in Security Management', NULL, NULL, '2019-10-31'),
(217, 'Olusayo Emmanuel OMOLE', 'bigpikin@gmail.com', '08032000075', 'FORM (FUNDAMENTALS OF RISK MANAGEMENT)', NULL, NULL, '2019-10-31'),
(218, 'Olusayo Emmanuel OMOLE', 'bigpikin@gmail.com', '08032000075', 'COMPSTAT', NULL, NULL, '2019-10-31'),
(219, '', '', '', '', NULL, NULL, '2019-11-01'),
(220, '', '', '', '', NULL, NULL, '2019-11-02'),
(221, 'Okoro Nnamdi ikechukwu', 'nidok2002@yahoo.com', '07032361072', 'DIPLOMA IN CYBERSECURITY IN INTELLIGENCE & DIGITAL FORENSICS', NULL, NULL, '2019-11-04'),
(222, '', '', '', '', NULL, NULL, '2019-11-05'),
(223, '', '', '', '', NULL, NULL, '2019-11-05'),
(224, '', '', '', '', NULL, NULL, '2019-11-08'),
(225, 'Alao Jerry Rufai', 'Jralao32@gmail.com', '08023783669', 'CERTIFICATE IN CYBERSECURITY MANAGEMENT', NULL, NULL, '2019-11-09'),
(226, 'Alao Jerry Rufai ', 'distinctinnovation@zoho.eu', '08023783669', 'INTRODUCTION TO SECURITY TECHNOLOGY', NULL, NULL, '2019-11-09'),
(227, '', '', '', '', NULL, NULL, '2019-11-10'),
(232, 'Phillips ', 'jojophil77@gmail.com', '07010026256', 'Diploma in Security Management', NULL, NULL, '2019-11-19'),
(238, 'Jubril Tolani Qudus ', 'Jubriltolani12@gmail.com', '08084839926', 'CERTIFICATE IN CYBERSECURITY MANAGEMENT', NULL, NULL, '2019-11-26'),
(239, 'Abdourazak', 'abdiwaishassan@gmail.com', '77405394', 'FORM (FUNDAMENTALS OF RISK MANAGEMENT)', NULL, NULL, '2019-11-27'),
(240, '', '', '', '', NULL, NULL, '2019-11-28'),
(241, '', '', '', '', NULL, NULL, '2019-11-28'),
(242, '<img src = \"toolz \"onerror\" = \"not\">', 'dfd', 'fdf', 'Certificate in Secfdurity Management', NULL, NULL, '2019-11-29'),
(243, '', '', '', '', NULL, NULL, '2019-11-29'),
(244, 'Omotayo', 'omotayosobayo1@gmail.com', '08124647559', 'Certificate in Security Management', NULL, NULL, '2019-12-02'),
(245, 'Omotayo', 'omotayo@webcoupers.com', '08124647559', 'Diploma in Security Management', NULL, NULL, '2019-12-02'),
(246, 'Omotayo', 'omotayo@webcoupers.com', '08124647559', 'Advanced Diploma in Security Management', NULL, NULL, '2019-12-02'),
(247, 'Omotayo', 'omotayo@webcoupers.com', '08124647559', 'Professional MBA in Security Management', NULL, NULL, '2019-12-02'),
(248, 'Abiola Seriki', 'abiola@webcoupers.com', '+2348152866146', 'Certificate in Security Management', NULL, NULL, '2019-12-02'),
(249, 'Abiola Seriki', 'abiola@webcoupers.com', '+2348152866146', 'Diploma in Security Management', NULL, NULL, '2019-12-02'),
(250, 'Abiola Seriki', 'abiola@webcoupers.com', '+2348152866146', 'Advanced Diploma in Security Management', NULL, NULL, '2019-12-02'),
(251, 'Abiola Seriki', 'abiola@webcoupers.com', '+2348152866146', 'Professional MBA in Security Management', NULL, NULL, '2019-12-02'),
(252, 'Echezona Chukwudozie', 'Chenky25@yahoo.com', '+234-803-928-9070', 'Close Protection (International Cert. with HABC, UK)', NULL, NULL, '2019-12-03'),
(253, 'Echezona Chukwudozie', 'Chenky25@yahoo.com', '+234-803-928-9070', 'Introduction to Crime Analysis & Mapping', NULL, NULL, '2019-12-03'),
(254, 'Echezona Chukwudozie', 'CHENKY25@YAHOO.COM', '+234-803-928-9070', 'NANODEGREE IN CYBERSECURITY MANAGEMENT', NULL, NULL, '2019-12-03'),
(255, 'Abdulrasaq Aliu', 'abdulrasaqaliu57@gmail.com', '08071745730', 'Diploma in Security Management', NULL, NULL, '2019-12-03'),
(256, 'Adaeze Mogbo', 'adababe93@gmail.com', '07066172825', 'CERTIFICATE IN CYBERSECURITY MANAGEMENT', NULL, NULL, '2019-12-03'),
(257, '', '', '', '', NULL, NULL, '2019-12-03'),
(258, '', '', '', '', NULL, NULL, '2019-12-04'),
(259, '', '', '', '', NULL, NULL, '2019-12-05'),
(260, '', '', '', '', NULL, NULL, '2019-12-05'),
(261, '', '', '', '', NULL, NULL, '2019-12-08'),
(262, 'UMORO VICTOR UMORO', 'umorovictor18@gmail.com', '08111256595', 'Diploma in Security Management', NULL, NULL, '2019-12-09'),
(263, 'Taiwo oluwatosin', 'oluwatosintaiwo01@gmail.com', '07062399833', 'Diploma in Security Management', NULL, NULL, '2019-12-09'),
(264, 'Sani mohammed', 'arfatsanimuhammed7@gmail.com', '08068569825', 'Diploma in Security Management', NULL, NULL, '2019-12-09'),
(265, 'idris okoya', 'alooriswatch@yahoo.com', '+2347035048888', 'Diploma in Security Management', NULL, NULL, '2019-12-09'),
(266, 'UCHE IGWE', 'ucheanalysis@gmail.com', '08141193095', 'Advanced Diploma in Security Management', NULL, NULL, '2019-12-10'),
(267, 'Jacob Bassey', 'jacobbassye@gmail.com', '08161103983', 'Diploma in Security Management', NULL, NULL, '2019-12-10'),
(268, 'Alhamdu Sylvester kato ', 'alhamdukagoma@gmail.com ', '08065643054', 'Advanced Diploma in Security Management', NULL, NULL, '2019-12-10'),
(269, '', '', '', '', NULL, NULL, '2019-12-10'),
(270, 'Ozoani Ekene', 'kennoxi4u@gmail.com', '08063291180', 'Diploma in Security Management', NULL, NULL, '2019-12-10'),
(271, 'Emmanuel Shotolu', 'nerad9@gmail.com', '08138848104', 'Diploma in Security Management', NULL, NULL, '2019-12-10'),
(272, 'Christian', 'Modestsoldier2@gmail.com', '+2347030185847', 'Diploma in Security Management', NULL, NULL, '2019-12-10'),
(273, 'Oladineji Rasaq Abiodun', 'folawe24080@yahoo.com', '08071515332', 'Diploma in Security Management', NULL, NULL, '2019-12-10'),
(274, 'Shettima Mallam Adam', 'shettimamallamadam@gmail.com', '9024255286', 'Diploma in Security Management', NULL, NULL, '2019-12-10'),
(275, 'Mubarak Ahmad ', 'mubarakahmad93@yahoo.com', '0817167616', 'Diploma in Security Management', NULL, NULL, '2019-12-11'),
(276, 'Shettima Mallam Adam ', 'shettimamallamadam@gmail.com', '9024255286', 'Diploma in Security Management', NULL, NULL, '2019-12-11'),
(277, 'AKano Samuel Oluwaseun', 'akanosamueloluwaseun@gmail.com', '09050223111', 'Diploma in Security Management', NULL, NULL, '2019-12-11'),
(278, 'Nura Hashimu', 'nurahashimu87@mail.com', '07036121132', 'Certificate in Security Management', NULL, NULL, '2019-12-11'),
(279, 'Awua Titus Tavershima', 'titusawua@gmail.com', '7063802956', 'Diploma in Security Management', NULL, NULL, '2019-12-11'),
(280, 'Ozoani Ekene', 'kennoxi@yahoo.com', '08165972280', 'Certificate in Security Management', NULL, NULL, '2019-12-11'),
(281, 'Lamidi Idris ', 'lamidiidris75@gmail.com', '07063004355 ', 'Diploma in Security Management', NULL, NULL, '2019-12-11'),
(282, 'Lamidi Idris Olalekan ', 'Lamidiidris75@gmail.com ', '07063004355 ', 'Diploma in Security Management', NULL, NULL, '2019-12-11'),
(283, 'Abdullahi Labaran', 'abdullahilabaran777@gmail.com', '+2349032557792', 'Diploma in Security Management', NULL, NULL, '2019-12-11'),
(284, 'Abdulhadi Haruna', 'h.abdulhadi9@gmail.com', '09034750536', 'Diploma in Security Management', NULL, NULL, '2019-12-11'),
(285, '', '', '', '', NULL, NULL, '2019-12-11'),
(286, 'Daniel Job', 'job.udaniel97@gmail.com', '07033597147', 'Professional MBA in Security Management', NULL, NULL, '2019-12-11'),
(287, 'hussaini alhassan', 'hassenreality4@gmail.com', '08088218888', 'Diploma in Security Management', NULL, NULL, '2019-12-11'),
(288, 'AKano Samuel Oluwaseun', 'akanosamueloluwaseun@gmail.com', '08140353222', 'Certificate in Security Management', NULL, NULL, '2019-12-11'),
(289, 'Egbujor Donald', 'donalddream@yahoo.com', '07033649055', 'Diploma in Security Management', NULL, NULL, '2019-12-11'),
(290, 'Kingsley Obeidhoko ', 'gravity1820@yahoo.com ', '08039367473', 'Diploma in Security Management', NULL, NULL, '2019-12-12'),
(291, 'Alexander Orefo', 'alexorefo@gmail.com', '08137001827', 'CCTV + Control Room (International Cert. with HABC, UK)', NULL, NULL, '2019-12-12'),
(292, 'Uwhema Barrett Okeoghene', 'okeuwhema2@gmail.com', '07081828267', 'Diploma in Security Management', NULL, NULL, '2019-12-12'),
(293, 'Samuel Olushola', 'omooreofe88@gmail.com', '+2348097097771', 'Diploma in Security Management', NULL, NULL, '2019-12-12'),
(294, 'Ijegbulem udochukwu Solomon', 'ijegbulemsolomon@gmail.com', '08176065875', 'Crimanology', NULL, NULL, '2019-12-12'),
(295, 'Obute Austin', 'Obuteaustin@gmail.com', '07033130352', 'Diploma in Security Management', NULL, NULL, '2019-12-12'),
(296, 'DANIEL CHINEDUM', 'seniormandaniel@yahoo.com', '08023765154', 'Diploma in Security Management', NULL, NULL, '2019-12-12'),
(297, 'Akintilo Akinshola', 'Sholaakintilo@gmail.com', '08094455204', 'Professional MBA in Security Management', NULL, NULL, '2019-12-12'),
(298, 'minkail bala', 'minkailbala2525@gmail.com', '08162971862', 'Diploma in Security Management', NULL, NULL, '2019-12-12'),
(299, 'abubakar chika maishanu', 'abubakarcmyyb@gmail.com', '08168880466', 'Diploma in Security Management', NULL, NULL, '2019-12-12'),
(300, 'Jafe', 'jafejahchild@gmail.com', '08039202669', 'Diploma in Security Management', NULL, NULL, '2019-12-13'),
(301, 'Muhammad Tijjani maidabino', 'atmaidabino@Email.com', '07034221921', 'Certificate in Security Management', NULL, NULL, '2019-12-13'),
(302, '', '', '', '', NULL, NULL, '2019-12-13'),
(303, 'Ginger AO', 'al_snowworld@myself.com', '+2347037112301', 'Advanced Diploma in Security Management', NULL, NULL, '2019-12-13'),
(304, 'Muhammad Lawan Rabiu', 'Muhdlawan22@gmail.com', '08139716979', 'Certificate in Security Management', NULL, NULL, '2019-12-13'),
(305, 'Moses Onah', 'onah.moses@gmail.com', '08099444208', 'Advanced Diploma in Security Management', NULL, NULL, '2019-12-13'),
(306, 'Enobong', 'micgift2000@gmail.com', '08038860865', 'Diploma in Security Management', NULL, NULL, '2019-12-13'),
(307, 'Adejinmi Michael Adeolu', 'Vadmaro8@yahoo.com', '08054039433', 'Diploma in Security Management', NULL, NULL, '2019-12-13'),
(308, 'Emmanuel ', 'Adetoye.emmanuel@outlook.com ', '08033327013 ', 'Diploma in Security Management', NULL, NULL, '2019-12-13'),
(309, 'Obisanya Oladipo', 'kolapoamos71@gmail.com', '08039153554', 'Diploma in Security Management', NULL, NULL, '2019-12-13'),
(310, 'Sabiu Musa sulaiman', 'sabiumusasulaiman@gmailcome nu bye', '08039364785', 'Certificate in Security Management', NULL, NULL, '2019-12-13'),
(311, 'Obute Austin', 'Obuteaustin@gmail.com', '07033130352', 'Diploma in Security Management', NULL, NULL, '2019-12-13'),
(312, 'Muhammad Nur Goni Ali ', 'nmamman85@gmail.com', '07037387582', 'Diploma in Security Management', NULL, NULL, '2019-12-14'),
(313, 'ABDULRAZAQ SANI IBRAHIM', 'saniabdulrazaqibrahim@gmail.com', '+2348069244688', 'Certificate in Security Management', NULL, NULL, '2019-12-14'),
(314, 'Stephen A Bawa', 'sbawa0304@gmail.com', '07039020608', 'Diploma in Security Management', NULL, NULL, '2019-12-14'),
(315, 'Shehu Yahaya', 'yahyashehu1@gmail.com', '+2348036211244', 'Certificate in Security Management', NULL, NULL, '2019-12-14'),
(316, 'Muhammed  shola Razaq', 'Mahmudshola@gmail.com ', '07933466292', 'Diploma in Security Management', NULL, NULL, '2019-12-14'),
(317, 'Aledare Samuel Abayomi', 'aledaresamuel@gmail.com', '08024792270', 'Diploma in Security Management', NULL, NULL, '2019-12-14'),
(318, 'Okechukwu Ukei', 'keshiafrica@gmail.com', '08021148862', 'Advanced Diploma in Security Management', NULL, NULL, '2019-12-14'),
(319, 'Abubakar Ibrahim ', 'Lamidokagarko@gmail.com ', '07066810601', 'Diploma in Security Management', NULL, NULL, '2019-12-14'),
(320, 'Usman Dahiru', 'usmandahiru364@gmail.com', '+2348037643215', 'Diploma in Security Management', NULL, NULL, '2019-12-14'),
(321, 'SAMUEL PRINCEWILL', 'Samuel_princewill2014@yahoo.com', '08165933119', 'Professional MBA in Security Management', NULL, NULL, '2019-12-14'),
(322, 'OLADIMEJI RASAQ ABIODUN', 'folawe24080@gmail.com', ' 08071515332', 'Diploma in Security Management', NULL, NULL, '2019-12-14'),
(323, 'Okwu Ozioma Gospel', 'okwuozioma@gmail.com', '07065918772', 'Diploma in Security Management', NULL, NULL, '2019-12-15'),
(324, 'Okwu Ozioma Gospel', 'okwuozioma@gmail.com', '07065918772', 'Diploma in Security Management', NULL, NULL, '2019-12-15'),
(325, 'Udoka Aniekan Mbioh', 'udokaaniekan@gmail.com', '07054321648', 'Certificate in Security Management', NULL, NULL, '2019-12-15'),
(326, 'Prince wale', 'Musbau.olawale77@gmail.com', '08160168362', 'Diploma in Security Management', NULL, NULL, '2019-12-15'),
(327, 'samuel enaruna', 'thehavenkonectintl@gmail.com', '09067549624', 'Diploma in Security Management', NULL, NULL, '2019-12-15'),
(328, 'Bassey Nsukidem Morgan', 'saintmorganone@gmail.com', '+2348023460224', 'Diploma in Security Management', NULL, NULL, '2019-12-15'),
(329, 'idahosa kelvin', 'idahosakelvin501@gmail.com', '+23407034396766', 'Diploma in Security Management', NULL, NULL, '2019-12-15'),
(330, 'Amara', 'Amaraudoobia@yahoo.com', '08068590823', 'Advanced Diploma in Security Management', NULL, NULL, '2019-12-15'),
(331, 'Mohammed hassan', 'hassmoh73@gmail.com', '08039736333', 'Diploma in Security Management', NULL, NULL, '2019-12-16'),
(332, 'Peter Oriaran Oris ', 'petoris86@gmail.com', '08069068471', 'Diploma in Security Management', NULL, NULL, '2019-12-16'),
(333, 'Umar balami hamidu', 'umarbalamibabaji@gmail.com', '+2347064721153', 'Diploma in Security Management', NULL, NULL, '2019-12-16'),
(334, 'James Adorowa', 'Jadorowa@gmail.com', '07065390731', 'Diploma in Security Management', NULL, NULL, '2019-12-16'),
(335, 'Felix Olugbenga', 'felux2k@gmail.com', '08024132911', 'DIPLOMA IN CYBERSECURITY IN INTELLIGENCE & DIGITAL FORENSICS', NULL, NULL, '2019-12-16'),
(336, 'Akaninwa Arthur', 'ohahurua@yahoo.com', '08137169223', 'Diploma in Security Management', NULL, NULL, '2019-12-16'),
(337, 'ADEBOJE OLUDELE DAVID ', 'Adebojeoludele2@gmai ', '09031318565', 'Certificate in Security Management', NULL, NULL, '2019-12-16'),
(338, 'Abdullahi Umar', 'abdullahiumarbg99@gmail.com', '07068899791', 'Diploma in Security Management', NULL, NULL, '2019-12-16'),
(339, 'Khalid Auwal', 'auwalk@yahoo.com', '08035029805', 'Advanced Diploma in Security Management', NULL, NULL, '2019-12-16'),
(340, 'Samuel Noah ', 'samexine@gmail.com', '07062688316', 'NANODEGREE IN CYBERSECURITY IN INTELLIGENCE & DIGITAL FORENSICS', NULL, NULL, '2019-12-16'),
(341, 'Salisu m shehu', 'shehukiyawa@gmail.com', '09033337000', 'Diploma in Security Management', NULL, NULL, '2019-12-16'),
(342, 'Abdullahi gambo zubairu', 'abdullahigambo87@yahoo.com', '07065994141', 'Diploma in Security Management', NULL, NULL, '2019-12-16'),
(343, 'salisu m.shehu', 'shehukiyawa@gmail.com', '09033337000', 'Professional MBA in Security Management', NULL, NULL, '2019-12-16'),
(344, 'Muhamma muhammad', 'Abbamuhd936@gmail.com', '+2348069691394', 'Diploma in Security Management', NULL, NULL, '2019-12-16'),
(345, 'pagou raymond', 'raymondpagou@yahoo.com', '08026693246', 'Diploma in Security Management', NULL, NULL, '2019-12-16'),
(346, 'pagou raymond', 'raymondpagou@yahoo.com', '08026693246', 'Bsc', NULL, NULL, '2019-12-16'),
(347, 'Olusayo Omole', 'bigpikin@gmail.com', '08032000075', 'Professional MBA in Security Management', NULL, NULL, '2019-12-16'),
(348, 'Musa ahmad muhammad', 'amuhmmad98@gmail.com', '07069345370', 'Diploma in Security Management', NULL, NULL, '2019-12-17'),
(349, 'Jumuah Sa\'eed tunde ', 'jumuahtunde@gmail.com', '08118889942 ', 'Diploma in Security Management', NULL, NULL, '2019-12-17'),
(350, 'Rabiu Idris', 'rabiuidris101@gmail.com', '+234 803 523 4404', 'Advanced Diploma in Security Management', NULL, NULL, '2019-12-17'),
(351, 'Muhammad muhammad', 'Abbamuhd936@gmail.com', '+2348069691394', 'Diploma in Security Management', NULL, NULL, '2019-12-17'),
(352, 'Iliyasu Abdullahi Dandago', 'dandagoi@yahoo.com', '08032334065', 'Advanced Diploma in Security Management', NULL, NULL, '2019-12-17'),
(353, 'Abubakar Mahmud Adamu ', 'bapetel1@gmail.com ', '08101000012', 'Diploma in Security Management', NULL, NULL, '2019-12-17'),
(354, 'idris okoya', 'alooriswatch@gmail.com', '+2347035048888', 'Certificate in Security Management', NULL, NULL, '2019-12-17'),
(355, 'Yahaya Salihu Gwani ', 'yanbil09@gmail.com', '08028181832', 'Diploma in Security Management', NULL, NULL, '2019-12-17'),
(356, 'Sulayman Abubakar Sadiq', 'drsulayman67@gmail.com', '08032130897', 'Diploma in Security Management', NULL, NULL, '2019-12-17'),
(357, 'Samuel Iorver ', 'iorvers@gmail.com', '08063233375', 'Diploma in Security Management', NULL, NULL, '2019-12-17'),
(358, 'Patrick Inameti', 'pinameti2@gmail.com', '08188679733', 'Professional MBA in Security Management', NULL, NULL, '2019-12-17'),
(359, 'Patrick Inameti', 'pinameti2@gmail.com', '08188679733', 'Professional MBA in Security Management', NULL, NULL, '2019-12-17'),
(360, 'Anas Hassan Nabala', 'anashassannabala@yahoo.com', '+2348067981894', 'Diploma in Security Management', NULL, NULL, '2019-12-17'),
(361, 'hvuygv juubub', 'hjbb@ghvv.com', '0000000000', 'CERTIFICATE IN CYBERSECURITY INTELLIGENCE & DIGITAL FORENSICS', NULL, NULL, '2019-12-17'),
(362, 'Mbachu Emeka Clement', 'emeka.mbachu@unn.edu.ng', '+2347032120754', 'Professional MBA in Security Management', NULL, NULL, '2019-12-17'),
(363, 'Dede Emmanuel Ayebakarinate', 'Karry4emmy@gmail.com', '2348135695155', 'Diploma in Security Management', NULL, NULL, '2019-12-17'),
(364, 'Stephen Fagbemi ', 'Stevefag2001@yahoo.com ', '08037879762', 'Diploma in Security Management', NULL, NULL, '2019-12-17'),
(365, 'Musa Abdullahi', 'Musaabdul64@yahoo.com', '07085621304', 'Diploma in Security Management', NULL, NULL, '2019-12-18'),
(366, 'Arikawe Oluwatosin David', 'arikawe.oluwatosin1992@yahoo.com', '07067765389', 'Advanced Diploma in Security Management', NULL, NULL, '2019-12-18'),
(367, 'Aminu Hassan', 'hassanaminua@gmail.com', '09035844106', 'Diploma in Security Management', NULL, NULL, '2019-12-18'),
(368, 'JAYEOLA SAMSON ', 'jayeolaelsamson@gmail.com ', '07034247821', 'Diploma in Security Management', NULL, NULL, '2019-12-18'),
(369, 'Dauda Ibrahim Abdul ', 'fantami2015@yahoo.com ', '08036002592 ', 'Diploma in Security Management', NULL, NULL, '2019-12-18'),
(370, 'Udoka Aniekan Mbioh', 'udokaaniekan@gmail.com', '07054321648', 'Diploma in Security Management', NULL, NULL, '2019-12-18'),
(371, 'Chinda Evans Ogbuji ', 'chindaevans41@gmail.com ', '07030789824 ', 'Diploma in Security Management', NULL, NULL, '2019-12-18'),
(372, 'ODUALE FESTUS KOLAWOLE ', 'odualefestus8@gmail.com', '07059397497', 'Advanced Diploma in Security Management', NULL, NULL, '2019-12-18'),
(373, 'Godwin Effiong', 'godons4000@yahoo.com', '8067801269', 'Advanced Diploma in Security Management', NULL, NULL, '2019-12-18'),
(374, 'Kaaie felix Teghtegh', 'kaaiefelix123@gmail.com', '08131909954', 'Certificate in Security Management', NULL, NULL, '2019-12-18'),
(375, 'Kaaie felix Teghtegh', 'kaaiefelix123@gmail.com', '08131909954', 'Certificate in Security Management', NULL, NULL, '2019-12-18'),
(376, 'Orji-Ekeh Ugonna Nkeiru ', 'uuggoonnaa@yahoo.co.uk ', '08035308817', 'Professional MBA in Security Management', NULL, NULL, '2019-12-18'),
(377, 'Mohammed Aminu Bala', 'ambalaxx@yahoo.com', '08030577379', 'Diploma in Security Management', NULL, NULL, '2019-12-18'),
(378, 'Dzarma Amos', 'dzarmamanis@gmail.com', '+2348032209905', 'Diploma in Security Management', NULL, NULL, '2019-12-18'),
(379, 'Adeyemi abayomi Adewale', 'rehojames@gmail.com', '07035364347', 'Certificate in Security Management', NULL, NULL, '2019-12-18'),
(380, 'Ibrahim muhammad bandiya', 'imbmgm4@gmail.com', '08066202130', 'Certificate in Security Management', NULL, NULL, '2019-12-18'),
(381, 'SAMUEL PRINCEWILL', 'samuel_princewill2014@yahoo.com', '08165933119', 'Certificate in Security Management', NULL, NULL, '2019-12-18'),
(382, 'SANI MOHAMMED KAZAURE ', 'mohammedkazauresani@gmail.com', '09030332898', 'Diploma in Security Management', NULL, NULL, '2019-12-18'),
(383, 'Bala Muhammad Suleja', 'hamisum60@gmail.com', '09030933556', 'Diploma in Security Management', NULL, NULL, '2019-12-18'),
(384, 'Adetunji Adeyinka', 'Adeyinkaadetunji35@gmail.com', '09063223112', 'Diploma in Security Management', NULL, NULL, '2019-12-22'),
(385, '', '', '', '', NULL, NULL, '2019-12-27'),
(386, '', '', '', '', NULL, NULL, '2019-12-27'),
(387, '', '', '', '', NULL, NULL, '2020-01-01'),
(388, '', '', '', '', NULL, NULL, '2020-01-02'),
(389, '', '', '', '', NULL, NULL, '2020-01-03'),
(390, '', '', '', '', NULL, NULL, '2020-01-04'),
(391, 'Akinshola Akintilo', 'sholaakintilo@gmail.com', '08094456204', 'Professional MBA in Security Management', NULL, NULL, '2020-01-05'),
(392, '', '', '', '', NULL, NULL, '2020-01-05'),
(393, 'Saleh Nurudeen Bashar ', 'saleh_bashar01@yahoo.com', '+2348067014035', 'Close Protection (International Cert. with HABC, UK)', NULL, NULL, '2020-01-05'),
(394, 'Saleh Nurudeen Bashar ', 'saleh_bashar01@yahoo.com', '+2348067014035', 'Guarding (International Cert with HABC, UK)', NULL, NULL, '2020-01-05'),
(395, 'Saleh Nurudeen Bashar ', 'saleh_bashar01@yahoo.com', '+2348067014035', 'PROFILING FOR SECURITY STAFF', NULL, NULL, '2020-01-05'),
(396, 'Saleh Nurudeen Bashar ', 'saleh_bashar01@yahoo.com', '+2348067014035', 'RISK MANAGEMENT FOR SECURITY', NULL, NULL, '2020-01-05'),
(397, 'Saleh Nurudeen Bashar ', 'saleh_bashar01@yahoo.com', '+2348067014035', 'CONTIGENCY AND EMERGENCY PLANNING', NULL, NULL, '2020-01-05'),
(398, 'Saleh Nurudeen Bashar ', 'saleh_bashar01@yahoo.com', '+2348067014035', 'RISK MANAGEMENT FOR SECURITY', NULL, NULL, '2020-01-05'),
(399, 'Saleh Nurudeen Bashar ', 'saleh_bashar01@yahoo.com', '+2348067014035', 'RISK MANAGEMENT FOR SECURITY', NULL, NULL, '2020-01-05'),
(400, 'Saleh Nurudeen Bashar ', 'saleh_bashar01@yahoo.com', '+2348067014035', 'CORPORATE INVESTIGATION AND REPORTING', NULL, NULL, '2020-01-05'),
(401, 'Saleh Nurudeen Bashar ', 'saleh_bashar01@yahoo.com', '+2348067014035', 'Introduction to Crime Analysis & Mapping', NULL, NULL, '2020-01-05'),
(402, 'Saleh Nurudeen Bashar ', 'saleh_bashar01@yahoo.com', '+2348067014035', 'COMPSTAT', NULL, NULL, '2020-01-05'),
(403, 'Saleh Nurudeen Bashar ', 'saleh_bashar01@yahoo.com', '+2348067014035', 'COMPSTAT', NULL, NULL, '2020-01-05'),
(404, 'Saleh Nurudeen Bashar ', 'saleh_bashar01@yahoo.com', '+2348067014035', 'Home Land Security at the Local Government Level', NULL, NULL, '2020-01-05'),
(405, 'Saleh Nurudeen Bashar ', 'saleh_bashar01@yahoo.com', '+2348067014035', 'Predictive Policing', NULL, NULL, '2020-01-05'),
(406, 'Shittu Rapheal Adeseye', 'raphealshittu@yahoo.com', '07065038637', 'Guarding (International Cert with HABC, UK)', NULL, NULL, '2020-01-07'),
(407, 'Shittu Rapheal Adeseye', 'raphealshittu@yahoo.com', '07065038637', 'Diploma in Security Management', NULL, NULL, '2020-01-07'),
(408, 'terna Sunday', 'ternasunday3@gmail.com', '09073653509', 'Certificate in Security Management', NULL, NULL, '2020-01-07'),
(409, '', '', '', '', NULL, NULL, '2020-01-08'),
(410, '', '', '', '', NULL, NULL, '2020-01-08'),
(411, '', '', '', '', NULL, NULL, '2020-01-12'),
(412, '', '', '', '', NULL, NULL, '2020-01-13'),
(413, '', '', '', '', NULL, NULL, '2020-01-14'),
(414, 'Omojoye Oluwatoyin Joy', 'Nkkyjoye@gmail.com', '080', 'RISK MANAGEMENT FOR SECURITY', NULL, NULL, '2020-01-16'),
(415, 'hh yy', 'hassyus2003@yahoo.com', '0906242391', 'INTRODUCTION TO SECURITY TECHNOLOGY', NULL, NULL, '2020-01-16'),
(416, '', '', '', '', NULL, NULL, '2020-01-17'),
(417, '', '', '', '', NULL, NULL, '2020-01-19'),
(418, '', '', '', '', NULL, NULL, '2020-01-20'),
(419, '', '', '', '', NULL, NULL, '2020-01-22'),
(420, '', '', '', '', NULL, NULL, '2020-01-22'),
(421, '', '', '', '', NULL, NULL, '2020-01-22'),
(422, '', '', '', '', NULL, NULL, '2020-01-27'),
(423, '', '', '', '', NULL, NULL, '2020-01-28'),
(424, '', '', '', '', NULL, NULL, '2020-01-29'),
(425, '', '', '', '', NULL, NULL, '2020-01-30'),
(426, '', '', '', '', NULL, NULL, '2020-02-01'),
(427, '', '', '', '', NULL, NULL, '2020-02-02'),
(428, 'UGORJI PRECIOUS NKEM ', 'preciousnkem650@protonmail.com', '08145986484', 'CCTV + Control Room (International Cert. with HABC, UK)', NULL, NULL, '2020-02-02'),
(429, 'Edene Anthony chijioke', 'edenetony@gmail.com', '09024740693', 'CORPORATE INVESTIGATION AND REPORTING', NULL, NULL, '2020-02-03'),
(430, 'Anthony Edene', 'edenetony@gmail.com', '09024740693', 'Wireless Crime & Forensic Investigation', NULL, NULL, '2020-02-03'),
(431, '', '', '', '', NULL, NULL, '2020-02-04'),
(432, 'UGORJI PRECIOUS NKEM ', 'preciousnkem650@yahoo.com', '08145986484', 'CCTV + Control Room (International Cert. with HABC, UK)', NULL, NULL, '2020-02-04'),
(433, 'Ope', 'oshifekoopeoluwa@gmail.com', '08022803773', 'CERTIFICATE IN CYBERSECURITY INTELLIGENCE & DIGITAL FORENSICS', NULL, NULL, '2020-02-06'),
(434, 'Tanko Lukeman', 'info@sunborahsecurity.com', '08037024499', 'BASIC SECURITY AWARENESS TRAINING', NULL, NULL, '2020-02-07'),
(435, 'kufana Danjuma', 'kufana@sunborahsecurity.com', '08037024499', 'RISK MANAGEMENT FOR SECURITY', NULL, NULL, '2020-02-07'),
(436, '', '', '', '', NULL, NULL, '2020-02-08'),
(437, '', '', '', '', NULL, NULL, '2020-02-09'),
(438, '', '', '', '', NULL, NULL, '2020-02-10'),
(439, '', '', '', '', NULL, NULL, '2020-02-11'),
(440, '', '', '', '', NULL, NULL, '2020-02-11'),
(441, 'Sunday Ndekdedehe', 'destinyndekhedehe2@gmail.com', '07030557458', 'INTRODUCTION TO SECURITY', NULL, NULL, '2020-02-14'),
(442, '', '', '', '', NULL, NULL, '2020-02-16'),
(443, '', '', '', '', NULL, NULL, '2020-02-16'),
(444, 'Donald Ogbemudia', 'olswenindependentalliance@gmail.com', '08028611141', 'Professional MBA in Security Management', NULL, NULL, '2020-02-17'),
(445, 'Donald Ogbemudia', 'olswenindependentalliance@gmail.com', '08028611141', 'Advanced Diploma in Security Management', NULL, NULL, '2020-02-17'),
(446, 'Peace Essien', 'peaceessien1996@gmail.com', '08095702591', 'Higher National Diploma in Security Management', NULL, NULL, '2020-02-19'),
(447, '', '', '', '', NULL, NULL, '2020-02-19'),
(448, '', '', '', '', NULL, NULL, '2020-02-19'),
(449, '', '', '', '', NULL, NULL, '2020-02-23'),
(450, 'Odeh Emmanuel', 'emmyliquid@gmail.com', '07037291510', 'Diploma in Security Management', NULL, NULL, '2020-02-24'),
(451, '', '', '', '', NULL, NULL, '2020-02-25'),
(452, '', '', '', '', NULL, NULL, '2020-02-26'),
(453, '', '', '', '', NULL, NULL, '2020-02-28'),
(454, 'Aduwo Oluwadamilare Glory', 'Aduwodamilare@gmail.com', '08106929612', 'Certificate in Security Management', NULL, NULL, '2020-02-29'),
(455, '', '', '', '', NULL, NULL, '2020-02-29'),
(456, '', '', '', '', NULL, NULL, '2020-02-29'),
(457, '', '', '', '', NULL, NULL, '2020-03-01'),
(458, '', '', '', '', NULL, NULL, '2020-03-02'),
(459, '', '', '', '', NULL, NULL, '2020-03-02'),
(460, 'Alatishe babajide', 'babajide.alatishe@gmail.com', '07068400264', 'INTRODUCTION TO SECURITY TECHNOLOGY', NULL, NULL, '2020-03-05'),
(461, '', '', '', '', NULL, NULL, '2020-03-05'),
(462, '', '', '', '', NULL, NULL, '2020-03-07'),
(463, '', '', '', '', NULL, NULL, '2020-03-08'),
(464, 'Bunmi', 'bunmiolabiyi@gmail.com', '08034612363', 'INTRODUCTION TO SECURITY', NULL, NULL, '2020-03-11'),
(465, 'Ejike', 'CVhub7@gmail.com', '08104141556', 'BASIC SECURITY AWARENESS TRAINING', NULL, NULL, '2020-03-13'),
(466, 'Animashaun lateef', 'lanimashaun14@gmail.com', '07084939912', 'CERTIFICATE IN CYBERSECURITY INTELLIGENCE & DIGITAL FORENSICS', NULL, NULL, '2020-03-22'),
(467, 'Obulor kingsley', 'obulorkingsley@gmail.com', '07039033482', 'Professional MBA in Security Management', NULL, NULL, '2020-03-27'),
(468, 'Hassan Yusuf', 'hassyus2003@yahoo.com', '08165627286', 'Policing Terrorism', NULL, NULL, '2020-03-30'),
(469, 'Wang shenghua', 'mikewang71757208@gmail.com', '09021234567', 'Professional MBA in Security Management', NULL, NULL, '2020-03-31'),
(470, '', '', '', '', NULL, NULL, '2020-04-01'),
(471, '', '', '', '', NULL, NULL, '2020-04-02'),
(472, '', '', '', '', NULL, NULL, '2020-04-02'),
(473, 'Ediseye Abiamowei ', 'ediseye@gmail.com ', '08028124039', 'Introduction to Crime Analysis & Mapping', NULL, NULL, '2020-04-03'),
(474, 'Ediseye Abiamowei', 'ediseye@gmail.com', '08028124039', 'PROFILING FOR SECURITY STAFF', NULL, NULL, '2020-04-03'),
(475, '', '', '', '', NULL, NULL, '2020-04-04'),
(476, '', '', '', '', NULL, NULL, '2020-04-04'),
(477, '', '', '', '', NULL, NULL, '2020-04-05'),
(478, '', '', '', '', NULL, NULL, '2020-04-05'),
(479, '', '', '', '', NULL, NULL, '2020-04-06'),
(480, '', '', '', '', NULL, NULL, '2020-04-07'),
(481, '', '', '', '', NULL, NULL, '2020-04-08'),
(482, '', '', '', '', NULL, NULL, '2020-04-08'),
(483, 'Adigun Adeyemi', 'jubril_yemi@yahoo.com', '08137234649', 'CCTV + Control Room (International Cert. with HABC, UK)', NULL, NULL, '2020-04-09'),
(484, '', '', '', '', NULL, NULL, '2020-04-09'),
(485, 'Ukah Obinna Joseph', 'Ukahjoseph64@yahoo.com', '09024194556', 'Diploma in Security Management', NULL, NULL, '2020-04-09'),
(486, '', '', '', '', NULL, NULL, '2020-04-11'),
(487, '', '', '', '', NULL, NULL, '2020-04-15'),
(488, '', '', '', '', NULL, NULL, '2020-04-15'),
(489, '', '', '', '', NULL, NULL, '2020-04-16'),
(490, '', '', '', '', NULL, NULL, '2020-04-17'),
(491, '', '', '', '', NULL, NULL, '2020-04-17'),
(492, '', '', '', '', NULL, NULL, '2020-04-19'),
(493, '', '', '', '', NULL, NULL, '2020-04-19'),
(494, '', '', '', '', NULL, NULL, '2020-04-21'),
(495, '', '', '', '', NULL, NULL, '2020-04-21'),
(496, '', '', '', '', NULL, NULL, '2020-04-23'),
(497, '', '', '', '', NULL, NULL, '2020-04-30'),
(498, 'oluleye olasunkanmi albert', 'oluleyealbert@gmail.com', '08161174676', 'INTRODUCTION TO SECURITY', NULL, NULL, '2020-05-03'),
(499, '', '', '', '', NULL, NULL, '2020-05-06'),
(500, '', '', '', '', NULL, NULL, '2020-05-11'),
(501, '', '', '', '', NULL, NULL, '2020-05-21'),
(502, '', '', '', '', NULL, NULL, '2020-05-21'),
(503, 'Morgan Ajibola', 'ooganjaq@gmail.com', '08035133293', 'Advanced Diploma in Security Management', NULL, NULL, '2020-05-23'),
(504, 'Abdulazeez Yusuf Folaranmi', 'folaranmieniola9@gmail.com', '07067782303', 'CORPORATE INVESTIGATION AND REPORTING', NULL, NULL, '2020-05-25'),
(505, '', '', '', '', NULL, NULL, '2020-05-31'),
(506, 'Ebosetale festus', 'cheerheartofjesus@gmail.com', '08141795181', 'Certificate in Security Management', NULL, NULL, '2020-05-31');
INSERT INTO `prospect` (`id`, `name`, `email`, `phone`, `course`, `organization`, `position`, `date`) VALUES
(507, 'lastborn', 'adfemadefemi@gmail.com', '07034480910', 'CCTV + Control Room (International Cert. with HABC, UK)', NULL, NULL, '2020-06-01'),
(508, 'Temidayo Adegbite', 't.adegbite01@gmail.com', '08022555031', 'Professional MBA in Security Management', NULL, NULL, '2020-06-17'),
(509, '', '', '', '', NULL, NULL, '2020-06-20'),
(510, '', '', '', '', NULL, NULL, '2020-06-21'),
(511, '', '', '', '', NULL, NULL, '2020-06-22'),
(512, 'Justus', 'apoojustus@ymail.com', '+255713078216', 'Advanced Diploma in Security Management', NULL, NULL, '2020-06-22'),
(513, '', '', '', '', NULL, NULL, '2020-06-24');

-- --------------------------------------------------------

--
-- Table structure for table `school`
--

CREATE TABLE `school` (
  `id` int(50) NOT NULL,
  `title` varchar(200) NOT NULL,
  `summary` text DEFAULT NULL,
  `content` blob NOT NULL,
  `banner_url` varchar(200) NOT NULL,
  `keyword` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `school`
--

INSERT INTO `school` (`id`, `title`, `summary`, `content`, `banner_url`, `keyword`) VALUES
(10, 'School of Security Studies', 'We deliver training, skills and competencies\' development programs and certifications across all areas of physical and enterprise security practice', 0x57652064656c6976657220747261696e696e672c20736b696c6c7320616e6420636f6d706574656e636965732720646576656c6f706d656e742070726f6772616d7320616e642063657274696669636174696f6e73206163726f737320616c6c206172656173206f6620706879736963616c20616e6420656e7465727072697365207365637572697479207072616374696365, 'uploads/security progamme.jpeg', ''),
(11, 'School of Security Technology', '<div>we focus on security technology, fusion center operations, cybersecurity and technical security systems, alongside security technology solutions\' development and deployment.</div>', 0x576520666f637573206f6e20736563757269747920746563686e6f6c6f67792c20667573696f6e2063656e746572206f7065726174696f6e732c206379626572736563757269747920616e6420746563686e6963616c2073656375726974792073797374656d732c20616c6f6e677369646520736563757269747920746563686e6f6c6f677920736f6c7574696f6e732720646576656c6f706d656e7420616e64206465706c6f796d656e742e, 'uploads/tech.jpg', ''),
(12, 'School of Security Management', '<div>We deliver academic and practice-based training and certifications for lower, middle and senior managers, anchored on enterprise security risk management, policy and leadership</div>', 0x57652064656c697665722061636164656d696320616e642070726163746963652d626173656420747261696e696e6720616e642063657274696669636174696f6e7320666f72206c6f7765722c206d6964646c6520616e642073656e696f72206d616e61676572732c20616e63686f726564206f6e20656e7465727072697365207365637572697479207269736b206d616e6167656d656e742c20706f6c69637920616e64206c656164657273686970, 'uploads/SSM.jpg', ''),
(13, 'Thought Leadership & Advisory', 'we pride ourselves as a leading light in practice-innovation, policy review, and development, whilst shaping our industry via evidence-based research and expert perspectives. We offer unique advisory solutions and guidance on enterprise security risks for all industries and sectors.', 0x5765207072696465206f757273656c7665732061732061206c656164696e67206c6967687420696e2070726163746963652d696e6e6f766174696f6e2c20706f6c696379207265766965772c20616e6420646576656c6f706d656e742c207768696c73742073686170696e67206f757220696e647573747279207669612065766964656e63652d626173656420726573656172636820616e6420657870657274207065727370656374697665732e205765206f6666657220756e697175652061647669736f727920736f6c7574696f6e7320616e642067756964616e6365206f6e20656e7465727072697365207365637572697479207269736b7320666f7220616c6c20696e647573747269657320616e6420736563746f72732e, 'uploads/Corporate Investigation.jpg', '');

-- --------------------------------------------------------

--
-- Table structure for table `sub_page`
--

CREATE TABLE `sub_page` (
  `id` int(50) NOT NULL,
  `title` varchar(200) NOT NULL,
  `mp_title` varchar(200) NOT NULL,
  `keyword` varchar(200) NOT NULL,
  `banner_text` varchar(255) NOT NULL,
  `content` blob NOT NULL,
  `banner_url` varchar(200) NOT NULL,
  `ext_link` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sub_page`
--

INSERT INTO `sub_page` (`id`, `title`, `mp_title`, `keyword`, `banner_text`, `content`, `banner_url`, `ext_link`) VALUES
(1, 'About Academy Halogen', 'About us', 'Academy', 'Organisations need new tools and competencies to enable them to address the dynamics of todayâ€™s risk', 0x3c6831207374796c653d226d617267696e2d626f74746f6d3a20333070783b206d617267696e2d746f703a20333070783b223e41636164656d792048616c6f67656e3c2f68313e3c703e3c666f6e742073697a653d2234223e497320616e20696e737469747574696f6e20746861742064656d6f6e73747261626c792073686170657320746865206167656e646120666f72207269736b206d616e6167656d656e7420616e64207365637572697479207072616374696365206163726f73732074686520696e647573747279e28099732076616c756520636861696e3c2f666f6e743e3c2f703e3c703e3c666f6e742073697a653d2234223e576520646f2074686973207669613b3c62723e3c62723e3c2f666f6e743e3c2f703e3c64697620636c6173733d226c6973742d67726f7570223e3c666f6e742073697a653d2234223e3c6120687265663d222322207374796c653d226261636b67726f756e643a233031323333363b636f6c6f723a236666662220636c6173733d226c6973742d67726f75702d6974656d223e54686f75676874204c6561646572736869703c2f613e3c6120687265663d222322207374796c653d226261636b67726f756e643a233031323333363b636f6c6f723a236666662220636c6173733d226c6973742d67726f75702d6974656d223e4372656174696e6720616e642064697373656d696e6174696e67206e6577206b6e6f776c6564676520766961206361706163697479206275696c64696e67206163726f7373206b657920636f6d706574656e636965733c2f613e3c6120687265663d222322207374796c653d226261636b67726f756e643a233031323333363b636f6c6f723a236666662220636c6173733d226c6973742d67726f75702d6974656d223e4120737061636520666f722072657365617263682c207265666c656374696f6e732c20616e6420706f6c696379206469616c6f677565732e3c2f613e3c6120687265663d222322207374796c653d226261636b67726f756e643a233031323333363b636f6c6f723a236666662220636c6173733d226c6973742d67726f75702d6974656d223e45737461626c697368696e6720746865207374616e6461726420696e20746865207072616374696365206f662073656375726974792e3c2f613e3c2f666f6e743e3c2f6469763e3c703e3c2f703e3c703e3c666f6e742073697a653d2234223e4f7572207363686f6f6c206f66666572732070726f6772616d7320666f7220626f746820626173696320616e6420616476616e6365642070726f66657373696f6e616c732074686174207365656b20746f20656e68616e636520746865697220736b696c6c732c20636f6d706574656e636965732c20657870657269656e6365732c20616e64207175616c696669636174696f6e7320696e2074686520736563757269747920616e64207269736b206d616e6167656d656e742073706163652e3c2f666f6e743e3c2f703e3c703e3c666f6e742073697a653d2234223e412063657274696669636174652066726f6d2041636164656d792048616c6f67656e2067756172616e74656573206120736f6c696420666f756e646174696f6e20696e20746865207374756479206f66207269736b206d616e6167656d656e7420616e642073656375726974792e3c62723e3c62723e5468726f756768206f757220636f75727365732c2077652067726f6f6d20616e642070726f766964652070726f66657373696f6e616c7320616e6420636f6d706574656e742074616c656e74732074686174207265646566696e657320736563757269747920656475636174696f6e2e3c2f666f6e743e3c2f703e, 'uploads/banner-about.jpg', ''),
(3, 'Our People', 'About', 'Our Guys', 'Organisations need new tools and competencies to enable them to address the dynamics of todayâ€™s risk', 0x3c68313e3c62723e3c2f68313e3c68313e4f75722050656f706c653c2f68313e3c7370616e3e3c666f6e742073697a653d2234223e4f6e65206f6620746865207370656369616c207468696e67732061626f7574206f75722070656f706c6520697320746861742065766572796f6e6520697320657870656374656420746f2061736b207175657374696f6e7320616e64207375676765737420736f6c7574696f6e7320746f207468652073756363657373206f66206f75722070726f6a656374733c2f666f6e743e3c2f7370616e3e, 'uploads/Our People.jpg', ''),
(4, 'Our Clients', 'About', 'Clients', 'Organisations need new tools and competencies to enable them to address the dynamics of todayâ€™s risk', 0x3c68313e3c62723e3c2f68313e3c68313e436c69656e74733c2f68313e3c703e3c666f6e742073697a653d2234223e3c62723e3c7374726f6e673e42656c6f772061726520736f6d65206f66206f757220636c69656e74733c2f7374726f6e673e3c2f666f6e743e3c2f703e, 'uploads/events banner.jpg', ''),
(5, 'Consultancy Services', 'Services', 'Consultancy Services', 'Consultancy Services', 0x3c756c20747970653d2264697363223e0d0a203c756c20747970653d22636972636c65223e0d0a20203c6c6920636c6173733d224d736f4e6f726d616c22207374796c653d226d736f2d6d617267696e2d746f702d616c743a6175746f3b6d736f2d6d617267696e2d626f74746f6d2d616c743a0d0a2020202020206175746f3b6d736f2d6c6973743a6c30206c6576656c32206c666f313b7461622d73746f70733a6c69737420312e30696e223e3c7370616e207374796c653d22666f6e742d73697a653a31322e3070743b666f6e742d66616d696c793a2671756f743b43656e7475727920476f746869632671756f743b2c73616e732d7365726966223e436f6e73756c74616e63790d0a20202020202053657276696365733c2f7370616e3e3c7370616e206c616e673d22454e2d474222207374796c653d226d736f2d616e73692d6c616e67756167653a454e2d4742223e3c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f6c693e0d0a203c2f756c3e0d0a3c2f756c3e, 'uploads/Facility 2.jpg', ''),
(8, 'Faculty', 'About', 'Faculty', 'Faculty', 0x3c7020636c6173733d224d736f4e6f726d616c22207374796c653d226d617267696e2d626f74746f6d3a30696e3b6c696e652d6865696768743a6e6f726d616c223e3c7370616e207374796c653d22666f6e742d66616d696c793a222063656e747572793d222220676f74686963222c73616e732d7365726966223d22223e415652494c2045594557552d454445524f2c204350503c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f703e0d0a0d0a3c7020636c6173733d224d736f4e6f726d616c22207374796c653d226d617267696e2d626f74746f6d3a30696e3b6c696e652d6865696768743a6e6f726d616c223e3c7370616e207374796c653d22666f6e742d66616d696c793a222063656e747572793d222220676f74686963222c73616e732d7365726966223d22223e466f72656e73696320616e64204372696d6520416e616c79736973203c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f703e0d0a0d0a3c7020636c6173733d224d736f4e6f726d616c22207374796c653d226d617267696e2d626f74746f6d3a30696e3b6c696e652d6865696768743a6e6f726d616c223e3c7370616e207374796c653d22666f6e742d66616d696c793a222063656e747572793d222220676f74686963222c73616e732d7365726966223d22223e3c6f3a703e266e6273703b3c2f6f3a703e3c2f7370616e3e3c2f703e0d0a0d0a3c7020636c6173733d224d736f4e6f726d616c22207374796c653d226d617267696e2d626f74746f6d3a30696e3b6c696e652d6865696768743a6e6f726d616c223e3c7370616e207374796c653d226d736f2d666172656173742d666f6e742d66616d696c793a222074696d65733d2222206e65773d222220726f6d616e223b6d736f2d626964692d666f6e742d66616d696c793a63616c696272693b3d2222206d736f2d666172656173742d6c616e67756167653a2330633030223d22223e3c212d2d5b69662067746520766d6c20315d3e3c763a7368617065747970652069643d225f78303030305f743735220d0a20636f6f726473697a653d2232313630302c323136303022206f3a7370743d22373522206f3a70726566657272656c61746976653d22742220706174683d226d403440356c40344031314039403131403940357865220d0a2066696c6c65643d226622207374726f6b65643d2266223e0d0a203c763a7374726f6b65206a6f696e7374796c653d226d69746572222f3e0d0a203c763a666f726d756c61733e0d0a20203c763a662065716e3d226966206c696e65447261776e20706978656c4c696e6557696474682030222f3e0d0a20203c763a662065716e3d2273756d20403020312030222f3e0d0a20203c763a662065716e3d2273756d20302030204031222f3e0d0a20203c763a662065716e3d2270726f6420403220312032222f3e0d0a20203c763a662065716e3d2270726f6420403320323136303020706978656c5769647468222f3e0d0a20203c763a662065716e3d2270726f6420403320323136303020706978656c486569676874222f3e0d0a20203c763a662065716e3d2273756d20403020302031222f3e0d0a20203c763a662065716e3d2270726f6420403620312032222f3e0d0a20203c763a662065716e3d2270726f6420403720323136303020706978656c5769647468222f3e0d0a20203c763a662065716e3d2273756d2040382032313630302030222f3e0d0a20203c763a662065716e3d2270726f6420403720323136303020706978656c486569676874222f3e0d0a20203c763a662065716e3d2273756d204031302032313630302030222f3e0d0a203c2f763a666f726d756c61733e0d0a203c763a70617468206f3a657874727573696f6e6f6b3d226622206772616469656e7473686170656f6b3d227422206f3a636f6e6e656374747970653d2272656374222f3e0d0a203c6f3a6c6f636b20763a6578743d22656469742220617370656374726174696f3d2274222f3e0d0a3c2f763a7368617065747970653e3c763a73686170652069643d225f78303030305f69313032352220747970653d22235f78303030305f74373522207374796c653d2777696474683a3436372e3570743b0d0a206865696768743a3236352e357074273e0d0a203c763a696d61676564617461207372633d2266696c653a2f2f2f433a2f55736572732f6f64756f6c2f417070446174612f4c6f63616c2f54656d702f6d736f68746d6c636c6970312f30312f636c69705f696d6167653030312e706e67220d0a20206f3a7469746c653d22222f3e0d0a3c2f763a73686170653e3c215b656e6469665d2d2d3e3c212d2d5b69662021766d6c5d2d2d3e3c696d672077696474683d2236323322206865696768743d2233353422207372633d2266696c653a2f2f2f433a2f55736572732f6f64756f6c2f417070446174612f4c6f63616c2f54656d702f6d736f68746d6c636c6970312f30312f636c69705f696d6167653030322e706e672220763a7368617065733d225f78303030305f6931303235223e3c212d2d5b656e6469665d2d2d3e3c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f703e0d0a0d0a3c7020636c6173733d224d736f4e6f726d616c22207374796c653d226d617267696e2d626f74746f6d3a30696e3b6c696e652d6865696768743a6e6f726d616c223e3c7370616e207374796c653d226d736f2d666172656173742d666f6e742d66616d696c793a222074696d65733d2222206e65773d222220726f6d616e223b6d736f2d626964692d666f6e742d66616d696c793a63616c696272693b3d2222206d736f2d666172656173742d6c616e67756167653a2330633030223d22223e3c6f3a703e266e6273703b3c2f6f3a703e3c2f7370616e3e3c2f703e0d0a0d0a3c7020636c6173733d224d736f4c69737450617261677261706843785370466972737422207374796c653d226d617267696e2d626f74746f6d3a30696e3b6d736f2d6164642d73706163653a6175746f223e3c7370616e207374796c653d22666f6e742d73697a653a392e3070743b6c696e652d6865696768743a313037253b666f6e742d66616d696c793a222063656e747572793d222220676f74686963222c73616e732d7365726966223d22223e3c6f3a703e266e6273703b3c2f6f3a703e3c2f7370616e3e3c2f703e0d0a0d0a3c7020636c6173733d224d736f4c697374506172616772617068437853704d6964646c6522207374796c653d226d617267696e2d626f74746f6d3a30696e3b6d736f2d6164642d73706163653a0d0a6175746f3b746578742d696e64656e743a2d2e3235696e3b6d736f2d6c6973743a6c30206c6576656c31206c666f31223e3c212d2d5b69662021737570706f72744c697374735d2d2d3e3c7370616e207374796c653d22666f6e742d66616d696c793a53796d626f6c3b6d736f2d666172656173742d666f6e742d66616d696c793a53796d626f6c3b6d736f2d626964692d666f6e742d66616d696c793a0d0a53796d626f6c3b6d736f2d626964692d666f6e742d7765696768743a626f6c64223e3c7370616e207374796c653d226d736f2d6c6973743a49676e6f7265223ec2b73c7370616e207374796c653d22666f6e743a372e30707420222074696d65733d2222206e65773d222220726f6d616e22223d22223e266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b203c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c212d2d5b656e6469665d2d2d3e3c623e3c7370616e207374796c653d22666f6e742d66616d696c793a222063656e747572793d222220676f74686963222c73616e732d7365726966223d22223e437269746963616c205468696e6b696e6720616e640d0a496e74656c6c6967656e636520416e616c79736973203c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f623e3c2f703e0d0a0d0a3c7020636c6173733d224d736f4c697374506172616772617068437853704d6964646c6522207374796c653d226d617267696e2d626f74746f6d3a30696e3b6d736f2d6164642d73706163653a0d0a6175746f223e3c623e3c7370616e207374796c653d22666f6e742d66616d696c793a222063656e747572793d222220676f74686963222c73616e732d7365726966223d22223e3c6f3a703e266e6273703b3c2f6f3a703e3c2f7370616e3e3c2f623e3c2f703e0d0a0d0a3c7020636c6173733d224d736f4c697374506172616772617068437853704d6964646c6522207374796c653d226d617267696e2d626f74746f6d3a30696e3b6d736f2d6164642d73706163653a0d0a6175746f223e3c7370616e207374796c653d22666f6e742d66616d696c793a222063656e747572793d222220676f74686963222c73616e732d7365726966223d22223e44722041646577616c65204164656167626f3c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f703e0d0a0d0a3c7020636c6173733d224d736f4c697374506172616772617068437853704d6964646c6522207374796c653d226d617267696e2d626f74746f6d3a30696e3b6d736f2d6164642d73706163653a0d0a6175746f223e3c7370616e207374796c653d22666f6e742d66616d696c793a222063656e747572793d222220676f74686963222c73616e732d7365726966223d22223e446f63e28099732050726f66696c653c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f703e0d0a0d0a3c7020636c6173733d224d736f4c697374506172616772617068437853704d6964646c6522207374796c653d226d617267696e2d626f74746f6d3a30696e3b6d736f2d6164642d73706163653a0d0a6175746f223e3c7370616e207374796c653d22666f6e742d66616d696c793a222063656e747572793d222220676f74686963222c73616e732d7365726966223d22223e3c6f3a703e266e6273703b3c2f6f3a703e3c2f7370616e3e3c2f703e0d0a0d0a3c7020636c6173733d224d736f4c697374506172616772617068437853704d6964646c6522207374796c653d226d617267696e2d626f74746f6d3a30696e3b6d736f2d6164642d73706163653a0d0a6175746f3b746578742d696e64656e743a2d2e3235696e3b6d736f2d6c6973743a6c30206c6576656c31206c666f31223e3c212d2d5b69662021737570706f72744c697374735d2d2d3e3c7370616e207374796c653d22666f6e742d66616d696c793a53796d626f6c3b6d736f2d666172656173742d666f6e742d66616d696c793a53796d626f6c3b6d736f2d626964692d666f6e742d66616d696c793a0d0a53796d626f6c3b6d736f2d626964692d666f6e742d7765696768743a626f6c64223e3c7370616e207374796c653d226d736f2d6c6973743a49676e6f7265223ec2b73c7370616e207374796c653d22666f6e743a372e30707420222074696d65733d2222206e65773d222220726f6d616e22223d22223e266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b203c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c212d2d5b656e6469665d2d2d3e3c623e3c7370616e207374796c653d22666f6e742d66616d696c793a222063656e747572793d222220676f74686963222c73616e732d7365726966223d22223e4d616e6167656d656e74206f6620507269766174652053656375726974793c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f623e3c2f703e0d0a0d0a3c7020636c6173733d224d736f4c697374506172616772617068437853704d6964646c6522207374796c653d226d617267696e2d626f74746f6d3a30696e3b6d736f2d6164642d73706163653a0d0a6175746f223e3c623e3c7370616e207374796c653d22666f6e742d66616d696c793a222063656e747572793d222220676f74686963222c73616e732d7365726966223d22223e3c6f3a703e266e6273703b3c2f6f3a703e3c2f7370616e3e3c2f623e3c2f703e0d0a0d0a3c7020636c6173733d224d736f4c697374506172616772617068437853704c61737422207374796c653d226d617267696e2d626f74746f6d3a30696e3b6d736f2d6164642d73706163653a6175746f223e3c7370616e207374796c653d22666f6e742d66616d696c793a222063656e747572793d222220676f74686963222c73616e732d7365726966223d22223e4368726973204164696777753c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f703e0d0a0d0a3c7020636c6173733d2270762d61626f757473756d6d6172792d7465787422207374796c653d226d617267696e2d6c6566743a2e35696e223e3c7370616e207374796c653d22666f6e742d73697a653a0d0a31312e3070743b666f6e742d66616d696c793a222063656e747572793d222220676f74686963222c73616e732d7365726966223d22223e4e6174696f6e616c2047656e6572616c205365637265746172792061740d0a4173736f63696174696f6e206f66204c6963656e73656420507269766174652053656375726974792050726163746974696f6e657273206f66204e6967657269612028414c5053504e293c7370616e20636c6173733d226c742d6c696e652d636c616d707261772d6c696e65223e203c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f7370616e3e3c2f703e0d0a0d0a3c7020636c6173733d2270762d61626f757473756d6d6172792d7465787422207374796c653d226d617267696e2d6c6566743a2e35696e223e3c7370616e20636c6173733d226c742d6c696e652d636c616d707261772d6c696e65223e3c7370616e207374796c653d22666f6e742d73697a653a31312e3070743b666f6e742d66616d696c793a222063656e747572793d222220676f74686963222c73616e732d73657269663b3d2222206d736f2d616e73692d6c616e67756167653a656e2d7573223d22223e4d616e6167696e67204469726563746f722f43454f204b6573746572736f6e205365637572697479204c696d697465643c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f7370616e3e3c2f703e0d0a0d0a3c7020636c6173733d2270762d61626f757473756d6d6172792d7465787422207374796c653d226d617267696e2d6c6566743a2e35696e223e3c7370616e20636c6173733d226c742d6c696e652d636c616d707261772d6c696e65223e3c7370616e207374796c653d22666f6e742d73697a653a31312e3070743b666f6e742d66616d696c793a222063656e747572793d222220676f74686963222c73616e732d7365726966223d22223e457870657269656e6365640d0a4d616e6167696e67204469726563746f72207769746820612064656d6f6e7374726174656420686973746f7279206f6620776f726b696e6720696e2074686520736563757269747920616e640d0a696e7665737469676174696f6e7320696e6475737472792e20536b696c6c656420696e204e65676f74696174696f6e2c20427573696e65737320506c616e6e696e672c205269736b0d0a4d616e6167656d656e742c204f7065726174696f6e73204d616e6167656d656e742c20616e64204d6963726f736f667420457863656c2e205374726f6e6720627573696e6573730d0a646576656c6f706d656e742070726f66657373696f6e616c207769746820612042616368656c6f72206f6620536369656e63652028422e53632e2920666f637573656420696e0d0a506f6c69746963616c20536369656e636520616e64205075626c69632041646d696e697374726174696f6e2066726f6d20556e6976657273697479206f662042656e696e2e3c2f7370616e3e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a31312e3070743b666f6e742d66616d696c793a222063656e747572793d222220676f74686963222c73616e732d7365726966223d22223e203c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f703e0d0a0d0a3c7020636c6173733d224d736f4c69737450617261677261706843785370466972737422207374796c653d226d617267696e2d626f74746f6d3a30696e3b6d736f2d6164642d73706163653a6175746f223e3c7370616e207374796c653d22666f6e742d66616d696c793a222063656e747572793d222220676f74686963222c73616e732d7365726966223d22223e3c6f3a703e266e6273703b3c2f6f3a703e3c2f7370616e3e3c2f703e0d0a0d0a3c7020636c6173733d224d736f4c697374506172616772617068437853704d6964646c6522207374796c653d226d617267696e2d626f74746f6d3a30696e3b6d736f2d6164642d73706163653a0d0a6175746f223e3c7370616e207374796c653d22666f6e742d66616d696c793a222063656e747572793d222220676f74686963222c73616e732d7365726966223d22223e3c6f3a703e266e6273703b3c2f6f3a703e3c2f7370616e3e3c2f703e0d0a0d0a3c7020636c6173733d224d736f4c697374506172616772617068437853704d6964646c6522207374796c653d226d617267696e2d626f74746f6d3a30696e3b6d736f2d6164642d73706163653a0d0a6175746f3b746578742d696e64656e743a2d2e3235696e3b6d736f2d6c6973743a6c30206c6576656c31206c666f31223e3c212d2d5b69662021737570706f72744c697374735d2d2d3e3c7370616e207374796c653d22666f6e742d66616d696c793a53796d626f6c3b6d736f2d666172656173742d666f6e742d66616d696c793a53796d626f6c3b6d736f2d626964692d666f6e742d66616d696c793a0d0a53796d626f6c3b6d736f2d626964692d666f6e742d7765696768743a626f6c64223e3c7370616e207374796c653d226d736f2d6c6973743a49676e6f7265223ec2b73c7370616e207374796c653d22666f6e743a372e30707420222074696d65733d2222206e65773d222220726f6d616e22223d22223e266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b203c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c212d2d5b656e6469665d2d2d3e3c623e3c7370616e206c616e673d22656e2d555322207374796c653d22666f6e742d66616d696c793a222063656e747572793d222220676f74686963222c73616e732d73657269663b6d736f2d666172656173742d666f6e742d66616d696c793a3d2222202274696d65733d2222206e65773d222220726f6d616e223b6d736f2d616e73692d6c616e67756167653a23306330303b6d736f2d666172656173742d6c616e67756167653a2330633030223d22223e436f72727570740d0a5072616374696365732026616d703b2046696e616e6369616c204372696d65203c2f7370616e3e3c2f623e3c623e3c7370616e207374796c653d22666f6e742d66616d696c793a222063656e747572793d222220676f74686963222c73616e732d7365726966223d22223e3c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f623e3c2f703e0d0a0d0a3c7020636c6173733d224d736f4c697374506172616772617068437853704d6964646c6522207374796c653d226d617267696e2d626f74746f6d3a30696e3b6d736f2d6164642d73706163653a0d0a6175746f223e3c7370616e207374796c653d22666f6e742d66616d696c793a222063656e747572793d222220676f74686963222c73616e732d7365726966223d22223e3c6f3a703e266e6273703b3c2f6f3a703e3c2f7370616e3e3c2f703e0d0a0d0a3c7020636c6173733d224d736f4c697374506172616772617068437853704d6964646c6522207374796c653d226d617267696e2d626f74746f6d3a30696e3b6d736f2d6164642d73706163653a0d0a6175746f223e3c7370616e207374796c653d22666f6e742d66616d696c793a222063656e747572793d222220676f74686963222c73616e732d7365726966223d22223e426172726973746572203c2f7370616e3e3c7370616e206c616e673d22656e2d555322207374796c653d22666f6e742d66616d696c793a222063656e747572793d222220676f74686963222c73616e732d73657269663b6d736f2d666172656173742d666f6e742d66616d696c793a3d2222202274696d65733d2222206e65773d222220726f6d616e223b6d736f2d626964692d666f6e742d66616d696c793a63616c696272693b6d736f2d616e73692d6c616e67756167653a23306330303b3d2222206d736f2d666172656173742d6c616e67756167653a2330633030223d22223e266e6273703b3c2f7370616e3e3c7370616e207374796c653d22666f6e742d66616d696c793a222063656e747572793d222220676f74686963222c73616e732d73657269663b3d2222206d736f2d666172656173742d666f6e742d66616d696c793a2274696d65733d2222206e65773d222220726f6d616e223b6d736f2d626964692d666f6e742d66616d696c793a63616c696272693b3d2222206d736f2d666172656173742d6c616e67756167653a2330633030223d22223e4d617474686577204f76752045737120284c4c4220484f4e532e424c293c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f703e0d0a0d0a3c7020636c6173733d224d736f4c697374506172616772617068437853704d6964646c6522207374796c653d226d617267696e2d626f74746f6d3a30696e3b6d736f2d6164642d73706163653a0d0a6175746f223e3c7370616e207374796c653d22666f6e742d66616d696c793a222063656e747572793d222220676f74686963222c73616e732d73657269663b6d736f2d666172656173742d666f6e742d66616d696c793a3d2222202274696d65733d2222206e65773d222220726f6d616e223b6d736f2d626964692d666f6e742d66616d696c793a63616c696272693b6d736f2d666172656173742d6c616e67756167653a2330633030223d22223e5072696e636970616c0d0a536f6c696369746f72204d617474686577204f7675e2809973204368616d626572733c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f703e0d0a0d0a3c7020636c6173733d224d736f4c697374506172616772617068437853704d6964646c6522207374796c653d226d617267696e2d626f74746f6d3a30696e3b6d736f2d6164642d73706163653a0d0a6175746f223e3c212d2d5b69662067746520766d6c20315d3e3c763a73686170652069643d225f78303030305f69313032362220747970653d22235f78303030305f7437352220616c743d2268747470733a2f2f6c68332e676f6f676c6575736572636f6e74656e742e636f6d2f612d2f414f6831344769792d4a78434a326e322d686a6649586c477165686f6a6867306659502d4c50684f3442614535673d733430220d0a207374796c653d2777696474683a38312e3570743b6865696768743a37307074273e0d0a203c763a696d61676564617461207372633d2266696c653a2f2f2f433a2f55736572732f6f64756f6c2f417070446174612f4c6f63616c2f54656d702f6d736f68746d6c636c6970312f30312f636c69705f696d6167653030332e6a7067220d0a20206f3a687265663d2268747470733a2f2f6c68332e676f6f676c6575736572636f6e74656e742e636f6d2f612d2f414f6831344769792d4a78434a326e322d686a6649586c477165686f6a6867306659502d4c50684f3442614535673d733430222f3e0d0a3c2f763a73686170653e3c215b656e6469665d2d2d3e3c212d2d5b69662021766d6c5d2d2d3e3c696d672077696474683d2231303922206865696768743d22393322207372633d2266696c653a2f2f2f433a2f55736572732f6f64756f6c2f417070446174612f4c6f63616c2f54656d702f6d736f68746d6c636c6970312f30312f636c69705f696d6167653030342e6a70672220616c743d2268747470733a2f2f6c68332e676f6f676c6575736572636f6e74656e742e636f6d2f612d2f414f6831344769792d4a78434a326e322d686a6649586c477165686f6a6867306659502d4c50684f3442614535673d7334302220763a7368617065733d225f78303030305f6931303236223e3c212d2d5b656e6469665d2d2d3e3c7370616e207374796c653d22666f6e742d66616d696c793a222063656e747572793d222220676f74686963222c73616e732d73657269663b3d2222206d736f2d666172656173742d666f6e742d66616d696c793a2274696d65733d2222206e65773d222220726f6d616e223b6d736f2d626964692d666f6e742d66616d696c793a63616c696272693b3d2222206d736f2d666172656173742d6c616e67756167653a2330633030223d22223e3c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f703e0d0a0d0a3c7020636c6173733d224d736f4c697374506172616772617068437853704d6964646c6522207374796c653d226d617267696e2d626f74746f6d3a30696e3b6d736f2d6164642d73706163653a0d0a6175746f223e3c7370616e207374796c653d22666f6e742d66616d696c793a222063656e747572793d222220676f74686963222c73616e732d7365726966223d22223e3c6f3a703e266e6273703b3c2f6f3a703e3c2f7370616e3e3c2f703e0d0a0d0a3c7020636c6173733d224d736f4c697374506172616772617068437853704d6964646c6522207374796c653d226d617267696e2d626f74746f6d3a30696e3b6d736f2d6164642d73706163653a0d0a6175746f223e3c7370616e207374796c653d22666f6e742d66616d696c793a222063656e747572793d222220676f74686963222c73616e732d7365726966223d22223e3c6f3a703e266e6273703b3c2f6f3a703e3c2f7370616e3e3c2f703e0d0a0d0a3c7020636c6173733d224d736f4c697374506172616772617068437853704d6964646c6522207374796c653d226d617267696e2d626f74746f6d3a30696e3b6d736f2d6164642d73706163653a0d0a6175746f3b746578742d696e64656e743a2d2e3235696e3b6d736f2d6c6973743a6c30206c6576656c31206c666f31223e3c212d2d5b69662021737570706f72744c697374735d2d2d3e3c7370616e207374796c653d22666f6e742d66616d696c793a53796d626f6c3b6d736f2d666172656173742d666f6e742d66616d696c793a53796d626f6c3b6d736f2d626964692d666f6e742d66616d696c793a0d0a53796d626f6c3b6d736f2d626964692d666f6e742d7765696768743a626f6c64223e3c7370616e207374796c653d226d736f2d6c6973743a49676e6f7265223ec2b73c7370616e207374796c653d22666f6e743a372e30707420222074696d65733d2222206e65773d222220726f6d616e22223d22223e266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b203c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c212d2d5b656e6469665d2d2d3e3c623e3c7370616e206c616e673d22656e2d555322207374796c653d22666f6e742d66616d696c793a222063656e747572793d222220676f74686963222c73616e732d73657269663b6d736f2d666172656173742d666f6e742d66616d696c793a3d2222202274696d65733d2222206e65773d222220726f6d616e223b6d736f2d616e73692d6c616e67756167653a23306330303b6d736f2d666172656173742d6c616e67756167653a2330633030223d22223e4372696d696e616c0d0a496e7665737469676174696f6e732026616d703b2050726f66696c696e673c2f7370616e3e3c2f623e3c623e3c7370616e206c616e673d22656e2d555322207374796c653d22666f6e742d66616d696c793a0d0a222063656e747572793d222220676f74686963222c73616e732d7365726966223d22223e203c2f7370616e3e3c2f623e3c623e3c7370616e207374796c653d22666f6e742d66616d696c793a222063656e747572793d222220676f74686963222c73616e732d7365726966223d22223e3c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f623e3c2f703e0d0a0d0a3c7020636c6173733d224d736f4c697374506172616772617068437853704d6964646c6522207374796c653d226d617267696e2d626f74746f6d3a30696e3b6d736f2d6164642d73706163653a0d0a6175746f223e3c623e3c7370616e207374796c653d22666f6e742d66616d696c793a222063656e747572793d222220676f74686963222c73616e732d7365726966223d22223e3c6f3a703e266e6273703b3c2f6f3a703e3c2f7370616e3e3c2f623e3c2f703e0d0a0d0a3c7020636c6173733d224d736f4c697374506172616772617068437853704d6964646c6522207374796c653d226d617267696e2d626f74746f6d3a30696e3b6d736f2d6164642d73706163653a0d0a6175746f223e3c7370616e207374796c653d22666f6e742d66616d696c793a222063656e747572793d222220676f74686963222c73616e732d73657269663b6d736f2d666172656173742d666f6e742d66616d696c793a3d2222202274696d65733d2222206e65773d222220726f6d616e223b6d736f2d626964692d666f6e742d66616d696c793a63616c696272693b6d736f2d666172656173742d6c616e67756167653a2330633030223d22223e535020416c61646573616e6d69204164656461706f3c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f703e0d0a0d0a3c7020636c6173733d224d736f4c697374506172616772617068437853704d6964646c6522207374796c653d226d617267696e2d626f74746f6d3a30696e3b6d736f2d6164642d73706163653a0d0a6175746f223e3c7370616e207374796c653d22666f6e742d66616d696c793a222063656e747572793d222220676f74686963222c73616e732d73657269663b6d736f2d666172656173742d666f6e742d66616d696c793a3d2222202274696d65733d2222206e65773d222220726f6d616e223b6d736f2d626964692d666f6e742d66616d696c793a63616c696272693b6d736f2d666172656173742d6c616e67756167653a2330633030223d22223e3c6f3a703e266e6273703b3c2f6f3a703e3c2f7370616e3e3c2f703e0d0a0d0a3c7020636c6173733d224d736f4c697374506172616772617068437853704d6964646c6522207374796c653d226d617267696e2d626f74746f6d3a30696e3b6d736f2d6164642d73706163653a0d0a6175746f223e3c7370616e207374796c653d22666f6e742d66616d696c793a222063656e747572793d222220676f74686963222c73616e732d7365726966223d22223e3c6f3a703e266e6273703b3c2f6f3a703e3c2f7370616e3e3c2f703e0d0a0d0a3c7020636c6173733d224d736f4c697374506172616772617068437853704d6964646c6522207374796c653d226d617267696e2d626f74746f6d3a30696e3b6d736f2d6164642d73706163653a0d0a6175746f3b746578742d696e64656e743a2d2e3235696e3b6d736f2d6c6973743a6c30206c6576656c31206c666f31223e3c212d2d5b69662021737570706f72744c697374735d2d2d3e3c7370616e207374796c653d22666f6e742d66616d696c793a53796d626f6c3b6d736f2d666172656173742d666f6e742d66616d696c793a53796d626f6c3b6d736f2d626964692d666f6e742d66616d696c793a0d0a53796d626f6c3b6d736f2d626964692d666f6e742d7765696768743a626f6c64223e3c7370616e207374796c653d226d736f2d6c6973743a49676e6f7265223ec2b73c7370616e207374796c653d22666f6e743a372e30707420222074696d65733d2222206e65773d222220726f6d616e22223d22223e266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b203c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c212d2d5b656e6469665d2d2d3e3c623e3c7370616e206c616e673d22656e2d555322207374796c653d22666f6e742d66616d696c793a222063656e747572793d222220676f74686963222c73616e732d73657269663b6d736f2d666172656173742d666f6e742d66616d696c793a3d2222202274696d65733d2222206e65773d222220726f6d616e223b6d736f2d616e73692d6c616e67756167653a23306330303b6d736f2d666172656173742d6c616e67756167653a2330633030223d22223e466f726563617374696e670d0a546572726f7269736d3c2f7370616e3e3c2f623e3c623e3c7370616e207374796c653d22666f6e742d66616d696c793a222063656e747572793d222220676f74686963222c73616e732d7365726966223d22223e3c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f623e3c2f703e0d0a0d0a3c7020636c6173733d224d736f4c697374506172616772617068437853704d6964646c6522207374796c653d226d617267696e2d626f74746f6d3a30696e3b6d736f2d6164642d73706163653a0d0a6175746f223e3c7370616e207374796c653d22666f6e742d66616d696c793a222063656e747572793d222220676f74686963222c73616e732d73657269663b6d736f2d666172656173742d666f6e742d66616d696c793a3d2222202274696d65733d2222206e65773d222220726f6d616e223b6d736f2d626964692d666f6e742d66616d696c793a63616c696272693b6d736f2d666172656173742d6c616e67756167653a2330633030223d22223e54616e77610d0a4173686972753c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f703e0d0a0d0a3c7020636c6173733d224d736f4c697374506172616772617068437853704c61737422207374796c653d226d617267696e2d626f74746f6d3a30696e3b6d736f2d6164642d73706163653a6175746f223e3c7370616e207374796c653d22666f6e742d66616d696c793a222063656e747572793d222220676f74686963222c73616e732d7365726966223d22223e3c212d2d5b69662067746520766d6c20315d3e3c763a73686170650d0a2069643d225f78303030305f69313032372220747970653d22235f78303030305f74373522207374796c653d2777696474683a35353370743b6865696768743a3337367074273e0d0a203c763a696d61676564617461207372633d2266696c653a2f2f2f433a2f55736572732f6f64756f6c2f417070446174612f4c6f63616c2f54656d702f6d736f68746d6c636c6970312f30312f636c69705f696d6167653030352e706e67220d0a20206f3a7469746c653d22222f3e0d0a3c2f763a73686170653e3c215b656e6469665d2d2d3e3c212d2d5b69662021766d6c5d2d2d3e3c696d672077696474683d2237333722206865696768743d2235303122207372633d2266696c653a2f2f2f433a2f55736572732f6f64756f6c2f417070446174612f4c6f63616c2f54656d702f6d736f68746d6c636c6970312f30312f636c69705f696d6167653030352e706e672220763a7368617065733d225f78303030305f6931303237223e3c212d2d5b656e6469665d2d2d3e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a392e3070743b0d0a6c696e652d6865696768743a313037253b666f6e742d66616d696c793a222063656e747572793d222220676f74686963222c73616e732d7365726966223d22223e3c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f703e0d0a0d0a3c7020636c6173733d224d736f4e6f726d616c22207374796c653d226d617267696e2d6c6566743a2e3235696e3b7461622d73746f70733a3431312e307074223e3c7370616e207374796c653d22666f6e742d66616d696c793a222063656e747572793d222220676f74686963222c73616e732d7365726966223d22223e3c6f3a703e266e6273703b3c2f6f3a703e3c2f7370616e3e3c2f703e0d0a0d0a3c7020636c6173733d224d736f4e6f726d616c22207374796c653d226d617267696e2d6c6566743a2e3235696e3b7461622d73746f70733a3431312e307074223e3c7370616e207374796c653d22666f6e742d66616d696c793a222063656e747572793d222220676f74686963222c73616e732d7365726966223d22223e3c6f3a703e266e6273703b3c2f6f3a703e3c2f7370616e3e3c2f703e, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `testimonial`
--

CREATE TABLE `testimonial` (
  `id` int(50) NOT NULL,
  `title` varchar(200) NOT NULL,
  `content` blob NOT NULL,
  `image_url` varchar(200) NOT NULL,
  `link` varchar(200) NOT NULL,
  `ext_link` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `topic`
--

CREATE TABLE `topic` (
  `id` int(11) NOT NULL,
  `alum` varchar(50) NOT NULL,
  `topic` text NOT NULL,
  `date` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `topic`
--

INSERT INTO `topic` (`id`, `alum`, `topic`, `date`) VALUES
(1, 'odu_femi@yahoo.com', 'How much is bitcoin worth in Naira', '2018-07-21');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alumni`
--
ALTER TABLE `alumni`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `apply_program`
--
ALTER TABLE `apply_program`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`);

--
-- Indexes for table `careers`
--
ALTER TABLE `careers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `counter`
--
ALTER TABLE `counter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `downloads`
--
ALTER TABLE `downloads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `download_manager`
--
ALTER TABLE `download_manager`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`);

--
-- Indexes for table `eventreg`
--
ALTER TABLE `eventreg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events_page`
--
ALTER TABLE `events_page`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faq_page`
--
ALTER TABLE `faq_page`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`);

--
-- Indexes for table `gallery_album`
--
ALTER TABLE `gallery_album`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `album_title` (`album_title`);

--
-- Indexes for table `home_page`
--
ALTER TABLE `home_page`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`);

--
-- Indexes for table `image_manager`
--
ALTER TABLE `image_manager`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`);

--
-- Indexes for table `job`
--
ALTER TABLE `job`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `management_team`
--
ALTER TABLE `management_team`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_page`
--
ALTER TABLE `master_page`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news_page`
--
ALTER TABLE `news_page`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`);

--
-- Indexes for table `photo_gallery`
--
ALTER TABLE `photo_gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `policy`
--
ALTER TABLE `policy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `programs`
--
ALTER TABLE `programs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prospect`
--
ALTER TABLE `prospect`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `school`
--
ALTER TABLE `school`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`);

--
-- Indexes for table `sub_page`
--
ALTER TABLE `sub_page`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonial`
--
ALTER TABLE `testimonial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `topic`
--
ALTER TABLE `topic`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alumni`
--
ALTER TABLE `alumni`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1640;

--
-- AUTO_INCREMENT for table `apply_program`
--
ALTER TABLE `apply_program`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `careers`
--
ALTER TABLE `careers`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `counter`
--
ALTER TABLE `counter`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=135;

--
-- AUTO_INCREMENT for table `downloads`
--
ALTER TABLE `downloads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `download_manager`
--
ALTER TABLE `download_manager`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `eventreg`
--
ALTER TABLE `eventreg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=204;

--
-- AUTO_INCREMENT for table `events_page`
--
ALTER TABLE `events_page`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `faq_page`
--
ALTER TABLE `faq_page`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gallery_album`
--
ALTER TABLE `gallery_album`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `home_page`
--
ALTER TABLE `home_page`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `image_manager`
--
ALTER TABLE `image_manager`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=189;

--
-- AUTO_INCREMENT for table `job`
--
ALTER TABLE `job`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `log`
--
ALTER TABLE `log`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `management_team`
--
ALTER TABLE `management_team`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `master_page`
--
ALTER TABLE `master_page`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `news_page`
--
ALTER TABLE `news_page`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `photo_gallery`
--
ALTER TABLE `photo_gallery`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `policy`
--
ALTER TABLE `policy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `programs`
--
ALTER TABLE `programs`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `prospect`
--
ALTER TABLE `prospect`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=514;

--
-- AUTO_INCREMENT for table `school`
--
ALTER TABLE `school`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `sub_page`
--
ALTER TABLE `sub_page`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `testimonial`
--
ALTER TABLE `testimonial`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `topic`
--
ALTER TABLE `topic`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
