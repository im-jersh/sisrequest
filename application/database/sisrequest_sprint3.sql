-- phpMyAdmin SQL Dump
-- version 4.4.10
-- http://www.phpmyadmin.net
--
-- Host: localhost:8889
-- Generation Time: Nov 19, 2015 at 11:27 PM
-- Server version: 5.5.42
-- PHP Version: 5.6.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: sisrequest
--
CREATE DATABASE IF NOT EXISTS sisrequest DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE sisrequest;

-- --------------------------------------------------------

--
-- Table structure for table admissions
--

DROP TABLE IF EXISTS admissions;
CREATE TABLE IF NOT EXISTS admissions (
  request_ID bigint(20) unsigned NOT NULL,
  all_test_score_access tinyint(1) DEFAULT NULL,
  act tinyint(1) DEFAULT NULL,
  ielts tinyint(1) DEFAULT NULL,
  ged tinyint(1) DEFAULT NULL,
  sat tinyint(1) DEFAULT NULL,
  lsat tinyint(1) DEFAULT NULL,
  millers tinyint(1) DEFAULT NULL,
  gre tinyint(1) DEFAULT NULL,
  mcat tinyint(1) DEFAULT NULL,
  prax tinyint(1) DEFAULT NULL,
  gmat tinyint(1) DEFAULT NULL,
  ap tinyint(1) DEFAULT NULL,
  pla_mu tinyint(1) DEFAULT NULL,
  tofel tinyint(1) DEFAULT NULL,
  clep tinyint(1) DEFAULT NULL,
  base tinyint(1) DEFAULT NULL,
  access_description varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table auth
--

DROP TABLE IF EXISTS auth;
CREATE TABLE IF NOT EXISTS auth (
  request_ID bigint(20) unsigned NOT NULL,
  employee_sig tinyint(1) DEFAULT NULL,
  dept_head_sig tinyint(1) DEFAULT NULL,
  dean_sig tinyint(1) DEFAULT NULL,
  access_description varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table cashiers
--

DROP TABLE IF EXISTS cashiers;
CREATE TABLE IF NOT EXISTS cashiers (
  request_ID bigint(20) unsigned NOT NULL,
  sf_general_inquiry tinyint(1) DEFAULT NULL,
  sf_cash_group_post tinyint(1) DEFAULT NULL,
  access_description varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table financialAid
--

DROP TABLE IF EXISTS financialAid;
CREATE TABLE IF NOT EXISTS financialAid (
  request_ID bigint(20) unsigned NOT NULL,
  fa_cash tinyint(1) DEFAULT NULL,
  fa_non_financial_aid_staff tinyint(1) DEFAULT NULL,
  access_description varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table login
--

DROP TABLE IF EXISTS login;
CREATE TABLE IF NOT EXISTS login (
  pawprint varchar(6) NOT NULL DEFAULT '',
  `password` varchar(20) DEFAULT NULL,
  admin_empID varchar(9) DEFAULT NULL,
  sis_authority tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table login
--

INSERT INTO login (pawprint, password, admin_empID, sis_authority) VALUES
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
-- Table structure for table person
--

DROP TABLE IF EXISTS person;
CREATE TABLE IF NOT EXISTS person (
  empID varchar(9) NOT NULL DEFAULT '',
  pawprint varchar(6) DEFAULT NULL,
  fName varchar(25) DEFAULT NULL,
  lName varchar(25) DEFAULT NULL,
  phone_number varchar(13) DEFAULT NULL,
  campus_address varchar(50) DEFAULT NULL,
  department varchar(35) DEFAULT NULL,
  title varchar(35) DEFAULT NULL,
  admin_empID varchar(9) DEFAULT NULL,
  ferpa_score varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table person
--

INSERT INTO person (empID, pawprint, fName, lName, phone_number, campus_address, department, title, admin_empID, ferpa_score) VALUES
('e11424344', 'dnm857', 'Sybil', 'Snyder', '(205) 102-563', '7116 Lacus St.', 'Athletics', 'Broadcast Engineer', 'e00000000', '85'),
('e11891417', 'isc539', 'Azalia', 'Gallagher', '(418) 238-052', '527-3953 Et, Street', 'Health Sciences', 'Assistant Professor', 'e00000000', '100'),
('e12371623', 'jvz147', 'Desirae', 'Nolan', '(187) 561-156', 'Ap #945-9092 Dui. Av.', 'Athletics', 'Employment Manager', 'e00000000', '80'),
('e14264482', 'tps778', 'Isaiah', 'Harding', '02300 006726', 'Ap #330-5612 Nonummy St.', 'Division of IT', 'Database Administrator', 'e00000000', '78'),
('e14647732', 'zgf432', 'Nola', 'Young', '(471) 967-922', 'Ap #572-5910 Molestie St.', 'Health Sciences', 'Clinical Instructor', 'e00000000', '78'),
('e16359615', 'sqa353', 'Kelsie', 'Hernandez', '09183 211343', '347-7057 Massa. Rd.', 'Public Affairs', 'Assistant Professor', 'e00000000', '83'),
('e16376651', 'nsy533', 'Constance', 'Mccall', '(306) 588-882', 'P.O. Box 733, 8689 Phasellus St.', 'Athletics', 'Athletics Liaison', 'e00000000', '88'),
('e18349748', 'jmx631', 'Shaine', 'Wiggins', '(543) 551-262', 'P.O. Box 825, 345 Eget Rd.', 'Division of IT', 'Programmer Analyst', 'e00000000', '76'),
('e19241574', 'kkq446', 'Stephanie', 'Burton', '(562) 707-441', 'Ap #656-6581 Urna Avenue', 'Health Sciences', 'Clinical Instructor', 'e00000000', '87'),
('e19843177', 'fpf383', 'Christen', 'Taylor', '(416) 896-634', 'P.O. Box 214, 1780 Nulla St.', 'Public Affairs', 'Director of Advancement', 'e00000000', '82'),
('e22672237', 'vel743', 'Elliott', 'Villarreal', '(313) 197-261', '442-2950 Ac, Road', 'Public Affairs', 'Fiscal Assistant', 'e00000000', '78'),
('e23999133', 'lgb424', 'Alice', 'Valentine', '(887) 724-672', 'Ap #334-5879 Egestas. Road', 'Division of IT', 'IT Pro', 'e00000000', '95'),
('e24253583', 'fup191', 'Grady', 'Hanson', '(437) 527-524', 'P.O. Box 404, 5228 Accumsan Ave', 'Campus Dining Services', 'Consumer Sales Associate', 'e00000000', '100'),
('e24443949', 'cwr916', 'Ulla', 'Mcguire', '08167 352933', '4958 Consectetuer St.', 'Marketing', 'Director of Marketing', 'e00000000', '94'),
('e24444852', 'hra643', 'Illiana', 'Berry', '03764 277919', 'Ap #430-3669 Proin Street', 'Communication', 'Assistant Teaching Professor', 'e00000000', '85'),
('e24599267', 'jim465', 'Kirsten', 'Hurst', '07442 828413', '6996 In Ave', 'Division of IT', 'Service Desk Employee', 'e00000000', '96'),
('e24762298', 'vmn144', 'Keiko', 'Charles', '02191 947781', '481-875 In Road', 'Athletics', 'Athletic Trainer', 'e00000000', '76'),
('e25584577', 'geu759', 'Justina', 'Bright', '05599 010498', 'Ap #430-7435 Varius Avenue', 'Campus Dining Services', 'Student Supervisor', 'e00000000', '90'),
('e26235218', 'lmk748', 'Ian', 'Bell', '09593 724071', '6231 Ligula Road', 'Communication', 'Research Analyst', 'e00000000', '76'),
('e27498586', 'gpf965', 'Galena', 'Gonzalez', '(184) 867-642', '757 Cras Road', 'Campus Dining Services', 'Accountant', 'e00000000', '81'),
('e27683982', 'pbl264', 'Miriam', 'Ferguson', '01766 836609', '5441 Lacus Rd.', 'Division of IT', 'Marketing Director', 'e00000000', '87'),
('e28319141', 'yud132', 'Davis', 'Park', '(343) 364-249', '146-7469 Sodales Street', 'Athletics', 'Assistant AD', 'e00000000', '94'),
('e28913232', 'hgv717', 'Kiayada', 'Howard', '04659 553631', 'Ap #406-5293 Sed Road', 'Campus Dining Services', 'Consumer Sales Associate', 'e00000000', '85'),
('e29372555', 'eaw937', 'Hasad', 'Obrien', '(593) 498-541', '4315 Dui Ave', 'Campus Dining Services', 'Consumer Sales Associate', 'e00000000', '78'),
('e29374191', 'hgl591', 'Uma', 'Everett', '04317 591147', 'P.O. Box 952, 6994 Eleifend St.', 'Athletics', 'Ticket Office Employee', 'e00000000', '98'),
('e29422978', 'dvl165', 'Noelle', 'Beck', '(166) 692-711', '2668 Sem Avenue', 'Health Sciences', 'Occupational Therapist', 'e00000000', '98'),
('e31135288', 'cyf379', 'Prescott', 'Mays', '04901 727627', '516-7775 Non, St.', 'Division of IT', 'Help Desk Employee', 'e00000000', '86'),
('e32813382', 'feo733', 'Drake', 'Barrera', '(265) 608-876', 'Ap #275-8674 Metus Avenue', 'Athletics', 'Athletics Director', 'e00000000', '83'),
('e34298798', 'tvw753', 'Audra', 'Weiss', '(723) 797-956', '6876 Sed Av.', 'Athletics', 'IT Pro', 'e00000000', '75'),
('e35252537', 'mvg258', 'Vivien', 'Trevino', '(579) 832-793', '425-5673 Sagittis. Av.', 'Communication', 'Director of Communication', 'e00000000', '95'),
('e35285715', 'fxl925', 'Clementine', 'Blake', '(780) 546-426', 'P.O. Box 679, 2582 Ipsum Road', 'Athletics', 'Basketball Head Coach', 'e00000000', '93'),
('e35469629', 'wxj691', 'Sarah', 'Best', '09328 759968', '1550 Sed St.', 'Division of IT', 'Service Desk Employee', 'e00000000', '95'),
('e36656496', 'xdi351', 'Elmo', 'Giles', '(249) 150-047', '3764 Lorem Road', 'Athletics', 'Executive Assistant', 'e00000000', '82'),
('e36967253', 'lhb696', 'Sylvester', 'Walls', '08043 103717', 'P.O. Box 434, 9367 Eget, St.', 'Marketing', 'Assistant Direcotr', 'e00000000', '80'),
('e38339469', 'fjz413', 'Ainsley', 'Dalton', '08155 663381', 'Ap #252-720 Odio Ave', 'Division of IT', 'Help Desk Employee', 'e00000000', '99'),
('e38354864', 'ttt487', 'Madaline', 'Hines', '(259) 361-184', 'Ap #377-4250 Eu Av.', 'Marketing', 'Adjunct Faculty', 'e00000000', '98'),
('e38718958', 'hxr864', 'Ivor', 'Matthews', '03231 712884', '3937 Convallis Avenue', 'Public Affairs', 'Policy Analyst', 'e00000000', '94'),
('e41554242', 'eec991', 'Teagan', 'Haney', '(471) 224-832', 'P.O. Box 906, 6115 Morbi Av.', 'Athletics', 'Lead Athletic Attendant', 'e00000000', '80'),
('e42995534', 'hfl491', 'Jackson', 'Grimes', '(563) 242-029', '861-6872 Pharetra St.', 'Campus Dining Services', 'IT Pro', 'e00000000', '87'),
('e46553524', 'mhd472', 'Hector', 'Conley', '03516 059882', 'P.O. Box 959, 8451 Fringilla. Road', 'Athletics', 'Ticket Office Employee', 'e00000000', '90'),
('e47589918', 'oiv823', 'Ruby', 'Butler', '(431) 828-778', '979-7419 Mattis Street', 'Athletics', 'Director of Operations', 'e00000000', '92'),
('e47789812', 'drz545', 'Cora', 'Weaver', '(506) 976-807', '953-9516 Arcu Avenue', 'Marketing', 'Professor', 'e00000000', '88'),
('e48157483', 'hcr647', 'TaShya', 'Marks', '(834) 767-062', 'P.O. Box 620, 1573 Lectus Rd.', 'Health Sciences', 'Research Assistant', 'e00000000', '92'),
('e48863742', 'acs563', 'Martina', 'Sargent', '(902) 637-072', '2878 Vel, Rd.', 'Communication', 'Professor', 'e00000000', '95'),
('e49348839', 'eov359', 'Chancellor', 'Kim', '(750) 505-716', 'P.O. Box 468, 239 Dapibus Avenue', 'Marketing', 'Office Support Assistant', 'e00000000', '76'),
('e49477585', 'dhh494', 'Octavia', 'Cleveland', '(579) 389-218', 'Ap #730-4449 Leo. St.', 'Athletics', 'Facilities Manager', 'e00000000', '94'),
('e49792994', 'pgf724', 'Pandora', 'Lowe', '(226) 744-119', 'P.O. Box 143, 2017 Dapibus Ave', 'Health Sciences', 'Professor', 'e00000000', '77'),
('e52714731', 'vkn997', 'Nolan', 'Wall', '(204) 398-022', 'P.O. Box 798, 6346 Cras Av.', 'Marketing', 'Adjunct Faculty', 'e00000000', '94'),
('e52783685', 'syh847', 'Imogene', 'Petersen', '(760) 554-455', '121-1028 Sodales Street', 'Athletics', 'Physical Trainer', 'e00000000', '100'),
('e53499865', 'bjp962', 'Aquila', 'Berg', '(803) 440-203', '505-160 Odio Street', 'Communication', 'Advisor', 'e00000000', '82'),
('e53558542', 'xem419', 'Bo', 'Bright', '(247) 680-510', 'P.O. Box 831, 7234 Tincidunt St.', 'Communication', 'IT Pro', 'e00000000', '91'),
('e54573773', 'ucp348', 'Cara', 'Potts', '04043 655980', '103-5980 Arcu St.', 'Campus Dining Services', 'Accountant', 'e00000000', '98'),
('e54756887', 'zqr385', 'Brett', 'Mccarthy', '06794 098342', 'Ap #494-397 Sapien Rd.', 'Communication', 'Visiting Assistant Professor', 'e00000000', '93'),
('e54767874', 'qnk623', 'Ethan', 'Collins', '(819) 417-563', '2854 Malesuada Avenue', 'Health Sciences', 'IT Pro', 'e00000000', '75'),
('e54999964', 'dca196', 'Bradley', 'Mccall', '(596) 760-277', 'Ap #627-8130 Gravida St.', 'Health Sciences', 'Assistant Professor', 'e00000000', '82'),
('e56984254', 'pnm872', 'Noah', 'Wolfe', '(563) 174-996', 'P.O. Box 475, 5077 Mollis Ave', 'Communication', 'Professor & Chair', 'e00000000', '82'),
('e57557543', 'mte223', 'Karen', 'Peck', '04585 445650', '592-8457 Dolor. Rd.', 'Campus Dining Services', 'Student Supervisor', 'e00000000', '92'),
('e57899782', 'htk992', 'Charlotte', 'Barrera', '(289) 478-398', 'Ap #669-6916 A Av.', 'Campus Dining Services', 'Consumer Sales Associate', 'e00000000', '86'),
('e59454213', 'zqq935', 'Nicole', 'Greene', '(579) 485-210', '755-3340 Cras Street', 'Marketing', 'Assistant Professor', 'e00000000', '96'),
('e61136933', 'azx792', 'Noah', 'Hartman', '01321 178158', 'Ap #145-1319 Vulputate Avenue', 'Campus Dining Services', 'Food Service Manager', 'e00000000', '94'),
('e62169612', 'hka926', 'Cullen', 'Conrad', '(390) 918-577', 'Ap #775-7622 Facilisis. St.', 'Campus Dining Services', 'Student Manager', 'e00000000', '75'),
('e62771432', 'sum511', 'Simone', 'Rogers', '05517 599681', 'Ap #788-1092 Rhoncus. Ave', 'Athletics', 'Athletic Attendant', 'e00000000', '76'),
('e63528573', 'hrd498', 'Adrian', 'Trevino', '(635) 389-271', 'Ap #498-4457 Libero Street', 'Campus Dining Services', 'Nutrition Informant', 'e00000000', '79'),
('e65663714', 'thd692', 'Magee', 'Suarez', '(438) 986-018', '915-5101 Nisi Ave', 'Athletics', 'Athletics Liaison', 'e00000000', '84'),
('e68958854', 'jri676', 'Audra', 'Ellis', '06879 022549', '570-3673 Dolor. Ave', 'Campus Dining Services', 'General Manager', 'e00000000', '84'),
('e69163113', 'ejd625', 'Upton', 'Moses', '(613) 902-062', 'P.O. Box 519, 5675 Dis Avenue', 'Division of IT', 'Server Administrator', 'e00000000', '87'),
('e69253713', 'ilx873', 'Kirk', 'Boyer', '(226) 662-178', '4241 In, Rd.', 'Division of IT', 'Help Desk Employee', 'e00000000', '87'),
('e69441882', 'vao622', 'Giacomo', 'Pate', '(343) 961-437', '292-9730 In St.', 'Athletics', 'Accountant', 'e00000000', '90'),
('e69838893', 'lba736', 'Brennan', 'Ross', '(461) 849-439', '304-5916 Tortor, Av.', 'Athletics', 'Director of Tennis', 'e00000000', '77'),
('e71327389', 'bmk591', 'Freya', 'Curry', '06101 074629', '509-4881 Egestas Rd.', 'Athletics', 'Assistant AD', 'e00000000', '84'),
('e71786584', 'bhx724', 'Yoshio', 'Kidd', '(108) 529-606', 'Ap #472-6080 Lectus Rd.', 'Campus Dining Services', 'Seus Chef', 'e00000000', '97'),
('e72645338', 'mcq374', 'Zahir', 'Hughes', '(438) 415-334', '375-6724 Lectus. Avenue', 'Division of IT', 'Vended Application Technician', 'e00000000', '96'),
('e73789236', 'lno649', 'Petra', 'Wade', '05579 102650', '444-974 Luctus Avenue', 'Public Affairs', 'Research Professor', 'e00000000', '94'),
('e74215832', 'gtw929', 'Hedy', 'Curry', '04611 334733', 'P.O. Box 201, 5427 In St.', 'Communication', 'Associate Professor', 'e00000000', '86'),
('e75277974', 'pvj932', 'Neil', 'Hanson', '(414) 539-764', 'P.O. Box 909, 6769 Phasellus St.', 'Marketing', 'Adjunct Faculty', 'e00000000', '89'),
('e76467227', 'dsf555', 'Colby', 'Vinson', '(851) 895-614', '138 Interdum. Ave', 'Athletics', 'Office Staff Assistant', 'e00000000', '87'),
('e77691254', 'lrq992', 'Hoyt', 'Perry', '(397) 913-892', 'P.O. Box 508, 1048 Diam. Road', 'Division of IT', 'Service Desk Employee', 'e35258759', '86'),
('e78496318', 'qcn462', 'Katell', 'Chen', '(514) 246-071', '9808 Eget Road', 'Campus Dining Services', 'Director of CDS', 'e00000000', '99'),
('e78691314', 'hki631', 'Cassady', 'Velasquez', '(431) 652-072', '264-418 Integer St.', 'Public Affairs', 'Professor Emeritus', 'e00000000', '100'),
('e82894949', 'jnf687', 'Dacey', 'Hayden', '(408) 366-571', 'P.O. Box 532, 6605 A, Ave', 'Division of IT', 'Technical Support Analyst', 'e00000000', '79'),
('e83431578', 'nom939', 'Mason', 'Long', '(855) 234-196', '2833 Justo. Rd.', 'Health Sciences', 'Business Support Specialist', 'e00000000', '85'),
('e83914137', 'ayn761', 'Brianna', 'Rodriquez', '(578) 344-979', 'P.O. Box 422, 7646 Penatibus Street', 'Public Affairs', 'Policy Analyst', 'e00000000', '76'),
('e83957384', 'vsj518', 'Quinn', 'Nunez', '(807) 595-005', 'P.O. Box 395, 4489 Sed Road', 'Division of IT', 'IT Pro', 'e00000000', '96'),
('e84551415', 'ayv452', 'Stella', 'Petersen', '02125 673327', 'Ap #801-2307 Cras Av.', 'Public Affairs', 'Dean', 'e00000000', '97'),
('e84694449', 'znp229', 'Anika', 'Wise', '04445 692196', '1378 Justo. Av.', 'Athletics', 'Account Executive', 'e00000000', '99'),
('e85565358', 'zsj382', 'Kylee', 'Acosta', '00961 790716', '800-9366 Commodo Av.', 'Athletics', 'Women''s Soccer Coach', 'e00000000', '82'),
('e86154169', 'bmw949', 'Laura', 'Mcintyre', '01190 153932', 'P.O. Box 861, 6835 Sit Rd.', 'Health Sciences', 'Academic Advisor', 'e00000000', '83'),
('e87339725', 'xiy815', 'Warren', 'Preston', '(905) 536-122', 'Ap #484-5815 Libero Ave', 'Campus Dining Services', 'Consumer Sales Associate', 'e00000000', '93'),
('e87858345', 'lib398', 'Vivien', 'Pruitt', '06007 529582', 'P.O. Box 331, 2622 Vel Street', 'Health Sciences', 'Administrative Assistant', 'e00000000', '100'),
('e88323177', 'gbn299', 'Nigel', 'Larson', '01621 130870', 'Ap #820-7090 Libero. Road', 'Communication', 'Research Analyst', 'e00000000', '82'),
('e89131186', 'nqb215', 'Isaac', 'Mathews', '(805) 429-945', '901-4473 Consectetuer Ave', 'Campus Dining Services', 'Executive Seus Chef', 'e00000000', '78'),
('e89844788', 'cos859', 'Nero', 'Singleton', '(804) 392-629', 'P.O. Box 844, 2267 Eu Road', 'Public Affairs', 'Administrative Assistant', 'e00000000', '97'),
('e89873622', 'fbs251', 'Zorita', 'Santos', '(905) 778-691', 'Ap #364-4316 Urna. Road', 'Health Sciences', 'Lab Technician', 'e00000000', '100'),
('e92377558', 'zhs287', 'Declan', 'Irwin', '(450) 625-095', 'Ap #972-2227 Ac St.', 'Marketing', 'Assistant Teaching Professor', 'e00000000', '79'),
('e95315494', 'kyf937', 'Kane', 'Kaufman', '(416) 945-396', '783 Tempus St.', 'Athletics', 'Director of Production', 'e00000000', '95'),
('e96414612', 'ucy833', 'Neville', 'Reese', '03682 123698', '4959 Bibendum Rd.', 'Communication', 'Assistant Director', 'e00000000', '88'),
('e97564753', 'lxx318', 'Karyn', 'Burton', '(438) 564-026', '1919 Orci Road', 'Health Sciences', 'Academic Advisor', 'e00000000', '78'),
('e98547495', 'cpv228', 'Daria', 'Kelly', '(827) 282-111', 'Ap #219-8312 Suspendisse Rd.', 'Consumer Sales Associate', 'Consumer Sales Associate', 'e00000000', '80'),
('e99669839', 'rsp181', 'Brynn', 'Hopper', '(900) 880-670', 'Ap #739-301 Orci. Rd.', 'Athletics', 'Athletic Liaison', 'e00000000', '83'),
('e99928447', 'fqd425', 'Sopoline', 'Vincent', '(613) 160-860', 'P.O. Box 257, 4457 Ullamcorper. Avenue', 'Division of IT', 'Account Management Specialist', 'e00000000', '85');

-- --------------------------------------------------------

--
-- Table structure for table records
--

DROP TABLE IF EXISTS records;
CREATE TABLE IF NOT EXISTS records (
  request_ID bigint(20) unsigned NOT NULL,
  basic_inquiry tinyint(1) DEFAULT NULL,
  advanced_inquiry tinyint(1) DEFAULT NULL,
  3cs tinyint(1) DEFAULT NULL,
  advisor_update tinyint(1) DEFAULT NULL,
  dept_soc_update tinyint(1) DEFAULT NULL,
  student_group_review tinyint(1) DEFAULT NULL,
  service_indicators_holds tinyint(1) DEFAULT NULL,
  view_study_list tinyint(1) DEFAULT NULL,
  registrar_enrollment tinyint(1) DEFAULT NULL,
  advisor_student_center tinyint(1) DEFAULT NULL,
  class_permission tinyint(1) DEFAULT NULL,
  class_permission_view tinyint(1) DEFAULT NULL,
  class_roster tinyint(1) DEFAULT NULL,
  block_enrollments tinyint(1) DEFAULT NULL,
  report_manager tinyint(1) DEFAULT NULL,
  self_service_advisor tinyint(1) DEFAULT NULL,
  fiscal_advisor tinyint(1) DEFAULT NULL,
  academic_advising_profile tinyint(1) DEFAULT NULL,
  access_description varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table request
--

DROP TABLE IF EXISTS request;
CREATE TABLE IF NOT EXISTS request (
  request_ID bigint(20) unsigned NOT NULL,
  empID varchar(20) DEFAULT NULL,
  request_date date DEFAULT NULL,
  update_date date DEFAULT NULL,
  admin_empID varchar(20) DEFAULT NULL,
  request_description varchar(500) DEFAULT NULL,
  is_student tinyint(1) DEFAULT NULL,
  `status` tinyint(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table request
--

INSERT INTO request (request_ID, empID, request_date, update_date, admin_empID, request_description, is_student, status) VALUES
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
(129, 'e89844788', '2016-01-03', '2015-12-04', 'e00000000', 'FinancialAid, Authorization, Records', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table reserved
--

DROP TABLE IF EXISTS reserved;
CREATE TABLE IF NOT EXISTS reserved (
  request_ID bigint(20) unsigned NOT NULL,
  immunization_view tinyint(1) DEFAULT NULL,
  transfer_credit_admission tinyint(1) DEFAULT NULL,
  relationships tinyint(1) DEFAULT NULL,
  student_groups tinyint(1) DEFAULT NULL,
  accomodate_student_health tinyint(1) DEFAULT NULL,
  support_staff_registrar tinyint(1) DEFAULT NULL,
  advance_standing_report tinyint(1) DEFAULT NULL,
  access_description varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table admissions
--
ALTER TABLE admissions
  ADD UNIQUE KEY request_ID (request_ID);

--
-- Indexes for table auth
--
ALTER TABLE auth
  ADD UNIQUE KEY request_ID (request_ID);

--
-- Indexes for table cashiers
--
ALTER TABLE cashiers
  ADD UNIQUE KEY request_ID (request_ID);

--
-- Indexes for table financialAid
--
ALTER TABLE financialAid
  ADD UNIQUE KEY request_ID (request_ID);

--
-- Indexes for table login
--
ALTER TABLE login
  ADD PRIMARY KEY (pawprint);

--
-- Indexes for table person
--
ALTER TABLE person
  ADD PRIMARY KEY (empID);

--
-- Indexes for table records
--
ALTER TABLE records
  ADD UNIQUE KEY request_ID (request_ID);

--
-- Indexes for table request
--
ALTER TABLE request
  ADD PRIMARY KEY (request_ID),
  ADD UNIQUE KEY request_ID (request_ID),
  ADD KEY empID (empID);

--
-- Indexes for table reserved
--
ALTER TABLE reserved
  ADD UNIQUE KEY request_ID (request_ID);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table admissions
--
ALTER TABLE admissions
  MODIFY request_ID bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table auth
--
ALTER TABLE auth
  MODIFY request_ID bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table cashiers
--
ALTER TABLE cashiers
  MODIFY request_ID bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table financialAid
--
ALTER TABLE financialAid
  MODIFY request_ID bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table records
--
ALTER TABLE records
  MODIFY request_ID bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table request
--
ALTER TABLE request
  MODIFY request_ID bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table reserved
--
ALTER TABLE reserved
  MODIFY request_ID bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table admissions
--
ALTER TABLE admissions
  ADD CONSTRAINT admissions_ibfk_1 FOREIGN KEY (request_ID) REFERENCES request (request_ID);

--
-- Constraints for table auth
--
ALTER TABLE auth
  ADD CONSTRAINT auth_ibfk_1 FOREIGN KEY (request_ID) REFERENCES request (request_ID);

--
-- Constraints for table cashiers
--
ALTER TABLE cashiers
  ADD CONSTRAINT cashiers_ibfk_1 FOREIGN KEY (request_ID) REFERENCES request (request_ID);

--
-- Constraints for table financialAid
--
ALTER TABLE financialAid
  ADD CONSTRAINT financialaid_ibfk_1 FOREIGN KEY (request_ID) REFERENCES request (request_ID);

--
-- Constraints for table records
--
ALTER TABLE records
  ADD CONSTRAINT records_ibfk_1 FOREIGN KEY (request_ID) REFERENCES request (request_ID);

--
-- Constraints for table request
--
ALTER TABLE request
  ADD CONSTRAINT request_ibfk_1 FOREIGN KEY (empID) REFERENCES person (empID);

--
-- Constraints for table reserved
--
ALTER TABLE reserved
  ADD CONSTRAINT reserved_ibfk_1 FOREIGN KEY (request_ID) REFERENCES request (request_ID);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
