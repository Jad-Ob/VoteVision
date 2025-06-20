-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 20, 2025 at 02:23 AM
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
-- Database: `election`
--

-- --------------------------------------------------------

--
-- Table structure for table `candidates`
--

CREATE TABLE `candidates` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `party` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL DEFAULT 'Presidential Candidate',
  `description` text NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `created_by` int(11) NOT NULL,
  `event_id` int(11) DEFAULT NULL,
  `list_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `candidates`
--

INSERT INTO `candidates` (`id`, `name`, `party`, `title`, `description`, `image_url`, `created_by`, `event_id`, `list_id`) VALUES
(158, 'rawad helu', 'Municipality', '1', 'Graduate of the Lebanese University,specialty', '1747407926_ChatGPT Image May 16, 2025, 05_56_41 PM.png', 42, NULL, 76),
(159, 'Bilal falou', 'Municipality', '1', 'Mater of Mathematics', '1747407926_ChatGPT Image May 16, 2025, 05_56_48 PM.png', 42, NULL, 76),
(160, 'Nader Abyad', 'Municipality', '1', 'Specialization in chemisty', '1747407926_ChatGPT Image May 16, 2025, 06_03_07 PM.png', 42, NULL, 77),
(161, 'Ali Obeid', 'Municipality', '1', 'Master degre in physiques', '1747407926_ChatGPT Image May 16, 2025, 06_04_16 PM.png', 42, NULL, 77),
(162, 'Wafi aakra', 'Municipality', '1', 'Mater of Mathematics', '1747407926_ChatGPT Image May 16, 2025, 05_56_41 PM.png', 42, NULL, 78),
(163, 'Zaher Bayda', 'Municipality', '1', 'Specialization in chemisty', '1747407926_ChatGPT Image May 16, 2025, 06_03_07 PM.png', 42, NULL, 78),
(164, 'Abed Hlayhel', 'Municipality', '1', 'Graduate of the Lebanese University,specialty', '1747407926_ChatGPT Image May 16, 2025, 05_56_48 PM.png', 42, NULL, 79),
(165, 'Mazen Ismail', 'Municipality', '1', 'Mater of Mathematics', '1747407926_ChatGPT Image May 16, 2025, 06_04_16 PM.png', 42, NULL, 79),
(167, 'ahmad ahmad', 'Municipality', '1', 'Graduate of the Lebanese University,specialty', '1747408270_ChatGPT Image May 16, 2025, 06_03_07 PM.png', 41, NULL, 80),
(168, 'hussein mohalal', 'Municipality', '1', 'Graduate of the Lebanese University,specialty', '1747408270_ChatGPT Image May 16, 2025, 05_56_48 PM.png', 41, NULL, 81),
(169, 'muthana obeid', 'Municipality', '1', 'Graduate of the Lebanese University,specialty', '1747408270_ChatGPT Image May 16, 2025, 06_04_16 PM.png', 41, NULL, 81),
(176, 'jebjf', 'evjbvj', 'vbejv', 'vkbrj', '1747649753_ChatGPT Image May 19, 2025, 03_59_04 AM.png', 43, NULL, 88),
(177, 'edfkjlebf', 'ekvhe', 'pvhrv', 'khr', '1747649753_ChatGPT Image May 19, 2025, 03_59_04 AM.png', 43, NULL, 88);

-- --------------------------------------------------------

--
-- Table structure for table `candidate_votes`
--

CREATE TABLE `candidate_votes` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `candidate_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `voted_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `candidate_votes`
--

INSERT INTO `candidate_votes` (`id`, `user_id`, `candidate_id`, `created_at`, `voted_at`) VALUES
(130, 41, 158, '2025-05-16 15:07:32', '2025-05-16 18:07:32'),
(131, 41, 159, '2025-05-16 15:07:32', '2025-05-16 18:07:32'),
(132, 41, 160, '2025-05-16 15:07:32', '2025-05-16 18:07:32'),
(133, 41, 161, '2025-05-16 15:07:32', '2025-05-16 18:07:32'),
(134, 41, 162, '2025-05-16 15:07:32', '2025-05-16 18:07:32'),
(135, 41, 163, '2025-05-16 15:07:32', '2025-05-16 18:07:32'),
(136, 41, 164, '2025-05-16 15:07:32', '2025-05-16 18:07:32'),
(137, 41, 165, '2025-05-16 15:07:32', '2025-05-16 18:07:32'),
(138, 43, 158, '2025-05-16 15:12:33', '2025-05-16 18:12:33'),
(139, 43, 159, '2025-05-16 15:12:33', '2025-05-16 18:12:33'),
(140, 43, 160, '2025-05-16 15:12:33', '2025-05-16 18:12:33'),
(141, 43, 162, '2025-05-16 15:12:33', '2025-05-16 18:12:33'),
(142, 43, 164, '2025-05-16 15:12:33', '2025-05-16 18:12:33'),
(144, 43, 168, '2025-05-16 15:12:39', '2025-05-16 18:12:39'),
(153, 47, 158, '2025-05-18 11:29:44', '2025-05-18 14:29:44'),
(154, 47, 159, '2025-05-18 11:29:44', '2025-05-18 14:29:44'),
(155, 47, 160, '2025-05-18 11:29:44', '2025-05-18 14:29:44'),
(156, 49, 158, '2025-05-19 10:02:45', '2025-05-19 13:02:45'),
(157, 49, 159, '2025-05-19 10:02:45', '2025-05-19 13:02:45'),
(158, 49, 160, '2025-05-19 10:02:46', '2025-05-19 13:02:46'),
(159, 49, 161, '2025-05-19 10:02:46', '2025-05-19 13:02:46'),
(160, 49, 162, '2025-05-19 10:02:46', '2025-05-19 13:02:46'),
(161, 49, 163, '2025-05-19 10:02:46', '2025-05-19 13:02:46'),
(162, 49, 164, '2025-05-19 10:02:46', '2025-05-19 13:02:46'),
(163, 49, 165, '2025-05-19 10:02:46', '2025-05-19 13:02:46');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `max_votes` int(11) NOT NULL,
  `start_time` datetime NOT NULL,
  `end_time` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `title`, `max_votes`, `start_time`, `end_time`, `created_by`, `created_at`) VALUES
(52, 'Qalamoun', 8, '2025-05-16 18:07:00', '2025-05-31 17:41:00', 42, '2025-05-16 15:05:26'),
(53, 'Deniye', 2, '2025-05-16 18:08:00', '2025-05-17 18:08:00', 41, '2025-05-16 15:11:10'),
(59, 'eqjgqe`', 1, '2025-05-19 13:15:00', '2025-05-24 13:15:00', 43, '2025-05-19 10:15:53');

