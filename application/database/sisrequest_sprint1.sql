CREATE DATABASE IF NOT EXISTS sisrequest;
USE sisrequest;

CREATE TABLE person (
	empID VARCHAR(9),
	PRIMARY KEY(empID),
	pawprint VARCHAR(6),
	fName VARCHAR(25),
	lName VARCHAR(25),
	phone_number VARCHAR(13),
	campus_address VARCHAR(50),
	department VARCHAR(35),
	title VARCHAR(35),
	admin_empID VARCHAR(9),
	ferpa_score VARCHAR(3)
);	

CREATE TABLE request (
	request_ID SERIAL,
	PRIMARY KEY(request_ID),
	empID VARCHAR(20),
	FOREIGN KEY(empID) REFERENCES person(empID),
	request_date DATE,
	update_date DATE,
	admin_empID VARCHAR(20),
	request_description VARCHAR(500),
	is_student TINYINT(1) DEFAULT NULL,
	status TINYINT(2) DEFAULT NULL
);

CREATE TABLE cashiers (
	request_ID SERIAL,
	FOREIGN KEY(request_ID) REFERENCES request(request_ID),
	sf_general_inquiry TINYINT(1) DEFAULT NULL,
	sf_cash_group_post TINYINT(1) DEFAULT NULL,
	access_description VARCHAR(50)	
);

CREATE TABLE auth (
	request_ID SERIAL,
	FOREIGN KEY(request_ID) REFERENCES request(request_ID),
	employee_sig TINYINT(1) DEFAULT NULL,
	dept_head_sig TINYINT(1) DEFAULT NULL,
	dean_sig TINYINT(1) DEFAULT NULL,
	access_description VARCHAR(50)
);

CREATE TABLE financialAid (
	request_ID SERIAL,
	FOREIGN KEY(request_ID) REFERENCES request(request_ID),
	fa_cash TINYINT(1) DEFAULT NULL,
	fa_non_financial_aid_staff TINYINT(1) DEFAULT NULL,
	access_description VARCHAR(50)
);

CREATE TABLE admissions (
	request_ID SERIAL,
	FOREIGN KEY(request_ID) REFERENCES request(request_ID),
	all_test_score_access TINYINT(1) DEFAULT NULL,
	act TINYINT(1) DEFAULT NULL,
	ielts TINYINT(1) DEFAULT NULL,
	ged TINYINT(1) DEFAULT NULL,
	sat TINYINT(1) DEFAULT NULL,
	lsat TINYINT(1) DEFAULT NULL,
	millers TINYINT(1) DEFAULT NULL,
	gre TINYINT(1) DEFAULT NULL,
	mcat TINYINT(1) DEFAULT NULL,
	prax TINYINT(1) DEFAULT NULL,
	gmat TINYINT(1) DEFAULT NULL,
	ap TINYINT(1) DEFAULT NULL,
	pla_mu TINYINT(1) DEFAULT NULL,
	tofel TINYINT(1) DEFAULT NULL,
	clep TINYINT(1) DEFAULT NULL,
	base TINYINT(1) DEFAULT NULL,
	access_description VARCHAR(50)
);

CREATE TABLE records (
	request_ID SERIAL,
	FOREIGN KEY(request_ID) REFERENCES request(request_ID),
	basic_inquiry TINYINT(1) DEFAULT NULL,
	advanced_inquiry TINYINT(1) DEFAULT NULL,
	3cs TINYINT(1) DEFAULT NULL,
	advisor_update TINYINT(1) DEFAULT NULL,
	dept_soc_update TINYINT(1) DEFAULT NULL,
	student_group_review TINYINT(1) DEFAULT NULL,
	service_indicators_holds TINYINT(1) DEFAULT NULL,
	view_study_list TINYINT(1) DEFAULT NULL,
	registrar_enrollment TINYINT(1) DEFAULT NULL,
	advisor_student_center TINYINT(1) DEFAULT NULL,
	class_permission TINYINT(1) DEFAULT NULL,
	class_permission_view TINYINT(1) DEFAULT NULL,
	class_roster TINYINT(1) DEFAULT NULL,
	block_enrollments TINYINT(1) DEFAULT NULL,
	report_manager TINYINT(1) DEFAULT NULL,
	self_service_advisor TINYINT(1) DEFAULT NULL,
	fiscal_advisor TINYINT(1) DEFAULT NULL,
	academic_advising_profile TINYINT(1) DEFAULT NULL,
	access_description VARCHAR(50)
);

CREATE TABLE reserved (
	request_ID SERIAL,
	FOREIGN KEY(request_ID) REFERENCES request(request_ID),
	immunization_view TINYINT(1) DEFAULT NULL,
	transfer_credit_admission TINYINT(1) DEFAULT NULL,
	relationships TINYINT(1) DEFAULT NULL,
	student_groups TINYINT(1) DEFAULT NULL,
	accomodate_student_health TINYINT(1) DEFAULT NULL,
	support_staff_registrar TINYINT(1) DEFAULT NULL,
	advance_standing_report TINYINT(1) DEFAULT NULL,
	access_description VARCHAR(50)
);

