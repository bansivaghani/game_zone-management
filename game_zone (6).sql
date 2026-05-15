-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 15, 2026 at 09:59 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `game_zone`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `image` varchar(500) NOT NULL,
  `description` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `title`, `image`, `description`) VALUES
(12, 'Inflatable ', 'upload/category/inflatblecategory2.jpg', 'Inflatable parks feature various attractions such as obstacle courses, slides, and interactive games, providing fun for all ages.'),
(13, 'Physical ', 'upload/category/physical).jpg', 'Trampoline parks offer various physical activities, including trampoline jumping, obstacle courses, dodgeball, and climbing walls, promoting cardiovascular health, muscle strength, balance, and coordination. \r\n'),
(14, 'Leaser Tag', 'upload/category/leasertagc.jpg', ' laser tag venues typically offer various game modes such as standard team battles, capture the flag, protect the VIP, and zombie rush, catering to a wide range of ages and skill levels. '),
(16, 'Kids Area', 'upload/category/kiddsc.jpg', 'In trampoline parks, kids can enjoy activities like free jumping, foam pits, and obstacle courses. Many parks also offer toddler zones and interactive games for younger children.\r\n\r\n\r\n\r\n'),
(17, 'Soft Play', 'upload/category/softplayc.jpg', 'Kids at trampoline parks enjoy activities like jumping, foam pits, obstacle courses, and toddler zones for safe fun.\r\n\r\n\r\n\r\n'),
(18, 'Carnival', 'upload/category/carnivalc.jpg', 'Trampoline parks with carnival-themed areas often feature games like ring toss, dunk tanks, and spinning rides. These areas combine fun attractions with trampolines for an exciting, festive experience.\r\n\r\n\r\n\r\n'),
(19, 'Kids Games', 'upload/category/play.jpg', 'Kids can play in this special area.');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `gmail` varchar(100) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `phone`, `gmail`, `message`) VALUES
(8, 'paresh', '0735995160', 'paresh@gmail.com', 'Demo'),
(9, 'krushi', '1234567890', 'krushi@gmail.com', ''),
(10, 'vaghani krushi', '9909912346', 'krushi@gmail.com', ''),
(11, 'rensi vaghani', '1234567890', 'krushi@gmail.com', '');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `img` varchar(500) NOT NULL,
  `description` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id`, `title`, `img`, `description`) VALUES
(2, 'Titile of Gallery *', 'upload/gallery/Screenshot (228).png', '$d');

-- --------------------------------------------------------

--
-- Table structure for table `game`
--

CREATE TABLE `game` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `image` varchar(500) NOT NULL,
  `description` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `game`
--

INSERT INTO `game` (`id`, `title`, `image`, `description`) VALUES
(1, 'krushi', 'Screenshot 2023-08-29 174349.png', 'my project my project my project'),
(2, 'ghfyu', 'Screenshot 2023-08-29 174349.png', 'ftyfytf'),
(5, 'vaibhav', 'upload/game/Screenshot 2023-09-16 161137.png', 'kjdsnfoifodskifeofjewoipokp'),
(6, 'vaibhav', 'upload/game/Screenshot 2023-09-16 161137.png', 'kjdsnfoifodskifeofjewoipokp');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `img` varchar(500) NOT NULL,
  `c_id` varchar(100) NOT NULL,
  `description` varchar(500) NOT NULL,
  `price` varchar(100) NOT NULL,
  `player` varchar(100) NOT NULL,
  `time` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `title`, `img`, `c_id`, `description`, `price`, `player`, `time`) VALUES
(10, 'dodgeball', 'upload/game/blog game.webp', '', 'A classic dodgeball game with a trampoline twist', '76', '', ''),
(11, 'Volleyball', 'upload/game/volyboll.jpg', '7', 'A fun twist on traditional volleyball , pay on trampolianes', '100', '', '30 min'),
(12, 'Foam Pit Frenzy', 'upload/game/foam pit frenzy.jpg', '7', 'A fun game where players jump into foam pit to retrieve balls or other object.', '150', '', '40 min'),
(13, 'Rainbow Rush', 'upload/game/rainbowrush.jpg', '7', 'A colorful game where kids jump on trampolines to collect rainbow balls.', '100', '', '35 min'),
(14, 'Bounce Battle', 'upload/game/bounce bettal.jpg', '7', 'A game where battle between two teams.', '200', '', '30 min'),
(15, 'Disco Light', 'upload/game/diskolight.jpg', '7', 'A fun trampoline park games played in a darked arena lit by disco lights.', '160', '', '45 min'),
(16, 'dodgeball', 'upload/game/carnivalc.jpg', '12', 'this game is like vollyball.', '100', '3', '30 min');

-- --------------------------------------------------------

--
-- Table structure for table `job`
--

CREATE TABLE `job` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `job_position` varchar(100) NOT NULL,
  `experience` int(11) NOT NULL,
  `resume` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `job`
--

INSERT INTO `job` (`id`, `name`, `email`, `phone`, `job_position`, `experience`, `resume`, `message`, `created_at`) VALUES
(1, '', '', '', '', 0, '', '', '2025-03-18 03:48:08'),
(2, 'INT', '555', '1234567898', '', 555, '', 'werqtt', '2025-03-18 03:48:46'),
(3, 'dhruv', '5', '7996554747', '', 5, '', 'yuyudy', '2025-03-18 04:02:32'),
(4, 'krushi', '23', '9090909090', '', 23, '', 'i need this job', '2025-03-18 11:28:37'),
(5, 'parmar hasti', '3', '9909912346', '', 3, '', 'i need this job.', '2025-03-18 12:31:40');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `gmail` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(100) DEFAULT 'user',
  `address` text DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `postal_code` varchar(20) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `about_me` text DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `name`, `gmail`, `password`, `role`, `address`, `city`, `postal_code`, `country`, `about_me`, `updated_at`, `date`) VALUES
(1, 'Spm Shop paresh', 'johndoe@example.com', '$2y$10$giAnIc8kf8fdsg195HhOi.kOiQfObMJ5Y5xSiXht.ITFJ9tmrMKPe', 'user', 'Jaiya manaji nearest bapashitaram madhi', 'Palitana', '364270', 'India', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', '2025-02-02 04:22:41', '2025-02-01'),
(2, 'krushi', 'krushi@gmail.com', 'khushi123', 'user', NULL, NULL, NULL, NULL, NULL, '2025-09-28 14:07:25', '2024-08-30'),
(3, 'hasti', 'hastinp123@gmail.com', 'hasti1234', 'user', NULL, NULL, NULL, NULL, NULL, '2025-02-02 04:21:21', '2024-09-03'),
(4, 'hasti', 'hastinp123@gmail.com', 'hasti1234', 'user', NULL, NULL, NULL, NULL, NULL, '2025-02-02 04:22:10', '2024-09-03'),
(5, 'krushi', 'krushivaghani@gmail.com', 'krushi1234', 'user', NULL, NULL, NULL, NULL, NULL, '2025-02-02 04:22:41', '2024-09-03'),
(6, 'krushi', 'krushivaghani57@gmail.com', 'khushi', 'user', NULL, NULL, NULL, NULL, NULL, '2025-03-18 16:34:18', '2024-09-03'),
(7, 'hasti', 'hastinp123@gmail.com', 'hastikrushi', 'user', NULL, NULL, NULL, NULL, NULL, '2025-02-02 04:22:41', '2024-09-03'),
(8, 'hasti', 'hastinp123@gmail.com', 'hastikrushi', 'user', NULL, NULL, NULL, NULL, NULL, '2025-02-02 04:22:41', '2024-09-03'),
(9, 'krushi', 'krushivaghani57@gmail.com', 'khushi', 'user', NULL, NULL, NULL, NULL, NULL, '2025-03-18 16:34:18', '2024-09-03'),
(10, 'admin', 'admin@gmail.com', 'admin', 'admin', 'palitana', 'palitana', '364270', 'india', 'not user', '2025-03-10 11:49:12', '2024-08-30'),
(11, 'paresh', 'paresh@gmail.com', 'paresh', 'user', NULL, NULL, NULL, NULL, NULL, '2025-03-07 03:53:17', '2025-03-07'),
(12, 'smit', 'smit@gmail.com', 'smit', 'user', NULL, NULL, NULL, NULL, NULL, '2025-03-10 10:01:11', '2025-03-10'),
(13, 'krushi', 'krushivaghani47@gmail.com', 'krushi67', 'user', NULL, NULL, NULL, NULL, NULL, '2025-03-10 10:01:56', '2025-03-10'),
(14, 'paresh', 'spm.shop.online@gmail.com', 'paresh', 'user', NULL, NULL, NULL, NULL, NULL, '2025-03-10 10:03:50', '2025-03-10'),
(15, 'dhruv', 'ravaldhruv100@gmail.com', 'dhruv', 'user', NULL, NULL, NULL, NULL, NULL, '2025-03-18 04:24:46', '2025-03-18'),
(16, 'vaghani krushi', 'krushivaghani57@gmail.com', 'krushi', 'user', NULL, NULL, NULL, NULL, NULL, '2025-03-18 11:48:22', '2025-03-18'),
(17, 'vaghani krushi', 'krushivaghani57@gmail.com', 'krushi', 'user', NULL, NULL, NULL, NULL, NULL, '2025-03-18 11:48:24', '2025-03-18'),
(18, 'vaghani krushi', 'krushivaghani57@gmail.com', 'krushi', 'user', NULL, NULL, NULL, NULL, NULL, '2025-03-18 11:48:30', '2025-03-18'),
(19, 'vaghani krushi', 'krushivaghani57@gmail.com', 'krushi', 'user', NULL, NULL, NULL, NULL, NULL, '2025-03-18 11:48:30', '2025-03-18'),
(20, 'vaghani krushi', 'krushivaghani57@gmail.com', 'krushi', 'user', NULL, NULL, NULL, NULL, NULL, '2025-03-18 11:48:31', '2025-03-18'),
(21, 'vaghani krushi', 'krushivaghani57@gmail.com', 'krushi', 'user', NULL, NULL, NULL, NULL, NULL, '2025-03-18 11:48:31', '2025-03-18'),
(22, 'vaghani krushi', 'krushivaghani57@gmail.com', 'krushi', 'user', NULL, NULL, NULL, NULL, NULL, '2025-03-18 11:48:31', '2025-03-18'),
(23, 'vaghani krushi', 'krushivaghani57@gmail.com', 'krushi', 'user', NULL, NULL, NULL, NULL, NULL, '2025-03-18 11:48:33', '2025-03-18'),
(24, 'vaghani krushi', 'krushivaghani57@gmail.com', 'krushi', 'user', NULL, NULL, NULL, NULL, NULL, '2025-03-18 11:51:58', '2025-03-18'),
(25, 'vaghani krushi', 'krushivaghani57@gmail.com', 'krushi', 'user', NULL, NULL, NULL, NULL, NULL, '2025-03-18 11:53:49', '2025-03-18'),
(26, 'vaghani krushi', 'krushivaghani57@gmail.com', 'krushi', 'user', NULL, NULL, NULL, NULL, NULL, '2025-03-27 11:29:22', '2025-03-27'),
(27, 'vaibhav', 'vaghani123@gmail.com', 'vibhav', 'user', NULL, NULL, NULL, NULL, NULL, '2025-03-27 11:30:39', '2025-03-27'),
(28, 'hasti', 'hastiparmar@gamil.com', 'hasti123', 'user', NULL, NULL, NULL, NULL, NULL, '2025-04-10 09:51:11', '2025-04-10'),
(29, 'hasti', 'hastiparmar@gamil.com', 'hasti123', 'user', NULL, NULL, NULL, NULL, NULL, '2025-04-10 09:53:43', '2025-04-10');

-- --------------------------------------------------------

--
-- Table structure for table `manage_aboutus`
--

CREATE TABLE `manage_aboutus` (
  `title` varchar(100) NOT NULL,
  `heading` varchar(100) NOT NULL,
  `description` varchar(500) NOT NULL,
  `img` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `manage_aboutus`
--

INSERT INTO `manage_aboutus` (`title`, `heading`, `description`, `img`) VALUES
('ABOUT US', 'ABOUT US', 'Welcome to Trampoline Park, where weve redefined family entertainment to bring you an unparalleled experience that combines the excitement of an amusement park, the thrill of fitness, and the fun of sports all under one roof. Our venue is the ultimate destination for a wide range of occasions, including birthday parties, school trips, corporate gatherings, and active social events.\r\n\r\nStep into the world of SkyJumper Trampoline Park and embark on an adventure that will make you feel li', 'upload/aboutus/about.webp');

-- --------------------------------------------------------

--
-- Table structure for table `manage_contact_details`
--

CREATE TABLE `manage_contact_details` (
  `gmail` varchar(100) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `manage_contact_details`
--

INSERT INTO `manage_contact_details` (`gmail`, `mobile`, `address`) VALUES
('admin@gmail.com', '73599516023', 'mydemo address is text');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `title` varchar(500) NOT NULL,
  `image` varchar(5000) NOT NULL,
  `description` varchar(5000) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `image`, `description`, `date`) VALUES
(10, 'Special Offer ', 'upload/news/blog offer).jpg', '\"🎉 This Friday only! 🎉\r\nGet 20% OFF your entry at the trampoline park!\r\nBring your friends and jump into the weekend fun!\r\nDon’t miss out – limited time offer! 🏃‍♂️💨\"\r\n\r\nFeel free to adjust the discount or offer details as needed!\r\n\r\n\r\n\r\n', '2025-03-17'),
(11, 'Games For Adult', 'upload/news/blog game.jpg', '\"🎮 Ready for some high-flying fun?\r\nOur adult games are perfect for challenging your friends!\r\nCompete in trampoline dodgeball, slam dunk contests, and more!\r\nIt’s time to unleash your inner kid and enjoy the ultimate fitness challenge!\"\r\n\r\nFeel free to tweak it to suit your website!\r\n\r\n\r\n\r\n\r\n', '2025-03-17'),
(12, 'Offers On Weekend', 'upload/news/weekend offrer.jpg', '\"🌟 Weekend Special! 🌟\r\nEnjoy 30% OFF all sessions every Saturday and Sunday!\r\nBring your family and friends for a weekend of epic jumps and laughs!\r\nHurry, this offer flies away at the end of the weekend! 🎉\"\r\n\r\nFeel free to adjust the discount or details to match your offer!\r\n\r\n\r\n\r\n', '2025-03-17'),
(14, 'Offer ', 'upload/news/blog game.jpg', 'weekend special offer', '2025-03-18');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(11) NOT NULL,
  `u_id` varchar(50) NOT NULL,
  `g_id` varchar(50) NOT NULL,
  `amout` varchar(50) NOT NULL,
  `person` varchar(50) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `action` enum('pending','approved','cancelled') NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `u_id`, `g_id`, `amout`, `person`, `date`, `action`) VALUES
(4, '2', '2', '120', '1', '2024-08-29', 'pending'),
(5, '2', '2', '2000', '10', '2025-02-25', 'pending'),
(6, '10', '6', '2000', '10', '2025-02-25', 'approved'),
(7, '10', '7', '200000', '100', '2025-03-07', 'approved'),
(8, '11', '7', '2000', '10', '2025-03-07', 'approved'),
(9, '11', '2', '20000', '100', '2025-03-07', 'pending'),
(10, '11', '2', '2000', '10', '2025-03-07', 'pending'),
(16, '2', '', '1000', '', '2025-04-10', 'pending'),
(17, '2', '', '1200', '', '2025-04-10', 'pending'),
(18, '10', '', '1000', '', '2025-04-10', 'pending'),
(19, '2', '', '900', '', '2026-05-06', 'pending'),
(20, '2', '', '0', '', '2026-05-06', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `project_setting`
--

CREATE TABLE `project_setting` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `icon` varchar(500) NOT NULL,
  `logo` varchar(500) NOT NULL,
  `footer_text` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `project_setting`
--

INSERT INTO `project_setting` (`id`, `title`, `icon`, `logo`, `footer_text`) VALUES
(1, 'aa1', 'upload/setting/ksk_db.sql', 'upload/setting/ksk_db.sql', 'app 1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job`
--
ALTER TABLE `job`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_setting`
--
ALTER TABLE `project_setting`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `job`
--
ALTER TABLE `job`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `project_setting`
--
ALTER TABLE `project_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