-- --------------------------------------------------------

--
-- Table structure for table `lists`
--

CREATE TABLE `lists` (
  `id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lists`
--

INSERT INTO `lists` (`id`, `event_id`, `name`, `created_by`) VALUES
(76, 52, 'Nabad Qalamoun', 0),
(77, 52, 'Yes We Can', 0),
(78, 52, 'Taawanu', 0),
(79, 52, 'yad', 0),
(80, 53, 'Deniye vibes', 0),
(81, 53, 'Go', 0),
(88, 59, 'ejfge', 0);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `content` text NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `content`, `updated_at`) VALUES
(1, '\r\n🗓️ Presidential Poll ends on June 15, 2025\r\n 📢 New candidates registered in Tripoli & Beirut\r\n', '2025-05-18 10:29:55');

-- --------------------------------------------------------

--
-- Table structure for table `polls`
--

CREATE TABLE `polls` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `end_date` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `max_selections` int(11) DEFAULT 1,
  `token` varchar(50) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `polls`
--

INSERT INTO `polls` (`id`, `title`, `description`, `end_date`, `created_at`, `max_selections`, `token`, `image_url`) VALUES
(35, 'Best Character Design - Vote Now!', 'Help us choose the best-looking character from the new batch! Your vote matters.\r\n\r\n', '2025-05-31', '2025-05-16 15:19:08', 1, '1ed8a419170f5e83', '1747408748_ChatGPT Image May 16, 2025, 06_18_37 PM.png'),
(37, '🏆 Best Programming Language in 2025?', 'Help us decide which programming language deserves the crown this year based on popularity, performance, and job demand.', '2025-05-31', '2025-05-17 02:47:31', 2, 'e7678518956e7ae0', ''),
(39, 'who is the best', '', '2025-05-23', '2025-05-19 10:01:16', 1, 'b7e1a667975fd725', '');

