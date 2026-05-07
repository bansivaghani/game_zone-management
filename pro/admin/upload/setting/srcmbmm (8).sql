-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 22, 2024 at 10:29 AM
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
-- Database: `srcmbmm`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity`
--

CREATE TABLE `activity` (
  `id` int(11) NOT NULL,
  `title` varchar(500) NOT NULL,
  `img` varchar(500) NOT NULL,
  `description` mediumtext NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `course_id` int(11) NOT NULL,
  `menu` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `activity`
--

INSERT INTO `activity` (`id`, `title`, `img`, `description`, `date`, `course_id`, `menu`) VALUES
(11, 'Orientation 1st Day: 03-07-2023', 'upload/activity/IMG-20230703-WA0040.jpg', '<br>', '2024-07-29', 3, 'Orientation 1st Day: 03-07-2023'),
(12, 'Lecture by Nehalbhai Trivedi: 04-07-2023', 'upload/activity/IMG_20230704_111953.jpg', '<br>', '2024-07-29', 3, 'Lecture by Nehalbhai Trivedi: 04-07-2023'),
(13, 'New Students Bhagini Visit: 05-07-2023', 'upload/activity/IMG_20230705_112550.jpg', '<br>', '2024-07-29', 3, 'New Students Bhagini Visit: 05-07-2023'),
(14, 'Teachers Day Celebration in College: 05-09-2023', 'upload/activity/IMG_20230905_085544.jpg', '<br>', '2024-07-29', 3, 'Teachers Day Celebration in College: 05-09-2023'),
(15, 'Guest Lecture by Narendrabhai Trivedi: 06-07-2023', 'upload/activity/IMG-20230706-WA0016.jpg', '<br>', '2024-07-29', 3, 'Guest Lecture by Narendrabhai Trivedi: 06-07-2023'),
(16, 'Mind Mapping Games in College: 07-07-2023', 'upload/activity/IMG-20230707-WA0058.jpg', '<br>', '2024-07-29', 3, 'Mind Mapping Games in College: 07-07-2023'),
(17, 'Fresher Party for FY BCA: 08-07-2023', 'upload/activity/IMG_20230708_121849_1.jpg', '<br>', '2024-07-29', 3, 'Fresher Party for FY BCA: 08-07-2023'),
(18, 'SY and TY Boys Bhagini Visit: 10-07-2023', 'upload/activity/IMG-20230710-WA0033.jpg', '<br>', '2024-07-29', 3, 'SY and TY Boys Bhagini Visit: 10-07-2023'),
(19, 'SY and TY Girls Bhagini Visit: 11-07-2023', 'upload/activity/IMG-20230711-WA0041.jpg', '<br>', '2024-07-29', 3, 'SY and TY Girls Bhagini Visit: 11-07-2023'),
(20, 'Sthapana Divas: 13-07-2023', 'upload/activity/IMG_20230713_164130.jpg', '<br>', '2024-07-29', 3, 'Sthapana Divas: 13-07-2023'),
(21, 'Independence Day Celebration: 15-08-2023', 'upload/activity/IMG_0651.JPG', '<br>', '2024-07-29', 3, 'Independence Day Celebration: 15-08-2023'),
(22, 'Sadharan Sabha: 21-06-2023', 'upload/activity/IMG_20230621_164300.jpg', '<br>', '2024-07-29', 3, 'Sadharan Sabha: 21-06-2023'),
(23, 'Yog Day: 21-06-2023', 'upload/activity/IMG-20230627-WA0011.jpg', '<br>', '2024-07-29', 3, 'Yog Day: 21-06-2023'),
(24, 'Word Line Day Celebration: 10-08-2023', 'upload/activity/IMG20230810124951.jpg', '<br>', '2024-07-29', 3, 'Word Line Day Celebration: 10-08-2023');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(100) NOT NULL,
  `name` varchar(200) NOT NULL,
  `gmail` varchar(200) NOT NULL,
  `mobile` char(14) NOT NULL,
  `aboutus` varchar(500) NOT NULL,
  `profession` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL,
  `image` varchar(250) NOT NULL,
  `service_title` varchar(250) NOT NULL,
  `address` varchar(100) NOT NULL,
  `Branch Title` varchar(250) NOT NULL,
  `role` varchar(50) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `gmail`, `mobile`, `aboutus`, `profession`, `password`, `image`, `service_title`, `address`, `Branch Title`, `role`, `date`) VALUES
(1, 'admin', 'admin@gmail.com', '7359951602', 'administrator', 'lawyer', 'admin', '', 'my services', '0', 'my brance', 'admin', '2024-04-11'),
(5, 'user', 'user@gmail.com', '7359951602', 'administrator', 'lawyer', 'user', '', '', '0', '0', 'user', '2024-04-11'),
(7, 'provider', 'provider@gmail.com', '7359951602', 'administrator', 'lawyer', 'provider', '', 'my services', '0', 'my brance', 'provider', '2024-04-11');

-- --------------------------------------------------------

--
-- Table structure for table `contactus`
--

CREATE TABLE `contactus` (
  `id` int(100) NOT NULL,
  `name` varchar(250) NOT NULL,
  `gmail` varchar(250) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `message` varchar(500) NOT NULL,
  `post date` date NOT NULL DEFAULT current_timestamp(),
  `img` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contactus`
--

INSERT INTO `contactus` (`id`, `name`, `gmail`, `subject`, `message`, `post date`, `img`) VALUES
(1, 'Vamika', 'chiku18@gmail.com', 'Food reviews', 'Amazinggg Experience!!!', '2024-04-17', 'images/feedback/user.png'),
(2, 'Laksh', 'laksh07@gmail.com', 'Food Quality', 'Nice service and quality...', '2024-04-17', 'images/feedback/user.png'),
(3, 'name', 'gmail', 'subject', 'message	', '2024-04-22', 'images/feedback/user.png'),
(4, '', '', '', '	', '2024-04-22', 'images/feedback/user.png'),
(5, '', '', '', '	', '2024-04-22', 'images/feedback/user.png'),
(6, '', '', '', '	', '2024-04-22', 'images/feedback/user.png'),
(7, '', '', '', '	', '2024-04-22', 'images/feedback/user.png');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `id` int(100) NOT NULL,
  `title` varchar(200) NOT NULL,
  `img` varchar(500) NOT NULL,
  `description` mediumtext NOT NULL,
  `user_id` int(100) NOT NULL,
  `post date` date NOT NULL DEFAULT current_timestamp(),
  `menu` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`id`, `title`, `img`, `description`, `user_id`, `post date`, `menu`) VALUES
