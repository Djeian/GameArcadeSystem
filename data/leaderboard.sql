-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 21, 2026 at 11:24 AM
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
-- Database: `arcadesystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `leaderboard`
--

CREATE TABLE `leaderboard` (
  `id` int(11) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `number` varchar(20) DEFAULT NULL,
  `type` varchar(10) NOT NULL,
  `grade` varchar(10) DEFAULT NULL,
  `strand` varchar(20) DEFAULT NULL,
  `game` varchar(20) NOT NULL,
  `level` int(11) NOT NULL,
  `score` int(11) NOT NULL,
  `time_played` int(11) DEFAULT NULL,
  `mode` varchar(30) NOT NULL,
  `player_number` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `leaderboard`
--

INSERT INTO `leaderboard` (`id`, `fname`, `lname`, `number`, `type`, `grade`, `strand`, `game`, `level`, `score`, `time_played`, `mode`, `player_number`, `created_at`) VALUES
(1, 'Carlos', 'Torres', '02000413379', 'yes', '12', 'MAWD', 'Wordle', 2, 1, 19, '', 0, '2026-03-24 08:10:55'),
(2, 'Carlos', 'Torres', '', 'yes', '12', 'MAWD', 'MemoryGame', 2, 0, 67, '', 0, '2026-03-24 08:33:21'),
(3, 'Ivan', 'Pogi', '', 'no', '', '', 'Wordle', 5, 5, 129, '', 0, '2026-03-24 08:40:05'),
(4, 'Carlos', 'Torres', '', 'no', '', '', 'Snake', 2, 8, 43, '', 0, '2026-03-24 08:43:44'),
(5, 'dasd', 'gdfgdf', '', 'no', '', '', 'MemoryGame', 1, 0, 30, '', 0, '2026-05-04 10:36:13'),
(6, 'rwerw', 'ertre', '', 'no', '', '', 'Snake', 1, 4, 59, '', 0, '2026-05-04 10:38:35'),
(7, 'bnvbnvb', 'jkjhkhj', '', 'no', '', '', 'Wordle', 5, 5, 98, '', 0, '2026-05-04 10:41:36'),
(8, 'letsgo', 'das', '02000413379', 'no', '', '', 'MemoryGame', 2, 0, 41, '', 0, '2026-05-21 07:07:39'),
(9, 'testing', 'kona', '02000413379', 'no', '', '', 'Snake', 2, 4, 59, 'normal', 1, '2026-05-21 08:01:54'),
(10, 'Testingko', 'testingmo', '02000413379', 'no', '', '', 'MemoryGame', 1, 0, 30, 'normal', 1, '2026-05-21 08:03:50'),
(11, 'dasdasd', 'das', '02000413379', 'no', '', '', 'Wordle', 3, 2, 21, 'normal', 1, '2026-05-21 08:04:38'),
(12, 'Thisisit', 'Torres', '02000413379', 'yes', 'COLLEGE', 'BSIT', 'Wordle', 1, 0, 5, 'normal', 1, '2026-05-21 08:05:57'),
(13, 'CHECK', 'CHECKING', '02000413379', 'yes', 'COLLEGE', 'BSIT', 'Memory', 2, 200, 42, 'tournament', 1, '2026-05-21 08:14:17'),
(14, 'Checks', 'Checks', '02000413379', 'yes', '11', 'ABM', 'Memory', 2, 200, 42, 'tournament', 1, '2026-05-21 08:17:02'),
(15, 'Man', 'Man', '21312312312', 'yes', 'COLLEGE', 'BSIT', 'Memory', 3, 300, 54, 'tournament', 2, '2026-05-21 08:18:01'),
(16, 'das', 'das', '02000413379', 'no', '', '', 'MemoryGame', 5, 6, 72, 'normal', 1, '2026-05-21 09:05:24'),
(17, 'das', 'das', '02000413379', 'no', '', '', 'MemoryGame', 5, 0, 77, 'normal', 1, '2026-05-21 09:05:28');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `leaderboard`
--
ALTER TABLE `leaderboard`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `leaderboard`
--
ALTER TABLE `leaderboard`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
