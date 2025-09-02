-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 02, 2025 at 06:50 AM
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
-- Database: `a`
--
CREATE DATABASE IF NOT EXISTS `a` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `a`;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`ID`, `NAME`) VALUES
(0, NULL),
(200, 'PIPI');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`ID`);
--
-- Database: `db_231115185`
--
CREATE DATABASE IF NOT EXISTS `db_231115185` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db_231115185`;

-- --------------------------------------------------------

--
-- Table structure for table `enrollments`
--

CREATE TABLE `enrollments` (
  `REG_ID` int(11) NOT NULL,
  `STUDENT_ID` char(5) DEFAULT NULL,
  `STUDENT_NAME` varchar(30) DEFAULT NULL,
  `COURSE_ID` varchar(20) DEFAULT NULL,
  `COURSE_TITLE` varchar(20) DEFAULT NULL,
  `ENROLLMENT_DATE` varchar(20) DEFAULT NULL,
  `PROGRESS_PARCENT` int(11) DEFAULT NULL,
  `FINAL_GRADE` varchar(5) DEFAULT NULL,
  `IS_COMPLETED` tinyint(1) DEFAULT NULL,
  `FEEDBACK_SCORE` decimal(2,1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `enrollments`
--

INSERT INTO `enrollments` (`REG_ID`, `STUDENT_ID`, `STUDENT_NAME`, `COURSE_ID`, `COURSE_TITLE`, `ENROLLMENT_DATE`, `PROGRESS_PARCENT`, `FINAL_GRADE`, `IS_COMPLETED`, `FEEDBACK_SCORE`) VALUES
(1, 'S1001', 'Alice Kim', 'CSE101', 'Python Basics', '2025-05-10', 100, 'A', 1, 4.8),
(2, 'S1002', 'Bob Smith', 'CSE101', 'Python Basics', '2025-05-12', 85, 'B', 1, 4.2),
(3, 'S1001', 'Alice Kim', 'CSE202', 'Data Science', '2025-06-01', 60, 'C', 0, 3.5),
(4, 'S1003', 'Clara Jones', 'CSE101', 'Python Basics', '2025-05-15', 100, 'A', 1, 4.9),
(5, 'S1004', 'David Lee', 'CSE202', 'Data Science', '2025-06-05', 100, 'B', 1, 4.0),
(6, 'S1002', 'Bob Smith', 'CSE303', 'Web Development', '2025-06-10', 40, 'I', 0, 2.8),
(7, 'S1005', 'Emma Patel', 'CSE202', 'Data Science', '2025-06-07', 90, 'A', 1, 4.7),
(8, 'S1006', 'Farhan Ali', 'CSE404', 'Machine Learning', '2025-07-01', 100, 'A', 1, 5.0),
(9, 'S1003', 'Clara Jones', 'CSE303', 'Web Development', '2025-06-12', 100, 'B', 1, 4.1),
(10, 'S1007', 'Grace Chen', 'CSE404', 'Machine Learning', '2025-07-03', 55, 'C', 0, 3.0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `enrollments`
--
ALTER TABLE `enrollments`
  ADD PRIMARY KEY (`REG_ID`);
--
-- Database: `exam`
--
CREATE DATABASE IF NOT EXISTS `exam` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `exam`;

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `STUDENT_ID` char(4) NOT NULL,
  `COURSE_ID` char(5) DEFAULT NULL,
  `SEMESTER` varchar(20) DEFAULT NULL,
  `YEAR` int(11) DEFAULT NULL,
  `GRADE` varchar(5) DEFAULT NULL,
  `SECTION_ID` char(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`STUDENT_ID`, `COURSE_ID`, `SEMESTER`, `YEAR`, `GRADE`, `SECTION_ID`) VALUES
('S001', 'CS101', 'FALL', 2015, 'A', 'SEC01'),
('S002', 'CS101', 'FALL', 2015, 'B', 'SEC01'),
('S003', 'CS102', 'FALL', 2015, 'IP', 'SEC02'),
('S004', 'CS101', 'FALL', 2015, 'A', 'SEC01'),
('S005', 'CS103', 'FALL', 2024, 'C', 'SEC03'),
('S006', 'CS102', 'FALL', 2015, 'IP', 'SEC02'),
('S007', 'CS101', 'FALL', 2015, 'B', 'SEC01'),
('S008', 'CS103', 'FALL', 2024, 'A', 'SEC03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`STUDENT_ID`);
--
-- Database: `lab_final`
--
CREATE DATABASE IF NOT EXISTS `lab_final` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `lab_final`;

-- --------------------------------------------------------

--
-- Table structure for table `author`
--

CREATE TABLE `author` (
  `AUTHOR_ID` char(2) NOT NULL,
  `NAME` varchar(50) DEFAULT NULL,
  `NATIONALITY` varchar(50) DEFAULT NULL,
  `BIRTH_YEAR` int(11) DEFAULT NULL,
  `BOOKS_WRITTEN` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `author`
--

INSERT INTO `author` (`AUTHOR_ID`, `NAME`, `NATIONALITY`, `BIRTH_YEAR`, `BOOKS_WRITTEN`) VALUES
('A1', 'SMITH', 'USA', 1980, 6),
('A2', 'JONES', 'UK', 1975, 7),
('A3', 'LEE', 'KOREA', 1985, 3),
('A4', 'KIM', 'JAPAN', 1990, 2),
('A5', 'BROWN', 'USA', 1978, 5);

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `BOOK_ID` char(2) NOT NULL,
  `TITLE` varchar(50) DEFAULT NULL,
  `AUTHOR_ID` char(2) DEFAULT NULL,
  `PRICE` decimal(4,2) DEFAULT NULL,
  `PUB_YEAR` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`BOOK_ID`, `TITLE`, `AUTHOR_ID`, `PRICE`, `PUB_YEAR`) VALUES
('B1', 'SQL BASICS', 'A1', 29.99, 2020),
('B2', 'PYTHON GUIDE', 'A2', 34.99, 2019),
('B3', 'JAVA INTRO', 'A1', 25.00, 2021),
('B4', 'C ADVANCED', 'A3', 39.99, 2018),
('B5', 'DATA SCIENCE', 'A2', 45.00, 2022);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`AUTHOR_ID`);

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`BOOK_ID`);
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"studentdb\",\"table\":\"students\"},{\"db\":\"practice\",\"table\":\"course\"},{\"db\":\"exam\",\"table\":\"registration\"},{\"db\":\"university\",\"table\":\"advisor\"},{\"db\":\"university\",\"table\":\"student\"},{\"db\":\"university\",\"table\":\"students\"},{\"db\":\"studentdb\",\"table\":\"student\"},{\"db\":\"student_management\",\"table\":\"students\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Dumping data for table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'studentdb', 'students', '{\"sorted_col\":\"`student_id` ASC\"}', '2025-07-18 05:34:40');

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2025-09-02 04:48:50', '{\"Console\\/Mode\":\"collapse\",\"lang\":\"en_GB\",\"NavigationWidth\":0}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `practice`
--
CREATE DATABASE IF NOT EXISTS `practice` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `practice`;

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `CID` int(11) DEFAULT NULL,
  `COURSENAME` varchar(10) DEFAULT NULL,
  `DEPTID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`CID`, `COURSENAME`, `DEPTID`) VALUES
