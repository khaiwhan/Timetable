-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 08, 2018 at 02:26 PM
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
('09111141', 1, 2, 4),
('09410141', 1, 2, 4),
('04311201', 1, 2, 4);

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
('16105', 50, 'T');

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
('09410144', 'Physic Laboratory for Engineering 1', '1(0-3-1)', 'Physics Laboratory for Engineers 1');

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
-- Table structure for table `teacher_l1`
--

CREATE TABLE `teacher_l1` (
  `subject_id` varchar(10) NOT NULL,
  `teacher_l1_id` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `teacher_l1`
--

INSERT INTO `teacher_l1` (`subject_id`, `teacher_l1_id`) VALUES
('04311201', 'manoch.p'),
('04000303', 'nachirat.r');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_l2`
--

CREATE TABLE `teacher_l2` (
  `subject_id` varchar(10) NOT NULL,
  `teacher_l2_id` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `teacher_l2`
--

INSERT INTO `teacher_l2` (`subject_id`, `teacher_l2_id`) VALUES
('04311201', 'kittiwann.n');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_l3`
--

CREATE TABLE `teacher_l3` (
  `subject_id` varchar(10) NOT NULL,
  `teacher_l3_id` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `teacher_l3`
--

INSERT INTO `teacher_l3` (`subject_id`, `teacher_l3_id`) VALUES
('04311201', 'kittiwann.n');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_l4`
--

CREATE TABLE `teacher_l4` (
  `subject_id` varchar(10) NOT NULL,
  `teacher_l4_id` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `teacher_l4`
--

INSERT INTO `teacher_l4` (`subject_id`, `teacher_l4_id`) VALUES
('04311201', 'itarun.p');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_t`
--

CREATE TABLE `teacher_t` (
  `subject_id` varchar(10) NOT NULL,
  `teacher_t_id` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `teacher_t`
--

INSERT INTO `teacher_t` (`subject_id`, `teacher_t_id`) VALUES
('04000303', 'manoch.p'),
('04311201', 'manoch.p');

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
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`teacher_id`);

--
-- Indexes for table `teacher_l1`
--
ALTER TABLE `teacher_l1`
  ADD PRIMARY KEY (`subject_id`),
  ADD KEY `teacher_l1_id` (`teacher_l1_id`);

--
-- Indexes for table `teacher_l2`
--
ALTER TABLE `teacher_l2`
  ADD PRIMARY KEY (`subject_id`),
  ADD KEY `teacher_l2_id` (`teacher_l2_id`);

--
-- Indexes for table `teacher_l3`
--
ALTER TABLE `teacher_l3`
  ADD PRIMARY KEY (`subject_id`),
  ADD KEY `teacher_l3_id` (`teacher_l3_id`);

--
-- Indexes for table `teacher_l4`
--
ALTER TABLE `teacher_l4`
  ADD PRIMARY KEY (`subject_id`),
  ADD KEY `teacher_l4_id` (`teacher_l4_id`);

--
-- Indexes for table `teacher_t`
--
ALTER TABLE `teacher_t`
  ADD PRIMARY KEY (`subject_id`),
  ADD KEY `teacher_t_ibfk_2` (`teacher_t_id`);

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
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `course_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `student_groups`
--
ALTER TABLE `student_groups`
  MODIFY `student_groups_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

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
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_ibfk_1` FOREIGN KEY (`student_groups_id`) REFERENCES `student_groups` (`student_groups_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `teacher_l1`
--
ALTER TABLE `teacher_l1`
  ADD CONSTRAINT `teacher_l1_ibfk_1` FOREIGN KEY (`subject_id`) REFERENCES `subject` (`subject_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `teacher_l1_ibfk_2` FOREIGN KEY (`teacher_l1_id`) REFERENCES `teacher` (`teacher_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `teacher_l2`
--
ALTER TABLE `teacher_l2`
  ADD CONSTRAINT `teacher_l2_ibfk_1` FOREIGN KEY (`subject_id`) REFERENCES `subject` (`subject_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `teacher_l2_ibfk_2` FOREIGN KEY (`teacher_l2_id`) REFERENCES `teacher` (`teacher_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `teacher_l3`
--
ALTER TABLE `teacher_l3`
  ADD CONSTRAINT `teacher_l3_ibfk_1` FOREIGN KEY (`subject_id`) REFERENCES `subject` (`subject_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `teacher_l3_ibfk_2` FOREIGN KEY (`teacher_l3_id`) REFERENCES `teacher` (`teacher_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `teacher_l4`
--
ALTER TABLE `teacher_l4`
  ADD CONSTRAINT `teacher_l4_ibfk_1` FOREIGN KEY (`subject_id`) REFERENCES `subject` (`subject_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `teacher_l4_ibfk_2` FOREIGN KEY (`teacher_l4_id`) REFERENCES `teacher` (`teacher_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `teacher_t`
--
ALTER TABLE `teacher_t`
  ADD CONSTRAINT `teacher_t_ibfk_1` FOREIGN KEY (`subject_id`) REFERENCES `subject` (`subject_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `teacher_t_ibfk_2` FOREIGN KEY (`teacher_t_id`) REFERENCES `teacher` (`teacher_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
