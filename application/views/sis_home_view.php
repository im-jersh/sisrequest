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
    <script src="<?php echo base_url();?>/assets/javascripts/submitForm.js"></script>
    <script src="<?php echo base_url();?>/assets/javascripts/search.js"></script>
    <script src="<?php echo base_url();?>/assets/javascripts/maskedinput.js" type="text/javascript"></script>
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
            <!-- The form for the employee -->
            <div id="employeeListContainer">
                <div class="infoHeader">
                    <div id="empName">
                        <h1 id="employeeName">Department</h1>
                    </div>
                    <input type="hidden" id="formPawprint" name="pawprint" value="">
                    <input type="hidden" id="formRequestID" name="request_ID" value="">
                    <input type="hidden" id="empIDForm" name="empID" value="">
                    <div id="generalInfoHeader" class="formHeader">
                        <h4>Pending Requests</h4>
                    </div>
                </div>
                <div id="generalInfoSection">
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
                <h4 class="modal-title">Please review your request before submitting.</h4>
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
                <button id="formSubmit" type="button" class="btn btn-default btn-success" >Submit</button>
                <button type="button" class="btn btn-default btn-danger" data-dismiss="modal">Cancel</button>
            </div>
        </div>

    </div>
</div>

</body>
</html>