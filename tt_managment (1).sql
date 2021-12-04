-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 30, 2021 at 01:52 PM
-- Server version: 10.1.40-MariaDB
-- PHP Version: 7.1.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tt_managment`
--

-- --------------------------------------------------------

--
-- Table structure for table `addstudent`
--

CREATE TABLE `addstudent` (
  `Academic` varchar(30) NOT NULL,
  `Pro` varchar(30) NOT NULL,
  `GNo` varchar(30) NOT NULL,
  `SubNo` varchar(80) NOT NULL,
  `GID` varchar(30) NOT NULL,
  `SubID` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `addstudent`
--

INSERT INTO `addstudent` (`Academic`, `Pro`, `GNo`, `SubNo`, `GID`, `SubID`) VALUES
('54435', '54354', '545', '554', '545454', 545454);

-- --------------------------------------------------------

--
-- Table structure for table `addtag`
--

CREATE TABLE `addtag` (
  `Id` int(10) NOT NULL,
  `tagname` varchar(30) NOT NULL,
  `tagcode` varchar(30) NOT NULL,
  `relatedtag` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `add_working_days`
--

CREATE TABLE `add_working_days` (
  `No` int(50) NOT NULL,
  `LecturerName` varchar(100) NOT NULL,
  `TotalWorkingDays` int(50) NOT NULL,
  `WorkingDays` varchar(100) NOT NULL,
  `Hours` int(50) NOT NULL,
  `Minutes` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `add_working_days`
--

INSERT INTO `add_working_days` (`No`, `LecturerName`, `TotalWorkingDays`, `WorkingDays`, `Hours`, `Minutes`) VALUES
(14, 'Mr sajith sir', 2, 'Monday ', 1, 60),
(15, 'Mr sajith sir', 2, 'Tuesday ', 2, 120),
(17, 'Mr sajith sir', 2, 'Thursday ', 2, 120),
(18, 'Mr sajith sir', 2, 'Friday ', 2, 120),
(19, 'Mrs sharmila sivabalan ', 1, '', 1, 60);

-- --------------------------------------------------------

--
-- Table structure for table `consecutive`
--

CREATE TABLE `consecutive` (
  `ID` int(10) NOT NULL,
  `Lecturer_1` varchar(30) NOT NULL,
  `Lecturer_2` varchar(30) NOT NULL,
  `SubjectCode` varchar(30) NOT NULL,
  `Subject` varchar(30) NOT NULL,
  `GroupID` varchar(30) NOT NULL,
  `Tag` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `db1`
--

CREATE TABLE `db1` (
  `b_id` int(10) NOT NULL,
  `Building` varchar(30) NOT NULL,
  `Room` varchar(30) NOT NULL,
  `Type` varchar(30) NOT NULL,
  `Capacity` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `db1`
--

INSERT INTO `db1` (`b_id`, `Building`, `Room`, `Type`, `Capacity`) VALUES
(1, 'Faculty of Engineering', '102', 'lecture Hall', '123'),
(2, 'Faculty of Engineering', '109', 'Laboratory', '120'),
(3, 'Faculty of Engineering', '103', 'Laboratory', '121'),
(5, 'Main Hall', '102', 'lecture Hall', '100'),
(7, 'Faculty of Computing', '102', 'Laboratory', '122'),
(8, 'Main Hall', '103', 'Laboratory', '111');

-- --------------------------------------------------------

--
-- Table structure for table `db2`
--

CREATE TABLE `db2` (
  `SId` int(11) NOT NULL,
  `Selected_Session` varchar(800) NOT NULL,
  `Select_Session` varchar(30) NOT NULL,
  `Select_Room` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `db2`
--

INSERT INTO `db2` (`SId`, `Selected_Session`, `Select_Session`, `Select_Room`) VALUES
(1, 'hggc f cfg cf cjc fcf jfg', 'session 2', '104'),
(2, 'ghf gfgh ghf gh fhgf gh fgh', 'session 4', '102'),
(3, 'dfdm fds fsd fsdf sdf sd fsfsdf', 'session 3', '103'),
(4, 'gfdggfdgdf gfg fd gdfgdfgdf', 'session 4', '103'),
(5, '', 'Select', 'Select'),
(6, 'GFDGDGDGGFDG', 'SID3', '106'),
(7, 'sdf sdf dfs dfs fds dfs dfs', 'SID3', '104');

-- --------------------------------------------------------

--
-- Table structure for table `lecturer`
--

CREATE TABLE `lecturer` (
  `id` int(10) NOT NULL,
  `name` varchar(30) NOT NULL,
  `faculty` varchar(30) NOT NULL,
  `bulding` varchar(30) NOT NULL,
  `center` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lecturer`
