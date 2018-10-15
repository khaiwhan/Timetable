-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 15, 2018 at 10:25 PM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `timetable`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` varchar(20) NOT NULL,
  `admin_password` varchar(20) NOT NULL,
  `admin_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_password`, `admin_name`) VALUES
('admin', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `busy_teacher`
--

CREATE TABLE `busy_teacher` (
  `busy_id` int(11) NOT NULL,
  `teacher_id` varchar(20) NOT NULL,
  `day_id` int(11) NOT NULL,
  `time1` varchar(10) DEFAULT NULL,
  `time2` varchar(10) DEFAULT NULL,
  `time3` varchar(10) DEFAULT NULL,
  `time4` varchar(10) DEFAULT NULL,
  `time5` varchar(10) DEFAULT NULL,
  `time6` varchar(10) DEFAULT NULL,
  `time7` varchar(10) DEFAULT NULL,
  `time8` varchar(10) DEFAULT NULL,
  `time9` varchar(10) DEFAULT NULL,
  `time10` varchar(10) DEFAULT NULL,
  `time11` varchar(10) DEFAULT NULL,
  `time12` varchar(10) DEFAULT NULL,
  `time13` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `busy_teacher`
--

INSERT INTO `busy_teacher` (`busy_id`, `teacher_id`, `day_id`, `time1`, `time2`, `time3`, `time4`, `time5`, `time6`, `time7`, `time8`, `time9`, `time10`, `time11`, `time12`, `time13`) VALUES
(1, 'itarun.p', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'itarun.p', 2, 'Busy', 'Busy', 'Busy', 'Busy', 'Busy', '', '', '', '', '', '', '', ''),
(3, 'itarun.p', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'itarun.p', 4, '', '', '', '', '', 'Busy', 'Busy', 'Busy', '', '', '', '', ''),
(5, 'itarun.p', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'itarun.p', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'itarun.p', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'jedsada.a', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'jedsada.a', 2, 'Busy', 'Busy', 'Busy', '', '', '', '', '', '', '', '', '', ''),
(10, 'jedsada.a', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 'jedsada.a', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 'jedsada.a', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 'jedsada.a', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 'jedsada.a', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 'kittiwann.n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 'kittiwann.n', 2, 'Busy', 'Busy', '', '', '', '', '', '', '', '', '', '', ''),
(17, 'kittiwann.n', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 'kittiwann.n', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 'kittiwann.n', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 'kittiwann.n', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, 'kittiwann.n', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, 'manoch.p', 1, '', '', '', '', '', '', 'Busy', 'Busy', 'Busy', '', '', '', ''),
(23, 'manoch.p', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, 'manoch.p', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, 'manoch.p', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, 'manoch.p', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, 'manoch.p', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(28, 'manoch.p', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(29, 'nachirat.r', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(30, 'nachirat.r', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(31, 'nachirat.r', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32, 'nachirat.r', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(33, 'nachirat.r', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(34, 'nachirat.r', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(35, 'nachirat.r', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(36, 'nuchtiphong.o', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(37, 'nuchtiphong.o', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(38, 'nuchtiphong.o', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(39, 'nuchtiphong.o', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40, 'nuchtiphong.o', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(41, 'nuchtiphong.o', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(42, 'nuchtiphong.o', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(43, 'patrapee.s', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(44, 'patrapee.s', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(45, 'patrapee.s', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(46, 'patrapee.s', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(47, 'patrapee.s', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(48, 'patrapee.s', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(49, 'patrapee.s', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(50, 'pauline.k', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(51, 'pauline.k', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(52, 'pauline.k', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(53, 'pauline.k', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(54, 'pauline.k', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(55, 'pauline.k', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(56, 'pauline.k', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(57, 'pitchayapatchaya.s', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(58, 'pitchayapatchaya.s', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(59, 'pitchayapatchaya.s', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(60, 'pitchayapatchaya.s', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(61, 'pitchayapatchaya.s', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(62, 'pitchayapatchaya.s', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(63, 'pitchayapatchaya.s', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(64, 'prusayon.n', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(65, 'prusayon.n', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(66, 'prusayon.n', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(67, 'prusayon.n', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(68, 'prusayon.n', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(69, 'prusayon.n', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(70, 'prusayon.n', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(71, 'samatachai.j', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(72, 'samatachai.j', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(73, 'samatachai.j', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(74, 'samatachai.j', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(75, 'samatachai.j', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(76, 'samatachai.j', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(77, 'samatachai.j', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(78, 'sirichai.t', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(79, 'sirichai.t', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(80, 'sirichai.t', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(81, 'sirichai.t', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(82, 'sirichai.t', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(83, 'sirichai.t', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(84, 'sirichai.t', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(85, 'sitti.r', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(86, 'sitti.r', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(87, 'sitti.r', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(88, 'sitti.r', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(89, 'sitti.r', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(90, 'sitti.r', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(91, 'sitti.r', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(92, 'sutinun.p', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(93, 'sutinun.p', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(94, 'sutinun.p', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(95, 'sutinun.p', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(96, 'sutinun.p', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(97, 'sutinun.p', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(98, 'sutinun.p', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(99, 'thanasin.b', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(100, 'thanasin.b', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(101, 'thanasin.b', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(102, 'thanasin.b', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(103, 'thanasin.b', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(104, 'thanasin.b', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(105, 'thanasin.b', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(106, 'wattana.p', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(107, 'wattana.p', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(108, 'wattana.p', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(109, 'wattana.p', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(110, 'wattana.p', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(111, 'wattana.p', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(112, 'wattana.p', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(113, 'weerachai.y', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(114, 'weerachai.y', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(115, 'weerachai.y', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(116, 'weerachai.y', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(117, 'weerachai.y', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(118, 'weerachai.y', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(119, 'weerachai.y', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(120, 'winai.w', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(121, 'winai.w', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(122, 'winai.w', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(123, 'winai.w', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(124, 'winai.w', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(125, 'winai.w', 6, '', '', '', '', '', '', '', 'Busy', '', '', '', '', 'Busy'),
(126, 'winai.w', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(127, 'deachrut.j', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(128, 'deachrut.j', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(129, 'deachrut.j', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(130, 'deachrut.j', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(131, 'deachrut.j', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(132, 'deachrut.j', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(133, 'deachrut.j', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `course_id` int(11) NOT NULL,
  `course_name` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`course_id`, `course_name`) VALUES
(1, 'course_53'),
(2, 'course_58'),
(3, 'course_63'),
(4, 'course_68');

-- --------------------------------------------------------

--
-- Table structure for table `course_student_groups`
--

CREATE TABLE `course_student_groups` (
  `course_id` int(11) NOT NULL,
  `student_groups_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `course_student_groups`
