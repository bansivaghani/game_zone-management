-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 08, 2024 at 09:47 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ksk_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_aids`
--

CREATE TABLE `tbl_aids` (
  `T_ID` int(100) NOT NULL,
  `T_IMG` varchar(500) NOT NULL,
  `T_EVENT_NAME` varchar(500) NOT NULL,
  `T_DATE` varchar(50) NOT NULL,
  `T_DESC` varchar(2000) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_aids`
--

INSERT INTO `tbl_aids` (`T_ID`, `T_IMG`, `T_EVENT_NAME`, `T_DATE`, `T_DESC`) VALUES
(5, '5WhatsApp Image 2021-09-01 at 9.15.04 AM.jpeg', '1', '2021-09-01', '1'),
(6, '6WhatsApp Image 2021-09-01 at 9.15.05 AM.jpeg', '2', '2021-09-01', '2'),
(7, '7WhatsApp Image 2021-09-01 at 9.15.06 AM (1).jpeg', '3', '2021-09-01', '3'),
(9, '9WhatsApp Image 2021-09-01 at 9.15.06 AM.jpeg', '5', '2021-09-01', '5');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_aword`
--

CREATE TABLE `tbl_aword` (
  `A_ID` int(10) NOT NULL,
  `A_IMG` varchar(500) NOT NULL,
  `A_DATE` varchar(50) NOT NULL,
  `A_DESC` varchar(2000) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_aword`
--

INSERT INTO `tbl_aword` (`A_ID`, `A_IMG`, `A_DATE`, `A_DESC`) VALUES
(38, '38award32.JPG', '2021-09-01', 'The founder president of the organisation, late Smt. Lilaben Kapasi was given Nari Suraksha Award in 1992 by the Govt. Of Gujarat for her contribution in the field of Women Upliftment and Empowerment.'),
(37, '37Saurastra Chember Of Comerch BVN dwara Excel Excilant Avord Swikarta Sanshthana Pramukh And Hoddedaro.jpg', '2021-09-01', 'During the Tourism Year of 2005-2006, Govt. Of Gujarat had arranged a Handicraft Fair in which the organization had participated and was given 1st number and also a cash prize of Rs.3,000/-'),
(36, '3632aword_20_AWARD2.jpg', '2021-09-01', 'During the Tourism Year of 2005-2006, Govt. Of Gujarat had arranged a Handicraft Fair in which the organization had participated and was given 1st number and also a cash prize of Rs.3,000/-'),
(35, '35DSC_0319.jpg', '2021-09-01', 'Our organization got award from FGI (Federation of Gujarat Industries Vadodara) for Excellence work on â€œOut Standing Achievement for 2011 in the field of Woman / Girl, Child welfare and empowermentâ€ and â€œout standing achievement in Woman Impowerment Award.â€ given by C.M. of Gujarat SHREE NARENDRABHAI MODI.'),
(34, '35AWARD31.jpg', '2021-09-01', 'OUTSTANDING INSTITUTION FOR WOMEN WELFARE FICCI FLOAWARD 2007 given by FICCI-FLO.'),
(39, '3929aword_17_102.jpg.jpeg', '2021-09-01', 'â€œGUJARAT MAHILA VIKAS AWARDâ€ with Rs. 1 lack cash Award Received for Best Institutional work for Woman development in 09-10. Award given by Smt. VASUBEN TRIVEDI State level minister of woman and child development dept.'),
(40, '40ashok gothia 1.JPG', '2021-09-01', 'Late Smt. Lilaben Kapasi was also given prestigious Ashok Gondhia Award, for her outstanding work for the welfare of women.');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_clg_req_fund`
--

CREATE TABLE `tbl_clg_req_fund` (
  `C_ID` int(10) NOT NULL,
  `C_COURSE` varchar(300) NOT NULL,
  `C_BATCH` int(10) NOT NULL,
  `C_AMT_RS` varchar(50) NOT NULL,
  `C_AMT_DOLLAR` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_clg_req_fund`
--

