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

--
-- Dumping data for table `admissions`
--

INSERT INTO `admissions` (`request_ID`, `all_test_score_access`, `act`, `ielts`, `ged`, `sat`, `lsat`, `millers`, `gre`, `mcat`, `prax`, `gmat`, `ap`, `pla_mu`, `tofel`, `clep`, `base`) VALUES
(100, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1),
(203, NULL, 5, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(205, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

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

--
-- Dumping data for table `auth`
--

INSERT INTO `auth` (`request_ID`, `employee_sig`, `dept_head_sig`, `dean_sig`) VALUES
(100, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `cashiers`
--

CREATE TABLE `cashiers` (
  `request_ID` bigint(20) unsigned NOT NULL,
  `sf_general_inquiry` tinyint(7) DEFAULT NULL,
  `sf_cash_group_post` tinyint(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cashiers`
--

INSERT INTO `cashiers` (`request_ID`, `sf_general_inquiry`, `sf_cash_group_post`) VALUES
(100, 1, 6),
(203, 0, 0),
(205, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `financialAid`
--

CREATE TABLE `financialAid` (
  `request_ID` bigint(20) unsigned NOT NULL,
  `fa_cash` tinyint(7) DEFAULT NULL,
  `fa_non_financial_aid_staff` tinyint(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `financialAid`
--

INSERT INTO `financialAid` (`request_ID`, `fa_cash`, `fa_non_financial_aid_staff`) VALUES
(100, 0, 1),
(203, 0, 0),
(205, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `pawprint` varchar(6) NOT NULL DEFAULT '',
  `password` varchar(20) DEFAULT NULL,
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
('e11424344', 'dnm857', 'Sybil', 'Snyder', '(636) 538-3000', '7116 Lacus St.', '37', 'Columbia', '65203', 'Missouri', 'Admissions', 'Senior Developer', 'e00000000', '85'),
('e11891417', 'isc539', 'Azalia', 'Gallagher', '(314) 373-7373', '205 Jesse Hall', '211', 'Columbia', '65201', 'Missouri', 'Admissions', 'Junior Software Developer', 'e00000000', '100'),
('e12371623', 'jvz147', 'Desirae', 'Nolan', '(555) 555-5555', '1 North Street', '', 'Foristell', '63348', 'Missouri', 'Financial Aid', 'Programmer Analyst', 'e00000000', '80'),
('e14264482', 'tps778', 'Isaiah', 'Harding', '02300 006726', 'Ap #330-5612 Nonummy St.', NULL, NULL, NULL, NULL, 'Cashiers', 'Employee', 'e00000000', '78'),
('e14647732', 'zgf432', 'Nola', 'Young', '(471) 967-922', 'Ap #572-5910 Molestie St.', NULL, NULL, NULL, NULL, 'Cashiers', 'Employee', 'e00000000', '78'),
('e16359615', 'sqa353', 'Kelsie', 'Hernandez', '09183 211343', '347-7057 Massa. Rd.', NULL, NULL, NULL, NULL, 'Cashiers', 'Employee', 'e00000000', '83'),
('e16376651', 'nsy533', 'Constance', 'Mccall', '(306) 588-882', 'P.O. Box 733, 8689 Phasellus St.', NULL, NULL, NULL, NULL, 'Admissions', 'Employee', 'e00000000', '88'),
('e18349748', 'jmx631', 'Shaine', 'Wiggins', '(543) 551-262', 'P.O. Box 825, 345 Eget Rd.', NULL, NULL, NULL, NULL, 'Financial Aid', 'Employee', 'e00000000', '76'),
('e19241574', 'kkq446', 'Stephanie', 'Burton', '(562) 707-441', 'Ap #656-6581 Urna Avenue', NULL, NULL, NULL, NULL, 'Financial Aid', 'Employee', 'e00000000', '87'),
('e19843177', 'fpf383', 'Christen', 'Taylor', '(416) 896-634', 'P.O. Box 214, 1780 Nulla St.', NULL, NULL, NULL, NULL, 'Cashiers', 'Employee', 'e00000000', '82'),
('e22672237', 'vel743', 'Elliott', 'Villarreal', '(313) 197-261', '442-2950 Ac, Road', NULL, NULL, NULL, NULL, 'Financial Aid', 'Employee', 'e00000000', '78'),
('e23999133', 'lgb424', 'Alice', 'Valentine', '(887) 724-672', 'Ap #334-5879 Egestas. Road', NULL, NULL, NULL, NULL, 'Admissions', 'Employee', 'e00000000', '95'),
('e24253583', 'fup191', 'Grady', 'Hanson', '(437) 527-524', 'P.O. Box 404, 5228 Accumsan Ave', NULL, NULL, NULL, NULL, 'Admissions', 'Employee', 'e00000000', '100'),
('e24443949', 'cwr916', 'Ulla', 'Mcguire', '08167 352933', '4958 Consectetuer St.', NULL, NULL, NULL, NULL, 'Admissions', 'Employee', 'e00000000', '94'),
('e24444852', 'hra643', 'Illiana', 'Berry', '03764 277919', 'Ap #430-3669 Proin Street', NULL, NULL, NULL, NULL, 'Cashiers', 'Employee', 'e00000000', '85'),
('e24599267', 'jim465', 'Kirsten', 'Hurst', '07442 828413', '6996 In Ave', NULL, NULL, NULL, NULL, 'Cashiers', 'Employee', 'e00000000', '96'),
('e24762298', 'vmn144', 'Keiko', 'Charles', '02191 947781', '481-875 In Road', NULL, NULL, NULL, NULL, 'Cashiers', 'Employee', 'e00000000', '76'),
('e25584577', 'geu759', 'Justina', 'Bright', '05599 010498', 'Ap #430-7435 Varius Avenue', NULL, NULL, NULL, NULL, 'Cashiers', 'Employee', 'e00000000', '90'),
('e26235218', 'lmk748', 'Ian', 'Bell', '09593 724071', '6231 Ligula Road', NULL, NULL, NULL, NULL, 'Financial Aid', 'Employee', 'e00000000', '76'),
('e27498586', 'gpf965', 'Galena', 'Gonzalez', '(184) 867-642', '757 Cras Road', NULL, NULL, NULL, NULL, 'Cashiers', 'Employee', 'e00000000', '81'),
('e27683982', 'pbl264', 'Miriam', 'Ferguson', '01766 836609', '5441 Lacus Rd.', NULL, NULL, NULL, NULL, 'Cashiers', 'Employee', 'e00000000', '87'),
('e28319141', 'yud132', 'Davis', 'Park', '(343) 364-249', '146-7469 Sodales Street', NULL, NULL, NULL, NULL, 'Admissions', 'Employee', 'e00000000', '94'),
('e28913232', 'hgv717', 'Kiayada', 'Howard', '04659 553631', 'Ap #406-5293 Sed Road', NULL, NULL, NULL, NULL, 'Cashiers', 'Employee', 'e00000000', '85'),
('e29372555', 'eaw937', 'Hasad', 'Obrien', '(593) 498-541', '4315 Dui Ave', NULL, NULL, NULL, NULL, 'Cashiers', 'Employee', 'e00000000', '78'),
('e29374191', 'hgl591', 'Uma', 'Everett', '04317 591147', 'P.O. Box 952, 6994 Eleifend St.', NULL, NULL, NULL, NULL, 'Cashiers', 'Employee', 'e00000000', '98'),
('e29422978', 'dvl165', 'Noelle', 'Beck', '(166) 692-711', '2668 Sem Avenue', NULL, NULL, NULL, NULL, 'Cashiers', 'Employee', 'e00000000', '98'),
('e31135288', 'cyf379', 'Prescott', 'Mays', '04901 727627', '516-7775 Non, St.', NULL, NULL, NULL, NULL, 'Cashiers', 'Employee', 'e00000000', '86'),
('e32813382', 'feo733', 'Drake', 'Barrera', '(265) 608-876', 'Ap #275-8674 Metus Avenue', NULL, NULL, NULL, NULL, 'Cashiers', 'Employee', 'e00000000', '83'),
('e34298798', 'tvw753', 'Audra', 'Weiss', '(723) 797-956', '6876 Sed Av.', NULL, NULL, NULL, NULL, 'Cashiers', 'Employee', 'e00000000', '75'),
('e35252537', 'mvg258', 'Vivien', 'Trevino', '(579) 832-793', '425-5673 Sagittis. Av.', NULL, NULL, NULL, NULL, 'Cashiers', 'Employee', 'e00000000', '95'),
('e35285715', 'fxl925', 'Clementine', 'Blake', '(780) 546-426', 'P.O. Box 679, 2582 Ipsum Road', NULL, NULL, NULL, NULL, 'Financial Aid', 'Employee', 'e00000000', '93'),
('e35469629', 'wxj691', 'Sarah', 'Best', '09328 759968', '1550 Sed St.', NULL, NULL, NULL, NULL, 'Cashiers', 'Employee', 'e00000000', '95'),
('e36656496', 'xdi351', 'Elmo', 'Giles', '(249) 150-047', '3764 Lorem Road', NULL, NULL, NULL, NULL, 'Cashiers', 'Employee', 'e00000000', '82'),
('e36967253', 'lhb696', 'Sylvester', 'Walls', '08043 103717', 'P.O. Box 434, 9367 Eget, St.', NULL, NULL, NULL, NULL, 'Admissions', 'Employee', 'e00000000', '80'),
('e38339469', 'fjz413', 'Ainsley', 'Dalton', '08155 663381', 'Ap #252-720 Odio Ave', NULL, NULL, NULL, NULL, 'Financial Aid', 'Employee', 'e00000000', '99'),
('e38354864', 'ttt487', 'Madaline', 'Hines', '(259) 361-184', 'Ap #377-4250 Eu Av.', NULL, NULL, NULL, NULL, 'Financial Aid', 'Employee', 'e00000000', '98'),
('e38718958', 'hxr864', 'Ivor', 'Matthews', '03231 712884', '3937 Convallis Avenue', NULL, NULL, NULL, NULL, 'Cashiers', 'Employee', 'e00000000', '94'),
('e41554242', 'eec991', 'Teagan', 'Haney', '(471) 224-832', 'P.O. Box 906, 6115 Morbi Av.', NULL, NULL, NULL, NULL, 'Financial Aid', 'Employee', 'e00000000', '80'),
('e42995534', 'hfl491', 'Jackson', 'Grimes', '(563) 242-029', '861-6872 Pharetra St.', NULL, NULL, NULL, NULL, 'Financial Aid', 'Employee', 'e00000000', '87'),
('e46553524', 'mhd472', 'Hector', 'Conley', '03516 059882', 'P.O. Box 959, 8451 Fringilla. Road', NULL, NULL, NULL, NULL, 'Financial Aid', 'Employee', 'e00000000', '90'),
('e47589918', 'oiv823', 'Ruby', 'Butler', '(431) 828-778', '979-7419 Mattis Street', NULL, NULL, NULL, NULL, 'Cashiers', 'Employee', 'e00000000', '92'),
('e47789812', 'drz545', 'Cora', 'Weaver', '(506) 976-807', '953-9516 Arcu Avenue', NULL, NULL, NULL, NULL, 'Cashiers', 'Employee', 'e00000000', '88'),
('e48157483', 'hcr647', 'TaShya', 'Marks', '(834) 767-062', 'P.O. Box 620, 1573 Lectus Rd.', NULL, NULL, NULL, NULL, 'Financial Aid', 'Employee', 'e00000000', '92'),
('e48863742', 'acs563', 'Martina', 'Sargent', '(902) 637-072', '2878 Vel, Rd.', NULL, NULL, NULL, NULL, 'Cashiers', 'Employee', 'e00000000', '95');

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

--
-- Dumping data for table `records`
--

INSERT INTO `records` (`request_ID`, `basic_inquiry`, `advanced_inquiry`, `3cs`, `advisor_update`, `dept_soc_update`, `student_group_review`, `service_indicators_holds`, `view_study_list`, `registrar_enrollment`, `advisor_student_center`, `class_permission`, `class_permission_view`, `class_roster`, `block_enrollments`, `report_manager`, `self_service_advisor`, `fiscal_advisor`, `academic_advising_profile`) VALUES
(100, 1, 7, 7, 3, 3, 1, 7, 1, 7, 1, 3, 1, 1, 7, 1, 3, 1, 3),
(203, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(205, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

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
) ENGINE=InnoDB AUTO_INCREMENT=206 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `request`
--

INSERT INTO `request` (`request_ID`, `empID`, `request_date`, `update_date`, `admin_empID`, `request_description`, `is_student`, `status`, `UGRD`, `GRAD`, `MED`, `VET_MED`, `LAW`) VALUES
(100, 'e11424344', '2015-12-04 07:11:54', '2015-12-04 07:11:54', 'e00000000', 'this is just a test', 1, 0, 0, 1, 1, 0, 0),
(101, 'e22672237', '2016-01-06 06:00:00', '2016-04-20 05:00:00', 'e00000000', 'Admissions, Authorization, Records', 1, 2, 0, 0, 0, 0, 0),
(102, 'e27683982', '2015-01-10 06:00:00', '2015-07-05 05:00:00', 'e00000000', 'Admissions, Authorization, Records', 1, 2, 0, 0, 0, 0, 0),
(103, 'e35285715', '2015-06-30 05:00:00', '2015-04-19 05:00:00', 'e00000000', 'Admissions, Authorization, Records', 1, 0, 0, 0, 0, 0, 0),
(104, 'e47589918', '2015-02-20 06:00:00', '2015-05-26 05:00:00', 'e00000000', 'Admissions, Authorization, Records', 1, 0, 0, 0, 0, 0, 0),
(105, 'e53499865', '2015-01-07 06:00:00', '2015-03-04 06:00:00', 'e00000000', 'Admissions, Authorization, Records', 0, 2, 0, 0, 0, 0, 0),
(106, 'e61136933', '2015-09-10 05:00:00', '2015-08-18 05:00:00', 'e00000000', 'Admissions, Authorization, Records', 1, 0, 0, 0, 0, 0, 0),
(107, 'e69838893', '2016-03-23 05:00:00', '2015-11-11 06:00:00', 'e00000000', 'Admissions, Authorization, Records', 0, 2, 0, 0, 0, 0, 0),
(108, 'e78691314', '2015-01-31 06:00:00', '2016-04-28 05:00:00', 'e00000000', 'Admissions, Authorization, Records', 0, 1, 0, 0, 0, 0, 0),
(109, 'e88323177', '2016-04-29 05:00:00', '2016-10-22 05:00:00', 'e00000000', 'Admissions, Authorization, Records', 1, 0, 0, 0, 0, 0, 0),
(111, 'e23999133', '2015-09-19 05:00:00', '2015-07-29 05:00:00', 'e00000000', 'Admissions, Authorization, Records', 1, 1, 0, 0, 0, 0, 0),
(112, 'e28319141', '2015-08-29 05:00:00', '2016-06-28 05:00:00', 'e00000000', 'Admissions, Authorization, Records', 0, 0, 0, 0, 0, 0, 0),
(113, 'e35469629', '2015-03-25 05:00:00', '2015-06-09 05:00:00', 'e00000000', 'Admissions, Authorization, Records', 0, 1, 0, 0, 0, 0, 0),
(114, 'e47789812', '2015-05-28 05:00:00', '2014-12-08 06:00:00', 'e00000000', 'Admissions, Authorization, Records', 1, 2, 0, 0, 0, 0, 0),
(115, 'e53558542', '2015-07-24 05:00:00', '2015-05-10 05:00:00', 'e00000000', 'Admissions, Authorization, Records', 0, 1, 0, 0, 0, 0, 0),
(116, 'e62169612', '2016-03-30 05:00:00', '2015-04-22 05:00:00', 'e00000000', 'Admissions, Authorization, Records', 1, 0, 0, 0, 0, 0, 0),
(117, 'e71327389', '2016-03-04 06:00:00', '2015-11-20 06:00:00', 'e00000000', 'Admissions, Authorization, Records', 0, 1, 0, 0, 0, 0, 0),
(118, 'e82894949', '2015-08-29 05:00:00', '2016-06-02 05:00:00', 'e00000000', 'Admissions, Authorization, Records', 0, 2, 0, 0, 0, 0, 0),
(119, 'e89131186', '2015-10-01 05:00:00', '2015-06-08 05:00:00', 'e00000000', 'Admissions, Authorization, Records', 0, 0, 0, 0, 0, 0, 0),
(121, 'e24253583', '2015-01-31 06:00:00', '2016-02-16 06:00:00', 'e00000000', 'FinancialAid, Authorization, Records', 1, 2, 0, 0, 0, 0, 0),
(122, 'e28913232', '2016-01-02 06:00:00', '2015-07-03 05:00:00', 'e00000000', 'FinancialAid, Authorization, Records', 1, 0, 0, 0, 0, 0, 0),
(123, 'e36656496', '2016-02-24 06:00:00', '2014-12-14 06:00:00', 'e00000000', 'FinancialAid, Authorization, Records', 0, 2, 0, 0, 0, 0, 0),
(124, 'e48157483', '2015-01-14 06:00:00', '2016-10-12 05:00:00', 'e00000000', 'FinancialAid, Authorization, Records', 0, 1, 0, 0, 0, 0, 0),
(125, 'e54573773', '2015-02-10 06:00:00', '2016-08-15 05:00:00', 'e00000000', 'FinancialAid, Authorization, Records', 0, 2, 0, 0, 0, 0, 0),
(126, 'e62771432', '2014-12-02 06:00:00', '2016-09-26 05:00:00', 'e00000000', 'FinancialAid, Authorization, Records', 1, 1, 0, 0, 0, 0, 0),
(127, 'e71786584', '2015-07-06 05:00:00', '2015-04-07 05:00:00', 'e00000000', 'FinancialAid, Authorization, Records', 1, 2, 0, 0, 0, 0, 0),
(128, 'e83431578', '2015-03-13 05:00:00', '2016-02-03 06:00:00', 'e00000000', 'FinancialAid, Authorization, Records', 1, 1, 0, 0, 0, 0, 0),
(129, 'e89844788', '2016-01-03 06:00:00', '2015-12-04 06:00:00', 'e00000000', 'FinancialAid, Authorization, Records', 1, 2, 0, 0, 0, 0, 0),
(130, 'e14264482', '2016-05-26 05:00:00', '2016-01-07 06:00:00', 'e00000000', 'FinancialAid, Authorization, Records', 1, 2, 0, 0, 0, 0, 0),
(131, 'e24443949', '2015-08-27 05:00:00', '2016-03-29 05:00:00', 'e00000000', 'FinancialAid, Authorization, Records', 0, 1, 0, 0, 0, 0, 0),
(132, 'e29372555', '2016-06-24 05:00:00', '2015-09-20 05:00:00', 'e00000000', 'FinancialAid, Authorization, Records', 0, 2, 0, 0, 0, 0, 0),
(133, 'e36967253', '2016-02-12 06:00:00', '2016-10-11 05:00:00', 'e00000000', 'FinancialAid, Authorization, Records', 1, 1, 0, 0, 0, 0, 0),
(134, 'e48863742', '2014-12-09 06:00:00', '2014-12-16 06:00:00', 'e00000000', 'FinancialAid, Authorization, Records', 1, 0, 0, 0, 0, 0, 0),
(135, 'e54756887', '2015-09-19 05:00:00', '2016-03-17 05:00:00', 'e00000000', 'FinancialAid, Authorization, Records', 0, 0, 0, 0, 0, 0, 0),
(136, 'e63528573', '2015-12-27 06:00:00', '2016-04-15 05:00:00', 'e00000000', 'FinancialAid, Authorization, Records', 1, 2, 0, 0, 0, 0, 0),
(137, 'e73789236', '2015-03-27 05:00:00', '2015-03-07 06:00:00', 'e00000000', 'FinancialAid, Authorization, Records', 1, 2, 0, 0, 0, 0, 0),
(138, 'e83914137', '2016-06-26 05:00:00', '2016-04-05 05:00:00', 'e00000000', 'FinancialAid, Authorization, Records', 0, 2, 0, 0, 0, 0, 0),
(139, 'e89873622', '2015-02-18 06:00:00', '2015-10-15 05:00:00', 'e00000000', 'FinancialAid, Authorization, Records', 0, 0, 0, 0, 0, 0, 0),
(140, 'e14647732', '2014-12-30 06:00:00', '2015-12-05 06:00:00', 'e00000000', 'Cashiers, Authorization, Records', 0, 2, 0, 0, 0, 0, 0),
(141, 'e24444852', '2016-07-01 05:00:00', '2015-09-23 05:00:00', 'e00000000', 'Cashiers, Authorization, Records', 1, 2, 0, 0, 0, 0, 0),
(142, 'e29374191', '2015-01-10 06:00:00', '2016-10-10 05:00:00', 'e00000000', 'Cashiers, Authorization, Records', 1, 0, 0, 0, 0, 0, 0),
(143, 'e38339469', '2015-04-21 05:00:00', '2016-05-03 05:00:00', 'e00000000', 'Cashiers, Authorization, Records', 1, 2, 0, 0, 0, 0, 0),
(144, 'e49348839', '2015-12-04 06:00:00', '2015-03-20 05:00:00', 'e00000000', 'Cashiers, Authorization, Records', 1, 0, 0, 0, 0, 0, 0),
(145, 'e54767874', '2015-12-02 06:00:00', '2015-09-24 05:00:00', 'e00000000', 'Cashiers, Authorization, Records', 0, 2, 0, 0, 0, 0, 0),
(146, 'e65663714', '2014-12-24 06:00:00', '2014-12-11 06:00:00', 'e00000000', 'Cashiers, Authorization, Records', 0, 1, 0, 0, 0, 0, 0),
(147, 'e74215832', '2016-09-23 05:00:00', '2014-12-14 06:00:00', 'e00000000', 'Cashiers, Authorization, Records', 0, 1, 0, 0, 0, 0, 0),
(148, 'e84551415', '2015-10-23 05:00:00', '2016-02-22 06:00:00', 'e00000000', 'Cashiers, Authorization, Records', 0, 2, 0, 0, 0, 0, 0),
(149, 'e92377558', '2016-07-19 05:00:00', '2015-03-08 06:00:00', 'e00000000', 'Cashiers, Authorization, Records', 0, 1, 0, 0, 0, 0, 0),
(150, 'e16359615', '2016-08-23 05:00:00', '2014-11-20 06:00:00', 'e00000000', 'Cashiers, Authorization, Records', 1, 2, 0, 0, 0, 0, 0),
(151, 'e24599267', '2015-06-08 05:00:00', '2015-02-08 06:00:00', 'e00000000', 'Cashiers, Authorization, Records', 1, 0, 0, 0, 0, 0, 0),
(152, 'e29422978', '2015-08-13 05:00:00', '2016-07-23 05:00:00', 'e00000000', 'Cashiers, Authorization, Records', 1, 1, 0, 0, 0, 0, 0),
(153, 'e38354864', '2015-06-07 05:00:00', '2015-11-25 06:00:00', 'e00000000', 'Cashiers, Authorization, Records', 0, 0, 0, 0, 0, 0, 0),
(154, 'e49477585', '2016-10-11 05:00:00', '2015-01-13 06:00:00', 'e00000000', 'Cashiers, Authorization, Records', 1, 0, 0, 0, 0, 0, 0),
(155, 'e54999964', '2016-08-26 05:00:00', '2015-02-14 06:00:00', 'e00000000', 'Cashiers, Authorization, Records', 0, 2, 0, 0, 0, 0, 0),
(156, 'e68867756', '2016-07-13 05:00:00', '2016-01-17 06:00:00', 'e00000000', 'Cashiers, Authorization, Records', 1, 2, 0, 0, 0, 0, 0),
(157, 'e75277974', '2015-05-28 05:00:00', '2016-05-13 05:00:00', 'e00000000', 'Cashiers, Authorization, Records', 1, 0, 0, 0, 0, 0, 0),
(158, 'e84694449', '2015-10-30 05:00:00', '2015-11-07 06:00:00', 'e00000000', 'Cashiers, Authorization, Records', 1, 0, 0, 0, 0, 0, 0),
(159, 'e95315494', '2016-03-29 05:00:00', '2016-08-01 05:00:00', 'e00000000', 'Cashiers, Authorization, Records', 1, 1, 0, 0, 0, 0, 0),
(160, 'e16376651', '2016-09-28 05:00:00', '2015-05-18 05:00:00', 'e00000000', 'Admissions, Authorization, Records', 1, 2, 0, 0, 0, 0, 0),
(161, 'e24762298', '2016-06-18 05:00:00', '2016-09-15 05:00:00', 'e00000000', 'Admissions, Authorization, Records', 1, 1, 0, 0, 0, 0, 0),
(162, 'e31135288', '2014-11-29 06:00:00', '2014-12-21 06:00:00', 'e00000000', 'Admissions, Authorization, Records', 0, 0, 0, 0, 0, 0, 0),
(163, 'e38718958', '2015-09-11 05:00:00', '2016-10-30 05:00:00', 'e00000000', 'Admissions, Authorization, Records', 1, 2, 0, 0, 0, 0, 0),
(164, 'e49792994', '2016-01-18 06:00:00', '2015-04-11 05:00:00', 'e00000000', 'Admissions, Authorization, Records', 0, 2, 0, 0, 0, 0, 0),
(165, 'e56984254', '2015-09-13 05:00:00', '2016-03-27 05:00:00', 'e00000000', 'Admissions, Authorization, Records', 1, 2, 0, 0, 0, 0, 0),
(166, 'e68958854', '2015-01-14 06:00:00', '2015-12-10 06:00:00', 'e00000000', 'Admissions, Authorization, Records', 1, 0, 0, 0, 0, 0, 0),
(167, 'e76467227', '2016-09-05 05:00:00', '2015-08-04 05:00:00', 'e00000000', 'Admissions, Authorization, Records', 0, 2, 0, 0, 0, 0, 0),
(168, 'e85565358', '2014-12-28 06:00:00', '2016-03-10 06:00:00', 'e00000000', 'Admissions, Authorization, Records', 1, 1, 0, 0, 0, 0, 0),
(169, 'e96414612', '2016-11-09 06:00:00', '2015-11-18 06:00:00', 'e00000000', 'Admissions, Authorization, Records', 1, 2, 0, 0, 0, 0, 0),
(170, 'e18349748', '2016-08-08 05:00:00', '2015-10-13 05:00:00', 'e00000000', 'Admissions, Authorization, Records', 0, 2, 0, 0, 0, 0, 0),
(171, 'e25584577', '2016-09-01 05:00:00', '2016-04-01 05:00:00', 'e00000000', 'Admissions, Authorization, Records', 1, 2, 0, 0, 0, 0, 0),
(172, 'e32813382', '2016-09-23 05:00:00', '2015-06-04 05:00:00', 'e00000000', 'Admissions, Authorization, Records', 1, 0, 0, 0, 0, 0, 0),
(173, 'e41554242', '2015-06-17 05:00:00', '2015-07-28 05:00:00', 'e00000000', 'Admissions, Authorization, Records', 1, 0, 0, 0, 0, 0, 0),
(174, 'e51125647', '2015-05-08 05:00:00', '2015-06-08 05:00:00', 'e00000000', 'Admissions, Authorization, Records', 0, 0, 0, 0, 0, 0, 0),
(175, 'e57557543', '2016-04-25 05:00:00', '2015-07-22 05:00:00', 'e00000000', 'Admissions, Authorization, Records', 0, 1, 0, 0, 0, 0, 0),
(176, 'e69163113', '2016-09-05 05:00:00', '2014-11-29 06:00:00', 'e00000000', 'Admissions, Authorization, Records', 1, 1, 0, 0, 0, 0, 0),
(177, 'e77691254', '2016-05-03 05:00:00', '2016-08-27 05:00:00', 'e00000000', 'Admissions, Authorization, Records', 1, 2, 0, 0, 0, 0, 0),
(178, 'e86154169', '2016-06-14 05:00:00', '2014-11-24 06:00:00', 'e00000000', 'Admissions, Authorization, Records', 0, 2, 0, 0, 0, 0, 0),
(179, 'e97564753', '2016-01-24 06:00:00', '2015-12-25 06:00:00', 'e00000000', 'Admissions, Authorization, Records', 1, 2, 0, 0, 0, 0, 0),
(180, 'e19241574', '2016-09-30 05:00:00', '2015-01-07 06:00:00', 'e00000000', 'FinancialAid, Authorization, Records', 1, 0, 0, 0, 0, 0, 0),
(181, 'e26235218', '2014-12-09 06:00:00', '2015-08-15 05:00:00', 'e00000000', 'FinancialAid, Authorization, Records', 1, 1, 0, 0, 0, 0, 0),
(182, 'e34298798', '2016-01-16 06:00:00', '2015-01-09 06:00:00', 'e00000000', 'FinancialAid, Authorization, Records', 0, 1, 0, 0, 0, 0, 0),
(183, 'e42995534', '2016-11-15 06:00:00', '2015-05-16 05:00:00', 'e00000000', 'FinancialAid, Authorization, Records', 1, 1, 0, 0, 0, 0, 0),
(184, 'e52714731', '2015-02-27 06:00:00', '2014-11-24 06:00:00', 'e00000000', 'FinancialAid, Authorization, Records', 0, 0, 0, 0, 0, 0, 0),
(185, 'e57899782', '2015-02-08 06:00:00', '2016-07-12 05:00:00', 'e00000000', 'FinancialAid, Authorization, Records', 1, 2, 0, 0, 0, 0, 0),
(186, 'e69253713', '2015-12-26 06:00:00', '2016-08-05 05:00:00', 'e00000000', 'FinancialAid, Authorization, Records', 1, 1, 0, 0, 0, 0, 0),
(187, 'e78554488', '2015-09-11 05:00:00', '2016-03-09 06:00:00', 'e00000000', 'FinancialAid, Authorization, Records', 1, 2, 0, 0, 0, 0, 0),
(188, 'e87339725', '2016-11-05 05:00:00', '2016-10-04 05:00:00', 'e00000000', 'FinancialAid, Authorization, Records', 0, 1, 0, 0, 0, 0, 0),
(189, 'e98547495', '2015-01-30 06:00:00', '2015-08-17 05:00:00', 'e00000000', 'FinancialAid, Authorization, Records', 1, 1, 0, 0, 0, 0, 0),
(190, 'e19843177', '2016-02-08 06:00:00', '2016-04-11 05:00:00', 'e00000000', 'FinancialAid, Authorization, Records', 0, 2, 0, 0, 0, 0, 0),
(191, 'e27498586', '2016-04-09 05:00:00', '2015-02-26 06:00:00', 'e00000000', 'FinancialAid, Authorization, Records', 0, 1, 0, 0, 0, 0, 0),
(192, 'e35252537', '2015-01-15 06:00:00', '2015-10-16 05:00:00', 'e00000000', 'FinancialAid, Authorization, Records', 1, 2, 0, 0, 0, 0, 0),
(193, 'e46553524', '2016-09-17 05:00:00', '2016-09-05 05:00:00', 'e00000000', 'FinancialAid, Authorization, Records', 0, 2, 0, 0, 0, 0, 0),
(194, 'e52783685', '2014-11-30 06:00:00', '2016-10-18 05:00:00', 'e00000000', 'FinancialAid, Authorization, Records', 0, 1, 0, 0, 0, 0, 0),
(195, 'e59454213', '2016-07-10 05:00:00', '2014-12-22 06:00:00', 'e00000000', 'FinancialAid, Authorization, Records', 1, 1, 0, 0, 0, 0, 0),
(196, 'e69441882', '2016-10-10 05:00:00', '2016-04-19 05:00:00', 'e00000000', 'FinancialAid, Authorization, Records', 1, 2, 0, 0, 0, 0, 0),
(197, 'e78496318', '2016-01-07 06:00:00', '2015-11-30 06:00:00', 'e00000000', 'FinancialAid, Authorization, Records', 0, 2, 0, 0, 0, 0, 0),
(198, 'e87858345', '2016-07-28 05:00:00', '2016-03-11 06:00:00', 'e00000000', 'FinancialAid, Authorization, Records', 0, 1, 0, 0, 0, 0, 0),
(199, 'e99669839', '2015-10-31 05:00:00', '2016-10-10 05:00:00', 'e00000000', 'FinancialAid, Authorization, Records', 1, 2, 0, 0, 0, 0, 0),
(203, 'e11891417', '2015-12-04 17:44:14', '2015-12-04 17:44:14', 'e00000000', '0qoi4uebhfqoiruhn', NULL, 0, 0, 1, 0, 0, 0),
(205, 'e12371623', '2015-12-04 20:42:53', '2015-12-04 20:42:53', 'e00000000', 'LET THIS BE A WARNING', NULL, 0, 0, 1, 1, 0, 0);

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

--
-- Dumping data for table `reserved`
--

INSERT INTO `reserved` (`request_ID`, `immunization_view`, `transfer_credit_admission`, `relationships`, `student_groups`, `accomodate_student_health`, `support_staff_registrar`, `advance_standing_report`) VALUES
(100, 5, 6, 7, 2, 3, 5, 6),
(203, 0, 0, 0, 0, 0, 0, 0);

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
  MODIFY `request_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=206;