(201, 'NM', 101),
(202, 'DBMS', 101),
(203, 'BEE', 102);

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `DEPTID` int(11) NOT NULL,
  `DEPTNAME` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`DEPTID`, `DEPTNAME`) VALUES
(101, 'CSE'),
(102, 'EEE'),
(103, 'BBA');

-- --------------------------------------------------------

--
-- Table structure for table `enrolled`
--

CREATE TABLE `enrolled` (
  `SID` int(11) DEFAULT NULL,
  `CID` int(11) DEFAULT NULL,
  `Grade` char(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `enrolled`
--

INSERT INTO `enrolled` (`SID`, `CID`, `Grade`) VALUES
(501, 202, 'A+'),
(502, 202, 'B-'),
(502, 203, 'A-'),
(503, 204, 'C+');

-- --------------------------------------------------------

--
-- Table structure for table `lab_grades`
--

CREATE TABLE `lab_grades` (
  `STD_ID` varchar(20) DEFAULT NULL,
  `NAME` varchar(50) DEFAULT NULL,
  `MAJOR` varchar(20) DEFAULT NULL,
  `SECTION` int(11) DEFAULT NULL,
  `DAYS_PRESENT` int(11) DEFAULT NULL,
  `PROJECT_MARKS` double DEFAULT NULL,
  `CGPA` double DEFAULT NULL,
  `SUB_DATE` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lab_grades`
--

INSERT INTO `lab_grades` (`STD_ID`, `NAME`, `MAJOR`, `SECTION`, `DAYS_PRESENT`, `PROJECT_MARKS`, `CGPA`, `SUB_DATE`) VALUES
('S001', 'ABIR', 'CS', 1, 10, 18.5, 3.91, '2018-09-15'),
('S019', 'NAIMA', 'CSE', 2, 12, 20, 3.7, '2018-08-14'),
('S002', 'NAHEED', 'CSE', 1, 12, 16, 3.86, '2018-08-15'),
('S003', 'TASNEEM', 'CSE', 1, 8, 18, 3.57, '2018-09-18');

-- --------------------------------------------------------

--
-- Table structure for table `new_table`
--

CREATE TABLE `new_table` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(30) DEFAULT NULL,
  `AGE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `new_table`
--

INSERT INTO `new_table` (`ID`, `NAME`, `AGE`) VALUES
(0, '100%', 0),
(1, 'A', 20),
(2, 'B', 22),
(3, 'RICHIE', 21),
(5, NULL, 20);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `SID` int(11) DEFAULT NULL,
  `SName` varchar(50) DEFAULT NULL,
  `Age` int(11) DEFAULT NULL,
  `DeptID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`SID`, `SName`, `Age`, `DeptID`) VALUES
(501, 'SAKIRA', 39, 101),
(502, 'KIKI', 64, 103),
(503, 'AKA', 66, 102),
(504, 'KIKU', 30, 101);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD KEY `DEPTID` (`DEPTID`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`DEPTID`);

--
-- Indexes for table `new_table`
--
ALTER TABLE `new_table`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `NAME` (`NAME`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `course`
--
ALTER TABLE `course`
  ADD CONSTRAINT `course_ibfk_1` FOREIGN KEY (`DEPTID`) REFERENCES `department` (`DEPTID`);
--
-- Database: `studentdb`
--
CREATE DATABASE IF NOT EXISTS `studentdb` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `studentdb`;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `name` varchar(100) NOT NULL,
  `student_id` varchar(50) NOT NULL,
  `dob` date DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `blood_group` varchar(5) DEFAULT NULL,
  `nationality` varchar(50) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `contact` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `department` varchar(50) DEFAULT NULL,
  `year` varchar(10) DEFAULT NULL,
  `cgpa` varchar(10) DEFAULT NULL,
  `image_path` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`name`, `student_id`, `dob`, `gender`, `blood_group`, `nationality`, `address`, `contact`, `email`, `department`, `year`, `cgpa`, `image_path`) VALUES
('Oishi Das', '221-115-765', '2001-10-31', 'Other', 'B+', 'Indian', 'Nayasrak,Sylhet', '01387456255', 'bithi.0708@gmail.com', 'CSE', '3rd', '3.88', 'C:\\Users\\Sakira\\Pictures\\Saved Pictures\\Wallpapers.jpg'),
('Chowdhury Sumaiya', '222-114-199', '2001-08-19', 'Female', 'A+', 'Bangladeshi', 'Sylhet', '01267542876', 'ch.Sumu@gmail.com', 'CSE', '4th', '3.90', 'C:\\Users\\Sakira\\Downloads\\Capital.jpg'),
('Fariha Akter', '222-116-145', '2004-12-22', 'Female', 'O+', 'Bangladeshi', 'Sunamganj', '01876542543', 'Fariha.09@gmail.com', 'BBA', '1st', NULL, 'C:\\Users\\Sakira\\Pictures\\Saved Pictures\\2.jpg'),
('Ali Hussain', '231-115-170', '2001-08-15', 'Male', 'A+', 'Bangladeshi', 'Temukhi', '01768758764', 'ali@gmail.com', 'CSE', '3rd', '3.70', 'C:\\Users\\Sakira\\Pictures\\Saved Pictures\\Ocean.jpg'),
('Sakira Khan', '231-115-185', '2003-07-06', 'Female', 'AB-', 'Bangladeshi', 'Kazirbazar', '01752503454', 'sakira.k.0608@gmail.com', 'CSE', '3rd', '4.00', 'C:\\Users\\Sakira\\Pictures\\Saved Pictures\\flower.png'),
('Akib Rahman', '231-116_190', '2004-08-21', 'Male', 'AB+', 'Indian', 'Kazirbazar', '01567653478', 'akib.06@yahoo.com', 'EEE', '2nd', '3.22', 'C:\\Users\\Sakira\\Pictures\\Saved Pictures\\Quiz.png'),
('Fahima Ahmed', '241-116-864', '2003-09-24', 'Female', 'AB+', 'Bangladeshi', 'Madaripur', '01678543687', 'fa.007@gmail.com', 'BBA', '1st', NULL, 'C:\\Users\\Sakira\\Downloads\\Currency.jpg'),
('Ali Zafar', '321-116-988', '2002-10-22', 'Male', 'A-', 'Bangladeshi', 'Dhaka', '01987567823', 'A.zafar@gmail.com', 'LLB', '3rd', '3.83', 'C:\\Users\\Sakira\\Downloads\\Einstein.jpg'),
('Zu Xiang', '321-117-456', '1999-08-15', 'Male', 'O+', 'Chinese', 'Sylhet', '01865784356', 'zu.01@yahoo.com', 'CSE', '4th', '3,20', 'C:\\Users\\Sakira\\Downloads\\Hamlet.jpg'),
('Elisa Rahman', '331-454-156', '2000-05-02', 'Female', 'O-', 'Nepali', 'Sylhet', '01976864576', 'eli.09@gmail.com', 'EEE', '4th', '2.76', 'C:\\Users\\Sakira\\Downloads\\Mercury.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`student_id`),
  ADD UNIQUE KEY `contact` (`contact`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `image_path` (`image_path`);
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- Database: `university`
--
CREATE DATABASE IF NOT EXISTS `university` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `university`;

-- --------------------------------------------------------

--
-- Table structure for table `advisor`
--

CREATE TABLE `advisor` (
  `S_ID` int(11) DEFAULT NULL,
  `I_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `advisor`
--

INSERT INTO `advisor` (`S_ID`, `I_ID`) VALUES
(185, 444),
(190, 666),
(134, 222),
(233, 666);

-- --------------------------------------------------------

--
-- Table structure for table `emp_super`
--

CREATE TABLE `emp_super` (
  `PERSON` varchar(10) DEFAULT NULL,
  `SUPERVISOR` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `emp_super`
--

INSERT INTO `emp_super` (`PERSON`, `SUPERVISOR`) VALUES
('BOB', 'ALICE'),
('MARY', 'SUSAN'),
('ALICE', 'DAVID'),
('SAKIRA', 'GAGA');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `S_ID` int(11) NOT NULL,
  `NAME` varchar(50) DEFAULT NULL,
  `DEPT` char(3) NOT NULL,
  `AGE` int(11) DEFAULT NULL,
  `CGPA` decimal(3,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`S_ID`, `NAME`, `DEPT`, `AGE`, `CGPA`) VALUES
(100, 'PIPI', 'LAW', 22, 3.01),
(185, 'SAKIRA', 'CSE', 48, 4.00),
(190, 'DAN', 'CSE', 11, 3.77),
(198, 'SAKIRA', 'BBA', 50, 3.84),
(233, 'DANA', 'BBA', 50, 3.38);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `advisor`
--
ALTER TABLE `advisor`
  ADD UNIQUE KEY `S_ID` (`S_ID`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`S_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