(3, 'Smt. Kamalaben Shantilal Kapashi B.C.A. Collage', 'upload/course/college1.PNG', '<div class=\"single-post-content\">\n  <h3 class=\"blog-desc m-0 mb-4\">Shrimati Kamalaben Shantilal Kapashi College</h3>\n   <h3 class=\"blog-desc m-0 mb-4\">Newsletter displaying statistical information from 2012 to 2023</h3>\n <h3 class=\"blog-desc m-0 mb-4\">Proposal:</h3>\n                <p class=\"mb-4\">   \n                    The commendable effort to impart computer knowledge to students has been met with great satisfaction here. Your college, equipped with all facilities, has become a hub of modern knowledge for its students. Moreover, social activities continue to thrive within our institution, and the MSW course is also being effectively conducted. In this era of digitization, acquiring a government job is made easier through two courses: Diploma in Health Sanitary Inspector and Diploma in Fire and Safety. Students can obtain these diplomas within a year and secure a government job.\n                 </p>\n                <h3 class=\"blog-desc m-0 mb-lg-4 mb-3\">વિશેષતા :-</h3>\n                <div class=\"text-list mb-4\">\n                    <ol>\n\n\n<li>B.C.A કોર્સમાં બહેનો માટે ૫૦% ફી માં રાહત.</li>\n<li>MSC.IT કોર્સમાં બહેનો માટે ૫૦% ફી માં રાહત.</li>\n<li>MSW કોર્સમાં બહેનો માટે ૫૦% ફી માં રાહત</li>\n<li>O બહેનો માટે ફ્રી માં વાહન વ્યવસ્થા.</li>\n<li>O SC/ST/Minority/MYSY/EXAM તથા વિદ્યાર્થીને મળવા પાત્ર સરકારી સ્કોલરશીપના ફોર્મ ફ્રી માં ભરી આપવામાં આવે છે.</li>\n<li>0 ફ્રી Extra Computer Lab સમય ૧ થી ૩.</li>\n<li>એક્ષપર્ટ દ્વારા ઉચ્ચ કક્ષાના computer science ના સેમીનાર અને વર્કશોપ.</li>\n<li>AC Lab જેમાં 120 જેટલા computer ની વ્યવસ્થા.</li>\n<li>સતત વાલી સંપર્ક.</li>\n<li>યુનિટ દીઠ ટેસ્ટ તથા ૬ માસિક તથા ૧૨ માસિક પરિક્ષા.</li>\n\n                    </ol>\n                </div>  \n               </div>\n', 0, '2024-06-15', 'B.C.A. Collage'),
(6, 'Smt. Kamalaben Shantilal\nKapashi Prerit Shri\nAttamavalabh Mahila\nSwawlamban Kendra', 'upload/course/9IMG-20201108-WA0017 - Copy.jpg', '', 0, '2024-06-26', ''),
(7, 'Smt. Lilaben Mahila Sharafi \nSahkari Mandali Ltd.', 'upload/course/7IMG_20210130_171950.jpg', '<div class=\"single-post-content\">   <h3 class=\"blog-desc m-0 mb-4\">  **Shrimati Lilaben Mahila Sharafi Cooperative Society Ltd.** </h3>    <h3 class=\"blog-desc m-0 mb-4\">  Showing financial information from 2002 to 2022.   </h3>  <h3 class=\"blog-desc m-0 mb-4\">   Proposal:  </h3>                 <p class=\"mb-4\">   To provide women with easy access to funds for their family expenses and to securely maintain their savings, thereby realizing the noble vision of the organization\'s founder, late Shrimati Lilaben Kapasi, the Palitana foundation was established on 12-04-01.                     </p>                 <h3 class=\"blog-desc m-0 mb-lg-4 mb-3\">                  Available Services:                </h3>                 <div class=\"text-list mb-4\">   <ol>  <li> The current board managed by the cooperative society, which has 3115 shareholders, offers dividends up to Rs. 2 lakhs. There is a future plan to organize a program of Rs. 2 lakhs.</li>     <li> The sisters of the board provide life-saving vaccines for their children and families at no cost.</li>     <li> Members suffering from incurable diseases such as cancer, heart ailments, kidney problems, brain tumors, etc., receive financial assistance of Rs. 5000/- for treatment.</li>     <li> Members of the society who face death receive Rs. 5000/- as death assistance.</li>     <li> Recognizing the importance of women in families, the names of society members are solely opened in the bank for asset acquisition.</li>     <li> Women members wishing to purchase new assets in the family and wanting to receive benefits from the cooperative will be guided on entering their name in the asset.</li>     <li>Saving sentiment among women increases, so they are accepted for monthly rerecordings and bond terms.</li>     </ol>                    </div>                  </div>', 0, '2024-06-26', ''),
(8, 'Aids Awareness Programme', 'upload/course/9WhatsApp Image 2021-09-01 at 9.15.06 AM.jpeg', '<div class=\"single-post-content\">   <h3 class=\"blog-desc m-0 mb-4\">  **National AIDS Control Project - 5**  </h3>    <h3 class=\"blog-desc m-0 mb-4\">  Showing statistical information from 2008 to 2022 in the newspaper.    </h3>  <h3 class=\"blog-desc m-0 mb-4\">   Proposal:  </h3>                 <p class=\"mb-4\">   Raise awareness about not getting new HIV/AIDS infections.                   </p>                 <h3 class=\"blog-desc m-0 mb-lg-4 mb-3\">  Available Free Services:                </h3>                 <div class=\"text-list mb-4\">                  <p class=\"mb-4\">   Engaged in work with female sex workers and homosexual individuals, with medical checks every three months for each person. Condom distribution is done monthly as per requirement. Complete management of sexually transmitted diseases is done. HIV testing is done every six months for HIV-positive individuals. They meet every month and receive regular counseling for their medication. Personal counseling is done every month. Discussing HIV/AIDS and partner testing is done. Various services (benefits) provided by the government are available. Various training classes are conducted to make FSW sisters financially independent. So far, 280 sisters have taken training. Of which 70 sisters have become self-sufficient by doing sewing work at home. HIV-positive individuals are employed at five different places, enabling them to live with dignity in society. General people and family members do not discriminate against HIV-positive individuals, so an awareness program is conducted for them. And meetings are held at home.     </p>                   </div>                  </div>', 0, '2024-06-26', ''),
(9, 'Family Counseling Center', 'upload/course/3100_0423.jfif', '<div class=\"single-post-content\">   <h3 class=\"blog-desc m-0 mb-4\">  **Kutumb Salah Kendra** </h3>    <h3 class=\"blog-desc m-0 mb-4\">  Showing financial information from 1992 to 2022.    </h3>  <h3 class=\"blog-desc m-0 mb-4\">   Proposal:  </h3>                 <p class=\"mb-4\">   On 1-3-1992, initiated by the Central Social Welfare Board - New Delhi and Gujarat State Social Welfare Board - Ahmedabad, this subsidized scheme was started for the protection of women who have suffered from abuse and to establish justice for them.                    </p>                 <h3 class=\"blog-desc m-0 mb-lg-4 mb-3\">                  Available Services:                </h3>                 <div class=\"text-list mb-4\">                  <p class=\"mb-4\">   Women who have suffered from any form of abuse or face difficulties from in-laws are provided with free services through the Kutumb Salah Kendra to resolve their situations. The organization\'s officials and staff put in considerable effort to facilitate the reinstatement of beneficiaries into their families.  </p>                   </div>                  </div>', 0, '2024-06-26', ''),
(10, 'Multipupose women welfare\n Kendra\n', 'upload/course/Multipurpose Womens Welfare Centre.jpeg', '<div class=\"single-post-content\">   <h3 class=\"blog-desc m-0 mb-4\">  **Vividhlakshi Mahila Kalyan Kendra**  </h3>    <h3 class=\"blog-desc m-0 mb-4\">  Showing financial information from 2012 to 2022   </h3>  <h3 class=\"blog-desc m-0 mb-4\">   Proposal:  </h3>                 <p class=\"mb-4\">    On 12-6-08, the auspicious beginning of the Vividhlakshi Mahila Kalyan Kendra was initiated with the noble aim of reaching out to women beneficiaries, including those benefiting from government and other services, for comprehensive development.                     </p>                 <h3 class=\"blog-desc m-0 mb-lg-4 mb-3\">                  Available Services:                </h3>                 <div class=\"text-list mb-4\">                  <p class=\"mb-4\">    Widow assistance, elderly pension, national family assistance, Kunvarbai\'s motherhood assistance, disabled assistance, loan assistance, legal counseling, health assistance, economic earning, resources assistance under the Human Welfare Scheme, subsidy eligible loans for cottage industries through banks, birth and death registration, special benefits for BPL cardholders, etc., are provided to women. Guidance is also provided to women to obtain essential documents such as BPL cards, Aadhaar cards, election cards, ration cards, etc., and camps are organized for the same at local levels. </p>                   </div>                  </div>', 0, '2024-06-26', ''),
(11, 'Computer Training Classes', 'upload/course/Computer Training Classes.jpeg', '<div class=\"single-post-content\">   <h3 class=\"blog-desc m-0 mb-4\">  **Computer Department** </h3>    <h3 class=\"blog-desc m-0 mb-4\"> Newspaper displaying statistical information from 2001 to 2022.   </h3>  <h3 class=\"blog-desc m-0 mb-4\">   Proposal:  </h3>                 <p class=\"mb-4\">    With financial support from the Talaja-based institution\'s philanthropist Mr. Shri Kanti Lal Narandas Shah, Mrs. P. N. R. Shah established the Computer Training Class on April 1, 2001.                     </p>                 <h3 class=\"blog-desc m-0 mb-lg-4 mb-3\">  Available Free Services:                </h3>                 <div class=\"text-list mb-4\">                  <p class=\"mb-4\">   Children are provided education through courses like Kids Course in Computers, MS Office, Basic Course, DTP, and PhotoShop. The institution, through its managing member Mrs. Leelaben Mahila Sharafi Cooperative Mandal Limited, Palitana, offers free computer courses to its members and their daughters and sons.   </p>                   </div>                  </div>', 0, '2024-06-26', ''),
(12, 'Tranning Programs', 'upload/course/Tranning Programs .jpg', '', 0, '2024-06-26', ''),
(13, 'Sewing/Embroidery  Training \ncenter\n', 'upload/course/Tailoring Classes.jpeg', '<div class=\"single-post-content\">   <h3 class=\"blog-desc m-0 mb-4\">  **Embroidery and Stitching Department**  </h3>    <h3 class=\"blog-desc m-0 mb-4\"> Newspaper displaying statistical information from 2001 to 2022.  </h3>  <h3 class=\"blog-desc m-0 mb-4\">   Proposal:  </h3>                 <p class=\"mb-4\">    Under the sponsored Women and Child Development Scheme by Gandhinagar, sewing and stitching classes are offered free of cost to all women such as widows, elderly, and the unemployed. Training includes sewing, cutting, machine operation, embroidery work, beadwork, patchwork, beauty parlors, henna, computers, dance, spoken English, curtain stitching, fashion designing, and job work.                     </p>                 <h3 class=\"blog-desc m-0 mb-lg-4 mb-3\">  Available Free Services:                </h3>                 <div class=\"text-list mb-4\">                  <p class=\"mb-4\">    Training in sewing and embroidery is provided. Due to current training, women can manage household responsibilities and supplement income to cover expenses such as children\'s education, health, and other studies. This department\'s work aims to instill a sense of self-respect among women, especially those seeking financial independence.    </p>                   </div>                  </div>', 0, '2024-06-26', ''),
(14, 'Placement, ( પ્લેસમેન્ટ )', 'upload/course/Placement.jpg', '', 0, '2024-06-26', ''),
(15, 'Sau. Shobhabahen Rasiklal\nManekchand Dhariwal\nDikri nu Ghar (Vruddha\nMavtar Vruddhashram)\nSmt. P. N. R. Shah Mahila\nVruddhashram\n', 'upload/course/9IMG-20201108-WA0017 - Copy.jpg', '<div class=\"single-post-content\">   <h3 class=\"blog-desc m-0 mb-4\">    ** Smt. Shobhaben Rasiklal Manekchand Dhariwala \"Daughter\'s Home\" (Elderly Care Home) **  </h3>    <h3 class=\"blog-desc m-0 mb-4\">     Showing statistical information from 2011 to 2022.   </h3>  <h3 class=\"blog-desc m-0 mb-4\">   Proposal:  </h3>                 <p class=\"mb-4\">   Smt. Shobhaben Rasiklal Manekchand Dhariwala\'s \"Daughter\'s Home\": Due to societal division and family traditions, problems of the elderly have arisen. Therefore, the organization has started \"Daughter\'s Home\" under the plan to take care of elderly, disabled, and orphaned mothers. Currently, 36 beneficiaries are benefiting from the ongoing construction work in the modern 30,000 sq. ft. building.                    </p>                 <h3 class=\"blog-desc m-0 mb-lg-4 mb-3\">                  Available Services:                </h3>                 <div class=\"text-list mb-4\">   <ol>      <li> Accommodation for elderly, orphaned, and dependent mothers (parents) aged 55 and above. Admission is currently open.</li> <li> Daily three-time meals.</li> <li> Medical check-up by a qualified doctor.</li> <li> Care according to the doctor\'s advice, regular exercise, yoga-pranayama, recreational activities, cultural programs.</li> <li>Creative programs, gardening based on the preference of the elderly.</li> <li> Modern library.</li> <li> Indoor-outdoor sports facilities and various recreational equipment.</li> <li> Organizes events such as lectures, debates, and religious programs.</li> <li> Advice and counseling for the reintegration of elderly family members, including mediation through consultation.</li> <li> Provision of oxygen, medical check-ups, etc., in the premises of the elderly care home.</li>   </ol>                    </div>                  </div>', 0, '2024-06-26', ''),
(16, 'Smt. Sushilaben Sevantibhai\r\nKapashi & Nitinaben \r\nIndubhai Kapashi PG Center\r\nof MSW Collage', 'upload/course/college_BCA.jpeg', '<div class=\"single-post-content\">\r\n  <h3 class=\"blog-desc m-0 mb-4\">Shrimati Kamalaben Shantilal Kapashi College</h3>\r\n   <h3 class=\"blog-desc m-0 mb-4\">Newsletter displaying statistical information from 2012 to 2023</h3>\r\n <h3 class=\"blog-desc m-0 mb-4\">Proposal:</h3>\r\n                <p class=\"mb-4\">   \r\n                    The commendable effort to impart computer knowledge to students has been met with great satisfaction here. Your college, equipped with all facilities, has become a hub of modern knowledge for its students. Moreover, social activities continue to thrive within our institution, and the MSW course is also being effectively conducted. In this era of digitization, acquiring a government job is made easier through two courses: Diploma in Health Sanitary Inspector and Diploma in Fire and Safety. Students can obtain these diplomas within a year and secure a government job.\r\n                 </p>\r\n                <h3 class=\"blog-desc m-0 mb-lg-4 mb-3\">Available Services:</h3>\r\n                <div class=\"text-list mb-4\">\r\n                    <ol>\r\n                        <li>50% fee concession in B.C.A. program for girls.</li>\r\n<li>   100% fee waiver for Jain girls in the B.C.A. course for the academic year 2021-22.</li>\r\n<li>  Students scoring 70% or higher get 100% tuition fee waiver at the college.</li>\r\n<li>   Free transportation arrangement for girls.</li>\r\n<li>   Assistance in availing government scholarships for SC/ST/Minority students.</li>\r\n<li>   Additional computer lab available from 1 PM to 3 PM.</li>\r\n<li>   Seminars and workshops on computer science conducted by experts in higher classes.</li>\r\n<li>   Air-conditioned lab equipped with 80 computers.</li>\r\n<li>   Regular communication.</li>\r\n<li>  Unit tests, semiannual, and annual examinations.</li>\r\n                    </ol>\r\n                </div>  \r\n               </div>', 0, '2024-06-15', ''),
(17, 'Smt. P. N. R. Shah Stri Vikas\r\nGruh', 'upload/course/college_BCA.jpeg', '<div class=\"single-post-content\">\r\n  <h3 class=\"blog-desc m-0 mb-4\">Shrimati Kamalaben Shantilal Kapashi College</h3>\r\n   <h3 class=\"blog-desc m-0 mb-4\">Newsletter displaying statistical information from 2012 to 2023</h3>\r\n <h3 class=\"blog-desc m-0 mb-4\">Proposal:</h3>\r\n                <p class=\"mb-4\">   \r\n                    The commendable effort to impart computer knowledge to students has been met with great satisfaction here. Your college, equipped with all facilities, has become a hub of modern knowledge for its students. Moreover, social activities continue to thrive within our institution, and the MSW course is also being effectively conducted. In this era of digitization, acquiring a government job is made easier through two courses: Diploma in Health Sanitary Inspector and Diploma in Fire and Safety. Students can obtain these diplomas within a year and secure a government job.\r\n                 </p>\r\n                <h3 class=\"blog-desc m-0 mb-lg-4 mb-3\">Available Services:</h3>\r\n                <div class=\"text-list mb-4\">\r\n                    <ol>\r\n                        <li>50% fee concession in B.C.A. program for girls.</li>\r\n<li>   100% fee waiver for Jain girls in the B.C.A. course for the academic year 2021-22.</li>\r\n<li>  Students scoring 70% or higher get 100% tuition fee waiver at the college.</li>\r\n<li>   Free transportation arrangement for girls.</li>\r\n<li>   Assistance in availing government scholarships for SC/ST/Minority students.</li>\r\n<li>   Additional computer lab available from 1 PM to 3 PM.</li>\r\n<li>   Seminars and workshops on computer science conducted by experts in higher classes.</li>\r\n<li>   Air-conditioned lab equipped with 80 computers.</li>\r\n<li>   Regular communication.</li>\r\n<li>  Unit tests, semiannual, and annual examinations.</li>\r\n                    </ol>\r\n                </div>  \r\n               </div>', 0, '2024-06-15', ''),
(18, 'Health Programme', 'upload/course/college_BCA.jpeg', '<div class=\"single-post-content\">\r\n  <h3 class=\"blog-desc m-0 mb-4\">Shrimati Kamalaben Shantilal Kapashi College</h3>\r\n   <h3 class=\"blog-desc m-0 mb-4\">Newsletter displaying statistical information from 2012 to 2023</h3>\r\n <h3 class=\"blog-desc m-0 mb-4\">Proposal:</h3>\r\n                <p class=\"mb-4\">   \r\n                    The commendable effort to impart computer knowledge to students has been met with great satisfaction here. Your college, equipped with all facilities, has become a hub of modern knowledge for its students. Moreover, social activities continue to thrive within our institution, and the MSW course is also being effectively conducted. In this era of digitization, acquiring a government job is made easier through two courses: Diploma in Health Sanitary Inspector and Diploma in Fire and Safety. Students can obtain these diplomas within a year and secure a government job.\r\n                 </p>\r\n                <h3 class=\"blog-desc m-0 mb-lg-4 mb-3\">Available Services:</h3>\r\n                <div class=\"text-list mb-4\">\r\n                    <ol>\r\n                        <li>50% fee concession in B.C.A. program for girls.</li>\r\n<li>   100% fee waiver for Jain girls in the B.C.A. course for the academic year 2021-22.</li>\r\n<li>  Students scoring 70% or higher get 100% tuition fee waiver at the college.</li>\r\n<li>   Free transportation arrangement for girls.</li>\r\n<li>   Assistance in availing government scholarships for SC/ST/Minority students.</li>\r\n<li>   Additional computer lab available from 1 PM to 3 PM.</li>\r\n<li>   Seminars and workshops on computer science conducted by experts in higher classes.</li>\r\n<li>   Air-conditioned lab equipped with 80 computers.</li>\r\n<li>   Regular communication.</li>\r\n<li>  Unit tests, semiannual, and annual examinations.</li>\r\n                    </ol>\r\n                </div>  \r\n               </div>', 0, '2024-06-15', '');

