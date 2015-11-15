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

INSERT INTO `sisrequest`.`request` (`request_ID`, `empID`, `request_date`, `update_date`, `admin_empID`, `request_description`, `is_student`, `status`) VALUES ('1010101010', 'e54756887', '2015-11-09', '2015-11-09', 'e00000000', NULL, '0', '0');
INSERT INTO `sisrequest`.`request` (`request_ID`, `empID`, `request_date`, `update_date`, `admin_empID`, `request_description`, `is_student`, `status`) VALUES ('1111111111', 'e53499865', '2015-11-09', '2015-11-13', 'e00000000', NULL, '0', '1');
INSERT INTO `sisrequest`.`request` (`request_ID`, `empID`, `request_date`, `update_date`, `admin_empID`, `request_description`, `is_student`, `status`) VALUES ('0000000001', 'e24444852', '2015-11-08', '2015-11-12', 'e00000000', NULL, '1', '2');
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	


	
	