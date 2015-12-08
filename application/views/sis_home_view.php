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
    <script src="<?php echo base_url();?>/assets/javascripts/selectDepartment.js"></script>
    <script src="<?php echo base_url();?>/assets/javascripts/reviewRequest.js"></script>
    <script src="<?php echo base_url();?>/assets/javascripts/search.js"></script>
    <script src="<?php echo base_url();?>/assets/javascripts/updateRequestStatus.js"></script>
    <link rel="stylesheet" href="<?php echo base_url();?>/assets/stylesheets/styleSearch.css" type="text/css">
</head>
<body>
<div id="site-container">
    <div id="menu">
        <div>
            <div class="nav-logo">

            </div>
        </div>
        <p"> Security Request</p>
        <ul class="menu-list">

            <li>
                <a href="<?php echo base_url('Landing_page'); ?>"><p class="nav-text active"><?php echo $navigationItem; ?></p></a>
            </li>
            <li>
                <a href="<?php echo base_url('Documentation'); ?>" ><p class="nav-text"">Documentation</p></a>
            </li>
            <li>
                <a href="<?php echo base_url('Logout'); ?>" ><p class="nav-text"">Logout</p></a>
            </li>

        </ul>
    </div>
    <div id="marquee-container">
        <div id="marquee-employees" class="column-left">
            <div id="fixedSearchArea" class="infoHeader">
                <div id="search-bar">
                    <form class="search-container" role="form">
                        <div class="form-group has-feedback has-feedback-left">
                            <input id="search-box" type="text" class="search-box form-control" name="q" placeholder="Search Employees"/>
                            <i id="searchMag" class="form-control-feedback glyphicon glyphicon-search"></i>
                        </div>
                    </form>
                </div>
                <div id="listLabels">
                    <div class="listLabelRow">
                        <div class="inner-col-left">
                            <label>Department</label>
                        </div>
                        <div class="inner-col-right">
                            <label>Pending</label>
                        </div>
                    </div>
                </div>
            </div>

            <div id="empList">
                <table id="data-list">
                    <!-- print out the generic list of data  -->
                    <?php
                    foreach ($printListData as $row) {
                        echo $row;
                    };
                    ?>
                </table>
            </div>

        </div>

        <div id="marquee-employee-info" class="column-right">


            <!-- The hidden form for the employee -->
            <?php echo form_open('landing_page/validateForm', array('name'=>'requestForEmployee', 'id'=>'SISrequestForm', 'role'=>'form', 'style'=>'display:none')); ?>
            <div id="formContainer">
                <div class="infoHeader">
                    <div id="empName">
                        <h1 id="employeeName">Employee</h1>
                    </div>
                    <input type="hidden" id="formPawprint" name="pawprint" value="">
                    <input type="hidden" id="formRequestID" name="request_ID" value="">
                    <input type="hidden" id="empIDForm" name="empID" value="">
                    <div id="generalInfoHeader" class="formHeader">
                        <h4>General Information</h4>
                    </div>
                </div>
                <div id="generalInfoSection">
                    <div class="singleRowTwoColumn topSection">
                        <div class="inner-col-left"><h5>Employee ID</h5><p id="empID"></p></div>
                        <div class="inner-col-right"><h5>PawPrint/SSO</h5><p id="pawprint"></p></div>
                        <div class="inner-col-right"><h5>FERPA Score</h5><p id="ferpa_score"></p></div>
                    </div>
                    <div class="singleRowTwoColumn middleSection form-group">
                        <div class="inner-col-left">
                            <h5>Job Title *</h5>
                            <input type="text" id="title" name="title" placeholder="Job Title" class="form-control"/>
                        </div>
                        <div class="inner-col-right">
                            <h5>Phone Number *</h5>
                            <input type="text" id="phone_number" name="phone_number" placeholder="(555) 555-5555" class="form-control"/>
                        </div>
                    </div>
                    <div id="campusAddress" class="singleRowTwoColumn bottomSection">
                        <div id="addressContainer">
                            <h5>Campus Address *</h5>
                            <div class="inner-col-left form-group">
                                <input type="text" id="campus_address" name="campus_address" placeholder="Street" class="form-control"/>
                                <br>
                                <input type="text" id="campus_address_apt" name="campus_address_apt" placeholder="Apartment" class="form-control"/>
                            </div>
                            <div class="inner-col-right form-group">
                                <input type="text" id="campus_address_city" name="campus_address_city" placeholder="City" class="form-control"/>
                                <br>
                                <?php include('states_and_provinces.php') ?>
                                <br>
                                <input type="text" id="campus_address_zipcode" name="campus_address_zipcode" placeholder="Zipcode" class="form-control"/>
                            </div>
                        </div>
                    </div>
                    <div id="requestInfo" class="bottomSection singleRowSingleColumn">
                        <div id="descriptionSection" class="form-group">
                            <h5>Description *</h5>
                            <textarea id="requestDescription" class="form-control" name="descriptionTextbox" placeholder="Please describe in 500 words or less the type of access needed (i.e. view student name, address, rosters, etc.). Please be specific."></textarea>
                        </div>
                        <div id="careerCheckboxes" class="checkbox">
                            <h5>Select the academic career(s). Please check all that apply. *</h5>
                            <label for="UGRD"><input name="UGRD" type="checkbox" id="UGRD" value="1">UGRD</label>
                            <label for="GRAD"><input name="GRAD" type="checkbox" id="GRAD" value="1">GRAD</label>
                            <label for="MED"><input name="MED" type="checkbox" id="MED" value="1">MED</label>
                            <label for="VET_MED"><input name="VET_MED" type="checkbox" id="VET_MED" value="1">VET MED</label>
                            <label for="LAW"><input name="LAW" type="checkbox" id="LAW" value="1">LAW</label>
                        </div>
                    </div>
                </div>


                <div id="requestsHeader" class="formHeader">
                    <h4>Access Requests</h4>
                </div>
                <div class="panel-group" id="accordion">
                    <div class="panel">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a class="accordion-toggle collapsed" data-toggle="collapse" href="#collapseOne">
                                    Student Records Access
                                </a>
                            </h4>
                        </div>
                        <div id="collapseOne" class="panel-collapse collapse">
                            <div class="panel-body">
                                <div id="studentRecordsAccess" class="panelBodyContainer">
                                    <table class="panelBodyTable">
                                        <tr>
                                            <th class="col1">Role</th>
                                            <th class="col2">Role Description</th>
                                            <th class="col3">View</th>
                                            <th class="col4">Update</th>
                                        </tr>
                                        <tr>
                                            <td class="col1">Basic Inquiry</td>
                                            <td class="col2">Access to basic bio demo and student data: names, address, FERPA directory data, photos, term info, degree information, programs, honors and awards, service indicators (holds) and previous schools.</td>
                                            <td class="col3"><input type="checkbox" name="basic_inquiry_view" value="1"></td>
                                            <td class="col4"></td>
                                        </tr>
                                        <tr>
                                            <td class="col1">Advanced Inquiry</td>
                                            <td class="col2">Includes Basic Inquiry access. Additionally includes relations with institution, citizenship, visa, decedant data, student enrollment, gpa, term history, 3C's, advisors, student groups</td>
                                            <td class="col3"><input type="checkbox" name="advanced_inquiry_view" value="1"></td>
                                            <td class="col4"><input type="checkbox" name="advanced_inquiry_update" value="1"></td>
                                        </tr>
                                        <tr>
                                            <td class="col1">3Cs</td>
                                            <td class="col2">Checklists, Comments, Communications</td>
                                            <td class="col3"><input type="checkbox" name="3cs_view" value="1"></td>
                                            <td class="col4"><input type="checkbox" name="3cs_update" value="1"></td>
                                        </tr>
                                        <tr>
                                            <td class="col1">Advisor Update</td>
                                            <td class="col2">Adding an advisor to a student's record</td>
                                            <td class="col3"></td>
                                            <td class="col4"><input type="checkbox" name="advisor_update_update" value="1"></td>
                                        </tr>
                                        <tr>
                                            <td class="col1">Department SOC Update</td>
                                            <td class="col2">Scheduling courses, assigning faculty to course, generating permission numbers</td>
                                            <td class="col3"></td>
                                            <td class="col4"><input type="checkbox" name="dept_soc_update_update" value="1"></td>
                                        </tr>
                                        <tr>
                                            <td class="col1">Service Indicators (Holds)</td>
                                            <td class="col2">Administrative users with proper security can assign or remove service indicators from a student's record</td>
                                            <td class="col3"><input type="checkbox" name="service_indicators_holds_view" value="1"></td>
                                            <td class="col4"><input type="checkbox" name="service_indicators_holds_update" value="1"></td>
                                        </tr>
                                        <tr>
                                            <td class="col1">Student Group View</td>
                                            <td class="col2">View groups a student is associated with</td>
                                            <td class="col3"><input type="checkbox" name="student_group_review_view" value="1"></td>
                                            <td class="col4"></td>
                                        </tr>
                                        <tr>
                                            <td class="col1">View Study List</td>
                                            <td class="col2">View a student's class schedule</td>
                                            <td class="col3"><input type="checkbox" name="view_study_list_view" value="1"></td>
                                            <td class="col4"></td>
                                        </tr>
                                        <tr>
                                            <td class="col1">Registrar Enrollment</td>
                                            <td class="col2">Adding and dropping a course utilizing Enrollment Request</td>
                                            <td class="col3"><input type="checkbox" name="registrar_enrollment_view" value="1"></td>
                                            <td class="col4"><input type="checkbox" name="registrar_enrollment_update" value="1"></td>
                                        </tr>
                                        <tr>
                                            <td class="col1">Advisor Student Center</td>
                                            <td class="col2">Access to students study list, advisor, program/plan, demographic data, e-mail address</td>
                                            <td class="col3"><input type="checkbox" name="advisor_student_center_view" value="1"></td>
                                            <td class="col4"></td>
                                        </tr>
                                        <tr>
                                            <td class="col1">Class Permission</td>
                                            <td class="col2">Creating general or student specific class permission numbers</td>
                                            <td class="col3"></td>
                                            <td class="col4"><input type="checkbox" name="class_permission_update" value="1"></td>
                                        </tr>
                                        <tr>
                                            <td class="col1">Class Permission View</td>
                                            <td class="col2">View class permission numbers which have been created for a course</td>
                                            <td class="col3"><input type="checkbox" name="class_permission_view_view" value="1"></td>
                                            <td class="col4"></td>
                                        </tr>
                                        <tr>
                                            <td class="col1">Class Roster</td>
                                            <td class="col2">View students enrolled, dropped or withdrawn in a course</td>
                                            <td class="col3"><input type="checkbox" name="class_roster_view" value="1"></td>
                                            <td class="col4"></td>
                                        </tr>
                                        <tr>
                                            <td class="col1">Block Enrollments</td>
                                            <td class="col2">Adding and dropping a course utilizing Enrollment Request</td>
                                            <td class="col3"><input type="checkbox" name="block_enrollments_view" value="1"></td>
                                            <td class="col4"><input type="checkbox" name="block_enrollments_update" value="1"></td>
                                        </tr>
                                        <tr>
                                            <td class="col1">Report Manager</td>
                                            <td class="col2">Assists in running various reports</td>
                                            <td class="col3"><input type="checkbox" name="report_manager_view" value="1"></td>
                                            <td class="col4"></td>
                                        </tr>
                                        <tr>
                                            <td class="col1">Self Service Advisor</td>
                                            <td class="col2">View Advisee photo, addresses, service indicators, emergency contacts, telephone numbers, grades, class schedule, enrollment appointment, print academic advising profile</td>
                                            <td class="col3"></td>
                                            <td class="col4"><input type="checkbox" name="self_service_advisor_update" value="1"></td>
                                        </tr>
                                        <tr>
                                            <td class="col1">Fiscal Officer</td>
                                            <td class="col2">View enrollment summary, term statistics, and UM term statistics</td>
                                            <td class="col3"><input type="checkbox" name="fiscal_advisor_view" value="1"></td>
                                            <td class="col4"></td>
                                        </tr>
                                        <tr>
                                            <td class="col1">Academic Advising Profile</td>
                                            <td class="col2">Allows printing of the Academic Advising Profile</td>
                                            <td class="col3"></td>
                                            <td class="col4"><input type="checkbox" name="academic_advising_profile_update" value="1"></td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="panel">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a class="accordion-toggle collapsed" data-toggle="collapse" href="#collapseTwo">
                                    Admissions Access
                                </a>
                            </h4>
                        </div>
                        <div id="collapseTwo" class="panel-collapse collapse">
                            <div class="panel-body">
                                <div id="admissionAccess" class="panelBodyContainer">
                                    <div class="column-left">
                                        <div class="checkbox"><label><input type="checkbox" name="act_view" value="1" />ACT</label></div>
                                        <div class="checkbox"><label><input  type="checkbox" name="ielts_view" value="1" />IELTS</label></div>
                                        <div class="checkbox"><label><input  type="checkbox" name="ged_view" value="1" />GED</label></div>
                                        <div class="checkbox"><label><input  type="checkbox" name="sat_view" value="1" />SAT</label></div>
                                        <div class="checkbox"><label><input  type="checkbox" name="lsat_view" value="1" />LSAT</label></div>
                                    </div>
                                    <div class="column-middle">
                                        <div class="checkbox"><label><input  type="checkbox" name="millers_view" value="1" />MILLERS</label></div>
                                        <div class="checkbox"><label><input  type="checkbox" name="gre_view" value="1" />GRE</label></div>
                                        <div class="checkbox"><label><input  type="checkbox" name="mcat_view" value="1" />MCAT</label></div>
                                        <div class="checkbox"><label><input  type="checkbox" name="prax_view" value="1" />PRAX</label></div>
                                        <div class="checkbox"><label><input  type="checkbox" name="gmat_view" value="1" />GMAT</label></div>
                                    </div>
                                    <div class="column-right">
                                        <div class="checkbox"><label><input  type="checkbox" name="ap_view" value="1" />AP</label></div>
                                        <div class="checkbox"><label><input  type="checkbox" name="pla_mu_view" value="1" />PLA-MU</label></div>
                                        <div class="checkbox"><label><input  type="checkbox" name="tofel_view" value="1" />TOFEL</label></div>
                                        <div class="checkbox"><label><input  type="checkbox" name="clep_view" value="1" />CLEP</label></div>
                                        <div class="checkbox"><label><input  type="checkbox" name="base_view" value="1" />BASE</label></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="panel">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a class="accordion-toggle collapsed" data-toggle="collapse" href="#collapseThree">
                                    Student Financials (Cashiers) Access
                                </a>
                            </h4>
                        </div>
                        <div id="collapseThree" class="panel-collapse collapse">
                            <div class="panel-body">
                                <div id="cashiersAccess" class="panelBodyContainer">
                                    <table class="panelBodyTable">
                                        <tr>
                                            <th class="col1">Role</th>
                                            <th class="col2">Role Description</th>
                                            <th class="col3">View</th>
                                            <th class="col4">Update</th>
                                        </tr>
                                        <tr>
                                            <td class="col1">SF General Inquiry</td>
                                            <td class="col2">For staff outside of the Cashiers Office</td>
                                            <td class="col3"><input type="checkbox" name="sf_general_inquiry_view" value="1"></td>
                                            <td class="col4"></td>
                                        </tr>
                                        <tr>
                                            <td class="col1">SF Cash Group Post</td>
                                            <td class="col2">Also known as "Cost Centers" (for areas that want to apply charges)</td>
                                            <td class="col3"><input type="checkbox" name="sf_cash_group_post_view" value="1"></td>
                                            <td class="col4"><input type="checkbox" name="sf_cash_group_post_update" value="1"></td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="panel">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a class="accordion-toggle collapsed" data-toggle="collapse" href="#collapseFour">
                                    Student Financial Aid Access
                                </a>
                            </h4>
                        </div>
                        <div id="collapseFour" class="panel-collapse collapse">
                            <div class="panel-body">
                                <div id="financialAidAccess" class="panelBodyContainer">
                                    <table class="panelBodyTable">
                                        <tr>
                                            <th class="col1">Role</th>
                                            <th class="col2">Role Description</th>
                                            <th class="col3">View</th>
                                            <th class="col4">Update</th>
                                        </tr>
                                        <tr>
                                            <td class="col1">FA Cash</td>
                                            <td class="col2">View a student's financial aid awards and budget</td>
                                            <td class="col3"><input type="checkbox" name="fa_cash_view" value="1"></td>
                                            <td class="col4"></td>
                                        </tr>
                                        <tr>
                                            <td class="col1">FA Non Financial Aid Staff</td>
                                            <td class="col2">View a student's financial aid awards and budget</td>
                                            <td class="col3"><input type="checkbox" name="fa_non_financial_aid_staff_view" value="1"></td>
                                            <td class="col4"></td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="panel">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a class="accordion-toggle collapsed" data-toggle="collapse" href="#collapseFive">
                                    Reserved Access
                                </a>
                            </h4>
                        </div>
                        <div id="collapseFive" class="panel-collapse collapse">
                            <div class="panel-body">
                                <div id="reservedAccess" class="panelBodyContainer">
                                    <table class="panelBodyTable">
                                        <tr>
                                            <th class="col1">Role</th>
                                            <th class="col3">View</th>
                                            <th class="col4">Update</th>
                                        </tr>
                                        <tr>
                                            <td class="col1">Immunization View</td>
                                            <td class="col3"><input type="checkbox" name="immunization_view_view" value="1"></td>
                                            <td class="col4"><input type="checkbox" name="immunization_view_update" value="1"></td>
                                        </tr>
                                        <tr>
                                            <td class="col1">Transfer Credit Admission</td>
                                            <td class="col3"><input type="checkbox" name="transfer_credit_admission_view" value="1"></td>
                                            <td class="col4"><input type="checkbox" name="transfer_credit_admission_update" value="1"></td>
                                        </tr>
                                        <tr>
                                            <td class="col1">Relationships</td>
                                            <td class="col3"><input type="checkbox" name="relationships_view" value="1"></td>
                                            <td class="col4"><input type="checkbox" name="relationships_update" value="1"></td>
                                        </tr>
                                        <tr>
                                            <td class="col1">Student Groups</td>
                                            <td class="col3"></td>
                                            <td class="col4"><input type="checkbox" name="student_groups_update" value="1"></td>
                                        </tr>
                                        <tr>
                                            <td class="col1">Accommodate (Student Health)</td>
                                            <td class="col3"></td>
                                            <td class="col4"><input type="checkbox" name="accomodate_student_health_update" value="1"></td>
                                        </tr>
                                        <tr>
                                            <td class="col1">Support Staff (Registrar's Office)</td>
                                            <td class="col3"><input type="checkbox" name="support_staff_registrar_view" value="1"></td>
                                            <td class="col4"><input type="checkbox" name="support_staff_registrar_update" value="1"></td>
                                        </tr>
                                        <tr>
                                            <td class="col1">Advance Standing Report</td>
                                            <td class="col3"><input type="checkbox" name="advance_standing_report_view" value="1"></td>
                                            <td class="col4"><input type="checkbox" name="advance_standing_report_update" value="1"></td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div id="formError" class="alert alert-danger text-center hide">

            </div>
            <div class="absoluteContainer">
                <div>
                    <div class="form-group">
                        <input class="form-control btn-success" type="submit" value="Review & Submit">
                    </div>
                </div>
            </div>
            <?php echo form_close(); ?>



            <!--      Employee request list      -->
            <div id="employeeListContainer">
                <div class="infoHeader">
                    <div id="empName">
                        <h1 id="departmentName">Department</h1>
                    </div>
                    <input type="hidden" id="formPawprint" name="pawprint" value="">
                    <input type="hidden" id="formRequestID" name="request_ID" value="">
                    <input type="hidden" id="empIDForm" name="empID" value="">
                    <div id="generalInfoHeader" class="formHeader">
                        <h4>Pending Requests</h4>
                    </div>
                </div>
                <div id="requestListSection">
                    <div id="pendingRequests">

                    </div>
                    <div class="formHeader">
                        <h4>Approved Requests</h4>
                    </div>
                    <div id="acceptedRequests">

                    </div>
                    <div class="formHeader">
                        <h4>Denied Requests</h4>
                    </div>
                    <div id="deniedRequests">

                    </div>
                    <div class="formHeader">
                        <h4>No Request Created</h4>
                    </div>
                    <div id="noRequests">

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</div>

<!-- Modal -->
<div id="myModal" class="modal fade" role="dialog">
    <div class="modal-dialog modal-lg">

        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Please review the request below before selecting an action.</h4>
            </div>
            <div id="formReview" class="modal-body">
                <div>
                    <h1 id="employeeNameReview"></h1>
                    <h4>Employee ID</h4><p id="empIDReview"></p>
                    <h4>PawPrint/SSO</h4><p id="pawprintReview"></p>
                    <h4>FERPA Score</h4><p id="ferpaReview"></p>
                    <h4>Job Title</h4><p id="titleReview"></p>
                    <h4>Phone Number</h4><p id="phone_numberReview"></p>
                    <h4>Campus Address</h4><p id="campus_addressReview"></p>
                    <h4>Description</h4><p id="requestDescriptionReview"></p>
                    <h4>Academic Career(s)</h4>
                    <div id="academicCareersReview"></div>
                </div>
                <div id="reviewBoxes">
                    <h4>Student Records Access</h4>
                    <div id="studentRecordsAccessReview">
                    </div>
                    <h4>Admissions Access</h4>
                    <div id="admissionAccessReview">
                    </div>
                    <h4>Student Financials (Cashiers) Access</h4>
                    <div id="cashiersAccessReview">
                    </div>
                    <h4>Financial Aid Access</h4>
                    <div id="financialAidAccessReview">
                    </div>
                    <h4>Reserved Access</h4>
                    <div id="reservedAccessReview">
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button id="approveRequest" type="button" class="btn btn-default btn-success" data-dismiss="modal">APPROVE</button>
                <button id="denyRequest" type="button" class="btn btn-default btn-danger" data-dismiss="modal">DENY</button>
                <button id="printRequest" type="button" class="btn btn-default btn-primary" >PRINT</button>
                <button id="closeModal" type="button" class="btn btn-default btn-default" data-dismiss="modal">CLOSE</button>
            </div>
        </div>

    </div>
</div>

</body>
</html>