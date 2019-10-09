-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 04, 2019 at 08:39 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `school_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `class_of_school`
--

CREATE TABLE `class_of_school` (
  `id` int(10) NOT NULL,
  `code` varchar(10) NOT NULL,
  `desc` varchar(250) DEFAULT NULL,
  `school_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `class_of_school`
--

INSERT INTO `class_of_school` (`id`, `code`, `desc`, `school_id`) VALUES
(1, 'HUST-IT1', 'Công Nghệ Thông Tin', 1),
(2, 'HUST-IT2', 'Trí Tuệ Nhân Tạo', 1),
(3, 'HUST-IOT', 'Internet kết nối vạn vật', 1),
(4, 'HUST-CT', 'Kỹ Thuật Hoá Học', 1),
(5, 'NEU-EM', 'Quản trị doanh nghiệp', 2),
(6, 'NEU-RM', 'Quản trị nhà hàng', 2),
(7, 'NEU-IE', 'Kinh tế quốc tế', 2),
(8, 'NEU-EL', 'Luật kinh tế', 2),
(9, 'HMU-G', 'Đa khoa', 3),
(10, 'HMU-S', 'Giải phẫu', 3),
(11, 'HMU-N', 'Điều dưỡng', 3),
(12, 'HMU-TM', 'Y học cổ truyền', 3),
(13, 'NUCE-CT', 'Kỹ thuật xây dựng', 4),
(14, 'NUCE-OBT', 'Kỹ thuật công trình biển', 4),
(15, 'NUCE-ZT', 'Kỹ thuật quy hoạch', 4),
(16, 'NUCE-WS', 'Cấp thoát nước', 4);

-- --------------------------------------------------------

--
-- Table structure for table `school`
--

