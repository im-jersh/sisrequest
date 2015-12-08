/**
 * Created by Josh on 12/6/15.
 */
$(document).ready(function(){
    $('#requestListSection').on('click', 'button.viewRequestButton', function(){

        var empID = $(this).attr('id');

        // Get the selected employee's information and request
        $.ajax({
            type: "POST",
            url: window.location.href + '/fetchEmployeeInfoAndRequest',
            data: {'empID' : empID},
            success: function(employee) {

                // Make the return data an object
                employee = JSON.parse(employee);

                console.log(employee);

                // These fields can not be edited
                document.getElementById("employeeName").innerHTML = employee['fName'] + " " + employee['lName'];
                document.getElementById("empID").innerHTML = employee['empID'];
                document.getElementById("pawprint").innerHTML = employee['pawprint'];
                document.getElementById("ferpa_score").innerHTML = employee['ferpa_score'] + '%';

                // These fields can be edited
                document.querySelector('#formPawprint').value = employee['pawprint'];
                document.querySelector('#empIDForm').value = employee['empID'];
                document.querySelector('#formRequestID').value = employee['request']['request_ID'];
                document.querySelector('#title').value = employee['title'];
                document.querySelector('#phone_number').value = employee['phone_number'];
                document.querySelector('#campus_address').value = employee['campus_address'];
                document.querySelector('#campus_address_apt').value = employee['campus_address_apt'];
                document.querySelector('#campus_address_city').value = employee['campus_address_city'];
                document.querySelector('#campus_address_zipcode').value = employee['campus_address_zipcode'];
                document.querySelector('#campus_address_state').value = employee['campus_address_state'];

                if (typeof employee['request']['request_description'] === 'undefined') {
                    document.querySelector('#requestDescription').value = '';
                } else {
                    document.querySelector('#requestDescription').value = employee['request']['request_description'];
                }



                // These fields are checkboxes for the access types
                var accessTypes = employee['request']['types'];
                var keys = accessTypes['keys'];

                // Reset the form. This makes setting values for an existing request easier
                // and if there is no request, all fields are blank for a new request to be made
                var form = document.querySelector("#SISrequestForm");
                var checkboxes = form.getElementsByTagName('input');
                for (var i = 0; i < checkboxes.length; i++) {
                    if (checkboxes[i].type == 'checkbox') {
                        checkboxes[i].checked = false;
                    }
                }

                // Update the academic careers checkboxes
                $.each($('#careerCheckboxes').find("input"), function(){
                    if (employee['request'][this.id] == '1') {
                        this.checked = true;
                    }
                });

                // Populate the form with the selected person's request data
                if (accessTypes['data'].length > 0) {

                    var data = accessTypes['data'][0]; // extract the data key/value array

                    // Loop through the keys and set the appropriate form values
                    for (var key in data) {
                        var field = data[key];
                        //console.log("key: " + key + "\tvalue: " + field);

                        var checkboxName = '';
                        checkboxes = [];

                        // Populate the corresponding checkbox(es)
                        switch (field) {
                            case "0": // view only - unchecked
                                // box is already unchecked
                                break;
                            case "1": // view only - checked
                            case "5": // both - only view checked
                                // Create the name of the checkbox
                                checkboxName = key + "_view";

                                break;
                            case "2": // update only - unchecked
                                // box is already unchecked
                                break;
                            case "3": // update only - checked
                            case "6": // both - only update checked
                                // Create the name of the checkbox
                                checkboxName = key + "_update";

                                break;
                            case "4": // both - unchecked
                                // box is already unchecked
                                break;
                            case "7": // both - both checked
                                // Create the name of the checkbox
                                checkboxName = key + "_view";

                                // update the view checkbox before
                                $('input[name="' + checkboxName + '"]').each( function() {
                                        $(this).prop('checked', true);
                                    }

                                );

                                checkboxName = key + "_update";
                                break;
                        }

                        // Check the checkboxes
                        $('input[name="' + checkboxName + '"]').each( function() {
                                $(this).prop('checked', true);
                            }

                        );

                    }

                }


                // Get academic careers checkbox
                var academicCareersCheckboxes = document.getElementById('careerCheckboxes').getElementsByTagName("input");
                var checkboxWasChecked;
                $.each(academicCareersCheckboxes, function() {
                    if (this.type == 'checkbox') {
                        if (this.checked == true) {
                            checkboxWasChecked = '1';
                        }
                    }
                });

                // Present the modal overlay
                $("#myModal").modal('show');

                // Populate the modal body with the form info
                var formBody = $("#formReview");

                // Fill general info
                document.getElementById("employeeNameReview").innerHTML = document.getElementById("employeeName").innerHTML;
                document.getElementById("empIDReview").innerHTML = document.getElementById("empID").innerHTML;
                document.getElementById("pawprintReview").innerHTML = document.getElementById("empID").innerHTML;
                document.getElementById("ferpaReview").innerHTML = document.getElementById("ferpa_score").innerHTML;
                document.getElementById("titleReview").innerHTML = document.getElementById("title").value;
                document.getElementById("phone_numberReview").innerHTML = document.getElementById("phone_number").value;
                document.getElementById("campus_addressReview").innerHTML = document.getElementById("campus_address").value + "<br>" + document.getElementById("campus_address_apt").value + "<br>" + document.getElementById("campus_address_city").value + ", " + document.getElementById("campus_address_state").value  + " " + document.getElementById("campus_address_zipcode").value;
                document.getElementById("requestDescriptionReview").innerHTML = document.getElementById("requestDescription").value;

                // Add the academic careers checkboxes and remove those that are not checked
                $("#academicCareersReview").empty();
                $("#academicCareersReview").append($("#careerCheckboxes").clone());
                $("#academicCareersReview").find("h5").remove();
                $.each($("#academicCareersReview").find("input"), function() {
                    if (this.type == 'checkbox') {
                        if (this.checked == false) {
                            $("#academicCareersReview label[for='" + this.id +"']").remove();
                        } else {
                            this.disabled = true;
                        }
                    }
                });


                // Clear any previously appended sections and then reappend
                $("#studentRecordsAccessReview").empty();
                $("#studentRecordsAccessReview").append($("#studentRecordsAccess").clone());

                $("#admissionAccessReview").empty();
                $("#admissionAccessReview").append($("#admissionAccess").clone());

                $("#cashiersAccessReview").empty();
                $("#cashiersAccessReview").append($("#cashiersAccess").clone());

                $("#financialAidAccessReview").empty();
                $("#financialAidAccessReview").append($("#financialAidAccess").clone());

                $("#reservedAccessReview").empty();
                $("#reservedAccessReview").append($("#reservedAccess").clone());

                //
                var formReview = document.querySelector("#reviewBoxes");
                var checkboxes = formReview.getElementsByTagName('input');

                // Hide all sections first
                for (var i = 0; i < checkboxes.length; i++) {
                    if (checkboxes[i].type == 'checkbox') {
                        // disable the checkbox and hide the section
                        checkboxes[i].disabled = true;
                        $(checkboxes[i]).parent().parent().hide();

                    }
                }

                // Show the section if any of the checkboxes contained inside are checked
                for (var i = 0; i < checkboxes.length; i++) {
                    if (checkboxes[i].type == 'checkbox' && checkboxes[i].checked == true) {
                        $(checkboxes[i]).parent().parent().show();

                    }
                }



            }
        });

    });

});