INSERT INTO `tbl_clg_req_fund` (`C_ID`, `C_COURSE`, `C_BATCH`, `C_AMT_RS`, `C_AMT_DOLLAR`) VALUES
(1, 'NAME  OF MSW COLLEGE\r\nName of Donors will be joint with college name E.E. Donors name PG Center of Social Work (MSW), Curve on 3â€™x6â€™ Granite plate', 60, '51,00,000', '70,000'),
(9, 'Sponsored a Student for 3 year for BCA  (Permanent)', 100, '2,51,000', '3,500'),
(10, 'Sponsored a Student for 1 year for SI/FS /MCA/Msc IT/MSW Post graduate Course (Permanent)', 100, '3,51,000', '5000'),
(11, 'Sponsored a Student for  3 year for BCA Course (one Time)', 100, '75,000', '1200'),
(12, 'Sponsored a Student fro 1 year for SI/FS / MSW/Msc IT Course (one Time)', 40, '21,000', '300'),
(13, 'DOUBLE SEAT TABLE', 30, '1,20,000', '2,000'),
(14, 'Android training class/Android version computer system with Wi-Fi  8 GB Ram', 15, '6,75,000', '9,500'),
(15, 'Short Term Course (Tally, Spoken English, Personality Development4 C.C.C., PHP, Hardware and Networking etc.) (One Time)\r\n(30 Beneficiary per batch)', 100, '1,00,000', '1500'),
(16, 'Study Books', 0, '1,00,000', '1,500');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_college`
--

CREATE TABLE `tbl_college` (
  `T_ID` int(100) NOT NULL,
  `T_IMG` varchar(500) NOT NULL,
  `T_EVENT_NAME` varchar(500) NOT NULL,
  `T_DATE` varchar(50) NOT NULL,
  `T_DESC` varchar(2000) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_college`
--

INSERT INTO `tbl_college` (`T_ID`, `T_IMG`, `T_EVENT_NAME`, `T_DATE`, `T_DESC`) VALUES
(3, '1WhatsApp Image 2021-09-01 at 2.45.28 PM.jpeg', '1', '2021-09-01', '1'),
(4, '4WhatsApp Image 2021-09-01 at 2.45.29 PM (1).jpeg', '2', '2021-09-01', '2'),
(5, '5WhatsApp Image 2021-09-01 at 2.45.29 PM.jpeg', '3', '2021-09-01', '3'),
(6, '6WhatsApp Image 2021-09-01 at 2.45.30 PM (1).jpeg', '4', '2021-09-01', '4'),
(7, '7WhatsApp Image 2021-09-01 at 2.45.30 PM (2).jpeg', '5', '2021-09-01', '5'),
(8, '8WhatsApp Image 2021-09-01 at 2.45.31 PM.jpeg', '6', '2021-09-01', '6');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_committee`
--

CREATE TABLE `tbl_committee` (
  `C_ID` int(10) NOT NULL,
  `C_NAME` varchar(200) NOT NULL,
  `C_DESIGNATION` varchar(200) NOT NULL,
  `C_IMG` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_committee`
--

