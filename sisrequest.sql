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
	ferpa_score VARCHAR(3),
	sis_authority TINYINT(1) DEFAULT NULL
);	

CREATE TABLE request (
	request_ID SERIAL,
	empID VARCHAR(20),
	request_date DATE,
	update_date DATE,
	admin_empID VARCHAR(20),
	request_description VARCHAR(500),
	is_student TINYINT(1) DEFAULT NULL,
	status TINYINT(2) DEFAULT NULL,
	PRIMARY KEY(request_ID),
	FOREIGN KEY(empID) REFERENCES person(empID)
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
	admin_empID VARCHAR(9)
);


	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	


	
	