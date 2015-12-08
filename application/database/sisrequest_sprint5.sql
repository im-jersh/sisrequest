-- phpMyAdmin SQL Dump
-- version 4.0.10.10
-- http://www.phpmyadmin.net
--
-- Host: 127.5.166.2:3306
-- Generation Time: Nov 21, 2015 at 11:24 PM
-- Server version: 5.5.45
-- PHP Version: 5.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `sisrequest`
--
CREATE DATABASE IF NOT EXISTS sisrequest;
USE sisrequest;

-- --------------------------------------------------------

--
-- Table structure for table `admissions`
--

CREATE TABLE `admissions` (
  `request_ID` bigint(20) unsigned NOT NULL,
  `all_test_score_access` tinyint(7) DEFAULT NULL,
  `act` tinyint(7) DEFAULT NULL,
  `ielts` tinyint(7) DEFAULT NULL,
  `ged` tinyint(7) DEFAULT NULL,
  `sat` tinyint(7) DEFAULT NULL,
  `lsat` tinyint(7) DEFAULT NULL,
  `millers` tinyint(7) DEFAULT NULL,
  `gre` tinyint(7) DEFAULT NULL,
  `mcat` tinyint(7) DEFAULT NULL,
  `prax` tinyint(7) DEFAULT NULL,
  `gmat` tinyint(7) DEFAULT NULL,
  `ap` tinyint(7) DEFAULT NULL,
  `pla_mu` tinyint(7) DEFAULT NULL,
  `tofel` tinyint(7) DEFAULT NULL,
  `clep` tinyint(7) DEFAULT NULL,
  `base` tinyint(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth`
--

CREATE TABLE `auth` (
  `request_ID` bigint(20) unsigned NOT NULL,
  `employee_sig` tinyint(7) DEFAULT NULL,
  `dept_head_sig` tinyint(7) DEFAULT NULL,
  `dean_sig` tinyint(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cashiers`
--

CREATE TABLE `cashiers` (
  `request_ID` bigint(20) unsigned NOT NULL,
  `sf_general_inquiry` tinyint(7) DEFAULT NULL,
  `sf_cash_group_post` tinyint(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `financialAid`
--

CREATE TABLE `financialAid` (
  `request_ID` bigint(20) unsigned NOT NULL,
  `fa_cash` tinyint(7) DEFAULT NULL,
  `fa_non_financial_aid_staff` tinyint(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `pawprint` varchar(6) NOT NULL DEFAULT '',
  `password` varchar(40) DEFAULT NULL,
  `admin_empID` varchar(9) DEFAULT NULL,
  `sis_authority` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`pawprint`, `password`, `admin_empID`, `sis_authority`) VALUES
('admin', 'admin', 'e00000000', 0),
('bdfd63', '12345', 'e33816985', 0),
('cde9d5', '12345', 'e36386656', 0),
('dec5x8', '12345', 'e64533764', 0),
('drkgf8', '12345', 'e55461992', 0),
('jrocnc', '12345', 'e63872988', 0),
('jtr4bd', '12345', 'e35233484', 0),
('sisadm', 'sisadmin', 'e11111111', 1);

-- --------------------------------------------------------

--
-- Table structure for table `person`
--

CREATE TABLE `person` (
  `empID` varchar(9) NOT NULL DEFAULT '',
  `pawprint` varchar(6) DEFAULT NULL,
  `fName` varchar(25) DEFAULT NULL,
  `lName` varchar(25) DEFAULT NULL,
  `phone_number` varchar(14) DEFAULT NULL,
  `campus_address` varchar(50) DEFAULT NULL,
  `campus_address_apt` varchar(25) DEFAULT NULL,
  `campus_address_city` varchar(25) DEFAULT NULL,
  `campus_address_zipcode` varchar(5) DEFAULT NULL,
  `campus_address_state` varchar(30) DEFAULT NULL,
  `department` varchar(35) DEFAULT NULL,
  `title` varchar(35) DEFAULT NULL,
  `admin_empID` varchar(9) DEFAULT NULL,
  `ferpa_score` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `person`
--

INSERT INTO `person` (`empID`, `pawprint`, `fName`, `lName`, `phone_number`, `campus_address`, `campus_address_apt`, `campus_address_city`, `campus_address_zipcode`, `campus_address_state`, `department`, `title`, `admin_empID`, `ferpa_score`) VALUES
('e11424344', 'cjafk2', 'Caleb', 'Albertson', '(636) 538-3000', '7116 Lacus St.', '37', 'Columbia', '65203', 'Missouri', 'Admissions', 'Senior Developer', 'e00000000', '85'),
('e11891417', 'baab74', 'Burhan', 'Ali', '(603) 555-5555', '207 Clark Ave.', '', 'St. Louis', '63366', 'Missouri', 'Admissions', 'Director of Operations', 'e00000000', '100'),
('e12371623', 'aaan94', 'Aziz', 'Almeqrin', '(555) 555-5555', '1 North Street', '', 'Foristell', '63348', 'Missouri', 'Financial Aid', 'Programmer Analyst', 'e00000000', '80'),
('e14264482', 'mcbxx2', 'Mitchell', 'Battles', '02300 006726', 'Ap #330-5612 Nonummy St.', NULL, NULL, NULL, NULL, 'Cashiers', 'Employee', 'e00000000', '78'),
('e14647732', 'mjb6z9', 'Matthew', 'Blackwood', '(471) 967-922', 'Ap #572-5910 Molestie St.', NULL, NULL, NULL, NULL, 'Cashiers', 'Employee', 'e00000000', '78'),
('e16359615', 'tmb4qf', 'Tyler', 'Brown', '09183 211343', '347-7057 Massa. Rd.', NULL, NULL, NULL, NULL, 'Cashiers', 'Employee', 'e00000000', '83'),
('e16376651', 'kjbr3d', 'Kyle', 'Busch', '(306) 588-882', 'P.O. Box 733, 8689 Phasellus St.', NULL, NULL, NULL, NULL, 'Admissions', 'Employee', 'e00000000', '88'),
('e18349748', 'cwcf34', 'Cody', 'Cameron', '(543) 551-262', 'P.O. Box 825, 345 Eget Rd.', NULL, NULL, NULL, NULL, 'Financial Aid', 'Employee', 'e00000000', '76'),
('e19241574', 'cjc455', 'Chris', 'Carter', '(562) 707-441', 'Ap #656-6581 Urna Avenue', NULL, NULL, NULL, NULL, 'Financial Aid', 'Employee', 'e00000000', '87'),
('e19843177', 'dec5x8', 'David', 'Casper', '(416) 896-634', 'P.O. Box 214, 1780 Nulla St.', NULL, NULL, NULL, NULL, 'Cashiers', 'Employee', 'e00000000', '82'),
('e22672237', 'amcqb4', 'Austin', 'Coleman', '(313) 197-261', '442-2950 Ac, Road', NULL, NULL, NULL, NULL, 'Financial Aid', 'Employee', 'e00000000', '78'),
('e23999133', 'jbekcc', 'Jeremy', 'Evers', '(887) 724-672', 'Ap #334-5879 Egestas. Road', NULL, NULL, NULL, NULL, 'Admissions', 'Employee', 'e00000000', '95'),
('e24253583', 'cde9d5', 'Emeka', 'Okoye', '(437) 527-524', 'P.O. Box 404, 5228 Accumsan Ave', NULL, NULL, NULL, NULL, 'Admissions', 'Employee', 'e00000000', '100'),
('e24443949', 'jrf5x8', 'John', 'Fay', '08167 352933', '4958 Consectetuer St.', NULL, NULL, NULL, NULL, 'Admissions', 'Employee', 'e00000000', '94'),
('e24444852', 'bdfd63', 'Ben', 'Friedman', '03764 277919', 'Ap #430-3669 Proin Street', NULL, NULL, NULL, NULL, 'Cashiers', 'Employee', 'e00000000', '85'),
('e24599267', 'afgd54', 'Austin', 'Guffey', '07442 828413', '6996 In Ave', NULL, NULL, NULL, NULL, 'Cashiers', 'Employee', 'e00000000', '96'),
('e24762298', 'djhk99', 'Daniel', 'Hart', '02191 947781', '481-875 In Road', NULL, NULL, NULL, NULL, 'Cashiers', 'Employee', 'e00000000', '76'),
('e25584577', 'jlhthd', 'Joshua', 'Heffron', '05599 010498', 'Ap #430-7435 Varius Avenue', NULL, NULL, NULL, NULL, 'Cashiers', 'Employee', 'e00000000', '90'),
('e26235218', 'zrhth5', 'Zachary', 'Hill', '09593 724071', '6231 Ligula Road', NULL, NULL, NULL, NULL, 'Financial Aid', 'Employee', 'e00000000', '76'),
('e27498586', 'skh6yf', 'Samantha', 'Holder', '(184) 867-642', '757 Cras Road', NULL, NULL, NULL, NULL, 'Cashiers', 'Employee', 'e00000000', '81'),
('e27683982', 'kgh458', 'Karolina', 'Hryszko', '01766 836609', '5441 Lacus Rd.', NULL, NULL, NULL, NULL, 'Cashiers', 'Employee', 'e00000000', '87'),
('e28319141', 'cwj3m4', 'Connor', 'James', '(343) 364-249', '146-7469 Sodales Street', NULL, NULL, NULL, NULL, 'Admissions', 'Employee', 'e00000000', '94'),
('e28913232', 'drkgf8', 'Derek', 'Kedigh', '04659 553631', 'Ap #406-5293 Sed Road', NULL, NULL, NULL, NULL, 'Cashiers', 'Employee', 'e00000000', '85'),
('e29372555', 'mjk8v2', 'Michael', 'Koboldt', '(593) 498-541', '4315 Dui Ave', NULL, NULL, NULL, NULL, 'Cashiers', 'Employee', 'e00000000', '78'),
('e29374191', 'dmlcn6', 'Darryl', 'Lopez', '04317 591147', 'P.O. Box 952, 6994 Eleifend St.', NULL, NULL, NULL, NULL, 'Cashiers', 'Employee', 'e00000000', '98'),
('e29422978', 'njmnbb', 'Nicholas', 'Martini', '(166) 692-711', '2668 Sem Avenue', NULL, NULL, NULL, NULL, 'Cashiers', 'Employee', 'e00000000', '98'),
('e31135288', 'ajmhyd', 'Alexander', 'Matseshe', '04901 727627', '516-7775 Non, St.', NULL, NULL, NULL, NULL, 'Cashiers', 'Employee', 'e00000000', '86'),
('e32813382', 'cwm262', 'Cody', 'McCarson', '(265) 608-876', 'Ap #275-8674 Metus Avenue', NULL, NULL, NULL, NULL, 'Cashiers', 'Employee', 'e00000000', '83'),
('e34298798', 'wdmpp5', 'William', 'Minard', '(723) 797-956', '6876 Sed Av.', NULL, NULL, NULL, NULL, 'Cashiers', 'Employee', 'e00000000', '75'),
('e35252537', 'crmmx2', 'Christina', 'Mosnick', '(579) 832-793', '425-5673 Sagittis. Av.', NULL, NULL, NULL, NULL, 'Cashiers', 'Employee', 'e00000000', '95'),
('e35285715', 'dbmfzf', 'Daniel', 'Murray', '(780) 546-426', 'P.O. Box 679, 2582 Ipsum Road', NULL, NULL, NULL, NULL, 'Financial Aid', 'Employee', 'e00000000', '93'),
('e35469629', 'rcn6f4', 'Ryan', 'Neff', '09328 759968', '1550 Sed St.', NULL, NULL, NULL, NULL, 'Cashiers', 'Employee', 'e00000000', '95'),
('e36656496', 'anmg8', 'Adam', 'Newland', '(249) 150-047', '3764 Lorem Road', NULL, NULL, NULL, NULL, 'Cashiers', 'Employee', 'e00000000', '82'),
('e36967253', 'jrocnc', 'Josh', 'Osteen', '08043 103717', 'P.O. Box 434, 9367 Eget, St.', NULL, NULL, NULL, NULL, 'Admissions', 'Employee', 'e00000000', '80'),
('e38339469', 'mjpyb5', 'Matthew', 'Pokoik', '08155 663381', 'Ap #252-720 Odio Ave', NULL, NULL, NULL, NULL, 'Financial Aid', 'Employee', 'e00000000', '99'),
('e38354864', 'ampwd6', 'Alexes', 'Presswood', '(259) 361-184', 'Ap #377-4250 Eu Av.', NULL, NULL, NULL, NULL, 'Financial Aid', 'Employee', 'e00000000', '98'),
('e38718958', 'msr5zb', 'Michael', 'Rallo', '03231 712884', '3937 Convallis Avenue', NULL, NULL, NULL, NULL, 'Cashiers', 'Employee', 'e00000000', '94'),
('e41554242', 'jtr4bd', 'Joshua', 'Reeves', '(471) 224-832', 'P.O. Box 906, 6115 Morbi Av.', NULL, NULL, NULL, NULL, 'Financial Aid', 'Employee', 'e00000000', '80'),
('e42995534', 'drrkvf', 'Dustin', 'Rios', '(563) 242-029', '861-6872 Pharetra St.', NULL, NULL, NULL, NULL, 'Financial Aid', 'Employee', 'e00000000', '87'),
('e46553524', 'essxpd', 'Evan', 'Schaffer', '03516 059882', 'P.O. Box 959, 8451 Fringilla. Road', NULL, NULL, NULL, NULL, 'Financial Aid', 'Employee', 'e00000000', '90'),
('e47589918', 'jfsvzb', 'Jackson', 'Schaper', '(431) 828-778', '979-7419 Mattis Street', NULL, NULL, NULL, NULL, 'Cashiers', 'Employee', 'e00000000', '92'),
('e47789812', 'mbs9b7', 'Michael', 'Sobelman', '(506) 976-807', '953-9516 Arcu Avenue', NULL, NULL, NULL, NULL, 'Cashiers', 'Employee', 'e00000000', '88'),
('e48157483', 'ajsvt7', 'Anthony', 'Stegall', '(834) 767-062', 'P.O. Box 620, 1573 Lectus Rd.', NULL, NULL, NULL, NULL, 'Financial Aid', 'Employee', 'e00000000', '92'),
('e48863742', 'bsb62', 'Barret', 'Storck', '(902) 637-072', '2878 Vel, Rd.', NULL, NULL, NULL, NULL, 'Cashiers', 'Employee', 'e00000000', '95');

-- --------------------------------------------------------

--
-- Table structure for table `records`
--

CREATE TABLE `records` (
  `request_ID` bigint(20) unsigned NOT NULL,
  `basic_inquiry` tinyint(7) DEFAULT NULL,
  `advanced_inquiry` tinyint(7) DEFAULT NULL,
  `3cs` tinyint(7) DEFAULT NULL,
  `advisor_update` tinyint(7) DEFAULT NULL,
  `dept_soc_update` tinyint(7) DEFAULT NULL,
  `student_group_review` tinyint(7) DEFAULT NULL,
  `service_indicators_holds` tinyint(7) DEFAULT NULL,
  `view_study_list` tinyint(7) DEFAULT NULL,
  `registrar_enrollment` tinyint(7) DEFAULT NULL,
  `advisor_student_center` tinyint(7) DEFAULT NULL,
  `class_permission` tinyint(7) DEFAULT NULL,
  `class_permission_view` tinyint(7) DEFAULT NULL,
  `class_roster` tinyint(7) DEFAULT NULL,
  `block_enrollments` tinyint(7) DEFAULT NULL,
  `report_manager` tinyint(7) DEFAULT NULL,
  `self_service_advisor` tinyint(7) DEFAULT NULL,
  `fiscal_advisor` tinyint(7) DEFAULT NULL,
  `academic_advising_profile` tinyint(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `request`
--

CREATE TABLE `request` (
  `request_ID` bigint(20) unsigned NOT NULL,
  `empID` varchar(20) DEFAULT NULL,
  `request_date` timestamp NULL DEFAULT NULL,
  `update_date` timestamp NULL DEFAULT NULL,
  `admin_empID` varchar(20) DEFAULT NULL,
  `request_description` varchar(500) DEFAULT NULL,
  `is_student` tinyint(1) DEFAULT NULL,
  `status` tinyint(2) DEFAULT NULL,
  `UGRD` tinyint(1) unsigned NOT NULL,
  `GRAD` int(1) unsigned NOT NULL,
  `MED` int(1) unsigned NOT NULL,
  `VET_MED` int(1) unsigned NOT NULL,
  `LAW` int(1) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Stand-in structure for view `requesttypes`
--
CREATE TABLE `requesttypes` (
`request_ID` bigint(20) unsigned
,`all_test_score_access` tinyint(7)
,`act` tinyint(7)
,`ielts` tinyint(7)
,`ged` tinyint(7)
,`sat` tinyint(7)
,`lsat` tinyint(7)
,`millers` tinyint(7)
,`gre` tinyint(7)
,`mcat` tinyint(7)
,`prax` tinyint(7)
,`gmat` tinyint(7)
,`ap` tinyint(7)
,`pla_mu` tinyint(7)
,`tofel` tinyint(7)
,`clep` tinyint(7)
,`base` tinyint(7)
,`sf_general_inquiry` tinyint(7)
,`sf_cash_group_post` tinyint(7)
,`fa_cash` tinyint(7)
,`fa_non_financial_aid_staff` tinyint(7)
,`basic_inquiry` tinyint(7)
,`advanced_inquiry` tinyint(7)
,`3cs` tinyint(7)
,`advisor_update` tinyint(7)
,`dept_soc_update` tinyint(7)
,`student_group_review` tinyint(7)
,`service_indicators_holds` tinyint(7)
,`view_study_list` tinyint(7)
,`registrar_enrollment` tinyint(7)
,`advisor_student_center` tinyint(7)
,`class_permission` tinyint(7)
,`class_permission_view` tinyint(7)
,`class_roster` tinyint(7)
,`block_enrollments` tinyint(7)
,`report_manager` tinyint(7)
,`self_service_advisor` tinyint(7)
,`fiscal_advisor` tinyint(7)
,`academic_advising_profile` tinyint(7)
,`immunization_view` tinyint(7)
,`transfer_credit_admission` tinyint(7)
,`relationships` tinyint(7)
,`student_groups` tinyint(7)
,`accomodate_student_health` tinyint(7)
,`support_staff_registrar` tinyint(7)
,`advance_standing_report` tinyint(7)
);

-- --------------------------------------------------------

--
-- Table structure for table `reserved`
--

CREATE TABLE `reserved` (
  `request_ID` bigint(20) unsigned NOT NULL,
  `immunization_view` tinyint(7) DEFAULT NULL,
  `transfer_credit_admission` tinyint(7) DEFAULT NULL,
  `relationships` tinyint(7) DEFAULT NULL,
  `student_groups` tinyint(7) DEFAULT NULL,
  `accomodate_student_health` tinyint(7) DEFAULT NULL,
  `support_staff_registrar` tinyint(7) DEFAULT NULL,
  `advance_standing_report` tinyint(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure for view `requesttypes`
--
DROP TABLE IF EXISTS `requesttypes`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `requesttypes` AS (select `admissions`.`request_ID` AS `request_ID`,`admissions`.`all_test_score_access` AS `all_test_score_access`,`admissions`.`act` AS `act`,`admissions`.`ielts` AS `ielts`,`admissions`.`ged` AS `ged`,`admissions`.`sat` AS `sat`,`admissions`.`lsat` AS `lsat`,`admissions`.`millers` AS `millers`,`admissions`.`gre` AS `gre`,`admissions`.`mcat` AS `mcat`,`admissions`.`prax` AS `prax`,`admissions`.`gmat` AS `gmat`,`admissions`.`ap` AS `ap`,`admissions`.`pla_mu` AS `pla_mu`,`admissions`.`tofel` AS `tofel`,`admissions`.`clep` AS `clep`,`admissions`.`base` AS `base`,`cashiers`.`sf_general_inquiry` AS `sf_general_inquiry`,`cashiers`.`sf_cash_group_post` AS `sf_cash_group_post`,`financialaid`.`fa_cash` AS `fa_cash`,`financialaid`.`fa_non_financial_aid_staff` AS `fa_non_financial_aid_staff`,`records`.`basic_inquiry` AS `basic_inquiry`,`records`.`advanced_inquiry` AS `advanced_inquiry`,`records`.`3cs` AS `3cs`,`records`.`advisor_update` AS `advisor_update`,`records`.`dept_soc_update` AS `dept_soc_update`,`records`.`student_group_review` AS `student_group_review`,`records`.`service_indicators_holds` AS `service_indicators_holds`,`records`.`view_study_list` AS `view_study_list`,`records`.`registrar_enrollment` AS `registrar_enrollment`,`records`.`advisor_student_center` AS `advisor_student_center`,`records`.`class_permission` AS `class_permission`,`records`.`class_permission_view` AS `class_permission_view`,`records`.`class_roster` AS `class_roster`,`records`.`block_enrollments` AS `block_enrollments`,`records`.`report_manager` AS `report_manager`,`records`.`self_service_advisor` AS `self_service_advisor`,`records`.`fiscal_advisor` AS `fiscal_advisor`,`records`.`academic_advising_profile` AS `academic_advising_profile`,`reserved`.`immunization_view` AS `immunization_view`,`reserved`.`transfer_credit_admission` AS `transfer_credit_admission`,`reserved`.`relationships` AS `relationships`,`reserved`.`student_groups` AS `student_groups`,`reserved`.`accomodate_student_health` AS `accomodate_student_health`,`reserved`.`support_staff_registrar` AS `support_staff_registrar`,`reserved`.`advance_standing_report` AS `advance_standing_report` from ((((`admissions` join `cashiers` on((`admissions`.`request_ID` = `cashiers`.`request_ID`))) join `financialaid` on((`admissions`.`request_ID` = `financialaid`.`request_ID`))) join `records` on((`admissions`.`request_ID` = `records`.`request_ID`))) join `reserved` on((`admissions`.`request_ID` = `reserved`.`request_ID`))));

--
-- Indexes for dumped tables
--

--
-- Indexes for table `request`
--
ALTER TABLE `request`
  ADD UNIQUE KEY `request_ID` (`request_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `request`
--
ALTER TABLE `request`
  MODIFY `request_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