INSERT INTO `tbl_committee` (`C_ID`, `C_NAME`, `C_DESIGNATION`, `C_IMG`) VALUES
(1, 'Smt. Kantaben S. Langaliya', 'President', '1commity_26_kantuben.jpg'),
(2, 'Smt. Kundanben V. Sheth', 'Vice-  president', '5commity_25_Kundanben.jpg'),
(3, 'Miss. Dolarben N. Kapasi', 'Secretary', '6commity_24_dolarben.jpg'),
(4, 'Miss Jagrutiben V. Acharya', 'Secretary', '7commity_23_jaguben.jpg'),
(5, 'Smt. Mayuriben R. Shah', 'Secretary', '8commity_22_mayuriben.jpg'),
(6, 'Smt. Rakshaben D. Gohil', 'Member', '9commity_21_Rakshaben.jpg'),
(8, 'Miss Belaben T. Bakraniya', 'Member', '16WhatsApp Image 2021-09-04 at 4.20.54 PM.jpeg'),
(9, 'Smt. Shakuntalaben B. Bakaraniya', 'Member', '12commity_18_shakuntalaben.jpg'),
(7, 'Smt. Hinaben A. Kukadiya', 'Member', '13commity_17_Hinaben.jpg'),
(11, 'Smt. Minaxiben M. Paramar', 'Member', '14commity_16_Minaxiben.jpg'),
(12, 'Smt. Hanshaben B. Shah', 'Member', '15commity_15_Habsaben.jpg'),
(13, 'Smt. Amiben C. Devluck', 'Member', '16commity_14_Amiben.jpg'),
(14, 'Smt. Kirtiben H. Danidhariya', 'Co.Op.  Member', '17commity_13_Picture 028.jpg'),
(15, 'Dr. Smt. Parulben N. Bhatt', 'Co.Op.  Member', '18commity_12_parulben.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_computer`
--

CREATE TABLE `tbl_computer` (
  `T_ID` int(100) NOT NULL,
  `T_IMG` varchar(500) NOT NULL,
  `T_EVENT_NAME` varchar(500) NOT NULL,
  `T_DATE` varchar(50) NOT NULL,
  `T_DESC` varchar(2000) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_computer`
--

INSERT INTO `tbl_computer` (`T_ID`, `T_IMG`, `T_EVENT_NAME`, `T_DATE`, `T_DESC`) VALUES
(2, '1WhatsApp Image 2020-12-21 at 3.53.26 PM (4).jpeg', '1', '2021-09-01', '1'),
(3, '3WhatsApp Image 2020-12-21 at 3.53.28 PM (5).jpeg', '2', '2021-09-01', '2'),
(4, '4WhatsApp Image 2020-12-22 at 3.56.59 PM.jpeg', '3', '2021-09-01', '3'),
(5, '5WhatsApp Image 2020-12-22 at 3.59.57 PM.jpeg', '4', '2021-09-01', '4'),
(6, '6WhatsApp Image 2021-03-30 at 4.20.17 PM.jpeg', '5', '2021-09-01', '5');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_contact`
--

CREATE TABLE `tbl_contact` (
  `id` int(5) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `message` varchar(1500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_contact`
--

INSERT INTO `tbl_contact` (`id`, `name`, `email`, `mobile`, `message`) VALUES
(1, 'Arjan', 'arjansolanki97@gmail.com', '8758387498', 'Hi....! arjansolanki97@gmail.com arjansolanki97@gmail.com arjansolanki97@gmail.com arjansolanki97@gmail.com arjansolanki97@gmail.com arjansolanki97@gmail.com arjansolanki97@gmail.com'),
(2, 'Arjan Solanki', 'arjansolanki@yandex.com', '01234567890', 'Demo Message'),
(3, 'Arjan Solanki', 'arjansolanki@yandex.com', '01234567890', '000000');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_donner`
--

CREATE TABLE `tbl_donner` (
  `D_ID` int(10) NOT NULL,
  `D_NAME` varchar(200) NOT NULL,
  `D_TYPE` varchar(200) NOT NULL,
  `D_IMG` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_donner`
--

INSERT INTO `tbl_donner` (`D_ID`, `D_NAME`, `D_TYPE`, `D_IMG`) VALUES
(5, 'Smt.Sushilaben Sevantibhai Kapashi', 'Donner', '105.jpg'),
(6, 'Shree Sevantibhai Shantilal Kapashi', 'Donner', '506.jpg'),
(7, 'Smt.Nitinaben Indubhai Kapashi', 'Donner', '6Scan10024.jpg'),
(8, '	 Shree Indubhai Shantilal Kapashi', 'Donner', '704.jpg'),
(3, 'Smt.Shobhaben Rashiklal Dhariwala', 'Donner', '8shobhaben.jpg'),
(4, 'Shree Rashikbhai Manekchand Dhariwala', 'Donner', '9RMD SIR.jpg'),
(1, 'Smt.Manjulaben Chinubhai Shah', 'Donner', '10Scan10023.jpg'),
(2, 'Shree Chinubhai Himmatlal Shah', 'Donner', '11Scan10022.jpg'),
(10, 'Shree Kishorbhai Nandlal Shah', 'Donner', '12Scan10030.jpg'),
(9, 'Shri Kantilal Narandas Shah', 'Donner', '13Scan10003.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_family`
--

CREATE TABLE `tbl_family` (
  `T_ID` int(100) NOT NULL,
  `T_IMG` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `T_EVENT_NAME` varchar(500) NOT NULL,
  `T_DATE` varchar(50) NOT NULL,
  `T_DESC` varchar(2000) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_family`
--

INSERT INTO `tbl_family` (`T_ID`, `T_IMG`, `T_EVENT_NAME`, `T_DATE`, `T_DESC`) VALUES
(2, '3100_0423.JPG', '1', '2021-09-01', '1'),
(3, '3૧૮૧ દ્વારા ઉદ્યોગ ના બહેનો ને કાયદાકીય માર્ગદર્શન.jpg', '2', '2021-09-01', '2'),
(4, '4૧૮૧ દ્વારા દ્વારા કુ.સ,કે માં કેસ રીફર .jpg', '3', '2021-09-01', '3'),
(5, '5IMG_20200215_144815.jpg', '4', '2021-09-01', '4'),
(6, '6IMG_20200323_112253.jpg', '5', '2021-09-01', '5'),
(7, '7IMG_20200808_170939.jpg', '6', '2021-09-01', '6'),
(8, '88ad0c518-cd8d-4105-9de1-f01480b1d02c.jpg', '7', '2021-09-01', '7');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_golden`
--

CREATE TABLE `tbl_golden` (
  `G_ID` int(10) NOT NULL,
  `G_IMG` varchar(500) NOT NULL,
  `G_DATE` varchar(50) NOT NULL,
  `G_DESC` varchar(2000) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_golden`
--

INSERT INTO `tbl_golden` (`G_ID`, `G_IMG`, `G_DATE`, `G_DESC`) VALUES
(41, '1golden_27_pratishtha.jpg', '2021-08-03', 'MANAGAL â€œPRATISHTHAâ€ OF LORD â€œPARSHVANAHâ€ AT â€œDIKRI NU GHARâ€'),
(42, '42golden_28_bcacollege.jpg', '2021-08-03', 'Inauguration of Smt. Kalamaben Shantilal Kapashi B.C.A. Collage'),
(43, '43golden_29_rashiklalmanikchand.jpg', '2021-08-03', 'Inauguration of Smt. Shobhaben Rasiklal Maneshchand Dhariwal â€œDIKRINU GHARâ€ OLD AGE HOME'),
(44, '44golden_30_helthclub.jpg', '2021-08-03', 'Inauguration of health club by M.L.A. and Collector. This health club is the humble gift of donors and inspiration of Smt. Pinkiben & Smt. Nandiniben Kapashi'),
(45, '45golden_31_chinubhaishahinogration1.jpg', '2021-08-03', 'Instituteâ€™s new incarnation because of humble donor Shri Chinubhai Shah now it be highly known as Samaj Ratna Chinubhai Manjula Bhagini Mitra Mandal'),
(46, '46golden_32_jainyuva.jpg', '2021-08-03', 'Check gifted by Mumbai Jain Yuvak Sangh for â€œDikri nu Gharâ€. President and headpersons are visible in scene.'),
(47, '47golden_33_khakhraudhyog.jpg', '2021-08-03', 'Inauguration of store Department of Atamavallabh by honouble M.L.A. Mahendrasinh Sarvaiya.'),
(48, '48golden_34_udhyogbhavan.jpg', '2021-08-03', 'Inauguration of Smt. Kamalaben Shantilala Kapashi Udayog Bhavan by Pujay Acharya dev Shri Rajyashsurishvarji Maharaj Saheb & Sadhavi Varya Shri Vanchyamashriji (Pujay Bahen Maharaj)'),
(49, '49golden_36_manjibapa.jpg', '2021-08-03', 'Foundation laying of â€œDikri nu Gharâ€ by Manjibapa (Bagdana Ashram)'),
(50, '50golden_37_newbuildinginogration.jpg', '2021-08-03', 'New Building :- Inauguration of Presentâ€™s honorable personalities.'),
(51, '51golden_38_dipchandgardi.jpg', '2021-08-03', 'Foundation laying of new building was performed by Shri Dipchanbhai Gardi');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_khakhara`
--

CREATE TABLE `tbl_khakhara` (
  `T_ID` int(100) NOT NULL,
  `T_IMG` varchar(500) NOT NULL,
  `T_EVENT_NAME` varchar(500) NOT NULL,
  `T_DATE` varchar(50) NOT NULL,
  `T_DESC` varchar(2000) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_khakhara`
--

INSERT INTO `tbl_khakhara` (`T_ID`, `T_IMG`, `T_EVENT_NAME`, `T_DATE`, `T_DESC`) VALUES
(4, '120200827_170843.jpg', '1', '2021-09-02', '1'),
(5, '5IMG-20200821-WA0027.jpg', '2', '2021-09-02', '2'),
(6, '6IMG-20200821-WA0029.jpg', '3', '2021-09-02', '3'),
(7, '7IMG-20200821-WA0042.jpg', '4', '2021-09-02', '4'),
(8, '8IMG-20200915-WA0134.jpg', '5', '2021-09-02', '5'),
(9, '9IMG-20201108-WA0017 - Copy.jpg', '6', '2021-09-02', '6'),
(10, '10IMG-20200713-WA0106.jpg', '7', '2021-09-02', '7');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_login`
--

CREATE TABLE `tbl_login` (
  `L_ID` int(10) NOT NULL,
  `L_NAME` varchar(100) NOT NULL,
  `L_PASSWORD` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_login`
--

INSERT INTO `tbl_login` (`L_ID`, `L_NAME`, `L_PASSWORD`) VALUES
(3, 'admin', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mwwc`
--

CREATE TABLE `tbl_mwwc` (
  `T_ID` int(100) NOT NULL,
  `T_IMG` varchar(500) NOT NULL,
  `T_EVENT_NAME` varchar(500) NOT NULL,
  `T_DATE` varchar(50) NOT NULL,
  `T_DESC` varchar(2000) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_mwwc`
--

INSERT INTO `tbl_mwwc` (`T_ID`, `T_IMG`, `T_EVENT_NAME`, `T_DATE`, `T_DESC`) VALUES
(1, '8WhatsApp Image 2021-04-03 at 3.36.27 PM.jpeg', '1', '2021-08-12', '1'),
(2, '2karkirdi margdarshan 20-21.jpeg', '2', '2021-09-01', '2'),
(3, '3spoken english1.jpeg', '3', '2021-09-01', '3'),
(4, '4WhatsApp Image 2020-12-26 at 10.42.29 AM (3).jpeg', '4', '2021-09-01', '4');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_old_age`
--

CREATE TABLE `tbl_old_age` (
  `T_ID` int(100) NOT NULL,
  `T_IMG` varchar(500) NOT NULL,
  `T_EVENT_NAME` varchar(500) NOT NULL,
  `T_DATE` varchar(50) NOT NULL,
  `T_DESC` varchar(2000) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_old_age`
--

INSERT INTO `tbl_old_age` (`T_ID`, `T_IMG`, `T_EVENT_NAME`, `T_DATE`, `T_DESC`) VALUES
(5, '134.jpg', '1', '2021-09-01', '1'),
(6, '611.jpg', '2', '2021-09-01', '2'),
(7, '724.jpg', '3', '2021-09-01', '3');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_old_age_home_fund`
--

CREATE TABLE `tbl_old_age_home_fund` (
  `O_ID` int(10) NOT NULL,
  `O_SCHEME` varchar(500) NOT NULL,
  `O_AMT_RS` varchar(50) NOT NULL,
  `O_AMT_DOLLAR` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_old_age_home_fund`
--

INSERT INTO `tbl_old_age_home_fund` (`O_ID`, `O_SCHEME`, `O_AMT_RS`, `O_AMT_DOLLAR`) VALUES
(3, 'Corpus fund for old age home-Permanent maintenance fund... The name of the donor will be engraved on the granite plate at under the main plate of gate which can be read from road. (Total 2 Plate);', '51,000,00 (One Plate)', '70,000'),
(6, 'Generator (The name of the donor will be engraved on the granite plate on the wall of chowk near generator) ', '15,00,000', '20,600'),
(7, 'Washing room Instrument (washing machine-2, water hitter-1 etc.) (The name of the donor will be engraved on the granite plate at outside the water room)', '5,11,111', '7,000'),
(8, 'Water Room  (R. O. System) (The name of the donor will be engraved on the granite plate at outside the water room)', '3,51,000', '4,900'),
(9, 'â€œYavat Chandra Divakarâ€- Permanent adoption Seat Free entry will be given in â€œDikri Nu Gharâ€ to one beneficiary (mother/father) from interest amount of principle. (The name of donor will be engraved on consecutive plate outside dining hall) Total Seat 100.', '2,51,000', '3,500'),
(10, 'Right side corridor â€“ The name on right side on first floor corridor inside the building. (The name of the donor will be engraved in granite plate of first floor)', '2,51,000', '3,500'),
(11, 'Left side corridor - The name on Left side on first floor corridor inside the building. (The name of the donor will be engraved in granite plate of first floor)', '2,51,000', '3,500'),
(12, 'The permanent daily Tithi (Dainik Tithi) in old age home (The name of donor will be engraved on consecutive plate (any of 1 day from year dessert food will be cater from interest of the principle amount as per wishes of the donor.  Total day - 365', '1,11,111', '1,550'),
(13, 'Health Care of elderly mother/parents (for 1 year) Banner of the donor name will be placed for 1 year.', '1,00,000', '1,500'),
(14, 'â€œDikri Nu Gharâ€ Dining hall Photo Scheme total 200 photos (The photo of the donor will be permanently placed in the Dining Hall) ', '51,000', '750'),
(15, 'Lift', '11,11,111', '17,500'),
(16, 'Rainy water storage tank and Pipe line fitting', '10,00,000', '14,000'),
(17, 'Daily Tithi (One day meals)', '3,500', '50');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_placement`
--

CREATE TABLE `tbl_placement` (
  `T_ID` int(100) NOT NULL,
  `T_IMG` varchar(500) NOT NULL,
  `T_EVENT_NAME` varchar(500) NOT NULL,
  `T_DATE` varchar(50) NOT NULL,
  `T_DESC` varchar(2000) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_placement`
--

INSERT INTO `tbl_placement` (`T_ID`, `T_IMG`, `T_EVENT_NAME`, `T_DATE`, `T_DESC`) VALUES
(1, '8placement.jpg', 'Placement', '2021-08-12', 'Placement'),
(2, '2placement photo.jpg', '1', '2021-09-02', '2'),
(3, '3placement (3).JPG', '3', '2021-09-02', '3'),
(4, '4placement (4).jpg', '4', '2021-09-02', '4');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sarafi`
--

CREATE TABLE `tbl_sarafi` (
  `T_ID` int(100) NOT NULL,
  `T_IMG` varchar(500) NOT NULL,
  `T_EVENT_NAME` varchar(500) NOT NULL,
  `T_DATE` varchar(50) NOT NULL,
  `T_DESC` varchar(2000) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_sarafi`
--

INSERT INTO `tbl_sarafi` (`T_ID`, `T_IMG`, `T_EVENT_NAME`, `T_DATE`, `T_DESC`) VALUES
(4, '1IMG_20210130_160909.jpg', '1', '2021-09-02', '1'),
(5, '5IMG_20210130_162350.jpg', '2', '2021-09-02', '2'),
(6, '8IMG_20210130_161757.jpg', '3', '2021-09-02', '3'),
(7, '7IMG_20210130_171950.jpg', '4', '2021-09-02', '4');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_slider`
--

CREATE TABLE `tbl_slider` (
  `id` int(4) NOT NULL,
  `img` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_slider`
--

INSERT INTO `tbl_slider` (`id`, `img`) VALUES
(2, '34.jpg'),
(3, '35.jpeg'),
(4, '36.jpg'),
(5, '37.jpg'),
(6, '38.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_social_program`
--

CREATE TABLE `tbl_social_program` (
  `T_ID` int(100) NOT NULL,
  `T_IMG` varchar(500) NOT NULL,
  `T_EVENT_NAME` varchar(500) NOT NULL,
  `T_DATE` varchar(50) NOT NULL,
  `T_DESC` varchar(2000) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_social_program`
--

INSERT INTO `tbl_social_program` (`T_ID`, `T_IMG`, `T_EVENT_NAME`, `T_DATE`, `T_DESC`) VALUES
(1, '117commity_13_Picture 028.jpg', 'sada', '2021-09-07', 'adasdas 123');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_social_service_fund`
--

CREATE TABLE `tbl_social_service_fund` (
  `S_ID` int(10) NOT NULL,
  `S_SCHEME` varchar(500) NOT NULL,
  `S_AMT_RS` varchar(50) NOT NULL,
  `S_AMT_DOLLAR` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tailoring`
--

CREATE TABLE `tbl_tailoring` (
  `T_ID` int(100) NOT NULL,
  `T_IMG` varchar(500) NOT NULL,
  `T_EVENT_NAME` varchar(500) NOT NULL,
  `T_DATE` varchar(50) NOT NULL,
  `T_DESC` varchar(2000) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_tailoring`
--

INSERT INTO `tbl_tailoring` (`T_ID`, `T_IMG`, `T_EVENT_NAME`, `T_DATE`, `T_DESC`) VALUES
(1, '1WhatsApp Image 2021-03-25 at 3.04.21 PM.jpeg', 'Class', '2021-08-13', 'Tailoring Class'),
(2, '2WhatsApp Image 2021-01-12 at 4.10.27 PM.jpeg', '2', '2021-09-01', '2'),
(3, '3WhatsApp Image 2021-03-30 at 3.34.30 PM.jpeg', '3', '2021-09-01', '3');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_training`
--

CREATE TABLE `tbl_training` (
  `T_ID` int(100) NOT NULL,
  `T_IMG` varchar(500) NOT NULL,
  `T_EVENT_NAME` varchar(500) NOT NULL,
  `T_DATE` varchar(50) NOT NULL,
  `T_DESC` varchar(2000) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_training`
--

INSERT INTO `tbl_training` (`T_ID`, `T_IMG`, `T_EVENT_NAME`, `T_DATE`, `T_DESC`) VALUES
(6, '1IMG-20200701-WA0113.jpg', '1', '2021-09-01', '1'),
(7, '7IMG-20200702-WA0030.jpg', '2', '2021-09-01', '2'),
(8, '8IMG-20200704-WA0054.jpg', '3', '2021-09-01', '3'),
(9, '9IMG-20200710-WA0115.jpg', '4', '2021-09-01', '4'),
(10, '10IMG-20200827-WA0179.jpg', '5', '2021-09-01', '5'),
(11, '11IMG-20200917-WA0038.jpg', '6', '2021-09-01', '6'),
(12, '12IMG-20201201-WA0219.jpg', '7', '2021-09-01', '7'),
(13, '13IMG-20200701-WA0099.jpg', '8', '2021-09-01', '8');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_trust_fund`
--

CREATE TABLE `tbl_trust_fund` (
  `O_ID` int(10) NOT NULL,
  `O_SCHEME` varchar(500) NOT NULL,
  `O_AMT_RS` varchar(50) NOT NULL,
  `O_AMT_DOLLAR` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_trust_fund`
--

INSERT INTO `tbl_trust_fund` (`O_ID`, `O_SCHEME`, `O_AMT_RS`, `O_AMT_DOLLAR`) VALUES
(18, 'Woman Empowerment Training Programme & Awareness Programme  (Annexure â€“ 1)', '15,00,000', '21000'),
(19, 'Diagnose Camp  by  super specialist Doctor â€“ 10 Camp (1 x 50000x10) etc. cancer, Ortho, Cardiac, Eye care etc.', '5,00,000', '7,000'),
(20, 'Furniture for Smt. LIlaben Mahila Sharafi Sahkari Mandali Ltd.', '15,00,000', '2,10,000'),
(21, 'Equipment purchase for Training Programme.', '2,00,000', '3,000'),
(22, 'Protin Powder for T. B. Patient & Distribution of pregnant woman & post need woman for one year.', '2,00,000', '3,000');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_udhyog_fund`
--

CREATE TABLE `tbl_udhyog_fund` (
  `K_ID` int(10) NOT NULL,
  `K_SCHEME` varchar(500) NOT NULL,
  `K_AMT_RS` varchar(50) NOT NULL,
  `K_AMT_DOLLAR` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_udhyog_fund`
--

INSERT INTO `tbl_udhyog_fund` (`K_ID`, `K_SCHEME`, `K_AMT_RS`, `K_AMT_DOLLAR`) VALUES
(2, 'Sadhu Sadhvi Vaiyavacch at vihar dham  for one year (8 Month) (60000/- 1 month)', '4,80,000', '7,000'),
(3, 'Education  And Medical Assist To Job Workers  Children\'s   for  one  year', '2,00,000', '3,000');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_video`
--

CREATE TABLE `tbl_video` (
  `id` int(4) NOT NULL,
  `url` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_video`
--

INSERT INTO `tbl_video` (`id`, `url`) VALUES
(5, '8bwoULMu1NI');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_aids`
--
ALTER TABLE `tbl_aids`
  ADD PRIMARY KEY (`T_ID`);

--
-- Indexes for table `tbl_aword`
--
ALTER TABLE `tbl_aword`
  ADD PRIMARY KEY (`A_ID`);

--
-- Indexes for table `tbl_clg_req_fund`
--
ALTER TABLE `tbl_clg_req_fund`
  ADD PRIMARY KEY (`C_ID`);

--
-- Indexes for table `tbl_college`
--
ALTER TABLE `tbl_college`
  ADD PRIMARY KEY (`T_ID`);

--
-- Indexes for table `tbl_committee`
--
ALTER TABLE `tbl_committee`
  ADD PRIMARY KEY (`C_ID`);

--
-- Indexes for table `tbl_computer`
--
ALTER TABLE `tbl_computer`
  ADD PRIMARY KEY (`T_ID`);

--
-- Indexes for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_donner`
--
ALTER TABLE `tbl_donner`
  ADD PRIMARY KEY (`D_ID`);

--
-- Indexes for table `tbl_family`
--
ALTER TABLE `tbl_family`
  ADD PRIMARY KEY (`T_ID`);

--
-- Indexes for table `tbl_golden`
--
ALTER TABLE `tbl_golden`
  ADD PRIMARY KEY (`G_ID`);

--
-- Indexes for table `tbl_khakhara`
--
ALTER TABLE `tbl_khakhara`
  ADD PRIMARY KEY (`T_ID`);

--
-- Indexes for table `tbl_login`
--
ALTER TABLE `tbl_login`
  ADD PRIMARY KEY (`L_ID`);

--
-- Indexes for table `tbl_mwwc`
--
ALTER TABLE `tbl_mwwc`
  ADD PRIMARY KEY (`T_ID`);

--
-- Indexes for table `tbl_old_age`
--
ALTER TABLE `tbl_old_age`
  ADD PRIMARY KEY (`T_ID`);

--
-- Indexes for table `tbl_old_age_home_fund`
--
ALTER TABLE `tbl_old_age_home_fund`
  ADD PRIMARY KEY (`O_ID`);

--
-- Indexes for table `tbl_placement`
--
ALTER TABLE `tbl_placement`
  ADD PRIMARY KEY (`T_ID`);

--
-- Indexes for table `tbl_sarafi`
--
ALTER TABLE `tbl_sarafi`
  ADD PRIMARY KEY (`T_ID`);

--
-- Indexes for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_social_program`
--
ALTER TABLE `tbl_social_program`
  ADD PRIMARY KEY (`T_ID`);

--
-- Indexes for table `tbl_social_service_fund`
--
ALTER TABLE `tbl_social_service_fund`
  ADD PRIMARY KEY (`S_ID`);

--
-- Indexes for table `tbl_tailoring`
--
ALTER TABLE `tbl_tailoring`
  ADD PRIMARY KEY (`T_ID`);

--
-- Indexes for table `tbl_training`
--
ALTER TABLE `tbl_training`
  ADD PRIMARY KEY (`T_ID`);

--
-- Indexes for table `tbl_trust_fund`
--
ALTER TABLE `tbl_trust_fund`
  ADD PRIMARY KEY (`O_ID`);

--
-- Indexes for table `tbl_udhyog_fund`
--
ALTER TABLE `tbl_udhyog_fund`
  ADD PRIMARY KEY (`K_ID`);

--
-- Indexes for table `tbl_video`
--
ALTER TABLE `tbl_video`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_aids`
--
ALTER TABLE `tbl_aids`
  MODIFY `T_ID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_aword`
--
ALTER TABLE `tbl_aword`
  MODIFY `A_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `tbl_clg_req_fund`
--
ALTER TABLE `tbl_clg_req_fund`
  MODIFY `C_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tbl_college`
--
ALTER TABLE `tbl_college`
  MODIFY `T_ID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_committee`
--
ALTER TABLE `tbl_committee`
  MODIFY `C_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tbl_computer`
--
ALTER TABLE `tbl_computer`
  MODIFY `T_ID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_donner`
--
ALTER TABLE `tbl_donner`
  MODIFY `D_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_family`
--
ALTER TABLE `tbl_family`
  MODIFY `T_ID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_golden`
--
ALTER TABLE `tbl_golden`
  MODIFY `G_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `tbl_khakhara`
--
ALTER TABLE `tbl_khakhara`
  MODIFY `T_ID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_login`
--
ALTER TABLE `tbl_login`
  MODIFY `L_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_mwwc`
--
ALTER TABLE `tbl_mwwc`
  MODIFY `T_ID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_old_age`
--
ALTER TABLE `tbl_old_age`
  MODIFY `T_ID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_old_age_home_fund`
--
ALTER TABLE `tbl_old_age_home_fund`
  MODIFY `O_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tbl_placement`
--
ALTER TABLE `tbl_placement`
  MODIFY `T_ID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_sarafi`
--
ALTER TABLE `tbl_sarafi`
  MODIFY `T_ID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_social_program`
--
ALTER TABLE `tbl_social_program`
  MODIFY `T_ID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_social_service_fund`
--
ALTER TABLE `tbl_social_service_fund`
  MODIFY `S_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_tailoring`
--
ALTER TABLE `tbl_tailoring`
  MODIFY `T_ID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_training`
--
ALTER TABLE `tbl_training`
  MODIFY `T_ID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_trust_fund`
--
ALTER TABLE `tbl_trust_fund`
  MODIFY `O_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tbl_udhyog_fund`
--
ALTER TABLE `tbl_udhyog_fund`
  MODIFY `K_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_video`
--
ALTER TABLE `tbl_video`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
