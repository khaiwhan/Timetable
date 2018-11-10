-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 10, 2018 at 06:10 PM
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
  `admin_id` varchar(10) NOT NULL,
  `admin_password` varchar(10) NOT NULL,
  `admin_name` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_password`, `admin_name`) VALUES
('admin', 'admin', 'admin');

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
(3, 36);

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
(3, '9111141'),
(3, '9410141'),
(3, '9410142'),
(3, '4311201'),
(3, '4720201'),
(3, '4620101'),
(3, '4622203'),
(3, '4622101'),
(3, '9111142'),
(3, '9210121'),
(3, '9210122'),
(3, '9410143'),
(3, '9410144'),
(3, '4623201'),
(3, '4622201'),
(3, '4622317'),
(3, '9111243'),
(3, '4411102'),
(3, '4621202'),
(3, '4621203'),
(3, '4622301'),
(3, '4622311'),
(3, '1320003'),
(3, '4000301'),
(3, '4621301'),
(3, '4622303'),
(3, '4623301'),
(3, '4622302'),
(3, '4000303'),
(3, '1320006'),
(3, '4620301'),
(3, '4621302'),
(3, '4622202'),
(3, '4623302'),
(3, '4621308'),
(3, '4623308'),
(3, '4622315'),
(3, '9121045'),
(3, '4620402'),
(3, '4622402');

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
-- Table structure for table `display_timetable`
--

CREATE TABLE `display_timetable` (
  `tb_id` int(11) NOT NULL,
  `day_id` int(11) NOT NULL,
  `time1` varchar(255) DEFAULT NULL,
  `time2` varchar(255) DEFAULT NULL,
  `time3` varchar(255) DEFAULT NULL,
  `time4` varchar(255) DEFAULT NULL,
  `time5` varchar(255) DEFAULT NULL,
  `time6` varchar(255) DEFAULT NULL,
  `time7` varchar(255) DEFAULT NULL,
  `time8` varchar(255) DEFAULT NULL,
  `time9` varchar(255) DEFAULT NULL,
  `time10` varchar(255) DEFAULT NULL,
  `time11` varchar(255) DEFAULT NULL,
  `time12` varchar(255) DEFAULT NULL,
  `time13` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `display_timetable`
--

INSERT INTO `display_timetable` (`tb_id`, `day_id`, `time1`, `time2`, `time3`, `time4`, `time5`, `time6`, `time7`, `time8`, `time9`, `time10`, `time11`, `time12`, `time13`) VALUES
(1, 1, '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2, 2, 'Busy', 'Busy', 'Busy', 'Busy', 'Busy', 'Busy', '', 'Computer Engineering Laboratory', 'Computer Engineering Laboratory', 'Computer Engineering Laboratory', 'Computer Engineering Laboratory', 'Computer Engineering Laboratory', 'Computer Engineering Laboratory'),
(3, 3, '', 'Theory of Computation | manoch.p | 101 | 64346CPE', 'Theory of Computation | manoch.p | 101 | 64346CPE', 'Theory of Computation | manoch.p | 101 | 64346CPE', '', '', '', '', '', '', '', '', ''),
(4, 4, 'Busy', 'Busy', '', '', '', '', '', '', '', '', '', '', ''),
(5, 5, '', '', '', '', '', '', '', '', '', '', '', '', ''),
(6, 6, '', '', '', '', '', '', '', '', '', '', '', '', ''),
(7, 7, '', '', '', '', '', '', '', '', '', '', '', '', '');

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
('9410142', 36, 1, 7),
('4622301', 36, 1, 7),
('4620101', 36, 1, 7),
('4622203', 36, 1, 7);

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `room_id` varchar(6) NOT NULL,
  `room_amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`room_id`, `room_amount`) VALUES
('101', 30),
('102', 30);

-- --------------------------------------------------------

--
-- Table structure for table `room_7x13`
--

