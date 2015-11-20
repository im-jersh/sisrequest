-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 20, 2015 at 10:44 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `sisrequest`
--

-- --------------------------------------------------------

--
-- Table structure for table `admissions`
--

CREATE TABLE IF NOT EXISTS `admissions` (
  `request_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `all_test_score_access` tinyint(1) DEFAULT NULL,
  `act` tinyint(1) DEFAULT NULL,
  `ielts` tinyint(1) DEFAULT NULL,
  `ged` tinyint(1) DEFAULT NULL,
  `sat` tinyint(1) DEFAULT NULL,
  `lsat` tinyint(1) DEFAULT NULL,
  `millers` tinyint(1) DEFAULT NULL,
  `gre` tinyint(1) DEFAULT NULL,
  `mcat` tinyint(1) DEFAULT NULL,
  `prax` tinyint(1) DEFAULT NULL,
  `gmat` tinyint(1) DEFAULT NULL,
  `ap` tinyint(1) DEFAULT NULL,
  `pla_mu` tinyint(1) DEFAULT NULL,
  `tofel` tinyint(1) DEFAULT NULL,
  `clep` tinyint(1) DEFAULT NULL,
  `base` tinyint(1) DEFAULT NULL,
  `access_description` varchar(50) DEFAULT NULL,
  UNIQUE KEY `request_ID` (`request_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=150 ;

--
-- Dumping data for table `admissions`
--

INSERT INTO `admissions` (`request_ID`, `all_test_score_access`, `act`, `ielts`, `ged`, `sat`, `lsat`, `millers`, `gre`, `mcat`, `prax`, `gmat`, `ap`, `pla_mu`, `tofel`, `clep`, `base`, `access_description`) VALUES
(100, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(101, 0, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1, 1, 1, NULL),
(102, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(103, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, NULL),
(104, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 1, 1, NULL),
(105, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, NULL),
(106, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(107, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, NULL),
(108, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(109, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(110, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, NULL),
(111, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(112, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(113, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, NULL),
(114, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, NULL),
(115, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(116, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(117, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(118, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(119, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(120, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(121, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(122, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(123, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(124, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(125, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(126, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(127, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(128, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(129, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(130, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(131, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(132, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(133, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(134, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(135, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(136, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(137, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(138, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(139, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(140, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(141, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(142, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(143, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(144, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(145, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(146, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(147, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(148, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(149, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `auth`
--

CREATE TABLE IF NOT EXISTS `auth` (
  `request_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `employee_sig` tinyint(1) DEFAULT NULL,
  `dept_head_sig` tinyint(1) DEFAULT NULL,
  `dean_sig` tinyint(1) DEFAULT NULL,
  `access_description` varchar(50) DEFAULT NULL,
  UNIQUE KEY `request_ID` (`request_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=150 ;

--
-- Dumping data for table `auth`
--

INSERT INTO `auth` (`request_ID`, `employee_sig`, `dept_head_sig`, `dean_sig`, `access_description`) VALUES
(100, 1, 1, 1, NULL),
(101, 1, 0, 0, NULL),
(102, 1, 1, 0, NULL),
(103, 1, 0, 1, NULL),
(104, 1, 0, 0, NULL),
(105, 1, 1, 1, NULL),
(106, 1, 1, 1, NULL),
(107, 1, 0, 0, NULL),
(108, 0, 0, 0, NULL),
(109, 0, 1, 0, NULL),
(110, 1, 0, 1, NULL),
(111, 0, 1, 1, NULL),
(112, 1, 1, 1, NULL),
(113, 1, 0, 1, NULL),
(114, 1, 1, 0, NULL),
(115, 0, 0, 0, NULL),
(116, 1, 1, 1, NULL),
(117, 0, 1, 1, NULL),
(118, 1, 1, 1, NULL),
(119, 1, 1, 1, NULL),
(120, 1, 1, 1, NULL),
(121, 1, 1, 0, NULL),
(122, 1, 0, 1, NULL),
(123, 1, 0, 0, NULL),
(124, 1, 1, 1, NULL),
(125, 1, 0, 1, NULL),
(126, 1, 1, 0, NULL),
(127, 1, 1, 1, NULL),
(128, 1, 1, 0, NULL),
(129, 1, 0, 1, NULL),
(130, 1, 0, 0, NULL),
(131, 1, 1, 1, NULL),
(132, 0, 1, 1, NULL),
(133, 1, 1, 1, NULL),
(134, 1, 1, 1, NULL),
(135, 1, 1, 1, NULL),
(136, 1, 1, 1, NULL),
(137, 1, 1, 1, NULL),
(138, 1, 1, 1, NULL),
(139, 1, 0, 1, NULL),
(140, 1, 1, 1, NULL),
(141, 1, 1, 0, NULL),
(142, 1, 1, 1, NULL),
(143, 1, 1, 1, NULL),
(144, 1, 1, 1, NULL),
(145, 1, 1, 1, NULL),
(146, 1, 1, 1, NULL),
(147, 1, 1, 1, NULL),
(148, 1, 1, 1, NULL),
(149, 1, 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cashiers`
--

CREATE TABLE IF NOT EXISTS `cashiers` (
  `request_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `sf_general_inquiry` tinyint(1) DEFAULT NULL,
  `sf_cash_group_post` tinyint(1) DEFAULT NULL,
  `access_description` varchar(50) DEFAULT NULL,
  UNIQUE KEY `request_ID` (`request_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=150 ;

--
-- Dumping data for table `cashiers`
--

INSERT INTO `cashiers` (`request_ID`, `sf_general_inquiry`, `sf_cash_group_post`, `access_description`) VALUES
(100, 0, 2, NULL),
(101, 0, 2, NULL),
(102, 0, 2, NULL),
(103, 0, 2, NULL),
(104, 0, 2, NULL),
(105, 0, 2, NULL),
(106, 0, 2, NULL),
(107, 0, 2, NULL),
(108, 0, 2, NULL),
(109, 0, 2, NULL),
(110, 0, 2, NULL),
(111, 0, 2, NULL),
(112, 0, 2, NULL),
(113, 0, 2, NULL),
(114, 0, 2, NULL),
(115, 0, 2, NULL),
(116, 0, 2, NULL),
(117, 0, 2, NULL),
(118, 0, 2, NULL),
(119, 0, 2, NULL),
(120, 0, 2, NULL),
(121, 0, 2, NULL),
(122, 0, 2, NULL),
(123, 0, 2, NULL),
(124, 0, 2, NULL),
(125, 0, 2, NULL),
(126, 0, 2, NULL),
(127, 0, 2, NULL),
(128, 0, 2, NULL),
(129, 0, 2, NULL),
(130, 0, 2, NULL),
(131, 0, 2, NULL),
(132, 0, 2, NULL),
(133, 0, 2, NULL),
(134, 0, 2, NULL),
(135, 0, 2, NULL),
(136, 0, 2, NULL),
(137, 0, 2, NULL),
(138, 0, 2, NULL),
(139, 0, 2, NULL),
(140, 1, 2, NULL),
(141, 1, 5, NULL),
(142, 1, 3, NULL),
(143, 1, 4, NULL),
(144, 1, 5, NULL),
(145, 1, 5, NULL),
(146, 1, 5, NULL),
(147, 1, 5, NULL),
(148, 0, 2, NULL),
(149, 0, 2, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `financialaid`
--

CREATE TABLE IF NOT EXISTS `financialaid` (
  `request_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `fa_cash` tinyint(1) DEFAULT NULL,
  `fa_non_financial_aid_staff` tinyint(1) DEFAULT NULL,
  `access_description` varchar(50) DEFAULT NULL,
  UNIQUE KEY `request_ID` (`request_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=150 ;

--
-- Dumping data for table `financialaid`
--

INSERT INTO `financialaid` (`request_ID`, `fa_cash`, `fa_non_financial_aid_staff`, `access_description`) VALUES
(100, 0, 0, NULL),
(101, 0, 0, NULL),
(102, 0, 0, NULL),
(103, 0, 0, NULL),
(104, 0, 0, NULL),
(105, 0, 0, NULL),
(106, 0, 0, NULL),
(107, 0, 0, NULL),
(108, 0, 0, NULL),
(109, 0, 0, NULL),
(110, 0, 0, NULL),
(111, 0, 0, NULL),
(112, 0, 0, NULL),
(113, 0, 0, NULL),
(114, 0, 0, NULL),
(115, 0, 0, NULL),
(116, 0, 0, NULL),
(117, 0, 0, NULL),
(118, 0, 0, NULL),
(119, 0, 0, NULL),
(120, 1, 0, NULL),
(121, 1, 0, NULL),
(122, 1, 0, NULL),
(123, 1, 0, NULL),
(124, 1, 0, NULL),
(125, 1, 0, NULL),
(126, 0, 1, NULL),
(127, 0, 1, NULL),
(128, 0, 1, NULL),
(129, 0, 1, NULL),
(130, 1, 1, NULL),
(131, 1, 1, NULL),
(132, 1, 1, NULL),
(133, 1, 1, NULL),
(134, 1, 0, NULL),
(135, 1, 0, NULL),
(136, 0, 1, NULL),
(137, 0, 1, NULL),
(138, 1, 1, NULL),
(139, 1, 1, NULL),
(140, 0, 0, NULL),
(141, 0, 0, NULL),
(142, 0, 0, NULL),
(143, 0, 0, NULL),
(144, 0, 0, NULL),
(145, 0, 0, NULL),
(146, 0, 0, NULL),
(147, 0, 0, NULL),
(148, 0, 0, NULL),
(149, 0, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `pawprint` varchar(6) NOT NULL DEFAULT '',
  `password` char(40) DEFAULT NULL,
  `admin_empID` varchar(9) DEFAULT NULL,
  `sis_authority` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`pawprint`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`pawprint`, `password`, `admin_empID`, `sis_authority`) VALUES
('admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'e00000000', 0),
('bdfd63', '8cb2237d0679ca88db6464eac60da96345513964', 'e33816985', NULL),
('cde9d5', '8cb2237d0679ca88db6464eac60da96345513964', 'e36386656', NULL),
('dec5x8', '8cb2237d0679ca88db6464eac60da96345513964', 'e64533764', NULL),
('drkgf8', '8cb2237d0679ca88db6464eac60da96345513964', 'e55461992', NULL),
('jrocnc', '8cb2237d0679ca88db6464eac60da96345513964', 'e63872988', NULL),
('jtr4bd', '8cb2237d0679ca88db6464eac60da96345513964', 'e35233484', NULL),
('sisadm', '2e63ac25b05a429031c5afe7f55a1367bd8215e3', 'e11111111', 1);

-- --------------------------------------------------------

--
-- Table structure for table `person`
--

CREATE TABLE IF NOT EXISTS `person` (
  `empID` varchar(9) NOT NULL DEFAULT '',
  `pawprint` varchar(6) DEFAULT NULL,
  `fName` varchar(25) DEFAULT NULL,
  `lName` varchar(25) DEFAULT NULL,
  `phone_number` varchar(13) DEFAULT NULL,
  `campus_address` varchar(50) DEFAULT NULL,
  `department` varchar(35) DEFAULT NULL,
  `title` varchar(35) DEFAULT NULL,
  `admin_empID` varchar(9) DEFAULT NULL,
  `ferpa_score` varchar(3) DEFAULT NULL,
  `sis_authority` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`empID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `person`
--

INSERT INTO `person` (`empID`, `pawprint`, `fName`, `lName`, `phone_number`, `campus_address`, `department`, `title`, `admin_empID`, `ferpa_score`, `sis_authority`) VALUES
('e11424344', 'dnm857', 'Sybil', 'Snyder', '(205) 102-563', '7116 Lacus St.', 'Admissions', 'Employee', 'e00000000', '85', 0),
('e11891417', 'isc539', 'Azalia', 'Gallagher', '(418) 238-052', '527-3953 Et, Street', 'Admissions', 'Employee', 'e00000000', '100', 0),
('e12371623', 'jvz147', 'Desirae', 'Nolan', '(187) 561-156', 'Ap #945-9092 Dui. Av.', 'Financial Aid', 'Employee', 'e00000000', '80', 0),
('e14264482', 'tps778', 'Isaiah', 'Harding', '02300 006726', 'Ap #330-5612 Nonummy St.', 'Cashiers', 'Employee', 'e00000000', '78', 0),
('e14647732', 'zgf432', 'Nola', 'Young', '(471) 967-922', 'Ap #572-5910 Molestie St.', 'Cashiers', 'Employee', 'e00000000', '78', 0),
('e16359615', 'sqa353', 'Kelsie', 'Hernandez', '09183 211343', '347-7057 Massa. Rd.', 'Cashiers', 'Employee', 'e00000000', '83', 0),
('e16376651', 'nsy533', 'Constance', 'Mccall', '(306) 588-882', 'P.O. Box 733, 8689 Phasellus St.', 'Admissions', 'Employee', 'e00000000', '88', 0),
('e18349748', 'jmx631', 'Shaine', 'Wiggins', '(543) 551-262', 'P.O. Box 825, 345 Eget Rd.', 'Financial Aid', 'Employee', 'e00000000', '76', 0),
('e19241574', 'kkq446', 'Stephanie', 'Burton', '(562) 707-441', 'Ap #656-6581 Urna Avenue', 'Financial Aid', 'Employee', 'e00000000', '87', 0),
('e19843177', 'fpf383', 'Christen', 'Taylor', '(416) 896-634', 'P.O. Box 214, 1780 Nulla St.', 'Cashiers', 'Employee', 'e00000000', '82', 0),
('e22672237', 'vel743', 'Elliott', 'Villarreal', '(313) 197-261', '442-2950 Ac, Road', 'Financial Aid', 'Employee', 'e00000000', '78', 0),
('e23999133', 'lgb424', 'Alice', 'Valentine', '(887) 724-672', 'Ap #334-5879 Egestas. Road', 'Admissions', 'Employee', 'e00000000', '95', 0),
('e24253583', 'fup191', 'Grady', 'Hanson', '(437) 527-524', 'P.O. Box 404, 5228 Accumsan Ave', 'Admissions', 'Employee', 'e00000000', '100', 0),
('e24443949', 'cwr916', 'Ulla', 'Mcguire', '08167 352933', '4958 Consectetuer St.', 'Admissions', 'Employee', 'e00000000', '94', 0),
('e24444852', 'hra643', 'Illiana', 'Berry', '03764 277919', 'Ap #430-3669 Proin Street', 'Cashiers', 'Employee', 'e00000000', '85', 0),
('e24599267', 'jim465', 'Kirsten', 'Hurst', '07442 828413', '6996 In Ave', 'Cashiers', 'Employee', 'e00000000', '96', 0),
('e24762298', 'vmn144', 'Keiko', 'Charles', '02191 947781', '481-875 In Road', 'Cashiers', 'Employee', 'e00000000', '76', 0),
('e25584577', 'geu759', 'Justina', 'Bright', '05599 010498', 'Ap #430-7435 Varius Avenue', 'Cashiers', 'Employee', 'e00000000', '90', 0),
('e26235218', 'lmk748', 'Ian', 'Bell', '09593 724071', '6231 Ligula Road', 'Financial Aid', 'Employee', 'e00000000', '76', 0),
('e27498586', 'gpf965', 'Galena', 'Gonzalez', '(184) 867-642', '757 Cras Road', 'Cashiers', 'Employee', 'e00000000', '81', 0),
('e27683982', 'pbl264', 'Miriam', 'Ferguson', '01766 836609', '5441 Lacus Rd.', 'Cashiers', 'Employee', 'e00000000', '87', 0),
('e28319141', 'yud132', 'Davis', 'Park', '(343) 364-249', '146-7469 Sodales Street', 'Admissions', 'Employee', 'e00000000', '94', 0),
('e28913232', 'hgv717', 'Kiayada', 'Howard', '04659 553631', 'Ap #406-5293 Sed Road', 'Cashiers', 'Employee', 'e00000000', '85', 0),
('e29372555', 'eaw937', 'Hasad', 'Obrien', '(593) 498-541', '4315 Dui Ave', 'Cashiers', 'Employee', 'e00000000', '78', 0),
('e29374191', 'hgl591', 'Uma', 'Everett', '04317 591147', 'P.O. Box 952, 6994 Eleifend St.', 'Cashiers', 'Employee', 'e00000000', '98', 0),
('e29422978', 'dvl165', 'Noelle', 'Beck', '(166) 692-711', '2668 Sem Avenue', 'Cashiers', 'Employee', 'e00000000', '98', 0),
('e31135288', 'cyf379', 'Prescott', 'Mays', '04901 727627', '516-7775 Non, St.', 'Cashiers', 'Employee', 'e00000000', '86', 0),
('e32813382', 'feo733', 'Drake', 'Barrera', '(265) 608-876', 'Ap #275-8674 Metus Avenue', 'Cashiers', 'Employee', 'e00000000', '83', 0),
('e34298798', 'tvw753', 'Audra', 'Weiss', '(723) 797-956', '6876 Sed Av.', 'Cashiers', 'Employee', 'e00000000', '75', 0),
('e35252537', 'mvg258', 'Vivien', 'Trevino', '(579) 832-793', '425-5673 Sagittis. Av.', 'Cashiers', 'Employee', 'e00000000', '95', 0),
('e35285715', 'fxl925', 'Clementine', 'Blake', '(780) 546-426', 'P.O. Box 679, 2582 Ipsum Road', 'Financial Aid', 'Employee', 'e00000000', '93', 0),
('e35469629', 'wxj691', 'Sarah', 'Best', '09328 759968', '1550 Sed St.', 'Cashiers', 'Employee', 'e00000000', '95', 0),
('e36656496', 'xdi351', 'Elmo', 'Giles', '(249) 150-047', '3764 Lorem Road', 'Cashiers', 'Employee', 'e00000000', '82', 0),
('e36967253', 'lhb696', 'Sylvester', 'Walls', '08043 103717', 'P.O. Box 434, 9367 Eget, St.', 'Admissions', 'Employee', 'e00000000', '80', 0),
('e38339469', 'fjz413', 'Ainsley', 'Dalton', '08155 663381', 'Ap #252-720 Odio Ave', 'Financial Aid', 'Employee', 'e00000000', '99', 0),
('e38354864', 'ttt487', 'Madaline', 'Hines', '(259) 361-184', 'Ap #377-4250 Eu Av.', 'Financial Aid', 'Employee', 'e00000000', '98', 0),
('e38718958', 'hxr864', 'Ivor', 'Matthews', '03231 712884', '3937 Convallis Avenue', 'Cashiers', 'Employee', 'e00000000', '94', 0),
('e41554242', 'eec991', 'Teagan', 'Haney', '(471) 224-832', 'P.O. Box 906, 6115 Morbi Av.', 'Financial Aid', 'Employee', 'e00000000', '80', 0),
('e42995534', 'hfl491', 'Jackson', 'Grimes', '(563) 242-029', '861-6872 Pharetra St.', 'Financial Aid', 'Employee', 'e00000000', '87', 0),
('e46553524', 'mhd472', 'Hector', 'Conley', '03516 059882', 'P.O. Box 959, 8451 Fringilla. Road', 'Financial Aid', 'Employee', 'e00000000', '90', 0),
('e47589918', 'oiv823', 'Ruby', 'Butler', '(431) 828-778', '979-7419 Mattis Street', 'Cashiers', 'Employee', 'e00000000', '92', 0),
('e47789812', 'drz545', 'Cora', 'Weaver', '(506) 976-807', '953-9516 Arcu Avenue', 'Cashiers', 'Employee', 'e00000000', '88', 0),
('e48157483', 'hcr647', 'TaShya', 'Marks', '(834) 767-062', 'P.O. Box 620, 1573 Lectus Rd.', 'Financial Aid', 'Employee', 'e00000000', '92', 0),
('e48863742', 'acs563', 'Martina', 'Sargent', '(902) 637-072', '2878 Vel, Rd.', 'Cashiers', 'Employee', 'e00000000', '95', 0),
('e49348839', 'eov359', 'Chancellor', 'Kim', '(750) 505-716', 'P.O. Box 468, 239 Dapibus Avenue', 'Cashiers', 'Employee', 'e00000000', '76', 0),
('e49477585', 'dhh494', 'Octavia', 'Cleveland', '(579) 389-218', 'Ap #730-4449 Leo. St.', 'Admissions', 'Employee', 'e00000000', '94', 0),
('e49792994', 'pgf724', 'Pandora', 'Lowe', '(226) 744-119', 'P.O. Box 143, 2017 Dapibus Ave', 'Admissions', 'Employee', 'e00000000', '77', 0),
('e51125647', 'mcq374', 'Zahir', 'Hughes', '(438) 415-334', '375-6724 Lectus. Avenue', 'Admissions', 'Employee', 'e00000000', '96', 0),
('e52714731', 'vkn997', 'Nolan', 'Wall', '(204) 398-022', 'P.O. Box 798, 6346 Cras Av.', 'Admissions', 'Employee', 'e00000000', '94', 0),
('e52783685', 'syh847', 'Imogene', 'Petersen', '(760) 554-455', '121-1028 Sodales Street', 'Financial Aid', 'Employee', 'e00000000', '100', 0),
('e53499865', 'bjp962', 'Aquila', 'Berg', '(803) 440-203', '505-160 Odio Street', 'Admissions', 'Employee', 'e00000000', '82', 0),
('e53558542', 'xem419', 'Bo', 'Bright', '(247) 680-510', 'P.O. Box 831, 7234 Tincidunt St.', 'Admissions', 'Employee', 'e00000000', '91', 0),
('e54573773', 'ucp348', 'Cara', 'Potts', '04043 655980', '103-5980 Arcu St.', 'Financial Aid', 'Employee', 'e00000000', '98', 0),
('e54756887', 'zqr385', 'Brett', 'Mccarthy', '06794 098342', 'Ap #494-397 Sapien Rd.', 'Admissions', 'Employee', 'e00000000', '93', 0),
('e54767874', 'qnk623', 'Ethan', 'Collins', '(819) 417-563', '2854 Malesuada Avenue', 'Admissions', 'Employee', 'e00000000', '75', 0),
('e54999964', 'dca196', 'Bradley', 'Mccall', '(596) 760-277', 'Ap #627-8130 Gravida St.', 'Admissions', 'Employee', 'e00000000', '82', 0),
('e56984254', 'pnm872', 'Noah', 'Wolfe', '(563) 174-996', 'P.O. Box 475, 5077 Mollis Ave', 'Cashiers', 'Employee', 'e00000000', '82', 0),
('e57557543', 'mte223', 'Karen', 'Peck', '04585 445650', '592-8457 Dolor. Rd.', 'Admissions', 'Employee', 'e00000000', '92', 0),
('e57899782', 'htk992', 'Charlotte', 'Barrera', '(289) 478-398', 'Ap #669-6916 A Av.', 'Financial Aid', 'Employee', 'e00000000', '86', 0),
('e59454213', 'zqq935', 'Nicole', 'Greene', '(579) 485-210', '755-3340 Cras Street', 'Cashiers', 'Employee', 'e00000000', '96', 0),
('e61136933', 'azx792', 'Noah', 'Hartman', '01321 178158', 'Ap #145-1319 Vulputate Avenue', 'Cashiers', 'Employee', 'e00000000', '94', 0),
('e62169612', 'hka926', 'Cullen', 'Conrad', '(390) 918-577', 'Ap #775-7622 Facilisis. St.', 'Admissions', 'Employee', 'e00000000', '75', 0),
('e62771432', 'sum511', 'Simone', 'Rogers', '05517 599681', 'Ap #788-1092 Rhoncus. Ave', 'Financial Aid', 'Employee', 'e00000000', '76', 0),
('e63528573', 'hrd498', 'Adrian', 'Trevino', '(635) 389-271', 'Ap #498-4457 Libero Street', 'Admissions', 'Employee', 'e00000000', '79', 0),
('e65663714', 'thd692', 'Magee', 'Suarez', '(438) 986-018', '915-5101 Nisi Ave', 'Cashiers', 'Employee', 'e00000000', '84', 0),
('e68867756', 'vsj518', 'Quinn', 'Nunez', '(807) 595-005', 'P.O. Box 395, 4489 Sed Road', 'Financial Aid', 'Employee', 'e00000000', '96', 0),
('e68958854', 'jri676', 'Audra', 'Ellis', '06879 022549', '570-3673 Dolor. Ave', 'Admissions', 'Employee', 'e00000000', '84', 0),
('e69163113', 'ejd625', 'Upton', 'Moses', '(613) 902-062', 'P.O. Box 519, 5675 Dis Avenue', 'Admissions', 'Employee', 'e00000000', '87', 0),
('e69253713', 'ilx873', 'Kirk', 'Boyer', '(226) 662-178', '4241 In, Rd.', 'Cashiers', 'Employee', 'e00000000', '87', 0),
('e69441882', 'vao622', 'Giacomo', 'Pate', '(343) 961-437', '292-9730 In St.', 'Admissions', 'Employee', 'e00000000', '90', 0),
('e69838893', 'lba736', 'Brennan', 'Ross', '(461) 849-439', '304-5916 Tortor, Av.', 'Financial Aid', 'Employee', 'e00000000', '77', 0),
('e71327389', 'bmk591', 'Freya', 'Curry', '06101 074629', '509-4881 Egestas Rd.', 'Financial Aid', 'Employee', 'e00000000', '84', 0),
('e71786584', 'bhx724', 'Yoshio', 'Kidd', '(108) 529-606', 'Ap #472-6080 Lectus Rd.', 'Admissions', 'Employee', 'e00000000', '97', 0),
('e73789236', 'lno649', 'Petra', 'Wade', '05579 102650', '444-974 Luctus Avenue', 'Admissions', 'Employee', 'e00000000', '94', 0),
('e74215832', 'gtw929', 'Hedy', 'Curry', '04611 334733', 'P.O. Box 201, 5427 In St.', 'Financial Aid', 'Employee', 'e00000000', '86', 0),
('e75277974', 'pvj932', 'Neil', 'Hanson', '(414) 539-764', 'P.O. Box 909, 6769 Phasellus St.', 'Admissions', 'Employee', 'e00000000', '89', 0),
('e76467227', 'dsf555', 'Colby', 'Vinson', '(851) 895-614', '138 Interdum. Ave', 'Financial Aid', 'Employee', 'e00000000', '87', 0),
('e77691254', 'lrq992', 'Hoyt', 'Perry', '(397) 913-892', 'P.O. Box 508, 1048 Diam. Road', 'Financial Aid', 'Employee', 'e00000000', '86', 0),
('e78496318', 'qcn462', 'Katell', 'Chen', '(514) 246-071', '9808 Eget Road', 'Financial Aid', 'Employee', 'e00000000', '99', 0),
('e78554488', 'fqd425', 'Sopoline', 'Vincent', '(613) 160-860', 'P.O. Box 257, 4457 Ullamcorper. Avenue', 'Financial Aid', 'Employee', 'e00000000', '85', 0),
('e78691314', 'hki631', 'Cassady', 'Velasquez', '(431) 652-072', '264-418 Integer St.', 'Financial Aid', 'Employee', 'e00000000', '100', 0),
('e82894949', 'jnf687', 'Dacey', 'Hayden', '(408) 366-571', 'P.O. Box 532, 6605 A, Ave', 'Financial Aid', 'Employee', 'e00000000', '79', 0),
('e83431578', 'nom939', 'Mason', 'Long', '(855) 234-196', '2833 Justo. Rd.', 'Admissions', 'Employee', 'e00000000', '85', 0),
('e83914137', 'ayn761', 'Brianna', 'Rodriquez', '(578) 344-979', 'P.O. Box 422, 7646 Penatibus Street', 'Cashiers', 'Employee', 'e00000000', '76', 0),
('e84551415', 'ayv452', 'Stella', 'Petersen', '02125 673327', 'Ap #801-2307 Cras Av.', 'Financial Aid', 'Employee', 'e00000000', '97', 0),
('e84694449', 'znp229', 'Anika', 'Wise', '04445 692196', '1378 Justo. Av.', 'Financial Aid', 'Employee', 'e00000000', '99', 0),
('e85565358', 'zsj382', 'Kylee', 'Acosta', '00961 790716', '800-9366 Commodo Av.', 'Admissions', 'Employee', 'e00000000', '82', 0),
('e86154169', 'bmw949', 'Laura', 'Mcintyre', '01190 153932', 'P.O. Box 861, 6835 Sit Rd.', 'Cashiers', 'Employee', 'e00000000', '83', 0),
('e87339725', 'xiy815', 'Warren', 'Preston', '(905) 536-122', 'Ap #484-5815 Libero Ave', 'Cashiers', 'Employee', 'e00000000', '93', 0),
('e87858345', 'lib398', 'Vivien', 'Pruitt', '06007 529582', 'P.O. Box 331, 2622 Vel Street', 'Financial Aid', 'Employee', 'e00000000', '100', 0),
('e88323177', 'gbn299', 'Nigel', 'Larson', '01621 130870', 'Ap #820-7090 Libero. Road', 'Financial Aid', 'Employee', 'e00000000', '82', 0),
('e89131186', 'nqb215', 'Isaac', 'Mathews', '(805) 429-945', '901-4473 Consectetuer Ave', 'Admissions', 'Employee', 'e00000000', '78', 0),
('e89844788', 'cos859', 'Nero', 'Singleton', '(804) 392-629', 'P.O. Box 844, 2267 Eu Road', 'Financial Aid', 'Employee', 'e00000000', '97', 0),
('e89873622', 'fbs251', 'Zorita', 'Santos', '(905) 778-691', 'Ap #364-4316 Urna. Road', 'Admissions', 'Employee', 'e00000000', '100', 0),
('e92377558', 'zhs287', 'Declan', 'Irwin', '(450) 625-095', 'Ap #972-2227 Ac St.', 'Cashiers', 'Employee', 'e00000000', '79', 0),
('e95315494', 'kyf937', 'Kane', 'Kaufman', '(416) 945-396', '783 Tempus St.', 'Cashiers', 'Employee', 'e00000000', '95', 0),
('e96414612', 'ucy833', 'Neville', 'Reese', '03682 123698', '4959 Bibendum Rd.', 'Financial Aid', 'Employee', 'e00000000', '88', 0),
('e97564753', 'lxx318', 'Karyn', 'Burton', '(438) 564-026', '1919 Orci Road', 'Financial Aid', 'Employee', 'e00000000', '78', 0),
('e98547495', 'cpv228', 'Daria', 'Kelly', '(827) 282-111', 'Ap #219-8312 Suspendisse Rd.', 'Admissions', 'Employee', 'e00000000', '80', 0),
('e99669839', 'rsp181', 'Brynn', 'Hopper', '(900) 880-670', 'Ap #739-301 Orci. Rd.', 'Admissions', 'Employee', 'e00000000', '83', 0);

-- --------------------------------------------------------

--
-- Table structure for table `records`
--

CREATE TABLE IF NOT EXISTS `records` (
  `request_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `basic_inquiry` tinyint(1) DEFAULT NULL,
  `advanced_inquiry` tinyint(1) DEFAULT NULL,
  `3cs` tinyint(1) DEFAULT NULL,
  `advisor_update` tinyint(1) DEFAULT NULL,
  `dept_soc_update` tinyint(1) DEFAULT NULL,
  `student_group_review` tinyint(1) DEFAULT NULL,
  `service_indicators_holds` tinyint(1) DEFAULT NULL,
  `view_study_list` tinyint(1) DEFAULT NULL,
  `registrar_enrollment` tinyint(1) DEFAULT NULL,
  `advisor_student_center` tinyint(1) DEFAULT NULL,
  `class_permission` tinyint(1) DEFAULT NULL,
  `class_permission_view` tinyint(1) DEFAULT NULL,
  `class_roster` tinyint(1) DEFAULT NULL,
  `block_enrollments` tinyint(1) DEFAULT NULL,
  `report_manager` tinyint(1) DEFAULT NULL,
  `self_service_advisor` tinyint(1) DEFAULT NULL,
  `fiscal_advisor` tinyint(1) DEFAULT NULL,
  `academic_advising_profile` tinyint(1) DEFAULT NULL,
  `access_description` varchar(50) DEFAULT NULL,
  UNIQUE KEY `request_ID` (`request_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=150 ;

--
-- Dumping data for table `records`
--

INSERT INTO `records` (`request_ID`, `basic_inquiry`, `advanced_inquiry`, `3cs`, `advisor_update`, `dept_soc_update`, `student_group_review`, `service_indicators_holds`, `view_study_list`, `registrar_enrollment`, `advisor_student_center`, `class_permission`, `class_permission_view`, `class_roster`, `block_enrollments`, `report_manager`, `self_service_advisor`, `fiscal_advisor`, `academic_advising_profile`, `access_description`) VALUES
(100, 1, 7, 4, 3, 2, 7, 0, 1, 5, 0, 2, 0, 1, 7, 1, 3, 1, 3, NULL),
(101, 0, 6, 5, 2, 3, 4, 1, 0, 6, 1, 3, 1, 0, 6, 0, 2, 0, 2, NULL),
(102, 1, 7, 4, 3, 2, 7, 0, 1, 5, 0, 2, 0, 1, 7, 1, 3, 1, 3, NULL),
(103, 0, 6, 5, 2, 3, 4, 1, 0, 6, 1, 3, 1, 0, 6, 0, 2, 0, 2, NULL),
(104, 1, 7, 4, 3, 2, 7, 0, 1, 5, 0, 2, 0, 1, 7, 1, 3, 1, 3, NULL),
(105, 0, 6, 5, 2, 3, 4, 1, 0, 6, 1, 3, 1, 0, 6, 0, 2, 0, 2, NULL),
(106, 1, 7, 4, 3, 2, 7, 0, 1, 5, 0, 2, 0, 1, 7, 1, 3, 1, 3, NULL),
(107, 0, 6, 5, 2, 3, 4, 1, 0, 6, 1, 3, 1, 0, 6, 0, 2, 0, 2, NULL),
(108, 1, 7, 4, 3, 2, 7, 0, 1, 5, 0, 2, 0, 1, 7, 1, 3, 1, 3, NULL),
(109, 1, 7, 4, 3, 2, 7, 0, 1, 5, 0, 2, 0, 1, 7, 1, 3, 1, 3, NULL),
(110, 0, 6, 5, 2, 3, 4, 1, 0, 6, 1, 3, 1, 0, 6, 0, 2, 0, 2, NULL),
(111, 1, 7, 4, 3, 2, 7, 0, 1, 5, 0, 2, 0, 1, 7, 1, 3, 1, 3, NULL),
(112, 0, 6, 5, 2, 3, 4, 1, 0, 6, 1, 3, 1, 0, 6, 0, 2, 0, 2, NULL),
(113, 1, 7, 4, 3, 2, 7, 0, 1, 5, 0, 2, 0, 1, 7, 1, 3, 1, 3, NULL),
(114, 0, 6, 5, 2, 3, 4, 1, 0, 6, 1, 3, 1, 0, 6, 0, 2, 0, 2, NULL),
(115, 1, 7, 4, 3, 2, 7, 0, 1, 5, 0, 2, 0, 1, 7, 1, 3, 1, 3, NULL),
(116, 0, 6, 5, 2, 3, 4, 1, 0, 6, 1, 3, 1, 0, 6, 0, 2, 0, 2, NULL),
(117, 1, 7, 4, 3, 2, 7, 0, 1, 5, 0, 2, 0, 1, 7, 1, 3, 1, 3, NULL),
(118, 0, 6, 5, 2, 3, 4, 1, 0, 6, 1, 3, 1, 0, 6, 0, 2, 0, 2, NULL),
(119, 1, 7, 4, 3, 2, 7, 0, 1, 5, 0, 2, 0, 1, 7, 1, 3, 1, 3, NULL),
(120, 1, 7, 4, 3, 2, 7, 0, 1, 5, 0, 2, 0, 1, 7, 1, 3, 1, 3, NULL),
(121, 0, 6, 5, 2, 3, 4, 1, 0, 6, 1, 3, 1, 0, 6, 0, 2, 0, 2, NULL),
(122, 1, 5, 6, 3, 2, 5, 0, 1, 4, 0, 2, 0, 1, 5, 1, 3, 1, 3, NULL),
(123, 1, 4, 7, 3, 2, 6, 0, 1, 7, 0, 2, 0, 1, 4, 1, 3, 1, 3, NULL),
(124, 1, 7, 4, 3, 2, 7, 0, 1, 5, 0, 2, 0, 1, 7, 1, 3, 1, 3, NULL),
(125, 0, 6, 5, 2, 3, 4, 1, 0, 6, 1, 3, 1, 0, 6, 0, 2, 0, 2, NULL),
(126, 1, 5, 6, 3, 2, 5, 0, 1, 4, 0, 2, 0, 1, 5, 1, 3, 1, 3, NULL),
(127, 1, 4, 7, 3, 2, 6, 0, 1, 7, 0, 2, 0, 1, 4, 1, 3, 1, 3, NULL),
(128, 1, 7, 4, 3, 2, 7, 0, 1, 5, 0, 2, 0, 1, 7, 1, 3, 1, 3, NULL),
(129, 0, 6, 5, 2, 3, 4, 1, 0, 6, 1, 3, 1, 0, 6, 0, 2, 0, 2, NULL),
(130, 1, 5, 6, 3, 2, 5, 0, 1, 4, 0, 2, 0, 1, 5, 1, 3, 1, 3, NULL),
(131, 1, 4, 7, 3, 2, 6, 0, 1, 7, 0, 2, 0, 1, 4, 1, 3, 1, 3, NULL),
(132, 1, 7, 4, 3, 2, 7, 0, 1, 5, 0, 2, 0, 1, 7, 1, 3, 1, 3, NULL),
(133, 0, 6, 5, 2, 3, 4, 1, 0, 6, 1, 3, 1, 0, 6, 0, 2, 0, 2, NULL),
(134, 1, 5, 6, 3, 2, 5, 0, 1, 4, 0, 2, 0, 1, 5, 1, 3, 1, 3, NULL),
(135, 1, 4, 7, 3, 2, 6, 0, 1, 7, 0, 2, 0, 1, 4, 1, 3, 1, 3, NULL),
(136, 1, 7, 4, 3, 2, 7, 0, 1, 5, 0, 2, 0, 1, 7, 1, 3, 1, 3, NULL),
(137, 0, 6, 5, 2, 3, 4, 1, 0, 6, 1, 3, 1, 0, 6, 0, 2, 0, 2, NULL),
(138, 1, 5, 6, 3, 2, 5, 0, 1, 4, 0, 2, 0, 1, 5, 1, 3, 1, 3, NULL),
(139, 1, 4, 7, 3, 2, 6, 0, 1, 7, 0, 2, 0, 1, 4, 1, 3, 1, 3, NULL),
(140, 1, 7, 4, 3, 2, 7, 0, 1, 5, 0, 2, 0, 1, 7, 1, 3, 1, 3, NULL),
(141, 0, 6, 5, 2, 3, 4, 1, 0, 6, 1, 3, 1, 0, 6, 0, 2, 0, 2, NULL),
(142, 1, 5, 6, 3, 2, 5, 0, 1, 4, 0, 2, 0, 1, 5, 1, 3, 1, 3, NULL),
(143, 1, 4, 7, 3, 2, 6, 0, 1, 7, 0, 2, 0, 1, 4, 1, 3, 1, 3, NULL),
(144, 1, 7, 4, 3, 2, 7, 0, 1, 5, 0, 2, 0, 1, 7, 1, 3, 1, 3, NULL),
(145, 0, 6, 5, 2, 3, 4, 1, 0, 6, 1, 3, 1, 0, 6, 0, 2, 0, 2, NULL),
(146, 1, 5, 6, 3, 2, 5, 0, 1, 4, 0, 2, 0, 1, 5, 1, 3, 1, 3, NULL),
(147, 1, 4, 7, 3, 2, 6, 0, 1, 7, 0, 2, 0, 1, 4, 1, 3, 1, 3, NULL),
(148, 1, 7, 4, 3, 2, 7, 0, 1, 5, 0, 2, 0, 1, 7, 1, 3, 1, 3, NULL),
(149, 0, 6, 5, 2, 3, 4, 1, 0, 6, 1, 3, 1, 0, 6, 0, 2, 0, 2, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `request`
--

CREATE TABLE IF NOT EXISTS `request` (
  `request_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `empID` varchar(20) DEFAULT NULL,
  `request_date` date DEFAULT NULL,
  `update_date` date DEFAULT NULL,
  `admin_empID` varchar(20) DEFAULT NULL,
  `request_description` varchar(500) DEFAULT NULL,
  `is_student` tinyint(1) DEFAULT NULL,
  `status` tinyint(2) DEFAULT NULL,
  PRIMARY KEY (`request_ID`),
  UNIQUE KEY `request_ID` (`request_ID`),
  KEY `empID` (`empID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=200 ;

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
-- Table structure for table `reserved`
--

CREATE TABLE IF NOT EXISTS `reserved` (
  `request_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `immunization_view` tinyint(1) DEFAULT NULL,
  `transfer_credit_admission` tinyint(1) DEFAULT NULL,
  `relationships` tinyint(1) DEFAULT NULL,
  `student_groups` tinyint(1) DEFAULT NULL,
  `accomodate_student_health` tinyint(1) DEFAULT NULL,
  `support_staff_registrar` tinyint(1) DEFAULT NULL,
  `advance_standing_report` tinyint(1) DEFAULT NULL,
  `access_description` varchar(50) DEFAULT NULL,
  UNIQUE KEY `request_ID` (`request_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=150 ;

--
-- Dumping data for table `reserved`
--

INSERT INTO `reserved` (`request_ID`, `immunization_view`, `transfer_credit_admission`, `relationships`, `student_groups`, `accomodate_student_health`, `support_staff_registrar`, `advance_standing_report`, `access_description`) VALUES
(100, 2, 2, 2, 0, 0, 2, 2, NULL),
(101, 2, 2, 2, 0, 0, 2, 2, NULL),
(102, 2, 2, 2, 0, 0, 2, 2, NULL),
(103, 2, 2, 2, 0, 0, 2, 2, NULL),
(104, 2, 2, 2, 0, 0, 2, 2, NULL),
(105, 2, 2, 2, 0, 0, 2, 2, NULL),
(106, 2, 2, 2, 0, 0, 2, 2, NULL),
(107, 2, 2, 2, 0, 0, 2, 2, NULL),
(108, 2, 2, 2, 0, 0, 2, 2, NULL),
(109, 2, 2, 2, 0, 0, 2, 2, NULL),
(110, 2, 2, 2, 0, 0, 2, 2, NULL),
(111, 2, 2, 2, 0, 0, 2, 2, NULL),
(112, 2, 2, 2, 0, 0, 2, 2, NULL),
(113, 2, 2, 2, 0, 0, 2, 2, NULL),
(114, 2, 2, 2, 0, 0, 2, 2, NULL),
(115, 2, 2, 2, 0, 0, 2, 2, NULL),
(116, 2, 2, 2, 0, 0, 2, 2, NULL),
(117, 2, 2, 2, 0, 0, 2, 2, NULL),
(118, 2, 2, 2, 0, 0, 2, 2, NULL),
(119, 2, 2, 2, 0, 0, 2, 2, NULL),
(120, 2, 2, 2, 0, 0, 2, 2, NULL),
(121, 2, 2, 2, 0, 0, 2, 2, NULL),
(122, 2, 2, 2, 0, 0, 2, 2, NULL),
(123, 2, 2, 2, 0, 0, 2, 2, NULL),
(124, 2, 2, 2, 0, 0, 2, 2, NULL),
(125, 2, 2, 2, 0, 0, 2, 2, NULL),
(126, 2, 2, 2, 0, 0, 2, 2, NULL),
(127, 2, 2, 2, 0, 0, 2, 2, NULL),
(128, 2, 2, 2, 0, 0, 2, 2, NULL),
(129, 2, 2, 2, 0, 0, 2, 2, NULL),
(130, 2, 2, 2, 0, 0, 2, 2, NULL),
(131, 2, 2, 2, 0, 0, 2, 2, NULL),
(132, 2, 2, 2, 0, 0, 2, 2, NULL),
(133, 2, 2, 2, 0, 0, 2, 2, NULL),
(134, 2, 2, 2, 0, 0, 2, 2, NULL),
(135, 2, 2, 2, 0, 0, 2, 2, NULL),
(136, 2, 2, 2, 0, 0, 2, 2, NULL),
(137, 2, 2, 2, 0, 0, 2, 2, NULL),
(138, 2, 2, 2, 0, 0, 2, 2, NULL),
(139, 2, 2, 2, 0, 0, 2, 2, NULL),
(140, 2, 2, 2, 0, 0, 2, 2, NULL),
(141, 2, 2, 2, 0, 0, 2, 2, NULL),
(142, 2, 2, 2, 0, 0, 2, 2, NULL),
(143, 2, 2, 2, 0, 0, 2, 2, NULL),
(144, 2, 2, 2, 0, 0, 2, 2, NULL),
(145, 2, 2, 2, 0, 0, 2, 2, NULL),
(146, 2, 2, 2, 0, 0, 2, 2, NULL),
(147, 2, 2, 2, 0, 0, 2, 2, NULL),
(148, 2, 2, 2, 0, 0, 2, 2, NULL),
(149, 2, 2, 2, 0, 0, 2, 2, NULL);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admissions`
--
ALTER TABLE `admissions`
  ADD CONSTRAINT `admissions_ibfk_1` FOREIGN KEY (`request_ID`) REFERENCES `request` (`request_ID`);

--
-- Constraints for table `auth`
--
ALTER TABLE `auth`
  ADD CONSTRAINT `auth_ibfk_1` FOREIGN KEY (`request_ID`) REFERENCES `request` (`request_ID`);

--
-- Constraints for table `cashiers`
--
ALTER TABLE `cashiers`
  ADD CONSTRAINT `cashiers_ibfk_1` FOREIGN KEY (`request_ID`) REFERENCES `request` (`request_ID`);

--
-- Constraints for table `financialaid`
--
ALTER TABLE `financialaid`
  ADD CONSTRAINT `financialaid_ibfk_1` FOREIGN KEY (`request_ID`) REFERENCES `request` (`request_ID`);

--
-- Constraints for table `records`
--
ALTER TABLE `records`
  ADD CONSTRAINT `records_ibfk_1` FOREIGN KEY (`request_ID`) REFERENCES `request` (`request_ID`);

--
-- Constraints for table `request`
--
ALTER TABLE `request`
  ADD CONSTRAINT `request_ibfk_1` FOREIGN KEY (`empID`) REFERENCES `person` (`empID`);

--
-- Constraints for table `reserved`
--
ALTER TABLE `reserved`
  ADD CONSTRAINT `reserved_ibfk_1` FOREIGN KEY (`request_ID`) REFERENCES `request` (`request_ID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
