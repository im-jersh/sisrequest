/**
 * Created by Josh on 11/23/15.
 */
$(document).ready(function() {

    $("#SISrequestForm").submit(function(event){
        event.preventDefault();

        var formError = $("#formError")
        formError.addClass('hide');
        formError.empty();

        // Get all form values
        var formData = {
            title: $('#title').val(),
            phone_number: $('#phone_number').val(),
            campus_address: $('#campus_address').val()
        };

        $.ajax({
            type: "POST",
            url: window.location.href + '/validateForm',
            data: formData,
            success: function(validation) {

                // If no errors, present modal review page
                if (validation == 'true') { // Valid form
                    //console.log('SUCCESS!');

                    // Present the modal overlay
                    $("#myModal").modal('show');

                    // Populate the modal body with the form info
                    var formBody = $("#formReview");

                    // Fill general info
                    document.getElementById("employeeNameReview").innerHTML = document.getElementById("employeeName").innerHTML;
                    document.getElementById("empIDReview").innerHTML = document.getElementById("empID").innerHTML;
                    document.getElementById("pawprintReview").innerHTML = document.getElementById("empID").innerHTML;
                    document.getElementById("titleReview").innerHTML = document.getElementById("title").value;
                    document.getElementById("phone_numberReview").innerHTML = document.getElementById("phone_number").value;
                    document.getElementById("campus_addressReview").innerHTML = document.getElementById("campus_address").value;

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


                } else { // Invalid form
                    console.log(validation);

                    // Print the errors
                    formError.removeClass('hide');
                    formError.append(validation);

                }

            }

        });

        // Return false so the form is not submitted
        return false;

    });
});