--

INSERT INTO `course_student_groups` (`course_id`, `student_groups_id`) VALUES
(2, 1),
(2, 2),
(2, 3),
(2, 4),
(2, 5),
(2, 6),
(2, 7),
(2, 8),
(2, 9);

-- --------------------------------------------------------

--
-- Table structure for table `course_subject`
--

CREATE TABLE `course_subject` (
  `course_id` int(11) NOT NULL,
  `subject_id` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `course_subject`
--

INSERT INTO `course_subject` (`course_id`, `subject_id`) VALUES
(2, '09111141'),
(2, '09410141'),
(2, '09410142'),
(2, '04311201'),
(2, '04720201'),
(2, '04620101'),
(2, '04622203'),
(2, '04622101'),
(2, '09111142'),
(2, '09210121'),
(2, '09210122'),
(2, '09410143'),
(2, '09410144'),
(2, '04623201'),
(2, '04622201'),
(2, '04622317'),
(2, '09111243'),
(2, '04411102'),
(2, '04621202'),
(2, '04621203'),
(2, '04622301'),
(2, '04622311'),
(2, '01320003'),
(2, '04000301'),
(2, '04621301'),
(2, '04622303'),
(2, '04623301'),
(2, '04622302'),
(2, '04000303'),
(2, '01320006'),
(2, '04620301'),
(2, '04621302'),
(2, '04622202'),
(2, '04623302'),
(2, '04621308'),
(2, '04623308'),
(2, '04622315'),
(2, '09121045'),
(2, '04620402'),
(2, '04622402');

-- --------------------------------------------------------

--
-- Table structure for table `day`
--

CREATE TABLE `day` (
  `day_id` int(11) NOT NULL,
  `day_name` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `day`
--

INSERT INTO `day` (`day_id`, `day_name`) VALUES
(6, 'FRI'),
(2, 'MON'),
(7, 'SAT'),
(1, 'SUN'),
(5, 'THU'),
(3, 'TUE'),
(4, 'WED');

-- --------------------------------------------------------

--
-- Table structure for table `rm21`
--

CREATE TABLE `rm21` (
  `subject_id` varchar(10) NOT NULL,
  `student_groups_id` int(11) NOT NULL,
  `term_id` int(11) NOT NULL,
  `year_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rm21`
--

INSERT INTO `rm21` (`subject_id`, `student_groups_id`, `term_id`, `year_id`) VALUES
('09111141', 2, 1, 1),
('09410141', 2, 1, 1),
('09410142', 2, 1, 1),
('04311201', 2, 1, 1),
('04720201', 2, 1, 1),
('04620101', 2, 1, 1),
('04622203', 2, 1, 1),
('04622101', 2, 1, 1),
('09111142', 2, 2, 1),
('09210121', 2, 2, 1),
('09210122', 2, 2, 1),
('09410143', 2, 2, 1),
('09410144', 2, 2, 1),
('04623201', 2, 2, 1),
('04622201', 2, 2, 1),
('04622317', 2, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `room_id` varchar(6) NOT NULL,
  `room_amount` int(11) NOT NULL,
  `room_type` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`room_id`, `room_amount`, `room_type`) VALUES
('16103', 40, 'T'),
('16104', 25, 'L'),
('16201', 40, 'L'),
('16202', 40, 'L'),
('16203', 40, 'L'),
('16301', 40, 'T'),
('16302', 40, 'T'),
('16303', 40, 'T'),
('16304', 40, 'T');

-- --------------------------------------------------------

--
-- Table structure for table `room_7x13`
--

CREATE TABLE `room_7x13` (
  `room_id` varchar(6) NOT NULL,
  `day_id` int(11) NOT NULL,
  `time1` varchar(10) DEFAULT NULL,
  `time2` varchar(10) DEFAULT NULL,
  `time3` varchar(10) DEFAULT NULL,
  `time4` varchar(10) DEFAULT NULL,
  `time5` varchar(10) DEFAULT NULL,
  `time6` varchar(10) DEFAULT NULL,
  `time7` varchar(10) DEFAULT NULL,
  `time8` varchar(10) DEFAULT NULL,
  `time9` varchar(10) DEFAULT NULL,
  `time10` varchar(10) DEFAULT NULL,
  `time11` varchar(10) DEFAULT NULL,
  `time12` varchar(10) DEFAULT NULL,
  `time13` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `room_7x13`
--

INSERT INTO `room_7x13` (`room_id`, `day_id`, `time1`, `time2`, `time3`, `time4`, `time5`, `time6`, `time7`, `time8`, `time9`, `time10`, `time11`, `time12`, `time13`) VALUES
('16103', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('16103', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('16103', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('16103', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('16103', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('16103', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('16103', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('16104', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('16104', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('16104', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('16104', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('16104', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('16104', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('16104', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('16201', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('16201', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('16201', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('16201', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('16201', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('16201', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('16201', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('16202', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('16202', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('16202', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('16202', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('16202', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('16202', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('16202', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('16203', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('16203', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('16203', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('16203', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('16203', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('16203', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('16203', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('16301', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('16301', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('16301', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('16301', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('16301', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('16301', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('16301', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('16302', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('16302', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('16302', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('16302', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('16302', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('16302', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('16302', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('16303', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('16303', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('16303', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('16303', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('16303', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('16303', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('16303', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('16304', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('16304', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('16304', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('16304', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('16304', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('16304', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('16304', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `student_id` varchar(14) NOT NULL,
  `student_password` varchar(20) NOT NULL,
  `student_name` varchar(30) NOT NULL,
  `student_groups_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_id`, `student_password`, `student_name`, `student_groups_id`) VALUES
('115830462001-2', '02356', 'Mati', 9),
('115830462003-7', '1234', 'Phoom Thongsap', 2);

-- --------------------------------------------------------

--
-- Table structure for table `student_groups`
--

CREATE TABLE `student_groups` (
  `student_groups_id` int(11) NOT NULL,
  `student_groups_name` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `student_groups`
--

INSERT INTO `student_groups` (`student_groups_id`, `student_groups_name`) VALUES
(1, '58146CPE'),
(2, '58346CPE'),
(3, '58446CPE'),
(4, '59146CPE'),
(5, '59346CPE'),
(6, '59446CPE'),
(7, '60146CPE'),
(8, '60346CPE'),
(9, '60446CPE'),
(19, '61146CPE'),
(20, '61346CPE'),
(21, '61446CPE'),
(22, '62146CPE'),
(23, '62346CPE'),
(24, '62446CPE'),
(25, '63146CPE'),
(26, '63346CPE'),
(27, '63446CPE');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `subject_id` varchar(10) NOT NULL,
  `subject_name` varchar(50) NOT NULL,
  `subject_unit` varchar(10) NOT NULL,
  `required_subject` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`subject_id`, `subject_name`, `subject_unit`, `required_subject`) VALUES
('01320003', 'English Conversation', '3(2-2-5)', ''),
('01320006', 'English for Science and Technology', '3(2-2-5)', ''),
('04000301', 'Preparation for Professional Experience', '1(0-2-1)', ''),
('04000303', 'Job Training', '3(0-4-0)', ''),
('04311201', 'Engineering Mechanics', '3(3-0-6)', ''),
('04411102', 'Engineering Drawing', '3(2-3-5)', ''),
('04620101', 'Computer Engineering Laboratory', '2(0-6-0)', ''),
('04620301', 'Computer Engineering Pre-Project', '1(0-3-1)', ''),
('04620402', 'Computer Engineering Project', '3(1-6-4)', ''),
('04621202', 'Adcance Digital System Design', '3(2-3-5)', 'Digital Circuit and Logic Desgin'),
('04621203', 'Computer Architecture', '3(2-3-5)', ''),
('04621301', 'Computer Organization and Assembly Language', '3(2-3-5)', ''),
('04621302', 'Microcontroller and Interfacing', '3(2-3-5)', ''),
('04621308', 'Computer Hardware Laboratory', '1(0-3-0)', ''),
('04622101', 'Advanced Computer Programming', '3(2-3-5)', 'Computer Programming'),
('04622201', 'Data Structure and Algorithm', '3(2-3-5)', 'Computer Programming'),
('04622202', 'Software Engineering', '3(3-0-6)', ''),
('04622203', 'Theory of Computation', '3(3-0-6)', ''),
('04622301', 'Database Systems', '3(2-3-5)', 'Data Structure and Algorithm'),
('04622302', 'Operating Systems', '3(3-0-6)', 'General Statistics'),
('04622303', 'System Analysis and Design', '3(2-3-5)', 'Data Structure and Algorithm'),
('04622311', 'Object Oriented Sofware Engineering', '3(2-2-5)', ''),
('04622315', 'Mobile Device Programming', '3(2-3-5)', ''),
('04622317', 'Computer Software Laboratory', '1(0-3-1)', 'Computer Programming'),
('04622402', 'Advanced Topics in Computer Software', '3(2-3-5)', ''),
('04623201', 'Data Communication', '3(3-0-6)', ''),
('04623301', 'Computer Networks', '3(3-0-6)', 'Data Communication'),
('04623302', 'TCP/IP Network', '3(3-0-6)', 'Computer Networks'),
('04623308', 'Computer Network Laboratory', '1(0-3-0)', ''),
('04720201', 'Engineering Materials', '3(3-0-6)', ''),
('09111141', 'Calculus for Enginerring 1', '3(3-0-6)', ''),
('09111142', 'Calculus for Enginerring 2', '3(3-0-6)', 'Calculus for Engineers 1'),
('09111243', 'Calculus for Enginerring 3', '3(3-0-6)', 'Calculus for Enginerring 2'),
('09121045', 'General Statistics', '3(3-0-6)', ''),
('09210121', 'Chemistry for Engineering', '3(3-0-6)', ''),
('09210122', 'Chemistry Laboratory for Engineering', '1(0-3-1)', ''),
('09410141', 'Physics for Engineering 1', '3(3-0-6)', ''),
('09410142', 'Physic Laboratory for Engineering 1', '1(0-3-1)', ''),
('09410143', 'Physics for Engineering 2', '3(3-0-6)', 'Physics for Engineers 1'),
('09410144', 'Physic Laboratory for Engineering 2', '1(0-3-1)', 'Physics Laboratory for Engineers 1');

-- --------------------------------------------------------

--
-- Table structure for table `subject_teacher`
--

CREATE TABLE `subject_teacher` (
  `subject_teacher_id` int(11) NOT NULL,
  `subject_id` varchar(10) NOT NULL,
  `teacher_t` varchar(20) DEFAULT NULL,
  `teacher_l1` varchar(20) DEFAULT NULL,
  `teacher_l2` varchar(20) DEFAULT NULL,
  `teacher_l3` varchar(20) DEFAULT NULL,
  `teacher_l4` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `subject_teacher`
--

INSERT INTO `subject_teacher` (`subject_teacher_id`, `subject_id`, `teacher_t`, `teacher_l1`, `teacher_l2`, `teacher_l3`, `teacher_l4`) VALUES
(12, '04621301', 'jedsada.a', 'jedsada.a', '', '', ''),
(13, '04621308', 'jedsada.a', 'jedsada.a', '', '', ''),
(14, '04621308', 'samatachai.j', 'samatachai.j', '', '', ''),
(15, '04621202', 'nuchtiphong.o', 'nuchtiphong.o', '', '', ''),
(16, '04622101', 'patrapee.s', 'patrapee.s', '', '', ''),
(17, '04622402', 'itarun.p', 'itarun.p', '', '', ''),
(18, '04622402', 'deachrut.j', 'deachrut.j', '', '', ''),
(19, '04622402', 'sirichai.t', 'sirichai.t', '', '', ''),
(20, '04621203', 'kittiwann.n', 'kittiwann.n', '', '', ''),
(21, '04620101', 'sutinun.p', 'sutinun.p', '', '', ''),
(22, '04620301', 'pauline.k', 'pauline.k', '', '', ''),
(23, '04620402', 'weerachai.y', 'weerachai.y', '', '', ''),
(24, '04621308', 'jedsada.a', 'jedsada.a', '', '', ''),
(25, '04621308', 'samatachai.j', 'samatachai.j', '', '', ''),
(26, '04623308', 'weerachai.y', 'weerachai.y', '', '', ''),
(27, '04623301', 'itarun.p', 'itarun.p', '', '', ''),
(28, '04623301', 'prusayon.n', 'prusayon.n', '', '', ''),
(29, '04621301', 'jedsada.a', 'jedsada.a', '', '', ''),
(30, '04622317', 'pitchayapatchaya.s', 'pitchayapatchaya.s', '', '', ''),
(31, '04623201', 'itarun.p', 'itarun.p', '', '', ''),
(32, '04623201', 'prusayon.n', 'prusayon.n', '', '', ''),
(33, '04622201', 'nachirat.r', 'nachirat.r', '', '', ''),
(34, '04622301', 'patrapee.s', 'patrapee.s', '', '', ''),
(35, '04621302', 'sutinun.p', 'sutinun.p', '', '', ''),
(36, '04622311', 'sirichai.t', 'sirichai.t', '', '', ''),
(37, '04622302', 'sutinun.p', 'sutinun.p', '', '', ''),
(38, '04622202', 'wattana.p', 'wattana.p', '', '', ''),
(39, '04622303', 'pauline.k', 'pauline.k', '', '', ''),
(40, '04623302', 'weerachai.y', 'weerachai.y', '', '', ''),
(41, '04622203', 'manoch.p', 'manoch.p', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `teacher_id` varchar(20) NOT NULL,
  `teacher_password` varchar(20) NOT NULL,
  `teacher_name` varchar(30) NOT NULL,
  `teacher_website` varchar(50) NOT NULL,
  `teacher_email` varchar(30) NOT NULL,
  `teacher_phone` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`teacher_id`, `teacher_password`, `teacher_name`, `teacher_website`, `teacher_email`, `teacher_phone`) VALUES
('', '', '', '', '', ''),
('deachrut.j', '1234', 'Deachrut Jaithavil', 'http://teacher.en.rmutt.ac.th/deachrut.j', 'deachrut.j@en.rmutt.ac.th', '025-493467'),
('itarun.p', '1234', 'Itarun Pitimon', '-', 'itarun.p@en.rmutt.ac.th', '025-493466'),
('jedsada.a', '1234', 'Jedsada Arunruerk', '-', 'jedsada.a@en.rmutt.ac.th', '025-493467'),
('kittiwann.n', '1234', 'Kittiwann Nimkerdphol', 'http://web.en.rmutt.ac.th/ktw/', 'kittiwann.n@en.rmutt.ac.th', '025-493464'),
('manoch.p', '1234', 'Manoch Pracha', 'http://web.en.rmutt.ac.th/manoch/', 'manoch.p@en.rmutt.ac.th', '025-493464'),
('nachirat.r', '1234', 'Nachirat Rachburee', 'http://teacher.en.rmutt.ac.th/nachirat.r', 'nachirat.r@en.rmutt.ac.th', '025-493467'),
('nuchtiphong.o', '1234', 'Nuchtiphong Outhong', 'http://teacher.en.rmutt.ac.th/nuchtiphong.o', 'nuchtiphong.o@en.rmutt.ac.th', '025-493464'),
('patrapee.s', '1234', 'Patrapee Sunantapot', '-', 'patrapee.s@en.mutt.ac.th', '025-493461'),
('pauline.k', '1234', 'Pauline Kongsuwan ', 'https://sites.google.com/a/en.rmutt.ac.th/pkongsuw', 'pauline.k@en.rmutt.ac.th', '025-493464'),
('pitchayapatchaya.s', '1234', 'Pitchayapatchaya Srikram', '-', 'pitchayapatchaya.s@en.rmutt.ac', '025-493469'),
('prusayon.n', '1234', 'Prusayon Nintanavongsa ', 'http://teacher.en.rmutt.ac.th/prusayon', 'prusayon.n@en.rmutt.ac.th', '025-493467'),
('samatachai.j', '1234', 'Samatachai Jantarat', 'http://teacher.en.rmutt.ac.th/samatachai.j', 'samatachai.j@en.rmutt.ac.th', '025-493467'),
('sirichai.t', '1234', 'Sirichai Triamlumlerd', '-', 'sirichai.t@en.rmutt.ac.th', '025-493464'),
('sitti.r', '1234', 'Sitti Rugtanom', 'http://www.facebook.com/#!/sitti.rugtanom', 'sitti.r@en.rmutt.ac.th', '025-493467'),
('sutinun.p', '1234', 'Sutinun Pronanuluck', '-', 'sutinun.p@en.rmutt.ac.th', '025-493464'),
('thanasin.b', '1234', 'Thanasin  Bunnam', '-', 'thanasin.b@en.rmutt.ac.th', '025-493467'),
('wattana.p', '1234', 'Wattana Punlumjeak', '-', 'wattana.p@en.rmutt.ac.th', '025-493464'),
('weerachai.y', '1234', 'Weerachai Yaemvachi', 'http://www.en.rmutt.ac.th/weerachai.y', 'weerachai.y@en.rmutt.ac.th', '025-493466'),
('winai.w', '1234', 'Winai Wichaipanitch', '-', 'winai.w@en.rmutt.ac.th', '025-493465');

-- --------------------------------------------------------

--
-- Table structure for table `term`
--

CREATE TABLE `term` (
  `term_id` int(11) NOT NULL,
  `term_name` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `term`
--

INSERT INTO `term` (`term_id`, `term_name`) VALUES
(1, 1),
(2, 2),
(3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `year`
--

CREATE TABLE `year` (
  `year_id` int(11) NOT NULL,
  `year_name` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `year`
--

INSERT INTO `year` (`year_id`, `year_name`) VALUES
(1, 2558),
(2, 2559),
(3, 2560),
(4, 2561),
(5, 2562),
(6, 2563),
(7, 2564),
(8, 2565),
(9, 2566),
(10, 2567),
(11, 2568),
(12, 2569),
(13, 2570),
(14, 2571),
(15, 2572);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `busy_teacher`
--
ALTER TABLE `busy_teacher`
  ADD PRIMARY KEY (`busy_id`),
  ADD KEY `day_id` (`day_id`),
  ADD KEY `teacher_id` (`teacher_id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`course_id`);

--
-- Indexes for table `course_student_groups`
--
ALTER TABLE `course_student_groups`
  ADD KEY `course_id` (`course_id`),
  ADD KEY `student_groups_id` (`student_groups_id`);

--
-- Indexes for table `course_subject`
--
ALTER TABLE `course_subject`
  ADD KEY `course_id` (`course_id`),
  ADD KEY `subject_id` (`subject_id`);

--
-- Indexes for table `day`
--
ALTER TABLE `day`
  ADD PRIMARY KEY (`day_id`),
  ADD KEY `day_name` (`day_name`);

--
-- Indexes for table `rm21`
--
ALTER TABLE `rm21`
  ADD KEY `subject_id` (`subject_id`),
  ADD KEY `student_groups_id` (`student_groups_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `year_id` (`year_id`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`room_id`);

--
-- Indexes for table `room_7x13`
--
ALTER TABLE `room_7x13`
  ADD KEY `room_id` (`room_id`),
  ADD KEY `day_id` (`day_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`student_id`),
  ADD KEY `student_ibfk_1` (`student_groups_id`);

--
-- Indexes for table `student_groups`
--
ALTER TABLE `student_groups`
  ADD PRIMARY KEY (`student_groups_id`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`subject_id`);

--
-- Indexes for table `subject_teacher`
--
ALTER TABLE `subject_teacher`
  ADD PRIMARY KEY (`subject_teacher_id`),
  ADD KEY `subject_teacher_ibfk_1` (`subject_id`),
  ADD KEY `subject_teacher_ibfk_2` (`teacher_l1`),
  ADD KEY `subject_teacher_ibfk_3` (`teacher_l2`),
  ADD KEY `subject_teacher_ibfk_4` (`teacher_l3`),
  ADD KEY `subject_teacher_ibfk_5` (`teacher_l4`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`teacher_id`);

--
-- Indexes for table `term`
--
ALTER TABLE `term`
  ADD PRIMARY KEY (`term_id`);

--
-- Indexes for table `year`
--
ALTER TABLE `year`
  ADD PRIMARY KEY (`year_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `busy_teacher`
--
ALTER TABLE `busy_teacher`
  MODIFY `busy_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `course_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `day`
--
ALTER TABLE `day`
  MODIFY `day_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `student_groups`
--
ALTER TABLE `student_groups`
  MODIFY `student_groups_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `subject_teacher`
--
ALTER TABLE `subject_teacher`
  MODIFY `subject_teacher_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `term`
--
ALTER TABLE `term`
  MODIFY `term_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `year`
--
ALTER TABLE `year`
  MODIFY `year_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `busy_teacher`
--
ALTER TABLE `busy_teacher`
  ADD CONSTRAINT `busy_teacher_ibfk_1` FOREIGN KEY (`day_id`) REFERENCES `day` (`day_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `busy_teacher_ibfk_2` FOREIGN KEY (`teacher_id`) REFERENCES `teacher` (`teacher_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `course_student_groups`
--
ALTER TABLE `course_student_groups`
  ADD CONSTRAINT `course_student_groups_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `course_student_groups_ibfk_2` FOREIGN KEY (`student_groups_id`) REFERENCES `student_groups` (`student_groups_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `course_subject`
--
ALTER TABLE `course_subject`
  ADD CONSTRAINT `course_subject_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `course_subject_ibfk_2` FOREIGN KEY (`subject_id`) REFERENCES `subject` (`subject_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `rm21`
--
ALTER TABLE `rm21`
  ADD CONSTRAINT `rm21_ibfk_1` FOREIGN KEY (`subject_id`) REFERENCES `subject` (`subject_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `rm21_ibfk_2` FOREIGN KEY (`student_groups_id`) REFERENCES `student_groups` (`student_groups_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `rm21_ibfk_3` FOREIGN KEY (`term_id`) REFERENCES `term` (`term_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `rm21_ibfk_4` FOREIGN KEY (`year_id`) REFERENCES `year` (`year_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `room_7x13`
--
ALTER TABLE `room_7x13`
  ADD CONSTRAINT `room_7x13_ibfk_1` FOREIGN KEY (`room_id`) REFERENCES `room` (`room_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `room_7x13_ibfk_2` FOREIGN KEY (`day_id`) REFERENCES `day` (`day_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_ibfk_1` FOREIGN KEY (`student_groups_id`) REFERENCES `student_groups` (`student_groups_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `subject_teacher`
--
ALTER TABLE `subject_teacher`
  ADD CONSTRAINT `subject_teacher_ibfk_1` FOREIGN KEY (`subject_id`) REFERENCES `subject` (`subject_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `subject_teacher_ibfk_2` FOREIGN KEY (`teacher_l1`) REFERENCES `teacher` (`teacher_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `subject_teacher_ibfk_3` FOREIGN KEY (`teacher_l2`) REFERENCES `teacher` (`teacher_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `subject_teacher_ibfk_4` FOREIGN KEY (`teacher_l3`) REFERENCES `teacher` (`teacher_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `subject_teacher_ibfk_5` FOREIGN KEY (`teacher_l4`) REFERENCES `teacher` (`teacher_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