CREATE TABLE `school` (
  `id` int(10) NOT NULL,
  `name` varchar(125) NOT NULL,
  `desc` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `school`
--

INSERT INTO `school` (`id`, `name`, `desc`) VALUES
(1, 'HUST', 'Hanoi University of Science and Technology'),
(2, 'NEU', 'National Economics University'),
(3, 'HMU', 'Hanoi Medical University'),
(4, 'NUCE', 'National University of Civil Engineering');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(10) NOT NULL,
  `name` varchar(125) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `class_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `name`, `mobile`, `class_id`) VALUES
(1, 'Tây Môn Khánh', '0969969969', 1),
(2, 'Hoà Đại Nhân', '0987654321', 1),
(3, 'Tú Anh', '0969969969', 1),
(4, 'Lung Thị Linh', '0987654321', 1),
(5, 'Tu Chí', '0969969969', 2),
(6, 'Nông Đức Mạnh', '0987654321', 2),
(7, 'Noo Phước Thịnh', '0969969969', 2),
(8, 'Lương Xuân Trường', '0987654321', 2),
(9, 'Văn Mai Hương', '0969969969', 3),
(10, 'Lou Hoàng', '0987654321', 3),
(11, 'Trịnh Thăng Bình', '0969969969', 3),
(12, 'Quang Thắng', '0987654321', 3),
(13, 'Ronaldo', '0969969969', 4),
(14, 'Buffon', '0987654321', 4),
(15, 'Cuadrado', '0969969969', 4),
(16, 'Aaron Ramsey', '0987654321', 4),
(17, 'Rashford', '0969969969', 5),
(18, 'De Gea', '0987654321', 5),
(19, 'Pogba', '0969969969', 5),
(20, 'Luke Shaw', '0987654321', 5),
(21, 'Willian', '0969969969', 6),
(22, 'Tammy Abraham', '0987654321', 6),
(23, 'Mason Mount', '0969969969', 6),
(24, 'Ross Barkley', '0987654321', 6),
(25, 'Mohamed Salah', '0969969969', 7),
(26, 'Sadio Mane', '0987654321', 7),
(27, 'Roberto Firmino', '0969969969', 7),
(28, 'Jordan Henderson', '0987654321', 7),
(29, 'Raheem Sterling', '0969969969', 8),
(30, 'Sergio Aguero', '0987654321', 8),
(31, 'Leroy Sane', '0969969969', 8),
(32, 'De Bruyne', '0987654321', 8),
(40, 'Harry Kane', '0969969969', 9),
(41, 'Eriksen', '0987654321', 9),
(42, 'Son Heung Min', '0969969969', 9),
(43, 'Sissoko', '0987654321', 9),
(44, 'Karim Benzema', '0969969969', 10),
(45, 'Gareth Bale', '0987654321', 10),
(46, 'Marcelo', '0969969969', 10),
(47, 'Sergio Ramos', '0987654321', 10),
(48, 'Messi', '0969969969', 11),
(49, 'Luis Suarez', '0987654321', 11),
(50, 'Griezmann', '0969969969', 11),
(51, 'Phillipe Coutinho', '0987654321', 11),
(52, 'Oblak', '0969969969', 12),
(53, 'Koke', '0987654321', 12),
(54, 'Carrasco', '0969969969', 12),
(55, 'Joao Felix', '0987654321', 12),
(56, 'Lewandowski', '0969969969', 13),
(57, 'Thomas Muller', '0987654321', 13),
(58, 'Manuel Neuer', '0969969969', 13),
(59, 'Renato Sanches', '0987654321', 13),
(60, 'Marco Reus', '0969969969', 14),
(61, 'Pulisic', '0987654321', 14),
(62, 'Mario Gotze', '0969969969', 14),
(63, 'Roman Burki', '0987654321', 14),
(64, 'Sebastian Rudy', '0969969969', 15),
(65, 'Pablo Insua', '0987654321', 15),
(66, 'Nabil Bentaleb', '0969969969', 15),
(67, 'Benjamin Stambouli', '0987654321', 15),
(68, 'Neymar', '0969969969', 16),
(69, 'Mbappe', '0987654321', 16),
(70, 'Di Maria', '0969969969', 16),
(71, 'Thiago Silva', '0987654321', 16);

-- --------------------------------------------------------

--
-- Table structure for table `student_subject_register`
--

CREATE TABLE `student_subject_register` (
  `student_id` int(10) NOT NULL,
  `subject_id` int(10) NOT NULL,
  `score` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_subject_register`
--

INSERT INTO `student_subject_register` (`student_id`, `subject_id`, `score`) VALUES
(1, 1, 9),
(1, 2, 9.5),
(1, 3, 8.5),
(2, 1, 10),
(2, 2, 9.5),
(2, 3, 10),
(3, 1, 10),
(3, 2, 8.5),
(3, 3, 7),
(4, 1, 9),
(4, 2, 8.5),
(4, 3, 7),
(5, 1, 8),
(5, 2, 9.5),
(5, 3, 8.5),
(6, 1, 8.5),
(6, 2, 7.5),
(6, 3, 8.5),
(7, 1, 9),
(7, 2, 6.5),
(7, 3, 5.5),
(8, 1, 8),
(8, 2, 7.5),
(8, 3, 8.5),
(9, 1, 6),
(9, 2, 5.5),
(9, 3, 7.5),
(10, 1, 4),
(10, 2, 7.5),
(10, 3, 6.5),
(11, 1, 9),
(11, 2, 6.5),
(11, 3, 7),
(12, 1, 7),
(12, 2, 9.5),
(12, 3, 8.5),
(13, 1, 10),
(13, 2, 9.5),
(13, 3, 10),
(13, 4, 9.5),
(14, 1, 9),
(14, 2, 9.5),
(14, 3, 8),
(14, 4, 9.5),
(15, 1, 8),
(15, 2, 7.5),
(15, 3, 9),
(15, 4, 3.5),
(16, 1, 7),
(16, 2, 5.5),
(16, 3, 4),
(16, 4, 1.5),
(17, 5, 9.5),
(17, 6, 8),
(17, 7, 8.5),
(17, 8, 6),
(18, 5, 6.5),
(18, 6, 8),
(18, 7, 8.5),
(18, 8, 3),
(19, 5, 5.5),
(19, 6, 4),
(19, 7, 3.5),
(19, 8, 5),
(20, 5, 8.5),
(20, 6, 7),
(20, 7, 6.5),
(20, 8, 7.5),
(21, 5, 7.5),
(21, 6, 5),
(21, 7, 5.5),
(21, 8, 9),
(22, 5, 8.5),
(22, 6, 8),
(22, 7, 8.5),
(23, 5, 9),
(23, 6, 6),
(23, 7, 6.5),
(23, 8, 8.5),
(24, 5, 6.5),
(24, 6, 7),
(24, 7, 6.5),
(25, 5, 10),
(25, 6, 9.5),
(25, 7, 10),
(25, 8, 10),
(26, 5, 8),
(26, 6, 9),
(26, 7, 7.5),
(26, 8, 8.5),
(27, 5, 9.5),
(27, 6, 6),
(27, 7, 6.5),
(27, 8, 8),
(28, 5, 9.5),
(28, 6, 7),
(28, 7, 4.5),
(29, 5, 4),
(29, 6, 6.5),
(29, 7, 5),
(30, 5, 7),
(30, 6, 3),
(30, 7, 7.5),
(30, 8, 6.5),
(31, 5, 8.5),
(31, 6, 9),
(31, 7, 7.5),
(31, 8, 8),
(32, 5, 9),
(32, 6, 8),
(32, 7, 9.5),
(32, 8, 9),
(40, 9, 6.5),
(40, 10, 5.5),
(40, 11, 6),
(40, 12, 6),
(40, 9, 6),
(40, 10, 6),
(40, 11, 6),
(40, 12, 6),
(41, 9, 6),
(41, 10, 7),
(41, 11, 9),
(41, 12, 8.5),
(42, 9, 7),
(42, 10, 5),
(42, 12, 8),
(43, 9, 7),
(43, 10, 4),
(43, 11, 7.5),
(43, 12, 9),
(44, 9, 9),
(44, 11, 1),
(45, 9, 4),
(45, 10, 3),
(45, 11, 9),
(45, 12, 6.5),
(46, 10, 5),
(46, 11, 9),
(46, 12, 8.5),
(47, 9, 6),
(47, 10, 5),
(48, 9, 1),
(48, 10, 6),
(48, 11, 8),
(48, 12, 4.5),
(49, 9, 5),
(49, 10, 7),
(49, 11, 7),
(50, 9, 3),
(50, 10, 6.5),
(50, 11, 9),
(50, 12, 8),
(51, 9, 8),
(51, 12, 8.5),
(52, 9, 9),
(52, 10, 7.5),
(52, 11, 3.5),
(52, 12, 6.5),
(53, 9, 10),
(53, 10, 5.5),
(54, 9, 5),
(54, 10, 4.5),
(54, 11, 9),
(54, 12, 4),
(55, 9, 7),
(55, 10, 9),
(56, 13, 9.5),
(56, 14, 9),
(56, 15, 9.5),
(56, 16, 9.5),
(57, 13, 7.5),
(57, 14, 9.5),
(57, 15, 6.5),
(57, 16, 8.5),
(58, 13, 6.5),
(58, 14, 8.5),
(58, 15, 8),
(58, 16, 5.5),
(59, 13, 8.5),
(59, 14, 7.5),
(59, 15, 6.5),
(59, 16, 6.5),
(60, 13, 4.5),
(60, 15, 9.5),
(60, 16, 7.5),
(61, 13, 6),
(61, 14, 5),
(61, 15, 5),
(61, 16, 5),
(62, 15, 6),
(62, 16, 8),
(63, 13, 7),
(63, 14, 7.5),
(63, 15, 8),
(63, 16, 9),
(64, 13, 5),
(64, 14, 6.5),
(64, 16, 9.5),
(65, 13, 3.5),
(65, 14, 5),
(65, 15, 7.5),
(65, 16, 8),
(66, 13, 5.5),
(66, 16, 2),
(67, 13, 2.5),
(67, 14, 3),
(67, 15, 7),
(67, 16, 7),
(68, 14, 0.5),
(68, 15, 8),
(68, 16, 3),
(69, 13, 1.5),
(69, 14, 7),
(69, 15, 5),
(69, 16, 6.5),
(70, 13, 9.5),
(70, 15, 4),
(70, 16, 4),
(71, 13, 9.5),
(71, 14, 9),
(71, 15, 9),
(71, 16, 7.5);

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `id` int(10) NOT NULL,
  `name` varchar(125) NOT NULL,
  `desc` varchar(250) DEFAULT NULL,
  `domain` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`id`, `name`, `desc`, `domain`) VALUES
