<!DOCTYPE html>
<html lang="en">
<head>
	<title>Home Page</title>
	<meta charset="utf-8"/>
	<link rel="stylesheet" href="<?php echo base_url();?>/assets/stylesheets/style.css" type="text/css">
	<link rel="stylesheet" href="<?php echo base_url();?>/assets/stylesheets/liStyle.css" type="text/css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="<?php echo base_url();?>/assets/stylesheets/styleSearch.css" type="text/css">
	<script type="text/css">
		document.addEventListener("touchstart", function(){}, true);
		.bs-example{
			margin: 10px;
		}
		
		function ChangeBackgroundColor(row) { row.style.backgroundColor = blue; }
		function RestoreBackgroundColor(row) { row.style.backgroundColor = red; }
	</script>
</head>
<body>
	<div id="site-container">
		<div id="menu">
			<div>
				<div class="nav-logo">
			


				</div>
			</div>
			<p style="color: white; text-size: 12px; margin-top: -25px; margin-bottom: 50px; margin-top: -50px;"> Security Request</p>
			<ul class="menu-list">
				<li>
					<p style="color: white;">Employees</p>
				</li>
				<li>
					<p style="color: white;">About</p>
				</li>
				<li>
					<a href="<?php echo base_url();?>/Logout" ><p style="color: white;">Logout</p> </a> 
				</li>
			</ul>
		</div>
		<div id="marquee-container">
			<div id="marquee-employees">
				
					<div id="employeeHeader">
						<div style="margin-top: -10px; margin-left: -10px;" class="tigerHead">
							<img height="117px" width="auto"  src="<?php echo base_url();?>/assets/images/tigerFinal.png">
						</div>
						<div class="employeeHeader">
							<h1  style="color:white; padding-left: 10px;"> Employees</h1>
						</div>
					</div>
					<table style="background-color: white; color: black; padding-top: -10px;">
						<tr>
							<th style="text-align: left; width: 415px; padding-left: 10px; padding-top: 10px; padding-bottom: 10px; "> 
							<!--<div style="float: right;">
								<img class="searchBut" src="C:\Users\derek\Documents\GitHub\sisrequest\assets\images\Search-button.png">
							</div>-->
								<div style="float: left; margin-right: 10px;">
									<form class="search-container" >
										<input style="padding-left: 10px;" id="search-box" type="text" class="search-box" name="q" />
										<img class="searchBut" for="search-box" src="<?php echo base_url();?>/assets/images/Search-button.png">
										<label for="search-box"><span>Employee</span></label>
									</form>
								<!--<form id="absForm" action="">
									<input id="search-box" class="search-box" name="q" style="color: black; font-size: 15px; margin-left: 5px; margin-top: 5px; width: 189px; height:24px;" type="text" value="search">
								</form>
								<img class="box" src="C:\Users\derek\Documents\GitHub\sisrequest\assets\images\box.jpg">-->
							   </div>
							
							</th>
							<th style="text-align: left; padding-left: 50px;"> Status </th>
						</tr>
						<tr onmouseover="ChangeBackgroundColor(this)" onmouseout="RestoreBackgroundColor(this)">
								<td style="color: black; background-color: #f5f5f5; padding-left: 90px; font-size: 20px;">Derek Kedigh</td>
								<td style="color:black; background-color: #f5f5f5; padding-left: 53px;">Status</td>
						</tr>
						<tr>
							<td style="color: black; background-color: #f5f5f5; padding-left: 90px;">Roger Federer</td>
							<td style="color:black; background-color: #f5f5f5; padding-left: 53px;">Status</td>
						</tr>
						<tr>
							<td style="color: black; background-color: #f5f5f5; padding-left: 90px;">Raf Nadal</td>
							<td style="color:black; background-color: #f5f5f5; padding-left: 53px;">Status</td>
						</tr>
					</table>
				
			</div>
			<div id="marquee-employee-info">
				<div class="headerBar"></div>
				<h1 style="margin-top: 40px; text-align:center;"> Derek Kedigh </h1>
				<div style="background-color:black; border-radius: 15px;">
				<ol style="padding-top: 12px;">
					<li style="padding-top: 8px; box-shadow: inset 0px 0px 0px #3e9cbf, 0px 1px 0px 0px #205c73, 0px 2px 0px #999; font-size: 20px; font-weight: bold;"> General Information</li>
					<li style="padding-top: 8px;"> Employee ID: </li>
					<li style="padding-top: 8px;"> PawPrint:</li>
					<li style="padding-top: 8px;"> Job Title:</li>
					<li style="padding-top: 8px;"> Phone Number:</li>
					<li style="padding-top: 8px;"> Campus Address:</li>
				</ol>
				<div style="width: 555px; margin-left: 15px;">
					<p style="color: white; padding-top: 8px; box-shadow: inset 0px 0px 0px #3e9cbf, 0px 1px 0px 0px #205c73, 0px 2px 0px #999; font-size: 20px; font-weight: bold;"> Access Requests</p>
				</div>
				<div style="border: 15px solid black;" class="bs-example">
					<div  class="panel-group" id="accordion">
						<div class="panel panel-default">
							<div class="panel-heading">
								<h4 class="panel-title">
									<a data-toggle="collapse" data-parent="#accordion" href="#collapseOne">Student Record Access</a>
								</h4>
							</div>
							<div id="collapseOne" class="panel-collapse collapse">
								<div  class="panel-body">
									<form style="display: inline;" action="">
										<input  type="checkbox" name="basicInquiry" value="BasicInquiry"> Basic Inquiry View
										<input style="margin-left: 5px;" type="checkbox" name="advancedInquiryv" value="AdvancedInquiryV">Advanced Inquiry View
										<input style="margin-left: 5px;" type="checkbox" name="advancedInquiryu" value="AdvancedInquiryU">Advanced Inquiry Update<br>
										<input style="margin-left: 5px;" type="checkbox" name="3csv" value="eCsV"> 3Cs View
										<input style="margin-left: 5px;" type="checkbox" name="3csu" value="eCsU"> 3Cs Update
										<input style="margin-left: 5px;" type="checkbox" name="advisorUpdate" value="AdvisorUpdate">Advisor Update
										<input style="margin-left: 5px;" type="checkbox" name="dptSocUpdate" value="BasicInquiry"> Dpt SOC Update<br>
										<input type="checkbox" name="serviceIndicatorsv" value="ServiceIndicatorsV">Service Indicators View
										<input type="checkbox" name="serviceIndicatorsu" value="ServiceIndicatorsU">Service Indicators Update
										<input style="margin-left: 5px;" type="checkbox" name="studGrpView" value="StudGrpView"> Stud Grp View<br>
										<input style="margin-left: 5px;" type="checkbox" name="viewStudyList" value="ViewStudyList">View Study List
										<input style="margin-left: 5px;" type="checkbox" name="rgstEnrollmentV" value="RgstEnrollmentV">Rgstr Enrollment View
										<input style="margin-left: 5px;" type="checkbox" name="rgstEnrollmentu" value="RgstEnrollmentU">Rgstr Enrollment Update<br>
										<input type="checkbox" name="advsrStudCenter" value="AdvsrStudCenter">Advsr Stud Center View
										<input style="margin-left: 5px;" type="checkbox" name="classPermissionu" value="ClassPermissionU">Class Permission Update
										<input style="margin-left: 5px;" type="checkbox" name="classPermissionv" value="ClassPermissionView">Class Permission View
										<input style="margin-left: 5px;" type="checkbox" name="classRoster" value="ClassRoster">Class Roster View
										<input type="checkbox" name="blockEnrollmentsv" value="BlockEnrollmentsV"> Block Enrollments View
										<input type="checkbox" name="blockEnrollmentsu" value="BlockEnrollmentsU"> Block Enrollments Update<br>
										<input style="margin-left: 5px;" type="checkbox" name="reportMgr" value="ReportMgr">Report Mgr View
										<input style="margin-left: 5px;" type="checkbox" name="selfSrvcAdvisor" value="SelfSrvcAdvisor">Self Srvc Advisor Update
										<input style="margin-left: 5px;" type="checkbox" name="fiscalOffice" value="FiscalOffice">Fiscal Office View<br>
										<input type="checkbox" name="academicAdvisingProfile" value="AcademicAdvisingProfile">Academic Advising Profile Update
									</form>
								</div>
							</div>
						</div>
						<div class="panel panel-default">
							<div class="panel-heading">
								<h4 class="panel-title">
									<a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo">Admissions Access</a>
								</h4>
							</div>
							<div id="collapseTwo" class="panel-collapse collapse">
								<div class="panel-body">
									<form style="display: inline;" action="">
										<input  type="checkbox" name="act" value="ACT"> ACT
										<input style="margin-left: 5px;" type="checkbox" name="ielts" value="IELTS">IELTS
										<input style="margin-left: 5px;" type="checkbox" name="ged" value="GED">GED
										<input style="margin-left: 5px;" type="checkbox" name="sat" value="SAT">SAT
										<input style="margin-left: 5px;" type="checkbox" name="lsat" value="LSAT">LSAT
										<input style="margin-left: 5px;" type="checkbox" name="millers" value="MILLERS">MILLERS
										<input style="margin-left: 5px;" type="checkbox" name="gre" value="GRE">GRE
										<input style="margin-left: 5px;" type="checkbox" name="mcat" value="MCAT">MCAT
										<input style="margin-left: 5px;" type="checkbox" name="prax" value="PRAX">PRAX
										<input type="checkbox" name="gmat" value="GMAT">GMAT
										<input style="margin-left: 5px;" type="checkbox" name="ap" value="AP">AP
										<input style="margin-left: 5px;" type="checkbox" name="pla-mu" value="PLA-MU">PLA-MU
										<input style="margin-left: 5px;" type="checkbox" name="tofel" value="TOFEL">TOFEL
										<input style="margin-left: 5px;" type="checkbox" name="clep" value="CLEP">CLEP
										<input style="margin-left: 5px;" type="checkbox" name="base" value="BASE">BASE
									</form>
								</div>
							</div>
						</div>
						<div class="panel panel-default">
							<div class="panel-heading">
								<h4 class="panel-title">
									<a data-toggle="collapse" data-parent="#accordion" href="#collapseThree">Student Financial(Cashiers) Access</a>
								</h4>
							</div>
							<div id="collapseThree" class="panel-collapse collapse">
								<div class="panel-body">
									<form style="display: inline;" action="">
										<input  type="checkbox" name="sfgeneralinquiry" value="SfGeneralInquiry"> SF General Inquiry
										<input style="margin-left: 5px;" type="checkbox" name="sfcashgrouppost" value="SfCashGroupPost">SF Cash Group Post
										
									</form>
								</div>
							</div>
						</div>
						<div class="panel panel-default">
							<div class="panel-heading">
								<h4 class="panel-title">
									<a data-toggle="collapse" data-parent="#accordion" href="#collapseFour">Student Aid Access</a>
								</h4>
							</div>
							<div id="collapseFour" class="panel-collapse collapse">
								<div class="panel-body">
									<form style="display: inline;" action="">
										<input  type="checkbox" name="facash" value="FaCash"> FA Cash
										<input style="margin-left: 5px;" type="checkbox" name="fanon-fincancialaidstaff" value="FaNon-financialAidStaff">FA Non-Financial Aid Staff
										
									</form>
								</div>
							</div>
						</div>
						<div class="panel panel-default">
							<div class="panel-heading">
								<h4 class="panel-title">
									<a data-toggle="collapse" data-parent="#accordion" href="#collapseFive">Reserved Access</a>
								</h4>
							</div>
							<div id="collapseFive" class="panel-collapse collapse">
								<div class="panel-body">
									<form style="display: inline;" action="">
										<input  type="checkbox" name="immunizationview" value="ImmunizationView"> Immunization View
										<input style="margin-left: 5px;" type="checkbox" name="transfercreditadmission" value="TransferCreditAdmission">Transfer Credit Admission
										<input  type="checkbox" name="relationships" value="Relationships"> Relationships
										<input style="margin-left: 5px;" type="checkbox" name="studentgroups" value="StudenGroups">Student Groups
										<input  type="checkbox" name="accomadate" value="Accomdate"> Accomadate(Student Health)
										<input style="margin-left: 5px;" type="checkbox" name="supportstaff" value="SupportStaff">Support Staff(Registar's Office)
										<input style="margin-left: 5px;" type="checkbox" name="advancestandingreport" value="AdvanceStandingReport">Advance Standing Report
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
	