CREATE TABLE `room_7x13` (
  `room_id` varchar(6) NOT NULL,
  `year_id` int(11) NOT NULL,
  `term_id` int(11) NOT NULL,
  `day_id` int(11) NOT NULL,
  `time1` varchar(255) DEFAULT NULL,
  `time2` varchar(255) DEFAULT NULL,
  `time3` varchar(255) DEFAULT NULL,
  `time4` varchar(255) DEFAULT NULL,
  `time5` varchar(255) DEFAULT NULL,
  `time6` varchar(255) DEFAULT NULL,
  `time7` varchar(255) DEFAULT NULL,
  `time8` varchar(255) DEFAULT NULL,
  `time9` varchar(255) DEFAULT NULL,
  `time10` varchar(255) DEFAULT NULL,
  `time11` varchar(255) DEFAULT NULL,
  `time12` varchar(255) DEFAULT NULL,
  `time13` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `room_7x13`
--

INSERT INTO `room_7x13` (`room_id`, `year_id`, `term_id`, `day_id`, `time1`, `time2`, `time3`, `time4`, `time5`, `time6`, `time7`, `time8`, `time9`, `time10`, `time11`, `time12`, `time13`) VALUES
('101', 7, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('101', 7, 1, 2, 'Computer Engineering Laboratory | sutinun.p | 102 | 64346CPE', 'Computer Engineering Laboratory | sutinun.p | 102 | 64346CPE', 'Computer Engineering Laboratory | sutinun.p | 102 | 64346CPE', 'Computer Engineering Laboratory | sutinun.p | 102 | 64346CPE', 'Computer Engineering Laboratory | sutinun.p | 102 | 64346CPE', 'Computer Engineering Laboratory | sutinun.p | 102 | 64346CPE', '', '', '', '', '', '', ''),
('101', 7, 1, 3, '', 'Theory of Computation | manoch.p | 101 | 64346CPE', 'Theory of Computation | manoch.p | 101 | 64346CPE', 'Theory of Computation | manoch.p | 101 | 64346CPE', '', '', '', '', '', '', '', '', ''),
('101', 7, 1, 4, 'Database Systems | patrapee.s | 101 | 102 | 64346CPE', 'Database Systems | patrapee.s | 101 | 102 | 64346CPE', '', '', '', '', '', '', '', '', '', '', ''),
('101', 7, 1, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('101', 7, 1, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('101', 7, 1, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('102', 7, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('102', 7, 1, 2, 'Computer Engineering Laboratory | sutinun.p | 102 | 102 | 64346CPE', 'Computer Engineering Laboratory | sutinun.p | 102 | 102 | 64346CPE', 'Computer Engineering Laboratory | sutinun.p | 102 | 102 | 64346CPE', 'Computer Engineering Laboratory | sutinun.p | 102 | 102 | 64346CPE', 'Computer Engineering Laboratory | sutinun.p | 102 | 102 | 64346CPE', 'Computer Engineering Laboratory | sutinun.p | 102 | 102 | 64346CPE', '', '', '', '', '', '', ''),
('102', 7, 1, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('102', 7, 1, 4, '', '', 'Database Systems | patrapee.s | 101 | 102 | 64346CPE', 'Database Systems | patrapee.s | 101 | 102 | 64346CPE', 'Database Systems | patrapee.s | 101 | 102 | 64346CPE', '', '', '', '', '', '', '', ''),
('102', 7, 1, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('102', 7, 1, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('102', 7, 1, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

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
(36, '64346CPE');

-- --------------------------------------------------------

--
-- Table structure for table `student_groups_7x13`
--

CREATE TABLE `student_groups_7x13` (
  `student_groups_id` int(11) NOT NULL,
  `year_id` int(11) NOT NULL,
  `term_id` int(11) NOT NULL,
  `day_id` int(11) NOT NULL,
  `time1` varchar(255) DEFAULT NULL,
  `time2` varchar(255) DEFAULT NULL,
  `time3` varchar(255) DEFAULT NULL,
  `time4` varchar(255) DEFAULT NULL,
  `time5` varchar(255) DEFAULT NULL,
  `time6` varchar(255) DEFAULT NULL,
  `time7` varchar(255) DEFAULT NULL,
  `time8` varchar(255) DEFAULT NULL,
  `time9` varchar(255) DEFAULT NULL,
  `time10` varchar(255) DEFAULT NULL,
  `time11` varchar(255) DEFAULT NULL,
  `time12` varchar(255) DEFAULT NULL,
  `time13` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `student_groups_7x13`
--

INSERT INTO `student_groups_7x13` (`student_groups_id`, `year_id`, `term_id`, `day_id`, `time1`, `time2`, `time3`, `time4`, `time5`, `time6`, `time7`, `time8`, `time9`, `time10`, `time11`, `time12`, `time13`) VALUES
(36, 7, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(36, 7, 1, 2, 'Computer Engineering Laboratory | sutinun.p | 102 | 64346CPE', 'Computer Engineering Laboratory | sutinun.p | 102 | 64346CPE', 'Computer Engineering Laboratory | sutinun.p | 102 | 64346CPE', 'Computer Engineering Laboratory | sutinun.p | 102 | 64346CPE', 'Computer Engineering Laboratory | sutinun.p | 102 | 64346CPE', 'Computer Engineering Laboratory | sutinun.p | 102 | 64346CPE', '', '', '', '', '', '', ''),
(36, 7, 1, 3, '', 'Theory of Computation | manoch.p | 101 | 64346CPE', 'Theory of Computation | manoch.p | 101 | 64346CPE', 'Theory of Computation | manoch.p | 101 | 64346CPE', '', '', '', '', '', '', '', '', ''),
(36, 7, 1, 4, 'Database Systems | patrapee.s | 101 | 102 | 64346CPE', 'Database Systems | patrapee.s | 101 | 102 | 64346CPE', 'Database Systems | patrapee.s | 101 | 102 | 64346CPE', 'Database Systems | patrapee.s | 101 | 102 | 64346CPE', 'Database Systems | patrapee.s | 101 | 102 | 64346CPE', '', '', '', '', '', '', '', ''),
(36, 7, 1, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(36, 7, 1, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(36, 7, 1, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

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
('1320003', 'English Conversation', '3(2-2-5)', ''),
('1320006', 'English for Science and Technology', '3(2-2-5)', ''),
('4000301', 'Preparation for Professional Experience', '1(0-2-1)', ''),
('4000303', 'Job Training', '3(0-40-0)', ''),
('4311201', 'Engineering Mechanics', '3(3-0-6)', ''),
('4411102', 'Engineering Drawing', '3(2-3-5)', ''),
('4620101', 'Computer Engineering Laboratory', '2(0-6-0)', ''),
('4620301', 'Computer Engineering Pre-Project', '1(0-3-1)', ''),
('4620402', 'Computer Engineering Project', '3(1-6-4)', ''),
('4621202', 'Adcance Digital System Design', '3(2-3-5)', 'Digital Circuit and Logic Desgin'),
('4621203', 'Computer Architecture', '3(2-3-5)', ''),
('4621301', 'Computer Organization and Assembly Language', '3(2-3-5)', ''),
('4621302', 'Microcontroller and Interfacing', '3(2-3-5)', ''),
('4621308', 'Computer Hardware Laboratory', '1(0-3-0)', ''),
('4622101', 'Advanced Computer Programming', '3(2-3-5)', 'Computer Programming'),
('4622201', 'Data Structure and Algorithm', '3(2-3-5)', 'Computer Programming'),
('4622202', 'Software Engineering', '3(3-0-6)', ''),
('4622203', 'Theory of Computation', '3(3-0-6)', ''),
('4622301', 'Database Systems', '3(2-3-5)', 'Data Structure and Algorithm'),
('4622302', 'Operating Systems', '3(3-0-6)', 'General Statistics'),
('4622303', 'System Analysis and Design', '3(2-3-5)', 'Data Structure and Algorithm'),
('4622311', 'Object Oriented Sofware Engineering', '3(2-2-5)', ''),
('4622315', 'Mobile Device Programming', '3(2-3-5)', ''),
('4622317', 'Computer Software Laboratory', '1(0-3-1)', 'Computer Programming'),
('4622402', 'Advanced Topics in Computer Software', '3(2-3-5)', ''),
('4623201', 'Data Communication', '3(3-0-6)', ''),
('4623301', 'Computer Networks', '3(3-0-6)', 'Data Communication'),
('4623302', 'TCP/IP Network', '3(3-0-6)', 'Computer Networks'),
('4623308', 'Computer Network Laboratory', '1(0-3-0)', ''),
('4720201', 'Engineering Materials', '3(3-0-6)', ''),
('9111141', 'Calculus for Enginerring 1', '3(3-0-6)', ''),
('9111142', 'Calculus for Enginerring 2', '3(3-0-6)', 'Calculus for Engineers 1'),
('9111243', 'Calculus for Enginerring 3', '3(3-0-6)', 'Calculus for Enginerring 2'),
('9121045', 'General Statistics', '3(3-0-6)', ''),
('9210121', 'Chemistry for Engineering', '3(3-0-6)', ''),
('9210122', 'Chemistry Laboratory for Engineering', '1(0-3-1)', ''),
('9410141', 'Physics for Engineering 1', '3(3-0-6)', ''),
('9410142', 'Physic Laboratory for Engineering 1', '1(0-3-1)', ''),
('9410143', 'Physics for Engineering 2', '3(3-0-6)', 'Physics for Engineers 1'),
('9410144', 'Physic Laboratory for Engineering 1', '1(0-3-1)', 'Physics Laboratory for Engineers 1');

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
(45, '4622301', 'patrapee.s', 'patrapee.s', '', '', ''),
(46, '4622311', 'itarun.p', 'itarun.p', '', '', ''),
(47, '4620101', 'sutinun.p', 'sutinun.p', '', '', ''),
(48, '4622203', 'manoch.p', 'manoch.p', '', '', '');

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
('wattana.p', '1234', 'Wattana Punlumjeak', '-', 'wattana.p@en.rmutt.ac.th', '025-493464'),
('weerachai.y', '1234', 'Weerachai Yaemvachi', 'http://www.en.rmutt.ac.th/weerachai.y', 'weerachai.y@en.rmutt.ac.th', '025-493466'),
('winai.w', '1234', 'Winai Wichaipanitch', '-', 'winai.w@en.rmutt.ac.th', '025-493465');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_7x13`
--

CREATE TABLE `teacher_7x13` (
  `teacher_id` varchar(20) NOT NULL,
  `year_id` int(11) NOT NULL,
  `term_id` int(11) NOT NULL,
  `day_id` int(11) NOT NULL,
  `time1` varchar(255) DEFAULT NULL,
  `time2` varchar(255) DEFAULT NULL,
  `time3` varchar(255) DEFAULT NULL,
  `time4` varchar(255) DEFAULT NULL,
  `time5` varchar(255) DEFAULT NULL,
  `time6` varchar(255) DEFAULT NULL,
  `time7` varchar(255) DEFAULT NULL,
  `time8` varchar(255) DEFAULT NULL,
  `time9` varchar(255) DEFAULT NULL,
  `time10` varchar(255) DEFAULT NULL,
  `time11` varchar(255) DEFAULT NULL,
  `time12` varchar(255) DEFAULT NULL,
  `time13` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `teacher_7x13`
--

INSERT INTO `teacher_7x13` (`teacher_id`, `year_id`, `term_id`, `day_id`, `time1`, `time2`, `time3`, `time4`, `time5`, `time6`, `time7`, `time8`, `time9`, `time10`, `time11`, `time12`, `time13`) VALUES
('patrapee.s', 7, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('patrapee.s', 7, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('patrapee.s', 7, 1, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('patrapee.s', 7, 1, 4, 'Database Systems | patrapee.s | 101 | 102 | 64346CPE', 'Database Systems | patrapee.s | 101 | 102 | 64346CPE', 'Database Systems | patrapee.s | 101 | 102 | 64346CPE', 'Database Systems | patrapee.s | 101 | 102 | 64346CPE', 'Database Systems | patrapee.s | 101 | 102 | 64346CPE', '', '', '', '', '', '', '', ''),
('patrapee.s', 7, 1, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('patrapee.s', 7, 1, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('patrapee.s', 7, 1, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('itarun.p', 7, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('itarun.p', 7, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('itarun.p', 7, 1, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('itarun.p', 7, 1, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('itarun.p', 7, 1, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('itarun.p', 7, 1, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('itarun.p', 7, 1, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sutinun.p', 7, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sutinun.p', 7, 1, 2, 'Computer Engineering Laboratory | sutinun.p | 102 | 64346CPE', 'Computer Engineering Laboratory | sutinun.p | 102 | 64346CPE', 'Computer Engineering Laboratory | sutinun.p | 102 | 64346CPE', 'Computer Engineering Laboratory | sutinun.p | 102 | 64346CPE', 'Computer Engineering Laboratory | sutinun.p | 102 | 64346CPE', 'Computer Engineering Laboratory | sutinun.p | 102 | 64346CPE', '', '', '', '', '', '', ''),
('sutinun.p', 7, 1, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sutinun.p', 7, 1, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sutinun.p', 7, 1, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sutinun.p', 7, 1, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('sutinun.p', 7, 1, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('manoch.p', 7, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('manoch.p', 7, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('manoch.p', 7, 1, 3, '', 'Theory of Computation | manoch.p | 101 | 64346CPE', 'Theory of Computation | manoch.p | 101 | 64346CPE', 'Theory of Computation | manoch.p | 101 | 64346CPE', '', '', '', '', '', '', '', '', ''),
('manoch.p', 7, 1, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('manoch.p', 7, 1, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('manoch.p', 7, 1, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('manoch.p', 7, 1, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

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
-- Table structure for table `view_timetable`
--

CREATE TABLE `view_timetable` (
  `tb_id` int(11) NOT NULL,
  `subject_id` varchar(10) NOT NULL,
  `student_groups_id` int(11) NOT NULL,
  `room_t` varchar(6) NOT NULL,
  `room_l` varchar(6) NOT NULL,
  `time_t` varchar(10) NOT NULL,
  `time_l` varchar(10) NOT NULL,
  `teacher_t` varchar(20) NOT NULL,
  `teacher_l` varchar(20) NOT NULL,
  `term_id` int(11) NOT NULL,
  `year_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `view_timetable`
--

INSERT INTO `view_timetable` (`tb_id`, `subject_id`, `student_groups_id`, `room_t`, `room_l`, `time_t`, `time_l`, `teacher_t`, `teacher_l`, `term_id`, `year_id`) VALUES
(70, '9111141', 36, '', '', 'MON 1-3', '', '', '', 1, 7),
(71, '9410141', 36, '', '', 'WED 1-3', '', '', '', 1, 7),
(72, '9410142', 36, '', '', '', '', '', '', 1, 7),
(73, '4311201', 36, '', '', '', '', '', '', 1, 7),
(74, '4720201', 36, '', '', '', '', '', '', 1, 7),
(75, '4620101', 36, '', '', '', '', '', '', 1, 7),
(76, '4622301', 36, '101', '102', 'WED 1-2', 'WED 3-5', 'patrapee.s', 'patrapee.s', 1, 7),
(77, '4622311', 36, '101', '102', 'FRI 1-2', 'FRI 3-4', 'itarun.p', 'itarun.p', 1, 7),
(78, '4620101', 36, '', '', '', '', '', '', 1, 7),
(79, '4622203', 36, '101', '', 'TUE 2-4', '', 'manoch.p', 'manoch.p', 1, 7);

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
-- Indexes for table `display_timetable`
--
ALTER TABLE `display_timetable`
  ADD PRIMARY KEY (`tb_id`),
  ADD KEY `day_id` (`day_id`);

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
  ADD KEY `day_id` (`day_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `year_id` (`year_id`);

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
-- Indexes for table `student_groups_7x13`
--
ALTER TABLE `student_groups_7x13`
  ADD KEY `day_id` (`day_id`),
  ADD KEY `student_groups_id` (`student_groups_id`),
  ADD KEY `year_id` (`year_id`),
  ADD KEY `term_id` (`term_id`);

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
-- Indexes for table `teacher_7x13`
--
ALTER TABLE `teacher_7x13`
  ADD KEY `day_id` (`day_id`),
  ADD KEY `teacher_id` (`teacher_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `year_id` (`year_id`);

--
-- Indexes for table `term`
--
ALTER TABLE `term`
  ADD PRIMARY KEY (`term_id`);

--
-- Indexes for table `view_timetable`
--
ALTER TABLE `view_timetable`
  ADD PRIMARY KEY (`tb_id`),
  ADD KEY `room_l` (`room_l`),
  ADD KEY `room_t` (`room_t`),
  ADD KEY `student_groups_id` (`student_groups_id`),
  ADD KEY `subject_id` (`subject_id`),
  ADD KEY `teacher_l` (`teacher_l`),
  ADD KEY `teacher_t` (`teacher_t`),
  ADD KEY `term` (`term_id`),
  ADD KEY `year` (`year_id`);

--
-- Indexes for table `year`
--
ALTER TABLE `year`
  ADD PRIMARY KEY (`year_id`);

--
-- AUTO_INCREMENT for dumped tables
--

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
  MODIFY `student_groups_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `subject_teacher`
--
ALTER TABLE `subject_teacher`
  MODIFY `subject_teacher_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `term`
--
ALTER TABLE `term`
  MODIFY `term_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `view_timetable`
--
ALTER TABLE `view_timetable`
  MODIFY `tb_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `year`
--
ALTER TABLE `year`
  MODIFY `year_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

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
-- Constraints for table `display_timetable`
--
ALTER TABLE `display_timetable`
  ADD CONSTRAINT `display_timetable_ibfk_1` FOREIGN KEY (`day_id`) REFERENCES `day` (`day_id`) ON DELETE CASCADE ON UPDATE CASCADE;

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
  ADD CONSTRAINT `room_7x13_ibfk_2` FOREIGN KEY (`day_id`) REFERENCES `day` (`day_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `room_7x13_ibfk_3` FOREIGN KEY (`term_id`) REFERENCES `term` (`term_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `room_7x13_ibfk_4` FOREIGN KEY (`year_id`) REFERENCES `year` (`year_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_ibfk_1` FOREIGN KEY (`student_groups_id`) REFERENCES `student_groups` (`student_groups_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `student_groups_7x13`
--
ALTER TABLE `student_groups_7x13`
  ADD CONSTRAINT `student_groups_7x13_ibfk_1` FOREIGN KEY (`day_id`) REFERENCES `day` (`day_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `student_groups_7x13_ibfk_2` FOREIGN KEY (`student_groups_id`) REFERENCES `student_groups` (`student_groups_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `student_groups_7x13_ibfk_3` FOREIGN KEY (`year_id`) REFERENCES `year` (`year_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `student_groups_7x13_ibfk_4` FOREIGN KEY (`term_id`) REFERENCES `term` (`term_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `subject_teacher`
--
ALTER TABLE `subject_teacher`
  ADD CONSTRAINT `subject_teacher_ibfk_1` FOREIGN KEY (`subject_id`) REFERENCES `subject` (`subject_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `subject_teacher_ibfk_2` FOREIGN KEY (`teacher_l1`) REFERENCES `teacher` (`teacher_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `subject_teacher_ibfk_3` FOREIGN KEY (`teacher_l2`) REFERENCES `teacher` (`teacher_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `subject_teacher_ibfk_4` FOREIGN KEY (`teacher_l3`) REFERENCES `teacher` (`teacher_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `subject_teacher_ibfk_5` FOREIGN KEY (`teacher_l4`) REFERENCES `teacher` (`teacher_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `teacher_7x13`
--
ALTER TABLE `teacher_7x13`
  ADD CONSTRAINT `teacher_7x13_ibfk_1` FOREIGN KEY (`day_id`) REFERENCES `day` (`day_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `teacher_7x13_ibfk_2` FOREIGN KEY (`teacher_id`) REFERENCES `teacher` (`teacher_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `teacher_7x13_ibfk_3` FOREIGN KEY (`term_id`) REFERENCES `term` (`term_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `teacher_7x13_ibfk_4` FOREIGN KEY (`year_id`) REFERENCES `year` (`year_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