-- --------------------------------------------------------

--
-- Table structure for table `poll_options`
--

CREATE TABLE `poll_options` (
  `id` int(11) NOT NULL,
  `poll_id` int(11) NOT NULL,
  `option_text` varchar(255) DEFAULT NULL,
  `vote_count` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `poll_options`
--

INSERT INTO `poll_options` (`id`, `poll_id`, `option_text`, `vote_count`) VALUES
(73, 35, 'Character 1 – Omar (Traditional)', 0),
(74, 35, 'Character 2 – Karim (Modern)', 0),
(75, 35, 'Character 3 – Ziad (Professional)', 0),
(76, 35, 'Character 4 – Tarek (Youthful)', 0),
(81, 37, 'Python', 0),
(82, 37, 'JavaScript', 0),
(83, 37, 'Java', 0),
(84, 37, 'C#', 0),
(85, 37, 'Go', 0),
(86, 37, 'Rust', 0),
(89, 39, 'mohalal', 0),
(90, 39, 'muthana', 0);

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `name`) VALUES
(1, 'user'),
(2, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL,
  `role_id` int(11) NOT NULL,
  `profile_pic` varchar(255) NOT NULL,
  `ocr_result` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password`, `role_id`, `profile_pic`, `ocr_result`) VALUES
(41, 'Ahmad Hasan', 'ahmad@gmail.com', 'e889543702a89acf4ec7444f1cc38317', 1, '1747406329_68274df965a1a.png', '987654321'),
(42, 'Mohamad El Sayed', 'mohamad@gmail.com', '65382a7cd85b4d2f44616a7a68d39661', 1, '1747406439_68274e67a8b4b.png', '123456789'),
(43, 'Hussein araby', 'hussein@gmail.com', '36b32dc382a3cc8ecb1c0de4e36e7bc2', 1, '1747408331_682755cb1a790.png', '9876543210'),
(47, 'jad', 'jad4.obeid@gmail.com', 'fc9a18b3abf431c4a757ab09a38c60e5', 1, '1747567747_6829c483cc3c5.png', '9876543'),
(49, 'paul nicolas', 'pual@gmail.com', 'b4f9979d0000a7708feca683bd00e65c', 1, '1747648784_682b01106b314.png', '1235729');

-- --------------------------------------------------------

--
-- Table structure for table `user_votes`
--

CREATE TABLE `user_votes` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL,
  `voted_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_votes`
--

INSERT INTO `user_votes` (`id`, `user_id`, `event_id`, `voted_at`) VALUES
(42, 41, 52, '2025-05-16 18:07:32'),
(43, 43, 52, '2025-05-16 18:12:33'),
(44, 43, 53, '2025-05-16 18:12:39'),
(45, 45, 52, '2025-05-18 14:12:44'),
(46, 47, 52, '2025-05-18 14:29:44'),
(47, 49, 52, '2025-05-19 13:02:46');

-- --------------------------------------------------------

--
-- Stand-in structure for view `voted_candidates_view`
-- (See below for the actual view)
--
CREATE TABLE `voted_candidates_view` (
`id` int(11)
,`name` varchar(100)
,`party` varchar(100)
,`title` varchar(100)
,`description` text
,`image_url` varchar(255)
,`list_name` varchar(255)
,`event_name` varchar(255)
,`vote_count` bigint(21)
);

-- --------------------------------------------------------

--
-- Table structure for table `votes`
--

CREATE TABLE `votes` (
  `id` int(11) NOT NULL,
  `poll_id` int(11) DEFAULT NULL,
  `option_id` int(11) DEFAULT NULL,
  `ip` varchar(45) DEFAULT NULL,
  `voted_at` datetime DEFAULT current_timestamp(),
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `votes`
--

INSERT INTO `votes` (`id`, `poll_id`, `option_id`, `ip`, `voted_at`, `user_id`) VALUES
(59, 35, 73, NULL, '2025-05-16 18:19:42', 43),
(60, 35, 74, NULL, '2025-05-16 18:28:26', 41),
(62, 35, 75, NULL, '2025-05-17 05:25:21', 42),
(63, 37, 81, NULL, '2025-05-17 05:48:10', 43),
(64, 37, 82, NULL, '2025-05-17 05:48:10', 43),
(65, 37, 81, NULL, '2025-05-17 05:48:46', 42),
(66, 37, 83, NULL, '2025-05-17 05:48:46', 42),
(67, 37, 85, NULL, '2025-05-18 14:12:59', 45),
(68, 35, 73, NULL, '2025-05-18 14:13:15', 45),
(69, 37, 85, NULL, '2025-05-18 14:29:57', 47),
(70, 35, 73, NULL, '2025-05-18 14:30:09', 47),
(71, 38, 87, NULL, '2025-05-18 20:07:03', 43),
(72, 37, 81, NULL, '2025-05-19 13:00:37', 49),
(73, 37, 82, NULL, '2025-05-19 13:00:38', 49),
(74, 39, 89, NULL, '2025-05-19 13:01:21', 49),
(75, 39, 89, NULL, '2025-05-19 23:38:16', 43);

-- --------------------------------------------------------

--
-- Structure for view `voted_candidates_view`
--
DROP TABLE IF EXISTS `voted_candidates_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `voted_candidates_view`  AS SELECT `c`.`id` AS `id`, `c`.`name` AS `name`, `c`.`party` AS `party`, `c`.`title` AS `title`, `c`.`description` AS `description`, `c`.`image_url` AS `image_url`, `l`.`name` AS `list_name`, `e`.`title` AS `event_name`, count(`cv`.`id`) AS `vote_count` FROM (((`candidates` `c` join `candidate_votes` `cv` on(`c`.`id` = `cv`.`candidate_id`)) join `lists` `l` on(`c`.`list_id` = `l`.`id`)) join `events` `e` on(`l`.`event_id` = `e`.`id`)) GROUP BY `c`.`id`, `c`.`name`, `c`.`party`, `c`.`title`, `c`.`description`, `c`.`image_url`, `l`.`name`, `e`.`title` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `candidates`
--
ALTER TABLE `candidates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `event_id` (`event_id`),
  ADD KEY `list_id` (`list_id`);

--
-- Indexes for table `candidate_votes`
--
ALTER TABLE `candidate_votes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `candidate_id` (`candidate_id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `created_by` (`created_by`);

--
-- Indexes for table `lists`
--
ALTER TABLE `lists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `event_id` (`event_id`),
  ADD KEY `fk_created_by` (`created_by`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `polls`
--
ALTER TABLE `polls`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `token` (`token`);

--
-- Indexes for table `poll_options`
--
ALTER TABLE `poll_options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `poll_id` (`poll_id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_id` (`role_id`);

--
-- Indexes for table `user_votes`
--
ALTER TABLE `user_votes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_vote` (`user_id`,`event_id`);

--
-- Indexes for table `votes`
--
ALTER TABLE `votes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `candidates`
--
ALTER TABLE `candidates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=178;

--
-- AUTO_INCREMENT for table `candidate_votes`
--
ALTER TABLE `candidate_votes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=164;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `lists`
--
ALTER TABLE `lists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `polls`
--
ALTER TABLE `polls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `poll_options`
--
ALTER TABLE `poll_options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `user_votes`
--
ALTER TABLE `user_votes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `votes`
--
ALTER TABLE `votes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `candidates`
--
ALTER TABLE `candidates`
  ADD CONSTRAINT `candidates_ibfk_1` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `candidates_ibfk_2` FOREIGN KEY (`list_id`) REFERENCES `lists` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `candidate_votes`
--
ALTER TABLE `candidate_votes`
  ADD CONSTRAINT `candidate_votes_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `candidate_votes_ibfk_2` FOREIGN KEY (`candidate_id`) REFERENCES `candidates` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `events`
--
ALTER TABLE `events`
  ADD CONSTRAINT `events_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `lists`
--
ALTER TABLE `lists`
  ADD CONSTRAINT `lists_ibfk_1` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `poll_options`
--
ALTER TABLE `poll_options`
  ADD CONSTRAINT `poll_options_ibfk_1` FOREIGN KEY (`poll_id`) REFERENCES `polls` (`id`);

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
