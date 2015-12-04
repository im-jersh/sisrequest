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

CREATE TABLE IF NOT EXISTS `admissions` (
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
(100, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1);
-- --------------------------------------------------------

--
-- Table structure for table `auth`
--

CREATE TABLE IF NOT EXISTS `auth` (
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

CREATE TABLE IF NOT EXISTS `cashiers` (
  `request_ID` bigint(20) unsigned NOT NULL,
  `sf_general_inquiry` tinyint(7) DEFAULT NULL,
  `sf_cash_group_post` tinyint(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cashiers`
--

INSERT INTO `cashiers` (`request_ID`, `sf_general_inquiry`, `sf_cash_group_post`) VALUES
(100, 1, 6);

-- --------------------------------------------------------

--
-- Table structure for table `financialAid`
--

CREATE TABLE IF NOT EXISTS `financialAid` (
  `request_ID` bigint(20) unsigned NOT NULL,
  `fa_cash` tinyint(7) DEFAULT NULL,
  `fa_non_financial_aid_staff` tinyint(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `financialAid`
--

INSERT INTO `financialAid` (`request_ID`, `fa_cash`, `fa_non_financial_aid_staff`) VALUES
(100, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
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

CREATE TABLE IF NOT EXISTS `person` (
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
INSERT INTO `person` (`empID`, `pawprint`, `fName`, `lName`, `phone_number`, `campus_address`, `department`, `title`, `admin_empID`, `ferpa_score`) VALUES
('e11424344', 'dnm857', 'Sybil', 'Snyder', '(205) 102-563', '7116 Lacus St.', 'Admissions', 'Employee', 'e00000000', '85'),
('e11891417', 'isc539', 'Azalia', 'Gallagher', '(418) 238-052', '527-3953 Et, Street', 'Admissions', 'Employee', 'e00000000', '100'),
('e12371623', 'jvz147', 'Desirae', 'Nolan', '(187) 561-156', 'Ap #945-9092 Dui. Av.', 'Financial Aid', 'Employee', 'e00000000', '80'),
('e14264482', 'tps778', 'Isaiah', 'Harding', '02300 006726', 'Ap #330-5612 Nonummy St.', 'Cashiers', 'Employee', 'e00000000', '78'),
('e14647732', 'zgf432', 'Nola', 'Young', '(471) 967-922', 'Ap #572-5910 Molestie St.', 'Cashiers', 'Employee', 'e00000000', '78'),
('e16359615', 'sqa353', 'Kelsie', 'Hernandez', '09183 211343', '347-7057 Massa. Rd.', 'Cashiers', 'Employee', 'e00000000', '83'),
('e16376651', 'nsy533', 'Constance', 'Mccall', '(306) 588-882', 'P.O. Box 733, 8689 Phasellus St.', 'Admissions', 'Employee', 'e00000000', '88'),
('e18349748', 'jmx631', 'Shaine', 'Wiggins', '(543) 551-262', 'P.O. Box 825, 345 Eget Rd.', 'Financial Aid', 'Employee', 'e00000000', '76'),
('e19241574', 'kkq446', 'Stephanie', 'Burton', '(562) 707-441', 'Ap #656-6581 Urna Avenue', 'Financial Aid', 'Employee', 'e00000000', '87'),
('e19843177', 'fpf383', 'Christen', 'Taylor', '(416) 896-634', 'P.O. Box 214, 1780 Nulla St.', 'Cashiers', 'Employee', 'e00000000', '82'),
('e22672237', 'vel743', 'Elliott', 'Villarreal', '(313) 197-261', '442-2950 Ac, Road', 'Financial Aid', 'Employee', 'e00000000', '78'),
('e23999133', 'lgb424', 'Alice', 'Valentine', '(887) 724-672', 'Ap #334-5879 Egestas. Road', 'Admissions', 'Employee', 'e00000000', '95'),
('e24253583', 'fup191', 'Grady', 'Hanson', '(437) 527-524', 'P.O. Box 404, 5228 Accumsan Ave', 'Admissions', 'Employee', 'e00000000', '100'),
('e24443949', 'cwr916', 'Ulla', 'Mcguire', '08167 352933', '4958 Consectetuer St.', 'Admissions', 'Employee', 'e00000000', '94'),
('e24444852', 'hra643', 'Illiana', 'Berry', '03764 277919', 'Ap #430-3669 Proin Street', 'Cashiers', 'Employee', 'e00000000', '85'),
('e24599267', 'jim465', 'Kirsten', 'Hurst', '07442 828413', '6996 In Ave', 'Cashiers', 'Employee', 'e00000000', '96'),
('e24762298', 'vmn144', 'Keiko', 'Charles', '02191 947781', '481-875 In Road', 'Cashiers', 'Employee', 'e00000000', '76'),
('e25584577', 'geu759', 'Justina', 'Bright', '05599 010498', 'Ap #430-7435 Varius Avenue', 'Cashiers', 'Employee', 'e00000000', '90'),
('e26235218', 'lmk748', 'Ian', 'Bell', '09593 724071', '6231 Ligula Road', 'Financial Aid', 'Employee', 'e00000000', '76'),
('e27498586', 'gpf965', 'Galena', 'Gonzalez', '(184) 867-642', '757 Cras Road', 'Cashiers', 'Employee', 'e00000000', '81'),
('e27683982', 'pbl264', 'Miriam', 'Ferguson', '01766 836609', '5441 Lacus Rd.', 'Cashiers', 'Employee', 'e00000000', '87'),
('e28319141', 'yud132', 'Davis', 'Park', '(343) 364-249', '146-7469 Sodales Street', 'Admissions', 'Employee', 'e00000000', '94'),
('e28913232', 'hgv717', 'Kiayada', 'Howard', '04659 553631', 'Ap #406-5293 Sed Road', 'Cashiers', 'Employee', 'e00000000', '85'),
('e29372555', 'eaw937', 'Hasad', 'Obrien', '(593) 498-541', '4315 Dui Ave', 'Cashiers', 'Employee', 'e00000000', '78'),
('e29374191', 'hgl591', 'Uma', 'Everett', '04317 591147', 'P.O. Box 952, 6994 Eleifend St.', 'Cashiers', 'Employee', 'e00000000', '98'),
('e29422978', 'dvl165', 'Noelle', 'Beck', '(166) 692-711', '2668 Sem Avenue', 'Cashiers', 'Employee', 'e00000000', '98'),
('e31135288', 'cyf379', 'Prescott', 'Mays', '04901 727627', '516-7775 Non, St.', 'Cashiers', 'Employee', 'e00000000', '86'),
('e32813382', 'feo733', 'Drake', 'Barrera', '(265) 608-876', 'Ap #275-8674 Metus Avenue', 'Cashiers', 'Employee', 'e00000000', '83'),
('e34298798', 'tvw753', 'Audra', 'Weiss', '(723) 797-956', '6876 Sed Av.', 'Cashiers', 'Employee', 'e00000000', '75'),
('e35252537', 'mvg258', 'Vivien', 'Trevino', '(579) 832-793', '425-5673 Sagittis. Av.', 'Cashiers', 'Employee', 'e00000000', '95'),
('e35285715', 'fxl925', 'Clementine', 'Blake', '(780) 546-426', 'P.O. Box 679, 2582 Ipsum Road', 'Financial Aid', 'Employee', 'e00000000', '93'),
('e35469629', 'wxj691', 'Sarah', 'Best', '09328 759968', '1550 Sed St.', 'Cashiers', 'Employee', 'e00000000', '95'),
('e36656496', 'xdi351', 'Elmo', 'Giles', '(249) 150-047', '3764 Lorem Road', 'Cashiers', 'Employee', 'e00000000', '82'),
('e36967253', 'lhb696', 'Sylvester', 'Walls', '08043 103717', 'P.O. Box 434, 9367 Eget, St.', 'Admissions', 'Employee', 'e00000000', '80'),
('e38339469', 'fjz413', 'Ainsley', 'Dalton', '08155 663381', 'Ap #252-720 Odio Ave', 'Financial Aid', 'Employee', 'e00000000', '99'),
('e38354864', 'ttt487', 'Madaline', 'Hines', '(259) 361-184', 'Ap #377-4250 Eu Av.', 'Financial Aid', 'Employee', 'e00000000', '98'),
('e38718958', 'hxr864', 'Ivor', 'Matthews', '03231 712884', '3937 Convallis Avenue', 'Cashiers', 'Employee', 'e00000000', '94'),
('e41554242', 'eec991', 'Teagan', 'Haney', '(471) 224-832', 'P.O. Box 906, 6115 Morbi Av.', 'Financial Aid', 'Employee', 'e00000000', '80'),
('e42995534', 'hfl491', 'Jackson', 'Grimes', '(563) 242-029', '861-6872 Pharetra St.', 'Financial Aid', 'Employee', 'e00000000', '87'),
('e46553524', 'mhd472', 'Hector', 'Conley', '03516 059882', 'P.O. Box 959, 8451 Fringilla. Road', 'Financial Aid', 'Employee', 'e00000000', '90'),
('e47589918', 'oiv823', 'Ruby', 'Butler', '(431) 828-778', '979-7419 Mattis Street', 'Cashiers', 'Employee', 'e00000000', '92'),
('e47789812', 'drz545', 'Cora', 'Weaver', '(506) 976-807', '953-9516 Arcu Avenue', 'Cashiers', 'Employee', 'e00000000', '88'),
('e48157483', 'hcr647', 'TaShya', 'Marks', '(834) 767-062', 'P.O. Box 620, 1573 Lectus Rd.', 'Financial Aid', 'Employee', 'e00000000', '92'),
('e48863742', 'acs563', 'Martina', 'Sargent', '(902) 637-072', '2878 Vel, Rd.', 'Cashiers', 'Employee', 'e00000000', '95');



-- --------------------------------------------------------

--
-- Table structure for table `records`
--

CREATE TABLE IF NOT EXISTS `records` (
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
(100, 1, 7, 7, 3, 3, 1, 7, 1, 7, 1, 3, 1, 1, 7, 1, 3, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `request`
--

CREATE TABLE IF NOT EXISTS `request` (
  `request_ID` bigint(20) unsigned NOT NULL,
  `empID` varchar(20) DEFAULT NULL,
  `request_date` date DEFAULT NULL,
  `update_date` date DEFAULT NULL,
  `admin_empID` varchar(20) DEFAULT NULL,
  `request_description` varchar(500) DEFAULT NULL,
  `is_student` tinyint(1) DEFAULT NULL,
  `status` tinyint(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `request`
--

INSERT INTO `request` (`request_ID`, `empID`, `request_date`, `update_date`, `admin_empID`, `request_description`, `is_student`, `status`) VALUES
(100, 'e11424344', '2014-12-05', '2015-04-29', 'e00000000', 'Admissions, Authorization, Records', 1, 1),
(101, 'e22672237', '2016-01-06', '2016-04-20', 'e00000000', 'Admissions, Authorization, Records', 1, 2),
(102, 'e27683982', '2015-01-10', '2015-07-05', 'e00000000', 'Admissions, Authorization, Records', 1, 2),
(103, 'e35285715', '2015-06-30', '2015-04-19', 'e00000000', 'Admissions, Authorization, Records', 1, 0),
(104, 'e47589918', '2015-02-20', '2015-05-26', 'e00000000', 'Admissions, Authorization, Records', 1, 0),
(105, 'e53499865', '2015-01-07', '2015-03-04', 'e00000000', 'Admissions, Authorization, Records', 0, 2),
(106, 'e61136933', '2015-09-10', '2015-08-18', 'e00000000', 'Admissions, Authorization, Records', 1, 0),
(107, 'e69838893', '2016-03-23', '2015-11-11', 'e00000000', 'Admissions, Authorization, Records', 0, 2),
(108, 'e78691314', '2015-01-31', '2016-04-28', 'e00000000', 'Admissions, Authorization, Records', 0, 1),
(109, 'e88323177', '2016-04-29', '2016-10-22', 'e00000000', 'Admissions, Authorization, Records', 1, 0),
(110, 'e11891417', '2015-01-24', '2015-06-27', 'e00000000', 'Admissions, Authorization, Records', 1, 2),
(111, 'e23999133', '2015-09-19', '2015-07-29', 'e00000000', 'Admissions, Authorization, Records', 1, 1),
(112, 'e28319141', '2015-08-29', '2016-06-28', 'e00000000', 'Admissions, Authorization, Records', 0, 0),
(113, 'e35469629', '2015-03-25', '2015-06-09', 'e00000000', 'Admissions, Authorization, Records', 0, 1),
(114, 'e47789812', '2015-05-28', '2014-12-08', 'e00000000', 'Admissions, Authorization, Records', 1, 2),
(115, 'e53558542', '2015-07-24', '2015-05-10', 'e00000000', 'Admissions, Authorization, Records', 0, 1),
(116, 'e62169612', '2016-03-30', '2015-04-22', 'e00000000', 'Admissions, Authorization, Records', 1, 0),
(117, 'e71327389', '2016-03-04', '2015-11-20', 'e00000000', 'Admissions, Authorization, Records', 0, 1),
(118, 'e82894949', '2015-08-29', '2016-06-02', 'e00000000', 'Admissions, Authorization, Records', 0, 2),
(119, 'e89131186', '2015-10-01', '2015-06-08', 'e00000000', 'Admissions, Authorization, Records', 0, 0),
(120, 'e12371623', '2014-12-29', '2016-05-21', 'e00000000', 'FinancialAid, Authorization, Records', 0, 2),
(121, 'e24253583', '2015-01-31', '2016-02-16', 'e00000000', 'FinancialAid, Authorization, Records', 1, 2),
(122, 'e28913232', '2016-01-02', '2015-07-03', 'e00000000', 'FinancialAid, Authorization, Records', 1, 0),
(123, 'e36656496', '2016-02-24', '2014-12-14', 'e00000000', 'FinancialAid, Authorization, Records', 0, 2),
(124, 'e48157483', '2015-01-14', '2016-10-12', 'e00000000', 'FinancialAid, Authorization, Records', 0, 1),
(125, 'e54573773', '2015-02-10', '2016-08-15', 'e00000000', 'FinancialAid, Authorization, Records', 0, 2),
(126, 'e62771432', '2014-12-02', '2016-09-26', 'e00000000', 'FinancialAid, Authorization, Records', 1, 1),
(127, 'e71786584', '2015-07-06', '2015-04-07', 'e00000000', 'FinancialAid, Authorization, Records', 1, 2),
(128, 'e83431578', '2015-03-13', '2016-02-03', 'e00000000', 'FinancialAid, Authorization, Records', 1, 1),
(129, 'e89844788', '2016-01-03', '2015-12-04', 'e00000000', 'FinancialAid, Authorization, Records', 1, 2),
(130, 'e14264482', '2016-05-26', '2016-01-07', 'e00000000', 'FinancialAid, Authorization, Records', 1, 2),
(131, 'e24443949', '2015-08-27', '2016-03-29', 'e00000000', 'FinancialAid, Authorization, Records', 0, 1),
(132, 'e29372555', '2016-06-24', '2015-09-20', 'e00000000', 'FinancialAid, Authorization, Records', 0, 2),
(133, 'e36967253', '2016-02-12', '2016-10-11', 'e00000000', 'FinancialAid, Authorization, Records', 1, 1),
(134, 'e48863742', '2014-12-09', '2014-12-16', 'e00000000', 'FinancialAid, Authorization, Records', 1, 0),
(135, 'e54756887', '2015-09-19', '2016-03-17', 'e00000000', 'FinancialAid, Authorization, Records', 0, 0),
(136, 'e63528573', '2015-12-27', '2016-04-15', 'e00000000', 'FinancialAid, Authorization, Records', 1, 2),
(137, 'e73789236', '2015-03-27', '2015-03-07', 'e00000000', 'FinancialAid, Authorization, Records', 1, 2),
(138, 'e83914137', '2016-06-26', '2016-04-05', 'e00000000', 'FinancialAid, Authorization, Records', 0, 2),
(139, 'e89873622', '2015-02-18', '2015-10-15', 'e00000000', 'FinancialAid, Authorization, Records', 0, 0),
(140, 'e14647732', '2014-12-30', '2015-12-05', 'e00000000', 'Cashiers, Authorization, Records', 0, 2),
(141, 'e24444852', '2016-07-01', '2015-09-23', 'e00000000', 'Cashiers, Authorization, Records', 1, 2),
(142, 'e29374191', '2015-01-10', '2016-10-10', 'e00000000', 'Cashiers, Authorization, Records', 1, 0),
(143, 'e38339469', '2015-04-21', '2016-05-03', 'e00000000', 'Cashiers, Authorization, Records', 1, 2),
(144, 'e49348839', '2015-12-04', '2015-03-20', 'e00000000', 'Cashiers, Authorization, Records', 1, 0),
(145, 'e54767874', '2015-12-02', '2015-09-24', 'e00000000', 'Cashiers, Authorization, Records', 0, 2),
(146, 'e65663714', '2014-12-24', '2014-12-11', 'e00000000', 'Cashiers, Authorization, Records', 0, 1),
(147, 'e74215832', '2016-09-23', '2014-12-14', 'e00000000', 'Cashiers, Authorization, Records', 0, 1),
(148, 'e84551415', '2015-10-23', '2016-02-22', 'e00000000', 'Cashiers, Authorization, Records', 0, 2),
(149, 'e92377558', '2016-07-19', '2015-03-08', 'e00000000', 'Cashiers, Authorization, Records', 0, 1),
(150, 'e16359615', '2016-08-23', '2014-11-20', 'e00000000', 'Cashiers, Authorization, Records', 1, 2),
(151, 'e24599267', '2015-06-08', '2015-02-08', 'e00000000', 'Cashiers, Authorization, Records', 1, 0),
(152, 'e29422978', '2015-08-13', '2016-07-23', 'e00000000', 'Cashiers, Authorization, Records', 1, 1),
(153, 'e38354864', '2015-06-07', '2015-11-25', 'e00000000', 'Cashiers, Authorization, Records', 0, 0),
(154, 'e49477585', '2016-10-11', '2015-01-13', 'e00000000', 'Cashiers, Authorization, Records', 1, 0),
(155, 'e54999964', '2016-08-26', '2015-02-14', 'e00000000', 'Cashiers, Authorization, Records', 0, 2),
(156, 'e68867756', '2016-07-13', '2016-01-17', 'e00000000', 'Cashiers, Authorization, Records', 1, 2),
(157, 'e75277974', '2015-05-28', '2016-05-13', 'e00000000', 'Cashiers, Authorization, Records', 1, 0),
(158, 'e84694449', '2015-10-30', '2015-11-07', 'e00000000', 'Cashiers, Authorization, Records', 1, 0),
(159, 'e95315494', '2016-03-29', '2016-08-01', 'e00000000', 'Cashiers, Authorization, Records', 1, 1),
(160, 'e16376651', '2016-09-28', '2015-05-18', 'e00000000', 'Admissions, Authorization, Records', 1, 2),
(161, 'e24762298', '2016-06-18', '2016-09-15', 'e00000000', 'Admissions, Authorization, Records', 1, 1),
(162, 'e31135288', '2014-11-29', '2014-12-21', 'e00000000', 'Admissions, Authorization, Records', 0, 0),
(163, 'e38718958', '2015-09-11', '2016-10-30', 'e00000000', 'Admissions, Authorization, Records', 1, 2),
(164, 'e49792994', '2016-01-18', '2015-04-11', 'e00000000', 'Admissions, Authorization, Records', 0, 2),
(165, 'e56984254', '2015-09-13', '2016-03-27', 'e00000000', 'Admissions, Authorization, Records', 1, 2),
(166, 'e68958854', '2015-01-14', '2015-12-10', 'e00000000', 'Admissions, Authorization, Records', 1, 0),
(167, 'e76467227', '2016-09-05', '2015-08-04', 'e00000000', 'Admissions, Authorization, Records', 0, 2),
(168, 'e85565358', '2014-12-28', '2016-03-10', 'e00000000', 'Admissions, Authorization, Records', 1, 1),
(169, 'e96414612', '2016-11-09', '2015-11-18', 'e00000000', 'Admissions, Authorization, Records', 1, 2),
(170, 'e18349748', '2016-08-08', '2015-10-13', 'e00000000', 'Admissions, Authorization, Records', 0, 2),
(171, 'e25584577', '2016-09-01', '2016-04-01', 'e00000000', 'Admissions, Authorization, Records', 1, 2),
(172, 'e32813382', '2016-09-23', '2015-06-04', 'e00000000', 'Admissions, Authorization, Records', 1, 0),
(173, 'e41554242', '2015-06-17', '2015-07-28', 'e00000000', 'Admissions, Authorization, Records', 1, 0),
(174, 'e51125647', '2015-05-08', '2015-06-08', 'e00000000', 'Admissions, Authorization, Records', 0, 0),
(175, 'e57557543', '2016-04-25', '2015-07-22', 'e00000000', 'Admissions, Authorization, Records', 0, 1),
(176, 'e69163113', '2016-09-05', '2014-11-29', 'e00000000', 'Admissions, Authorization, Records', 1, 1),
(177, 'e77691254', '2016-05-03', '2016-08-27', 'e00000000', 'Admissions, Authorization, Records', 1, 2),
(178, 'e86154169', '2016-06-14', '2014-11-24', 'e00000000', 'Admissions, Authorization, Records', 0, 2),
(179, 'e97564753', '2016-01-24', '2015-12-25', 'e00000000', 'Admissions, Authorization, Records', 1, 2),
(180, 'e19241574', '2016-09-30', '2015-01-07', 'e00000000', 'FinancialAid, Authorization, Records', 1, 0),
(181, 'e26235218', '2014-12-09', '2015-08-15', 'e00000000', 'FinancialAid, Authorization, Records', 1, 1),
(182, 'e34298798', '2016-01-16', '2015-01-09', 'e00000000', 'FinancialAid, Authorization, Records', 0, 1),
(183, 'e42995534', '2016-11-15', '2015-05-16', 'e00000000', 'FinancialAid, Authorization, Records', 1, 1),
(184, 'e52714731', '2015-02-27', '2014-11-24', 'e00000000', 'FinancialAid, Authorization, Records', 0, 0),
(185, 'e57899782', '2015-02-08', '2016-07-12', 'e00000000', 'FinancialAid, Authorization, Records', 1, 2),
(186, 'e69253713', '2015-12-26', '2016-08-05', 'e00000000', 'FinancialAid, Authorization, Records', 1, 1),
(187, 'e78554488', '2015-09-11', '2016-03-09', 'e00000000', 'FinancialAid, Authorization, Records', 1, 2),
(188, 'e87339725', '2016-11-05', '2016-10-04', 'e00000000', 'FinancialAid, Authorization, Records', 0, 1),
(189, 'e98547495', '2015-01-30', '2015-08-17', 'e00000000', 'FinancialAid, Authorization, Records', 1, 1),
(190, 'e19843177', '2016-02-08', '2016-04-11', 'e00000000', 'FinancialAid, Authorization, Records', 0, 2),
(191, 'e27498586', '2016-04-09', '2015-02-26', 'e00000000', 'FinancialAid, Authorization, Records', 0, 1),
(192, 'e35252537', '2015-01-15', '2015-10-16', 'e00000000', 'FinancialAid, Authorization, Records', 1, 2),
(193, 'e46553524', '2016-09-17', '2016-09-05', 'e00000000', 'FinancialAid, Authorization, Records', 0, 2),
(194, 'e52783685', '2014-11-30', '2016-10-18', 'e00000000', 'FinancialAid, Authorization, Records', 0, 1),
(195, 'e59454213', '2016-07-10', '2014-12-22', 'e00000000', 'FinancialAid, Authorization, Records', 1, 1),
(196, 'e69441882', '2016-10-10', '2016-04-19', 'e00000000', 'FinancialAid, Authorization, Records', 1, 2),
(197, 'e78496318', '2016-01-07', '2015-11-30', 'e00000000', 'FinancialAid, Authorization, Records', 0, 2),
(198, 'e87858345', '2016-07-28', '2016-03-11', 'e00000000', 'FinancialAid, Authorization, Records', 0, 1),
(199, 'e99669839', '2015-10-31', '2016-10-10', 'e00000000', 'FinancialAid, Authorization, Records', 1, 2);

-- --------------------------------------------------------

--
-- Stand-in structure for view `requesttypes`
--
CREATE TABLE IF NOT EXISTS `requesttypes` (
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

CREATE TABLE IF NOT EXISTS `reserved` (
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
(100, 5, 6, 7, 2, 3, 5, 6);

-- --------------------------------------------------------

--
-- Structure for view `requesttypes`
--
DROP TABLE IF EXISTS `requesttypes`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `requesttypes` AS (select `admissions`.`request_ID` AS `request_ID`,`admissions`.`all_test_score_access` AS `all_test_score_access`,`admissions`.`act` AS `act`,`admissions`.`ielts` AS `ielts`,`admissions`.`ged` AS `ged`,`admissions`.`sat` AS `sat`,`admissions`.`lsat` AS `lsat`,`admissions`.`millers` AS `millers`,`admissions`.`gre` AS `gre`,`admissions`.`mcat` AS `mcat`,`admissions`.`prax` AS `prax`,`admissions`.`gmat` AS `gmat`,`admissions`.`ap` AS `ap`,`admissions`.`pla_mu` AS `pla_mu`,`admissions`.`tofel` AS `tofel`,`admissions`.`clep` AS `clep`,`admissions`.`base` AS `base`,`cashiers`.`sf_general_inquiry` AS `sf_general_inquiry`,`cashiers`.`sf_cash_group_post` AS `sf_cash_group_post`,`financialAid`.`fa_cash` AS `fa_cash`,`financialAid`.`fa_non_financial_aid_staff` AS `fa_non_financial_aid_staff`,`records`.`basic_inquiry` AS `basic_inquiry`,`records`.`advanced_inquiry` AS `advanced_inquiry`,`records`.`3cs` AS `3cs`,`records`.`advisor_update` AS `advisor_update`,`records`.`dept_soc_update` AS `dept_soc_update`,`records`.`student_group_review` AS `student_group_review`,`records`.`service_indicators_holds` AS `service_indicators_holds`,`records`.`view_study_list` AS `view_study_list`,`records`.`registrar_enrollment` AS `registrar_enrollment`,`records`.`advisor_student_center` AS `advisor_student_center`,`records`.`class_permission` AS `class_permission`,`records`.`class_permission_view` AS `class_permission_view`,`records`.`class_roster` AS `class_roster`,`records`.`block_enrollments` AS `block_enrollments`,`records`.`report_manager` AS `report_manager`,`records`.`self_service_advisor` AS `self_service_advisor`,`records`.`fiscal_advisor` AS `fiscal_advisor`,`records`.`academic_advising_profile` AS `academic_advising_profile`,`reserved`.`immunization_view` AS `immunization_view`,`reserved`.`transfer_credit_admission` AS `transfer_credit_admission`,`reserved`.`relationships` AS `relationships`,`reserved`.`student_groups` AS `student_groups`,`reserved`.`accomodate_student_health` AS `accomodate_student_health`,`reserved`.`support_staff_registrar` AS `support_staff_registrar`,`reserved`.`advance_standing_report` AS `advance_standing_report` from ((((`admissions` join `cashiers` on((`admissions`.`request_ID` = `cashiers`.`request_ID`))) join `financialAid` on((`admissions`.`request_ID` = `financialAid`.`request_ID`))) join `records` on((`admissions`.`request_ID` = `records`.`request_ID`))) join `reserved` on((`admissions`.`request_ID` = `reserved`.`request_ID`))));

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