CREATE TABLE login (
	pawprint VARCHAR(6),
	PRIMARY KEY(pawprint),
	password VARCHAR(20),
	admin_empID VARCHAR(9),
	sis_authority TINYINT(1) DEFAULT NULL
);

INSERT INTO person (empID,pawprint,fName,lName,phone_number,campus_address,department,title,admin_empID,ferpa_score) VALUES ("e69163113","ejd625","Upton","Moses","(613) 902-0628","P.O. Box 519, 5675 Dis Avenue","Admissions","Employee","e64533764",87),("e35469629","wxj691","Sarah","Best","09328 759968","1550 Sed St.","Cashiers","Employee","e36386656",95),("e16376651","nsy533","Constance","Mccall","(306) 588-8820","P.O. Box 733, 8689 Phasellus St.","Admissions","Employee","e35233484",88),("e62771432","sum511","Simone","Rogers","05517 599681","Ap #788-1092 Rhoncus. Ave","Financial Aid","Employee","e33816985",76),("e87339725","xiy815","Warren","Preston","(905) 536-1220","Ap #484-5815 Libero Ave","Cashiers","Employee","e29572216",93),("e42995534","hfl491","Jackson","Grimes","(563) 242-0297","861-6872 Pharetra St.","Financial Aid","Employee","e71597431",87),("e54999964","dca196","Bradley","Mccall","(596) 760-2771","Ap #627-8130 Gravida St.","Admissions","Employee","e52569497",82),("e48157483","hcr647","TaShya","Marks","(834) 767-0620","P.O. Box 620, 1573 Lectus Rd.","Financial Aid","Employee","e51265227",92),("e16359615","sqa353","Kelsie","Hernandez","09183 211343","347-7057 Massa. Rd.","Cashiers","Employee","e84384583",83),("e53499865","bjp962","Aquila","Berg","(803) 440-2038","505-160 Odio Street","Admissions","Employee","e00000000",82);
INSERT INTO person (empID,pawprint,fName,lName,phone_number,campus_address,department,title,admin_empID,ferpa_score) VALUES ("e83957384","vsj518","Quinn","Nunez","(807) 595-0057","P.O. Box 395, 4489 Sed Road","Financial Aid","Employee","e85752991",96),("e24599267","jim465","Kirsten","Hurst","07442 828413","6996 In Ave","Cashiers","Employee","e76866466",96),("e65663714","thd692","Magee","Suarez","(438) 986-0188","915-5101 Nisi Ave","Cashiers","Employee","e99595353",84),("e41554242","eec991","Teagan","Haney","(471) 224-8323","P.O. Box 906, 6115 Morbi Av.","Financial Aid","Employee","e54949635",80),("e98547495","cpv228","Daria","Kelly","(827) 282-1112","Ap #219-8312 Suspendisse Rd.","Admissions","Employee","e59165431",80),("e78496318","qcn462","Katell","Chen","(514) 246-0714","9808 Eget Road","Financial Aid","Employee","e81612557",99),("e14647732","zgf432","Nola","Young","(471) 967-9229","Ap #572-5910 Molestie St.","Cashiers","Employee","e79932395",78),("e92377558","zhs287","Declan","Irwin","(450) 625-0957","Ap #972-2227 Ac St.","Cashiers","Employee","e65998397",79),("e78691314","hki631","Cassady","Velasquez","(431) 652-0721","264-418 Integer St.","Financial Aid","Employee","e93411249",100),("e56984254","pnm872","Noah","Wolfe","(563) 174-9962","P.O. Box 475, 5077 Mollis Ave","Cashiers","Employee","e32472442",82);
INSERT INTO person (empID,pawprint,fName,lName,phone_number,campus_address,department,title,admin_empID,ferpa_score) VALUES ("e14264482","tps778","Isaiah","Harding","02300 006726","Ap #330-5612 Nonummy St.","Cashiers","Employee","e38657266",78),("e77691254","lrq992","Hoyt","Perry","(397) 913-8922","P.O. Box 508, 1048 Diam. Road","Financial Aid","Employee","e35258759",86),("e35285715","fxl925","Clementine","Blake","(780) 546-4264","P.O. Box 679, 2582 Ipsum Road","Financial Aid","Employee","e15169669",93),("e24762298","vmn144","Keiko","Charles","02191 947781","481-875 In Road","Cashiers","Employee","e34922739",76),("e29372555","eaw937","Hasad","Obrien","(593) 498-5414","4315 Dui Ave","Cashiers","Employee","e25952753",78),("e63528573","hrd498","Adrian","Trevino","(635) 389-2715","Ap #498-4457 Libero Street","Admissions","Employee","e43331785",79),("e49792994","pgf724","Pandora","Lowe","(226) 744-1190","P.O. Box 143, 2017 Dapibus Ave","Admissions","Employee","e44988674",77),("e49348839","eov359","Chancellor","Kim","(750) 505-7169","P.O. Box 468, 239 Dapibus Avenue","Cashiers","Employee","e59931147",76),("e73789236","lno649","Petra","Wade","05579 102650","444-974 Luctus Avenue","Admissions","Employee","e61656751",94),("e88323177","gbn299","Nigel","Larson","01621 130870","Ap #820-7090 Libero. Road","Financial Aid","Employee","e00000000",82);
INSERT INTO person (empID,pawprint,fName,lName,phone_number,campus_address,department,title,admin_empID,ferpa_score) VALUES ("e31135288","cyf379","Prescott","Mays","04901 727627","516-7775 Non, St.","Cashiers","Employee","e92949859",86),("e69253713","ilx873","Kirk","Boyer","(226) 662-1783","4241 In, Rd.","Cashiers","Employee","e56731827",87),("e85565358","zsj382","Kylee","Acosta","00961 790716","800-9366 Commodo Av.","Admissions","Employee","e89985952",82),("e76467227","dsf555","Colby","Vinson","(851) 895-6143","138 Interdum. Ave","Financial Aid","Employee","e83642894",87),("e57899782","htk992","Charlotte","Barrera","(289) 478-3980","Ap #669-6916 A Av.","Financial Aid","Employee","e45519311",86),("e57557543","mte223","Karen","Peck","04585 445650","592-8457 Dolor. Rd.","Admissions","Employee","e98656678",92),("e11891417","isc539","Azalia","Gallagher","(418) 238-0528","527-3953 Et, Street","Admissions","Employee","e93557152",100),("e59454213","zqq935","Nicole","Greene","(579) 485-2107","755-3340 Cras Street","Cashiers","Employee","e58857364",96),("e84551415","ayv452","Stella","Petersen","02125 673327","Ap #801-2307 Cras Av.","Financial Aid","Employee","e61268266",97),("e53558542","xem419","Bo","Bright","(247) 680-5103","P.O. Box 831, 7234 Tincidunt St.","Admissions","Employee","e59684221",91);
INSERT INTO person (empID,pawprint,fName,lName,phone_number,campus_address,department,title,admin_empID,ferpa_score) VALUES ("e72645338","mcq374","Zahir","Hughes","(438) 415-3349","375-6724 Lectus. Avenue","Admissions","Employee","e49263964",96),("e38339469","fjz413","Ainsley","Dalton","08155 663381","Ap #252-720 Odio Ave","Financial Aid","Employee","e58666751",99),("e46553524","mhd472","Hector","Conley","03516 059882","P.O. Box 959, 8451 Fringilla. Road","Financial Aid","Employee","e46614491",90),("e36656496","xdi351","Elmo","Giles","(249) 150-0470","3764 Lorem Road","Cashiers","Employee","e71994495",82),("e25584577","geu759","Justina","Bright","05599 010498","Ap #430-7435 Varius Avenue","Cashiers","Employee","e29953515",90),("e24253583","fup191","Grady","Hanson","(437) 527-5245","P.O. Box 404, 5228 Accumsan Ave","Admissions","Employee","e94522473",100),("e19241574","kkq446","Stephanie","Burton","(562) 707-4416","Ap #656-6581 Urna Avenue","Financial Aid","Employee","e54787676",87),("e24443949","cwr916","Ulla","Mcguire","08167 352933","4958 Consectetuer St.","Admissions","Employee","e26151648",94),("e38718958","hxr864","Ivor","Matthews","03231 712884","3937 Convallis Avenue","Cashiers","Employee","e69193284",94),("e26235218","lmk748","Ian","Bell","09593 724071","6231 Ligula Road","Financial Aid","Employee","e25873998",76);
INSERT INTO person (empID,pawprint,fName,lName,phone_number,campus_address,department,title,admin_empID,ferpa_score) VALUES ("e27683982","pbl264","Miriam","Ferguson","01766 836609","5441 Lacus Rd.","Cashiers","Employee","e97235958",87),("e34298798","tvw753","Audra","Weiss","(723) 797-9568","6876 Sed Av.","Cashiers","Employee","e45333388",75),("e29374191","hgl591","Uma","Everett","04317 591147","P.O. Box 952, 6994 Eleifend St.","Cashiers","Employee","e63922278",98),("e11424344","dnm857","Sybil","Snyder","(205) 102-5636","7116 Lacus St.","Admissions","Employee","e68636871",85),("e61136933","azx792","Noah","Hartman","01321 178158","Ap #145-1319 Vulputate Avenue","Cashiers","Employee","e23191622",94),("e28913232","hgv717","Kiayada","Howard","04659 553631","Ap #406-5293 Sed Road","Cashiers","Employee","e58412684",85),("e54767874","qnk623","Ethan","Collins","(819) 417-5631","2854 Malesuada Avenue","Admissions","Employee","e77239376",75),("e36967253","lhb696","Sylvester","Walls","08043 103717","P.O. Box 434, 9367 Eget, St.","Admissions","Employee","e27147958",80),("e83914137","ayn761","Brianna","Rodriquez","(578) 344-9798","P.O. Box 422, 7646 Penatibus Street","Cashiers","Employee","e33743752",76),("e96414612","ucy833","Neville","Reese","03682 123698","4959 Bibendum Rd.","Financial Aid","Employee","e96157613",88);
INSERT INTO person (empID,pawprint,fName,lName,phone_number,campus_address,department,title,admin_empID,ferpa_score) VALUES ("e23999133","lgb424","Alice","Valentine","(887) 724-6729","Ap #334-5879 Egestas. Road","Admissions","Employee","e89247783",95),("e12371623","jvz147","Desirae","Nolan","(187) 561-1562","Ap #945-9092 Dui. Av.","Financial Aid","Employee","e41945911",80),("e52783685","syh847","Imogene","Petersen","(760) 554-4552","121-1028 Sodales Street","Financial Aid","Employee","e96283818",100),("e71327389","bmk591","Freya","Curry","06101 074629","509-4881 Egestas Rd.","Financial Aid","Employee","e56455671",84),("e62169612","hka926","Cullen","Conrad","(390) 918-5777","Ap #775-7622 Facilisis. St.","Admissions","Employee","e67582371",75),("e68958854","jri676","Audra","Ellis","06879 022549","570-3673 Dolor. Ave","Admissions","Employee","e18384892",84),("e83431578","nom939","Mason","Long","(855) 234-1961","2833 Justo. Rd.","Admissions","Employee","e21378554",85),("e47789812","drz545","Cora","Weaver","(506) 976-8073","953-9516 Arcu Avenue","Cashiers","Employee","e69843548",88),("e22672237","vel743","Elliott","Villarreal","(313) 197-2617","442-2950 Ac, Road","Financial Aid","Employee","e19536278",78),("e54756887","zqr385","Brett","Mccarthy","06794 098342","Ap #494-397 Sapien Rd.","Admissions","Employee","e00000000",93);
INSERT INTO person (empID,pawprint,fName,lName,phone_number,campus_address,department,title,admin_empID,ferpa_score) VALUES ("e18349748","jmx631","Shaine","Wiggins","(543) 551-2623","P.O. Box 825, 345 Eget Rd.","Financial Aid","Employee","e78969278",76),("e47589918","oiv823","Ruby","Butler","(431) 828-7787","979-7419 Mattis Street","Cashiers","Employee","e51885917",92),("e69441882","vao622","Giacomo","Pate","(343) 961-4374","292-9730 In St.","Admissions","Employee","e91464196",90),("e28319141","yud132","Davis","Park","(343) 364-2493","146-7469 Sodales Street","Admissions","Employee","e91732546",94),("e71786584","bhx724","Yoshio","Kidd","(108) 529-6060","Ap #472-6080 Lectus Rd.","Admissions","Employee","e46778292",97),("e54573773","ucp348","Cara","Potts","04043 655980","103-5980 Arcu St.","Financial Aid","Employee","e24666264",98),("e86154169","bmw949","Laura","Mcintyre","01190 153932","P.O. Box 861, 6835 Sit Rd.","Cashiers","Employee","e75962287",83),("e52714731","vkn997","Nolan","Wall","(204) 398-0224","P.O. Box 798, 6346 Cras Av.","Admissions","Employee","e66797597",94),("e19843177","fpf383","Christen","Taylor","(416) 896-6340","P.O. Box 214, 1780 Nulla St.","Cashiers","Employee","e28925658",82),("e48863742","acs563","Martina","Sargent","(902) 637-0723","2878 Vel, Rd.","Cashiers","Employee","e79669389",95);
INSERT INTO person (empID,pawprint,fName,lName,phone_number,campus_address,department,title,admin_empID,ferpa_score) VALUES ("e99928447","fqd425","Sopoline","Vincent","(613) 160-8608","P.O. Box 257, 4457 Ullamcorper. Avenue","Financial Aid","Employee","e48625329",85),("e49477585","dhh494","Octavia","Cleveland","(579) 389-2186","Ap #730-4449 Leo. St.","Admissions","Employee","e84115912",94),("e69838893","lba736","Brennan","Ross","(461) 849-4395","304-5916 Tortor, Av.","Financial Aid","Employee","e71135666",77),("e95315494","kyf937","Kane","Kaufman","(416) 945-3968","783 Tempus St.","Cashiers","Employee","e56593639",95),("e89131186","nqb215","Isaac","Mathews","(805) 429-9452","901-4473 Consectetuer Ave","Admissions","Employee","e99225695",78),("e97564753","lxx318","Karyn","Burton","(438) 564-0269","1919 Orci Road","Financial Aid","Employee","e44264324",78),("e29422978","dvl165","Noelle","Beck","(166) 692-7115","2668 Sem Avenue","Cashiers","Employee","e69747732",98),("e38354864","ttt487","Madaline","Hines","(259) 361-1848","Ap #377-4250 Eu Av.","Financial Aid","Employee","e38773275",98),("e89844788","cos859","Nero","Singleton","(804) 392-6291","P.O. Box 844, 2267 Eu Road","Financial Aid","Employee","e94448484",97),("e24444852","hra643","Illiana","Berry","03764 277919","Ap #430-3669 Proin Street","Cashiers","Employee","e00000000",85);
INSERT INTO person (empID,pawprint,fName,lName,phone_number,campus_address,department,title,admin_empID,ferpa_score) VALUES ("e82894949","jnf687","Dacey","Hayden","(408) 366-5713","P.O. Box 532, 6605 A, Ave","Financial Aid","Employee","e55461992",79),("e99669839","rsp181","Brynn","Hopper","(900) 880-6701","Ap #739-301 Orci. Rd.","Admissions","Employee","e63872988",83),("e32813382","feo733","Drake","Barrera","(265) 608-8768","Ap #275-8674 Metus Avenue","Cashiers","Employee","e35515882",83),("e84694449","znp229","Anika","Wise","04445 692196","1378 Justo. Av.","Financial Aid","Employee","e79621477",99),("e27498586","gpf965","Galena","Gonzalez","(184) 867-6427","757 Cras Road","Cashiers","Employee","e83974282",81),("e89873622","fbs251","Zorita","Santos","(905) 778-6911","Ap #364-4316 Urna. Road","Admissions","Employee","e41397745",100),("e87858345","lib398","Vivien","Pruitt","06007 529582","P.O. Box 331, 2622 Vel Street","Financial Aid","Employee","e57769916",100),("e75277974","pvj932","Neil","Hanson","(414) 539-7641","P.O. Box 909, 6769 Phasellus St.","Admissions","Employee","e93913349",89),("e74215832","gtw929","Hedy","Curry","04611 334733","P.O. Box 201, 5427 In St.","Financial Aid","Employee","e69739586",86),("e35252537","mvg258","Vivien","Trevino","(579) 832-7933","425-5673 Sagittis. Av.","Cashiers","Employee","e49574162",95);