(1, 'Giải tích 1', 'Tạch 50%', 'MATHEMATICS'),
(2, 'Triết học Mark Zuckerberg', 'Tạch 60%', 'MATHEMATICS'),
(3, 'Vật Lý Đại Cương', 'Tạch 70%', 'PHYSICS'),
(4, 'Hoá Công', 'Tạch 90%', 'CHEMISTRY'),
(5, 'Tài Chính Tiền Tệ', 'Nhiều tiền thì qua, ít tiền thì tạch', 'MATHEMATICS'),
(6, 'Chém Gió Đại Cương', 'Auto qua môn', 'LITERATURE'),
(7, 'Kinh Tế Vĩ Mô', 'Auto tạch', 'MATHEMATICS'),
(8, 'Kinh Tế Vi Mô', 'Tạch 70%', 'MATHEMATICS'),
(9, 'Giải phẫu', 'Auto tạch', 'BIOLOGY'),
(10, 'Hệ Miễn Dịch', 'Tạch 70%', 'BIOLOGY'),
(11, 'Hoá Sinh', 'Hên thì qua, đen thì tạch', 'CHEMISTRY'),
(12, 'Kinh Tế Y Tễ', 'Tạch 70%', 'MATHEMATICS'),
(13, 'Trắc Địa', 'Tạch như chơi', 'MATHEMATICS'),
(14, 'Sức Bền Vật Liệu', 'Tạch 70%', 'MATHEMATICS'),
(15, 'Quy Hoạch Đô Thị', 'Hên thì qua, đen thì tạch', 'GEOGRAPHY'),
(16, 'Lịch Sử Kiến Trúc', 'Tạch 90%', 'HISTORY');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `class_of_school`
--
ALTER TABLE `class_of_school`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `school`
--
ALTER TABLE `school`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `class_of_school`
--
ALTER TABLE `class_of_school`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `school`
--
ALTER TABLE `school`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