-- --------------------------------------------------------

--
-- Table structure for table `founder`
--

CREATE TABLE `founder` (
  `id` int(100) NOT NULL,
  `title` varchar(200) NOT NULL,
  `img` varchar(500) NOT NULL,
  `description` varchar(500) NOT NULL,
  `user_id` int(100) NOT NULL,
  `post date` date NOT NULL DEFAULT current_timestamp(),
  `sort_description` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `founder`
--

INSERT INTO `founder` (`id`, `title`, `img`, `description`, `user_id`, `post date`, `sort_description`) VALUES
(2, 'Mrs. Lilaben Kapasi', 'upload/founder/owner1.png', 'We applaud Mrs. Lilaben Kapasi for her positivity, dettermiinattiion and opttiimiism. Her great efforts have turned the plant-like organization into a banyan tree today.\r\n\r\n', 0, '2024-07-29', '');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id` int(100) NOT NULL,
  `title` varchar(200) NOT NULL,
  `img` varchar(500) NOT NULL,
  `description` varchar(500) NOT NULL,
  `user_id` int(100) NOT NULL,
  `post date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id`, `title`, `img`, `description`, `user_id`, `post date`) VALUES
(1, 'BCA', 'upload/gallery/news-1.jpg', 'new', 0, '2024-06-25');

-- --------------------------------------------------------

--
-- Table structure for table `highlights`
--

CREATE TABLE `highlights` (
  `id` int(11) NOT NULL,
  `title` varchar(500) NOT NULL,
  `img` varchar(500) NOT NULL,
  `description` mediumtext NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `course_id` int(11) NOT NULL,
  `menu` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `highlights`
--

INSERT INTO `highlights` (`id`, `title`, `img`, `description`, `date`, `course_id`, `menu`) VALUES
(3, 'Highlights Demo One', 'upload/highlights/activity_demo.jfif', '<div class=\"single-post-content\">\r\n                <p class=\"alphabet mb-4\"><span class=\"big-letter\">A</span>Lorem ipsum dolor sit amet,Ea consequuntur\r\n                    illum facere aperiam sequi optio\r\n                    dolor set consectetur.Ea ipsum sed consequuntur illum facere aperiam sequi optio consectetur\r\n                    adipisicing elitFuga, suscipit totam animi consequatur saepe. Lorem ipsum dolor sit amet,\r\n                    illum facere sequi optio elit..</p>\r\n                <p class=\"mb-4\">Lorem ipsum, dolor sit amet consectetur adipisicing elit. At, corrupti odit? At\r\n                    iure facere, porro repellat officia quas, dolores magnam assumenda soluta odit harum voluptate\r\n                    inventore ipsa maiores fugiat accusamus eos nulla. Iure explicabo officia. Lorem ipsum dolor sit\r\n                    amet elit, dolorem.</p>\r\n                <blockquote class=\"blockquote my-5\">\r\n                    <div class=\"icon-quote\"><span class=\"fa fa-quote-left\" aria-hidden=\"true\"></span></div>\r\n                    We are proud of Rays and Alberts leadership over many years in achieving much good work in our names in such a remote part of the world.\r\n                    <footer class=\"blockquote-footer mt-3\">\r\n                        Smith lara</footer>\r\n                </blockquote>\r\n                <h3 class=\"blog-desc m-0 mb-4\">Over 93% of all donations go directly to projects</h3>\r\n                <p class=\"mb-4\">Excepteur sint occaecat non proident, sunt in culpa quis. Phasellus lacinia id\r\n                    erat eu. Nunc id ipsum fringilla, gravida felis vitae. Phasellus lacinia id, sunt in\r\n                    culpa quis. Lorem ipsum dolor sit amet consectetur adipisicing elit. Unde expedita esse error enim\r\n                    repellat, architecto corporis rerum ipsa alias cum! </p>\r\n                <p class=\"mb-4\">Dolor sit sed amet, excepteur sint occaecat non proident, sunt in culpa quis. Phasellus\r\n                    lacinia id erat eu. Nunc id ipsum fringilla, gravida felis vitae. Phasellus lacinia id, sunt in\r\n                    culpa quis. </p>\r\n                <p class=\"mb-4\">Lorem ipsum dolor sit amet consectetur adipisicing elit. Cumque, veritatis. Excepteur\r\n                    sint occaecat non proident, sunt in culpa quis. Phasellus lacinia id\r\n                    erat eu. Nunc id ipsum fringilla, gravida felis vitae. Phasellus lacinia id, sunt in\r\n                    culpa quis. Lorem ipsum dolor sit amet consectetur adipisicing elit. </p>\r\n                <h3 class=\"blog-desc m-0 mb-lg-4 mb-3\">Smiling Faces! We felt so welcome that one of us even picked a\r\n                    partner and joined in</h3>\r\n                <p class=\"mb-4\">Dolor sit sed amet, excepteur sint occaecat non proident, sunt in culpa quis. Phasellus\r\n                    lacinia id erat eu. Nunc id ipsum, gravida felis vitae. id, sunt in\r\n                    culpa quis. Lorem ipsum dolor, sit amet elit. </p>\r\n                <div class=\"text-list mb-4\">\r\n                    <ol>\r\n                        <li>33,225 people in the reception center</li>\r\n                        <li>4,453 children enrolled, Children weighed: 2,457 </li>\r\n                        <li>Including 613 teachers and school assistants. </li>\r\n                        <li>Medical consultations: 33,600, Family planning: 4,152.</li>\r\n                    </ol>\r\n                </div>\r\n                <p class=\"mb-4\">Excepteur sint occaecat non proident, sunt in culpa quis. Phasellus lacinia id\r\n                    erat eu. Nunc id ipsum fringilla, gravida felis vitae. Phasellus lacinia id, sunt in\r\n                    culpa quis. Lorem ipsum dolor sit amet consectetur adipisicing elit. Unde expedita esse error enim\r\n                    repellat, architecto corporis rerum ipsa alias cum! </p>\r\n                <p class=\"mb-4\">Dolor sit sed amet, excepteur sint occaecat non proident, sunt in culpa quis. Phasellus\r\n                    lacinia id\r\n                    erat eu. Nunc id ipsum fringilla, gravida felis vitae. Phasellus lacinia id, sunt in\r\n                    culpa quis. </p>\r\n\r\n                <h3 class=\"blog-desc m-0 mt-5 mb-4\">2,70,966 children and adults were given relief during emergency</h3>\r\n                <p class=\"mb-4\">Vivamus a ligula quam. Ut blandit eu leo non suscipit. <a href=\"#\" class=\"use-admin\">Homeless</a> In interdum ullamcorper dolor eu mattis.Nulla quis lorem\r\n                    neque,Nulla\r\n                    quis lorem neque, mattis venenatis lectus.<a href=\"#\" class=\"use-admin\"> Poor people</a>\r\n                    In interdum ullamcorper dolor eu mattis.Nulla quis lorem neque, mattis venenatis\r\n                    lectus.</p>\r\n                <p class=\"mb-4\">Dolor sit sed amet, excepteur sint occaecat non proident, sunt in culpa quis. Phasellus\r\n                    lacinia id erat eu. Nunc id ipsum fringilla, gravida felis vitae. Phasellus lacinia id, sunt in\r\n                    culpa quis. </p>\r\n\r\n                <div class=\"d-grid left-right mt-5 pb-md-5\">\r\n                    <div class=\"buttons-singles tags\">\r\n                        <h4>Tags :</h4>\r\n                        <a href=\"#blog-tag\">Child protection</a>\r\n                        <a href=\"#blog-tag\">Disaster Relief</a>\r\n                    </div>\r\n                    <div class=\"buttons-singles\">\r\n                        <h4>Share :</h4>\r\n                        <a href=\"#blog-share\"><span class=\"fa fa-facebook\" aria-hidden=\"true\"></span></a>\r\n                        <a href=\"#blog-share\"><span class=\"fa fa-twitter\" aria-hidden=\"true\"></span></a>\r\n                        <a href=\"#blog-share\"><span class=\"fa fa-google-plus\" aria-hidden=\"true\"></span></a>\r\n                        <a href=\"#blog-share\"><span class=\"fa fa-pinterest-p\" aria-hidden=\" true\"></span></a>\r\n                    </div>\r\n                </div>\r\n\r\n             \r\n\r\n          \r\n                <!-- related posts -->\r\n               \r\n               </div>', '2024-07-01', 13, 'B.C.A. Collage'),
(4, 'Highlights Demo Two', 'upload/highlights/activity_demo.jfif', '<div class=\"single-post-content\">\r\n                <p class=\"alphabet mb-4\"><span class=\"big-letter\">A</span>Lorem ipsum dolor sit amet,Ea consequuntur\r\n                    illum facere aperiam sequi optio\r\n                    dolor set consectetur.Ea ipsum sed consequuntur illum facere aperiam sequi optio consectetur\r\n                    adipisicing elitFuga, suscipit totam animi consequatur saepe. Lorem ipsum dolor sit amet,\r\n                    illum facere sequi optio elit..</p>\r\n                <p class=\"mb-4\">Lorem ipsum, dolor sit amet consectetur adipisicing elit. At, corrupti odit? At\r\n                    iure facere, porro repellat officia quas, dolores magnam assumenda soluta odit harum voluptate\r\n                    inventore ipsa maiores fugiat accusamus eos nulla. Iure explicabo officia. Lorem ipsum dolor sit\r\n                    amet elit, dolorem.</p>\r\n                <blockquote class=\"blockquote my-5\">\r\n                    <div class=\"icon-quote\"><span class=\"fa fa-quote-left\" aria-hidden=\"true\"></span></div>\r\n                    We are proud of Rays and Alberts leadership over many years in achieving much good work in our names in such a remote part of the world.\r\n                    <footer class=\"blockquote-footer mt-3\">\r\n                        Smith lara</footer>\r\n                </blockquote>\r\n                <h3 class=\"blog-desc m-0 mb-4\">Over 93% of all donations go directly to projects</h3>\r\n                <p class=\"mb-4\">Excepteur sint occaecat non proident, sunt in culpa quis. Phasellus lacinia id\r\n                    erat eu. Nunc id ipsum fringilla, gravida felis vitae. Phasellus lacinia id, sunt in\r\n                    culpa quis. Lorem ipsum dolor sit amet consectetur adipisicing elit. Unde expedita esse error enim\r\n                    repellat, architecto corporis rerum ipsa alias cum! </p>\r\n                <p class=\"mb-4\">Dolor sit sed amet, excepteur sint occaecat non proident, sunt in culpa quis. Phasellus\r\n                    lacinia id erat eu. Nunc id ipsum fringilla, gravida felis vitae. Phasellus lacinia id, sunt in\r\n                    culpa quis. </p>\r\n                <p class=\"mb-4\">Lorem ipsum dolor sit amet consectetur adipisicing elit. Cumque, veritatis. Excepteur\r\n                    sint occaecat non proident, sunt in culpa quis. Phasellus lacinia id\r\n                    erat eu. Nunc id ipsum fringilla, gravida felis vitae. Phasellus lacinia id, sunt in\r\n                    culpa quis. Lorem ipsum dolor sit amet consectetur adipisicing elit. </p>\r\n                <h3 class=\"blog-desc m-0 mb-lg-4 mb-3\">Smiling Faces! We felt so welcome that one of us even picked a\r\n                    partner and joined in</h3>\r\n                <p class=\"mb-4\">Dolor sit sed amet, excepteur sint occaecat non proident, sunt in culpa quis. Phasellus\r\n                    lacinia id erat eu. Nunc id ipsum, gravida felis vitae. id, sunt in\r\n                    culpa quis. Lorem ipsum dolor, sit amet elit. </p>\r\n                <div class=\"text-list mb-4\">\r\n                    <ol>\r\n                        <li>33,225 people in the reception center</li>\r\n                        <li>4,453 children enrolled, Children weighed: 2,457 </li>\r\n                        <li>Including 613 teachers and school assistants. </li>\r\n                        <li>Medical consultations: 33,600, Family planning: 4,152.</li>\r\n                    </ol>\r\n                </div>\r\n                <p class=\"mb-4\">Excepteur sint occaecat non proident, sunt in culpa quis. Phasellus lacinia id\r\n                    erat eu. Nunc id ipsum fringilla, gravida felis vitae. Phasellus lacinia id, sunt in\r\n                    culpa quis. Lorem ipsum dolor sit amet consectetur adipisicing elit. Unde expedita esse error enim\r\n                    repellat, architecto corporis rerum ipsa alias cum! </p>\r\n                <p class=\"mb-4\">Dolor sit sed amet, excepteur sint occaecat non proident, sunt in culpa quis. Phasellus\r\n                    lacinia id\r\n                    erat eu. Nunc id ipsum fringilla, gravida felis vitae. Phasellus lacinia id, sunt in\r\n                    culpa quis. </p>\r\n\r\n                <h3 class=\"blog-desc m-0 mt-5 mb-4\">2,70,966 children and adults were given relief during emergency</h3>\r\n                <p class=\"mb-4\">Vivamus a ligula quam. Ut blandit eu leo non suscipit. <a href=\"#\" class=\"use-admin\">Homeless</a> In interdum ullamcorper dolor eu mattis.Nulla quis lorem\r\n                    neque,Nulla\r\n                    quis lorem neque, mattis venenatis lectus.<a href=\"#\" class=\"use-admin\"> Poor people</a>\r\n                    In interdum ullamcorper dolor eu mattis.Nulla quis lorem neque, mattis venenatis\r\n                    lectus.</p>\r\n                <p class=\"mb-4\">Dolor sit sed amet, excepteur sint occaecat non proident, sunt in culpa quis. Phasellus\r\n                    lacinia id erat eu. Nunc id ipsum fringilla, gravida felis vitae. Phasellus lacinia id, sunt in\r\n                    culpa quis. </p>\r\n\r\n                <div class=\"d-grid left-right mt-5 pb-md-5\">\r\n                    <div class=\"buttons-singles tags\">\r\n                        <h4>Tags :</h4>\r\n                        <a href=\"#blog-tag\">Child protection</a>\r\n                        <a href=\"#blog-tag\">Disaster Relief</a>\r\n                    </div>\r\n                    <div class=\"buttons-singles\">\r\n                        <h4>Share :</h4>\r\n                        <a href=\"#blog-share\"><span class=\"fa fa-facebook\" aria-hidden=\"true\"></span></a>\r\n                        <a href=\"#blog-share\"><span class=\"fa fa-twitter\" aria-hidden=\"true\"></span></a>\r\n                        <a href=\"#blog-share\"><span class=\"fa fa-google-plus\" aria-hidden=\"true\"></span></a>\r\n                        <a href=\"#blog-share\"><span class=\"fa fa-pinterest-p\" aria-hidden=\" true\"></span></a>\r\n                    </div>\r\n                </div>\r\n\r\n             \r\n\r\n          \r\n                <!-- related posts -->\r\n               \r\n               </div>', '2024-07-01', 13, ''),
(5, 'Highlights Demo Three1', 'upload/highlights/activity_demo.jfif', '<div class=\"single-post-content\">\r\n                <p class=\"alphabet mb-4\"><span class=\"big-letter\">A</span>Lorem ipsum dolor sit amet,Ea consequuntur\r\n                    illum facere aperiam sequi optio\r\n                    dolor set consectetur.Ea ipsum sed consequuntur illum facere aperiam sequi optio consectetur\r\n                    adipisicing elitFuga, suscipit totam animi consequatur saepe. Lorem ipsum dolor sit amet,\r\n                    illum facere sequi optio elit..</p>\r\n                <p class=\"mb-4\">Lorem ipsum, dolor sit amet consectetur adipisicing elit. At, corrupti odit? At\r\n                    iure facere, porro repellat officia quas, dolores magnam assumenda soluta odit harum voluptate\r\n                    inventore ipsa maiores fugiat accusamus eos nulla. Iure explicabo officia. Lorem ipsum dolor sit\r\n                    amet elit, dolorem.</p>\r\n                <blockquote class=\"blockquote my-5\">\r\n                    <div class=\"icon-quote\"><span class=\"fa fa-quote-left\" aria-hidden=\"true\"></span></div>\r\n                    We are proud of Rays and Alberts leadership over many years in achieving much good work in our names in such a remote part of the world.\r\n                    <footer class=\"blockquote-footer mt-3\">\r\n                        Smith lara</footer>\r\n                </blockquote>\r\n                <h3 class=\"blog-desc m-0 mb-4\">Over 93% of all donations go directly to projects</h3>\r\n                <p class=\"mb-4\">Excepteur sint occaecat non proident, sunt in culpa quis. Phasellus lacinia id\r\n                    erat eu. Nunc id ipsum fringilla, gravida felis vitae. Phasellus lacinia id, sunt in\r\n                    culpa quis. Lorem ipsum dolor sit amet consectetur adipisicing elit. Unde expedita esse error enim\r\n                    repellat, architecto corporis rerum ipsa alias cum! </p>\r\n                <p class=\"mb-4\">Dolor sit sed amet, excepteur sint occaecat non proident, sunt in culpa quis. Phasellus\r\n                    lacinia id erat eu. Nunc id ipsum fringilla, gravida felis vitae. Phasellus lacinia id, sunt in\r\n                    culpa quis. </p>\r\n                <p class=\"mb-4\">Lorem ipsum dolor sit amet consectetur adipisicing elit. Cumque, veritatis. Excepteur\r\n                    sint occaecat non proident, sunt in culpa quis. Phasellus lacinia id\r\n                    erat eu. Nunc id ipsum fringilla, gravida felis vitae. Phasellus lacinia id, sunt in\r\n                    culpa quis. Lorem ipsum dolor sit amet consectetur adipisicing elit. </p>\r\n                <h3 class=\"blog-desc m-0 mb-lg-4 mb-3\">Smiling Faces! We felt so welcome that one of us even picked a\r\n                    partner and joined in</h3>\r\n                <p class=\"mb-4\">Dolor sit sed amet, excepteur sint occaecat non proident, sunt in culpa quis. Phasellus\r\n                    lacinia id erat eu. Nunc id ipsum, gravida felis vitae. id, sunt in\r\n                    culpa quis. Lorem ipsum dolor, sit amet elit. </p>\r\n                <div class=\"text-list mb-4\">\r\n                    <ol>\r\n                        <li>33,225 people in the reception center</li>\r\n                        <li>4,453 children enrolled, Children weighed: 2,457 </li>\r\n                        <li>Including 613 teachers and school assistants. </li>\r\n                        <li>Medical consultations: 33,600, Family planning: 4,152.</li>\r\n                    </ol>\r\n                </div>\r\n                <p class=\"mb-4\">Excepteur sint occaecat non proident, sunt in culpa quis. Phasellus lacinia id\r\n                    erat eu. Nunc id ipsum fringilla, gravida felis vitae. Phasellus lacinia id, sunt in\r\n                    culpa quis. Lorem ipsum dolor sit amet consectetur adipisicing elit. Unde expedita esse error enim\r\n                    repellat, architecto corporis rerum ipsa alias cum! </p>\r\n                <p class=\"mb-4\">Dolor sit sed amet, excepteur sint occaecat non proident, sunt in culpa quis. Phasellus\r\n                    lacinia id\r\n                    erat eu. Nunc id ipsum fringilla, gravida felis vitae. Phasellus lacinia id, sunt in\r\n                    culpa quis. </p>\r\n\r\n                <h3 class=\"blog-desc m-0 mt-5 mb-4\">2,70,966 children and adults were given relief during emergency</h3>\r\n                <p class=\"mb-4\">Vivamus a ligula quam. Ut blandit eu leo non suscipit. <a href=\"#\" class=\"use-admin\">Homeless</a> In interdum ullamcorper dolor eu mattis.Nulla quis lorem\r\n                    neque,Nulla\r\n                    quis lorem neque, mattis venenatis lectus.<a href=\"#\" class=\"use-admin\"> Poor people</a>\r\n                    In interdum ullamcorper dolor eu mattis.Nulla quis lorem neque, mattis venenatis\r\n                    lectus.</p>\r\n                <p class=\"mb-4\">Dolor sit sed amet, excepteur sint occaecat non proident, sunt in culpa quis. Phasellus\r\n                    lacinia id erat eu. Nunc id ipsum fringilla, gravida felis vitae. Phasellus lacinia id, sunt in\r\n                    culpa quis. </p>\r\n\r\n                <div class=\"d-grid left-right mt-5 pb-md-5\">\r\n                    <div class=\"buttons-singles tags\">\r\n                        <h4>Tags :</h4>\r\n                        <a href=\"#blog-tag\">Child protection</a>\r\n                        <a href=\"#blog-tag\">Disaster Relief</a>\r\n                    </div>\r\n                    <div class=\"buttons-singles\">\r\n                        <h4>Share :</h4>\r\n                        <a href=\"#blog-share\"><span class=\"fa fa-facebook\" aria-hidden=\"true\"></span></a>\r\n                        <a href=\"#blog-share\"><span class=\"fa fa-twitter\" aria-hidden=\"true\"></span></a>\r\n                        <a href=\"#blog-share\"><span class=\"fa fa-google-plus\" aria-hidden=\"true\"></span></a>\r\n                        <a href=\"#blog-share\"><span class=\"fa fa-pinterest-p\" aria-hidden=\" true\"></span></a>\r\n                    </div>\r\n                </div>\r\n\r\n             \r\n\r\n          \r\n                <!-- related posts -->\r\n               \r\n               </div>', '2024-07-01', 13, 'app');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `title` varchar(500) NOT NULL,
  `img` varchar(500) NOT NULL,
  `description` mediumtext NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `course_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `img`, `description`, `date`, `course_id`) VALUES