INSERT INTO login (pawprint,password,admin_empID,sis_authority) VALUES ("dec5x8","12345","e64533764", 0);
INSERT INTO login (pawprint,password,admin_empID,sis_authority) VALUES ("cde9d5","12345","e36386656", 0);
INSERT INTO login (pawprint,password,admin_empID,sis_authority) VALUES ("jtr4bd","12345","e35233484", 0);
INSERT INTO login (pawprint,password,admin_empID,sis_authority) VALUES ("bdfd63","12345","e33816985", 0);
INSERT INTO login (pawprint,password,admin_empID,sis_authority) VALUES ("drkgf8","12345","e55461992", 0);
INSERT INTO login (pawprint,password,admin_empID,sis_authority) VALUES ("jrocnc","12345","e63872988", 0);
INSERT INTO login (pawprint,password,admin_empID,sis_authority) VALUES ("admin","admin","e00000000", 0);
INSERT INTO login (pawprint,password,admin_empID,sis_authority) VALUES ("sisadmin","sisadmin","e11111111", 1);

INSERT INTO request (request_ID,empID,request_date,update_date,admin_empID,request_description,is_student,status) VALUES (100,"e11424344","2014-12-05 00:42:05","2015-04-29 05:55:51","e00000000","Admissions, Authorization, Records",1,1),(101,"e22672237","2016-01-06 09:31:28","2016-04-20 11:07:36","e00000000","Admissions, Authorization, Records",1,2),(102,"e27683982","2015-01-10 12:36:49","2015-07-05 02:54:40","e00000000","Admissions, Authorization, Records",1,2),(103,"e35285715","2015-06-30 09:42:05","2015-04-19 09:35:47","e00000000","Admissions, Authorization, Records",1,0),(104,"e47589918","2015-02-20 06:07:35","2015-05-26 04:28:27","e00000000","Admissions, Authorization, Records",1,0),(105,"e53499865","2015-01-07 17:46:20","2015-03-04 17:50:37","e00000000","Admissions, Authorization, Records",0,2),(106,"e61136933","2015-09-10 18:53:26","2015-08-18 23:42:12","e00000000","Admissions, Authorization, Records",1,0),(107,"e69838893","2016-03-23 20:20:56","2015-11-11 16:06:34","e00000000","Admissions, Authorization, Records",0,2),(108,"e78691314","2015-01-31 12:28:04","2016-04-28 08:14:44","e00000000","Admissions, Authorization, Records",0,1),(109,"e88323177","2016-04-29 10:53:51","2016-10-22 11:00:54","e00000000","Admissions, Authorization, Records",1,0);
INSERT INTO request (request_ID,empID,request_date,update_date,admin_empID,request_description,is_student,status) VALUES (110,"e11891417","2015-01-24 04:19:46","2015-06-27 06:19:54","e00000000","Admissions, Authorization, Records",1,2),(111,"e23999133","2015-09-19 19:21:52","2015-07-29 03:57:11","e00000000","Admissions, Authorization, Records",1,1),(112,"e28319141","2015-08-29 09:44:11","2016-06-28 04:29:52","e00000000","Admissions, Authorization, Records",0,0),(113,"e35469629","2015-03-25 08:25:35","2015-06-09 23:31:06","e00000000","Admissions, Authorization, Records",0,1),(114,"e47789812","2015-05-28 17:29:02","2014-12-08 17:54:26","e00000000","Admissions, Authorization, Records",1,2),(115,"e53558542","2015-07-24 16:11:08","2015-05-10 21:54:34","e00000000","Admissions, Authorization, Records",0,1),(116,"e62169612","2016-03-30 00:46:40","2015-04-22 03:33:13","e00000000","Admissions, Authorization, Records",1,0),(117,"e71327389","2016-03-04 04:17:52","2015-11-20 12:36:59","e00000000","Admissions, Authorization, Records",0,1),(118,"e82894949","2015-08-29 02:32:31","2016-06-02 13:06:35","e00000000","Admissions, Authorization, Records",0,2),(119,"e89131186","2015-10-01 06:28:45","2015-06-08 08:09:26","e00000000","Admissions, Authorization, Records",0,0);
INSERT INTO request (request_ID,empID,request_date,update_date,admin_empID,request_description,is_student,status) VALUES (120,"e12371623","2014-12-29 10:40:44","2016-05-21 06:26:56","e00000000","FinancialAid, Authorization, Records",0,2),(121,"e24253583","2015-01-31 09:50:30","2016-02-16 20:54:32","e00000000","FinancialAid, Authorization, Records",1,2),(122,"e28913232","2016-01-02 05:43:22","2015-07-03 23:29:40","e00000000","FinancialAid, Authorization, Records",1,0),(123,"e36656496","2016-02-24 16:51:41","2014-12-14 08:34:04","e00000000","FinancialAid, Authorization, Records",0,2),(124,"e48157483","2015-01-14 22:30:24","2016-10-12 01:08:58","e00000000","FinancialAid, Authorization, Records",0,1),(125,"e54573773","2015-02-10 02:45:58","2016-08-15 17:51:02","e00000000","FinancialAid, Authorization, Records",0,2),(126,"e62771432","2014-12-02 06:21:55","2016-09-26 05:21:40","e00000000","FinancialAid, Authorization, Records",1,1),(127,"e71786584","2015-07-06 18:14:39","2015-04-07 17:04:52","e00000000","FinancialAid, Authorization, Records",1,2),(128,"e83431578","2015-03-13 04:52:24","2016-02-03 10:29:37","e00000000","FinancialAid, Authorization, Records",1,1),(129,"e89844788","2016-01-03 18:08:59","2015-12-04 23:17:05","e00000000","FinancialAid, Authorization, Records",1,2);
INSERT INTO request (request_ID,empID,request_date,update_date,admin_empID,request_description,is_student,status) VALUES (130,"e14264482","2016-05-26 12:23:05","2016-01-07 16:10:28","e00000000","FinancialAid, Authorization, Records",1,2),(131,"e24443949","2015-08-27 10:54:59","2016-03-29 20:32:41","e00000000","FinancialAid, Authorization, Records",0,1),(132,"e29372555","2016-06-24 11:04:51","2015-09-20 22:29:43","e00000000","FinancialAid, Authorization, Records",0,2),(133,"e36967253","2016-02-12 14:37:19","2016-10-11 01:08:11","e00000000","FinancialAid, Authorization, Records",1,1),(134,"e48863742","2014-12-09 23:16:21","2014-12-16 13:55:15","e00000000","FinancialAid, Authorization, Records",1,0),(135,"e54756887","2015-09-19 21:36:12","2016-03-17 01:19:16","e00000000","FinancialAid, Authorization, Records",0,0),(136,"e63528573","2015-12-27 02:35:16","2016-04-15 10:40:55","e00000000","FinancialAid, Authorization, Records",1,2),(137,"e73789236","2015-03-27 08:12:46","2015-03-07 22:58:19","e00000000","FinancialAid, Authorization, Records",1,2),(138,"e83914137","2016-06-26 15:43:26","2016-04-05 16:04:58","e00000000","FinancialAid, Authorization, Records",0,2),(139,"e89873622","2015-02-18 09:58:57","2015-10-15 21:11:23","e00000000","FinancialAid, Authorization, Records",0,0);
INSERT INTO request (request_ID,empID,request_date,update_date,admin_empID,request_description,is_student,status) VALUES (140,"e14647732","2014-12-30 17:50:28","2015-12-05 03:00:52","e00000000","Cashiers, Authorization, Records",0,2),(141,"e24444852","2016-07-01 18:53:01","2015-09-23 17:42:27","e00000000","Cashiers, Authorization, Records",1,2),(142,"e29374191","2015-01-10 10:20:26","2016-10-10 16:57:47","e00000000","Cashiers, Authorization, Records",1,0),(143,"e38339469","2015-04-21 06:59:14","2016-05-03 06:11:07","e00000000","Cashiers, Authorization, Records",1,2),(144,"e49348839","2015-12-04 17:14:23","2015-03-20 19:16:01","e00000000","Cashiers, Authorization, Records",1,0),(145,"e54767874","2015-12-02 17:03:22","2015-09-24 06:19:10","e00000000","Cashiers, Authorization, Records",0,2),(146,"e65663714","2014-12-24 20:54:32","2014-12-11 14:27:52","e00000000","Cashiers, Authorization, Records",0,1),(147,"e74215832","2016-09-23 10:02:36","2014-12-14 07:18:42","e00000000","Cashiers, Authorization, Records",0,1),(148,"e84551415","2015-10-23 11:24:10","2016-02-22 08:31:01","e00000000","Cashiers, Authorization, Records",0,2),(149,"e92377558","2016-07-19 01:18:00","2015-03-08 04:15:46","e00000000","Cashiers, Authorization, Records",0,1);
INSERT INTO request (request_ID,empID,request_date,update_date,admin_empID,request_description,is_student,status) VALUES (150,"e16359615","2016-08-23 10:27:11","2014-11-20 04:58:14","e00000000","Cashiers, Authorization, Records",1,2),(151,"e24599267","2015-06-08 05:15:33","2015-02-08 21:47:03","e00000000","Cashiers, Authorization, Records",1,0),(152,"e29422978","2015-08-13 13:28:51","2016-07-23 20:34:00","e00000000","Cashiers, Authorization, Records",1,1),(153,"e38354864","2015-06-07 14:30:02","2015-11-25 02:26:06","e00000000","Cashiers, Authorization, Records",0,0),(154,"e49477585","2016-10-11 20:37:10","2015-01-13 12:03:51","e00000000","Cashiers, Authorization, Records",1,0),(155,"e54999964","2016-08-26 19:05:19","2015-02-14 10:46:06","e00000000","Cashiers, Authorization, Records",0,2),(156,"e68867756","2016-07-13 20:56:12","2016-01-17 00:39:28","e00000000","Cashiers, Authorization, Records",1,2),(157,"e75277974","2015-05-28 18:08:47","2016-05-13 08:18:57","e00000000","Cashiers, Authorization, Records",1,0),(158,"e84694449","2015-10-30 22:27:57","2015-11-07 20:33:25","e00000000","Cashiers, Authorization, Records",1,0),(159,"e95315494","2016-03-29 09:05:29","2016-08-01 10:56:40","e00000000","Cashiers, Authorization, Records",1,1);
INSERT INTO request (request_ID,empID,request_date,update_date,admin_empID,request_description,is_student,status) VALUES (160,"e16376651","2016-09-28 16:53:24","2015-05-18 21:40:29","e00000000","Admissions, Authorization, Records",1,2),(161,"e24762298","2016-06-18 05:25:03","2016-09-15 01:29:03","e00000000","Admissions, Authorization, Records",1,1),(162,"e31135288","2014-11-29 09:52:41","2014-12-21 13:07:01","e00000000","Admissions, Authorization, Records",0,0),(163,"e38718958","2015-09-11 23:48:33","2016-10-30 01:28:27","e00000000","Admissions, Authorization, Records",1,2),(164,"e49792994","2016-01-18 16:52:38","2015-04-11 04:23:41","e00000000","Admissions, Authorization, Records",0,2),(165,"e56984254","2015-09-13 11:12:09","2016-03-27 10:00:15","e00000000","Admissions, Authorization, Records",1,2),(166,"e68958854","2015-01-14 09:32:13","2015-12-10 23:57:59","e00000000","Admissions, Authorization, Records",1,0),(167,"e76467227","2016-09-05 21:40:56","2015-08-04 19:24:27","e00000000","Admissions, Authorization, Records",0,2),(168,"e85565358","2014-12-28 02:24:29","2016-03-10 10:07:04","e00000000","Admissions, Authorization, Records",1,1),(169,"e96414612","2016-11-09 17:34:07","2015-11-18 17:07:34","e00000000","Admissions, Authorization, Records",1,2);
INSERT INTO request (request_ID,empID,request_date,update_date,admin_empID,request_description,is_student,status) VALUES (170,"e18349748","2016-08-08 00:04:22","2015-10-13 00:52:27","e00000000","Admissions, Authorization, Records",0,2),(171,"e25584577","2016-09-01 00:21:54","2016-04-01 08:57:13","e00000000","Admissions, Authorization, Records",1,2),(172,"e32813382","2016-09-23 18:39:56","2015-06-04 12:48:37","e00000000","Admissions, Authorization, Records",1,0),(173,"e41554242","2015-06-17 06:20:11","2015-07-28 02:59:01","e00000000","Admissions, Authorization, Records",1,0),(174,"e51125647","2015-05-08 09:10:03","2015-06-08 01:22:23","e00000000","Admissions, Authorization, Records",0,0),(175,"e57557543","2016-04-25 10:49:02","2015-07-22 07:26:13","e00000000","Admissions, Authorization, Records",0,1),(176,"e69163113","2016-09-05 23:59:01","2014-11-29 14:11:49","e00000000","Admissions, Authorization, Records",1,1),(177,"e77691254","2016-05-03 02:12:54","2016-08-27 12:29:47","e00000000","Admissions, Authorization, Records",1,2),(178,"e86154169","2016-06-14 15:16:44","2014-11-24 00:39:09","e00000000","Admissions, Authorization, Records",0,2),(179,"e97564753","2016-01-24 00:35:25","2015-12-25 20:09:49","e00000000","Admissions, Authorization, Records",1,2);
INSERT INTO request (request_ID,empID,request_date,update_date,admin_empID,request_description,is_student,status) VALUES (180,"e19241574","2016-09-30 05:12:30","2015-01-07 02:25:43","e00000000","FinancialAid, Authorization, Records",1,0),(181,"e26235218","2014-12-09 17:18:58","2015-08-15 06:03:25","e00000000","FinancialAid, Authorization, Records",1,1),(182,"e34298798","2016-01-16 21:34:30","2015-01-09 17:53:09","e00000000","FinancialAid, Authorization, Records",0,1),(183,"e42995534","2016-11-15 03:43:18","2015-05-16 08:12:44","e00000000","FinancialAid, Authorization, Records",1,1),(184,"e52714731","2015-02-27 11:43:24","2014-11-24 01:54:34","e00000000","FinancialAid, Authorization, Records",0,0),(185,"e57899782","2015-02-08 21:14:00","2016-07-12 16:50:48","e00000000","FinancialAid, Authorization, Records",1,2),(186,"e69253713","2015-12-26 06:01:06","2016-08-05 23:14:52","e00000000","FinancialAid, Authorization, Records",1,1),(187,"e78554488","2015-09-11 15:17:17","2016-03-09 07:07:10","e00000000","FinancialAid, Authorization, Records",1,2),(188,"e87339725","2016-11-05 01:47:40","2016-10-04 02:58:01","e00000000","FinancialAid, Authorization, Records",0,1),(189,"e98547495","2015-01-30 00:07:34","2015-08-17 15:33:59","e00000000","FinancialAid, Authorization, Records",1,1);
INSERT INTO request (request_ID,empID,request_date,update_date,admin_empID,request_description,is_student,status) VALUES (190,"e19843177","2016-02-08 02:32:47","2016-04-11 19:45:41","e00000000","FinancialAid, Authorization, Records",0,2),(191,"e27498586","2016-04-09 08:48:51","2015-02-26 14:36:01","e00000000","FinancialAid, Authorization, Records",0,1),(192,"e35252537","2015-01-15 00:04:31","2015-10-16 03:34:25","e00000000","FinancialAid, Authorization, Records",1,2),(193,"e46553524","2016-09-17 00:39:43","2016-09-05 15:38:46","e00000000","FinancialAid, Authorization, Records",0,2),(194,"e52783685","2014-11-30 19:33:34","2016-10-18 16:24:33","e00000000","FinancialAid, Authorization, Records",0,1),(195,"e59454213","2016-07-10 18:15:43","2014-12-22 03:21:42","e00000000","FinancialAid, Authorization, Records",1,1),(196,"e69441882","2016-10-10 00:09:27","2016-04-19 23:08:09","e00000000","FinancialAid, Authorization, Records",1,2),(197,"e78496318","2016-01-07 04:28:14","2015-11-30 22:00:57","e00000000","FinancialAid, Authorization, Records",0,2),(198,"e87858345","2016-07-28 12:10:15","2016-03-11 00:26:16","e00000000","FinancialAid, Authorization, Records",0,1),(199,"e99669839","2015-10-31 23:58:25","2016-10-10 00:50:01","e00000000","FinancialAid, Authorization, Records",1,2);


INSERT INTO `sisrequest`.`request` (`request_ID`, `empID`, `request_date`, `update_date`, `admin_empID`, `request_description`, `is_student`, `status`) VALUES ('1010101010', 'e54756887', '2015-11-09', '2015-11-09', 'e00000000', NULL, '0', '0');
INSERT INTO `sisrequest`.`request` (`request_ID`, `empID`, `request_date`, `update_date`, `admin_empID`, `request_description`, `is_student`, `status`) VALUES ('1111111111', 'e53499865', '2015-11-09', '2015-11-13', 'e00000000', NULL, '0', '1');
INSERT INTO `sisrequest`.`request` (`request_ID`, `empID`, `request_date`, `update_date`, `admin_empID`, `request_description`, `is_student`, `status`) VALUES ('0000000001', 'e24444852', '2015-11-08', '2015-11-12', 'e00000000', NULL, '1', '2');
	
	
SELECT * FROM (SELECT * FROM person where person.admin_empID = 'e00000000') AS person LEFT JOIN request ON person.empID = request.empID;
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	


	
	