--

INSERT INTO `lecturer` (`id`, `name`, `faculty`, `bulding`, `center`) VALUES
(24, 'Ms.gayathri', 'engineering', 'A04', 'jaffna');

-- --------------------------------------------------------

--
-- Table structure for table `lecturers_not_available_times`
--

CREATE TABLE `lecturers_not_available_times` (
  `No` int(10) NOT NULL,
  `Lecturer` varchar(30) NOT NULL,
  `MainGroup` varchar(30) NOT NULL,
  `Lecturer2` varchar(30) NOT NULL,
  `Session_ID` varchar(30) NOT NULL,
  `Time` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `none_overlapping`
--

CREATE TABLE `none_overlapping` (
  `ID` int(10) NOT NULL,
  `Lecturer_1` varchar(30) NOT NULL,
  `Lecturer_2` varchar(30) NOT NULL,
  `SubjectCode` varchar(30) NOT NULL,
  `Subject` varchar(30) NOT NULL,
  `GroupID` varchar(30) NOT NULL,
  `Tag` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `none_overlapping`
--

INSERT INTO `none_overlapping` (`ID`, `Lecturer_1`, `Lecturer_2`, `SubjectCode`, `Subject`, `GroupID`, `Tag`) VALUES
(7, '3231', '32131', '21312', '3213', '32131', '232131'),
(8, '323', '213', 'fgdg', 'gfdg', 'dfgd', 'dfgfdg'),
(9, 'nashatha', 'nashatha', 'nashatha', 'nashatha', 'nashatha', 'nashatha'),
(10, '55', '66', '44', '2', '1', '8');

-- --------------------------------------------------------

--
-- Table structure for table `parallel`
--

CREATE TABLE `parallel` (
  `ID` int(101) NOT NULL,
  `Lecture_1` varchar(30) NOT NULL,
  `Lecture_2` varchar(30) NOT NULL,
  `SubjectCode` varchar(30) NOT NULL,
  `Subject` varchar(30) NOT NULL,
  `GroupID` varchar(30) NOT NULL,
  `Tag` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `parallel`
--

INSERT INTO `parallel` (`ID`, `Lecture_1`, `Lecture_2`, `SubjectCode`, `Subject`, `GroupID`, `Tag`) VALUES
(1, '21', '21', '12', '2121', '21', '21'),
(2, 'tt', 'yy', 'uu', 'rr', 'h', 'll'),
(3, '312', 'ewq', 'ewq', 'qe', 'qw', 'qwe'),
(4, '44', '8', '7', '0', '0', '0');

-- --------------------------------------------------------

--
-- Table structure for table `rooms_not_available_times`
--

CREATE TABLE `rooms_not_available_times` (
  `No` int(10) DEFAULT NULL,
  `Room` varchar(30) NOT NULL,
  `Date` varchar(12) NOT NULL,
  `Start_Time` varchar(6) NOT NULL,
  `End_Time` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `session`
--

CREATE TABLE `session` (
  `SessionId` int(5) NOT NULL,
  `Lecture1` varchar(30) NOT NULL,
  `Lecture2` varchar(30) NOT NULL,
  `SubjectCode` varchar(30) NOT NULL,
  `subjectName` varchar(30) NOT NULL,
  `GroupId` varchar(100) NOT NULL,
  `Tag` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `session`
--

INSERT INTO `session` (`SessionId`, `Lecture1`, `Lecture2`, `SubjectCode`, `subjectName`, `GroupId`, `Tag`) VALUES
(23, 'Mr.sajith', 'Mr.sajith', 'IT1030', 'DSA', 'group 2', 'Lab'),
(30, 'Mr.Buwaneka', 'Ms.Sasikala', 'IT1030', 'NDM', 'group 3', 'Lecture'),
(31, 'Mr.Buwaneka', 'Ms.Sasikala', 'IT1030', 'NDM', 'group 3', 'Lecture'),
(32, 'Mr.sajith', 'Mr.sajith', 'IT1010', 'OOP', 'Y1.S2.05(IT)', 'Lab'),
(33, 'Mr.sajith', 'Mr.sajith', 'IT1010', 'OOP', 'Y1.S2.05(IT)', 'Lab');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `LecId` int(5) NOT NULL,
  `offeredyear` int(20) NOT NULL,
  `subjectname` varchar(20) NOT NULL,
  `subjectcode` varchar(10) NOT NULL,
  `offeredsem` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`LecId`, `offeredyear`, `subjectname`, `subjectcode`, `offeredsem`) VALUES
(25, 2018, 'ITPM', 'IT1030', 'FirstSem'),
(30, 2019, 'NDM', 'IT1425', 'FirstSem'),
(31, 2010, 'NDM', 'IT1210', '2nd sem');

-- --------------------------------------------------------

--
-- Table structure for table `timetable`
--

CREATE TABLE `timetable` (
  `ID` int(10) NOT NULL,
  `timeslots` varchar(30) NOT NULL,
  `monday` varchar(30) NOT NULL,
  `tuesday` varchar(30) NOT NULL,
  `wednesday` varchar(30) NOT NULL,
  `thursday` varchar(30) NOT NULL,
  `friday` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `timetable_lecturer`
--

CREATE TABLE `timetable_lecturer` (
  `ID` int(80) NOT NULL,
  `timeslots` varchar(80) NOT NULL,
  `monday` varchar(80) NOT NULL,
  `tuesday` varchar(80) NOT NULL,
  `wednesday` varchar(80) NOT NULL,
  `thursday` varchar(80) NOT NULL,
  `friday` varchar(80) NOT NULL,
  `saturday` varchar(80) NOT NULL,
  `sunday` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `timetable_lecturer`
--

INSERT INTO `timetable_lecturer` (`ID`, `timeslots`, `monday`, `tuesday`, `wednesday`, `thursday`, `friday`, `saturday`, `sunday`) VALUES
(1, '08:30 - 10:30', '                 \r\n             \r\n                 --\r\n                 \r\n--\r\n', '                  --', 'Mr.gihan , DSA(IT2020),\r\nLab, Y2S2.05(IT), A04', '               --', '              --', '              --', '              --'),
(2, '10:30 - 12:30', 'Mr.gihan , DSA(IT2020),\r\nLab, Y2S2.05(IT), A04', '                --', '                 --', '                   --', '              --', '                 --', '               --'),
(3, '12:30 - 2:30', '                  --', '                  --', '                   --', '                  --', 'Mr.gihan , DSA(IT2020),\r\nLab, Y2S2.05(IT), A04', '                --', '                --'),
(4, '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `timetable_locations`
--

CREATE TABLE `timetable_locations` (
  `ID` int(20) NOT NULL,
  `timeslots` varchar(20) NOT NULL,
  `monday` varchar(80) NOT NULL,
  `tuesday` varchar(80) NOT NULL,
  `wednesday` varchar(80) NOT NULL,
  `thursday` varchar(80) NOT NULL,
  `friday` varchar(80) NOT NULL,
  `saturday` varchar(80) NOT NULL,
  `sunday` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `timetable_locations`
--

INSERT INTO `timetable_locations` (`ID`, `timeslots`, `monday`, `tuesday`, `wednesday`, `thursday`, `friday`, `saturday`, `sunday`) VALUES
(1, '08:30 :10:30', 'Ms.Sajith\r\nIP(IT1010),Lecturer,\r\nY1S2.05(BM)\r\nA05', '', '', '', '', '', ''),
(2, '10:30 :12:30', '', '', 'Ms.Buwaneka\r\nIP(IT1010),Lecturer,\r\nY1S2.04(IT)\r\nA04', '', '', '', ''),
(3, '1:30 :3:30', '', '', '', '', '', 'Ms.Hansi\r\nIP(IT1210),Lecturer,\r\nY1S1.03(IT)\r\nA03', ''),
(4, '1:30 :3:30', '', '', '', '', '', '', 'Ms.Archana\r\nITPM(IT2010),Lecturer,\r\nY3S2.03(IT)\r\nA03'),
(5, '3:30 :5:30', '', '', '', 'Mr.Gihan\r\nDSA(IT3030),Lecturer,\r\nY3S2.03(IT)\r\nA01', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `timetable_students`
--

CREATE TABLE `timetable_students` (
  `ID` int(20) NOT NULL,
  `timeslots` varchar(20) NOT NULL,
  `monday` varchar(80) NOT NULL,
  `tuesday` varchar(80) NOT NULL,
  `wednesday` varchar(80) NOT NULL,
  `thursday` varchar(80) NOT NULL,
  `friday` varchar(80) NOT NULL,
  `saturday` varchar(80) NOT NULL,
  `sunday` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `timetable_students`
--

INSERT INTO `timetable_students` (`ID`, `timeslots`, `monday`, `tuesday`, `wednesday`, `thursday`, `friday`, `saturday`, `sunday`) VALUES
(1, '08:30 :10:30', 'Ms.Archana\r\nITPM(IT2010),Lab,\r\nY1S2.05(IT)\r\nA02', '', '', '', '', '', ''),
(2, '10:30 :12:30', '', '', 'Ms.Shyam\r\nHCI(IT2012),Tutorial,\r\nY1S2.05(IT\r\nA04', '', '', '', ''),
(3, '1:30 :3:30', '', '', '', '', '', 'Ms.Shehani\r\nIP(IT1210),Lecturer,\r\nY1S2.05(IT\r\nA03', ''),
(4, '1:30 :3:30', '', '', '', '', '', '', 'Ms.\r\nITPM(IT2010),Tutorial,\r\nY1S2.05(IT\r\nA03'),
(5, '3:30 :5:30', '', '', '', 'Mr.Gihan\r\nICS(IT4040),Lab,\r\nY1S2.05(IT\r\nA01', '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addstudent`
--
ALTER TABLE `addstudent`
  ADD PRIMARY KEY (`SubID`);

--
-- Indexes for table `addtag`
--
ALTER TABLE `addtag`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `add_working_days`
--
ALTER TABLE `add_working_days`
  ADD PRIMARY KEY (`No`,`LecturerName`) USING BTREE;

--
-- Indexes for table `consecutive`
--
ALTER TABLE `consecutive`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `db1`
--
ALTER TABLE `db1`
  ADD PRIMARY KEY (`b_id`);

--
-- Indexes for table `db2`
--
ALTER TABLE `db2`
  ADD PRIMARY KEY (`SId`);

--
-- Indexes for table `lecturer`
--
ALTER TABLE `lecturer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lecturers_not_available_times`
--
ALTER TABLE `lecturers_not_available_times`
  ADD PRIMARY KEY (`No`);

--
-- Indexes for table `none_overlapping`
--
ALTER TABLE `none_overlapping`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `parallel`
--
ALTER TABLE `parallel`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `rooms_not_available_times`
--
ALTER TABLE `rooms_not_available_times`
  ADD PRIMARY KEY (`Room`);

--
-- Indexes for table `session`
--
ALTER TABLE `session`
  ADD PRIMARY KEY (`SessionId`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`LecId`);

--
-- Indexes for table `timetable`
--
ALTER TABLE `timetable`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `timetable_lecturer`
--
ALTER TABLE `timetable_lecturer`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `timetable_locations`
--
ALTER TABLE `timetable_locations`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `timetable_students`
--
ALTER TABLE `timetable_students`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addstudent`
--
ALTER TABLE `addstudent`
  MODIFY `SubID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=535353535;

--
-- AUTO_INCREMENT for table `addtag`
--
ALTER TABLE `addtag`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `add_working_days`
--
ALTER TABLE `add_working_days`
  MODIFY `No` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `consecutive`
--
ALTER TABLE `consecutive`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `db1`
--
ALTER TABLE `db1`
  MODIFY `b_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `db2`
--
ALTER TABLE `db2`
  MODIFY `SId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `lecturer`
--
ALTER TABLE `lecturer`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `lecturers_not_available_times`
--
ALTER TABLE `lecturers_not_available_times`
  MODIFY `No` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `none_overlapping`
--
ALTER TABLE `none_overlapping`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `parallel`
--
ALTER TABLE `parallel`
  MODIFY `ID` int(101) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `session`
--
ALTER TABLE `session`
  MODIFY `SessionId` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `LecId` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `timetable`
--
ALTER TABLE `timetable`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `timetable_lecturer`
--
ALTER TABLE `timetable_lecturer`
  MODIFY `ID` int(80) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `timetable_locations`
--
ALTER TABLE `timetable_locations`
  MODIFY `ID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `timetable_students`
--
ALTER TABLE `timetable_students`
  MODIFY `ID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