(1, 'Robotics lecture is coming soon', 'upload/news/roobotics.png', 'Many definitions have been suggested for what we call a robot. The word may conjure up various\nlevels of technological sophistication, ranging from a simple material handling device to a\nhumanoid. The image of robots varies widely with researchers, engineers, and robot\nmanufacturers. However, it is widely accepted that today’s robots used in industries originated in\nthe invention of a programmed material handling device by George C. Devol. In 1954, Devol\nfiled a U.S. patent for a new machine for part transfer, and he claimed the basic concept of teachin/playback to control the device. This scheme is now extensively used in most of today\'s\nindustrial robots. ', '2024-06-26', 3),
(2, 'aa', 'upload/activity/DSC_5000.JPG', 'aa', '2024-06-26', 3);

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `id` int(100) NOT NULL,
  `title` varchar(200) NOT NULL,
  `img` varchar(500) NOT NULL,
  `description` varchar(500) NOT NULL,
  `user_id` int(100) NOT NULL,
  `post date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id`, `title`, `img`, `description`, `user_id`, `post date`) VALUES
(3, 'SAMAJRATNA CHINUBHAI MANJULA BHAGINI MITRA MANDAL – PALITANA', 'upload/slider/bhagini.jpeg', '', 0, '2024-06-26'),
(6, 'Smt. Kamalaben Shantilal Kapashi B.C.A. Collage', 'upload/slider/college.jpeg', '', 0, '2024-07-24'),
(7, 'Smt. Lilaben Mahila Sharafi  Sahkari Mandali Ltd.', 'upload/slider/mahila_sarafi_sahakari.jpeg', '', 0, '2024-07-24'),
(8, 'Smt. Kamalaben Shantilal Kapashi Prerit Shri Attamavalabh Mahila Swawlamban Kendra', 'upload/slider/mahila_udhyog_bhavan.jpeg', '', 0, '2024-08-12'),
(9, 'Sau. Shobhabahen Rasiklal Manekchand Dhariwal Dikri nu Ghar (Vruddha Mavtar Vruddhashram) Smt. P. N. R. Shah Mahila Vruddhashram', 'upload/slider/oldagehome.jpeg', '', 0, '2024-08-12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity`
--
ALTER TABLE `activity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contactus`
--
ALTER TABLE `contactus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `founder`
--
ALTER TABLE `founder`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `highlights`
--
ALTER TABLE `highlights`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity`
--
ALTER TABLE `activity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `contactus`
--
ALTER TABLE `contactus`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `founder`
--
ALTER TABLE `founder`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `highlights`
--
ALTER TABLE `highlights`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
