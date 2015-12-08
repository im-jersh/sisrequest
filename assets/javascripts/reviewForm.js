/**
 * Created by Josh on 11/23/15.
 */
$(document).ready(function() {

    $("#SISrequestForm").submit(function(event){
        event.preventDefault();

        var formError = $("#formError")
        formError.addClass('hide');
        formError.empty();

        // get the ferpa score
        var ferpaScore = document.getElementById("ferpa_score").innerHTML;
        ferpaScore = ferpaScore.replace(/%/g, "");


        if (parseInt(ferpaScore) >= 85 ) {
            // Get academic careers checkbox
            var academicCareersCheckboxes = document.getElementById('careerCheckboxes').getElementsByTagName("input");
            var checkboxWasChecked;
            $.each(academicCareersCheckboxes, function () {
                if (this.type == 'checkbox') {
                    if (this.checked == true) {
                        checkboxWasChecked = '1';
                    }
                }
            });

            // Get all form values
            var formData = {
                title: $('#title').val(),
                phone_number: $('#phone_number').val(),
                campus_address: $('#campus_address').val(),
                campus_address_city: $('#campus_address_city').val(),
                campus_address_zipcode: $('#campus_address_zipcode').val(),
                campus_address_state: $('#campus_address_state').val(),
                requestDescription: $('#requestDescription').val(),
                academicCareers: checkboxWasChecked
            };

            $.ajax({
                type: "POST",
                url: window.location.href + '/validateForm',
                data: formData,
                success: function (validation) {

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
                        document.getElementById("ferpaReview").innerHTML = document.getElementById("ferpa_score").innerHTML;
                        document.getElementById("titleReview").innerHTML = document.getElementById("title").value;
                        document.getElementById("phone_numberReview").innerHTML = document.getElementById("phone_number").value;
                        document.getElementById("campus_addressReview").innerHTML = document.getElementById("campus_address").value + "<br>" + document.getElementById("campus_address_apt").value + "<br>" + document.getElementById("campus_address_city").value + ", " + document.getElementById("campus_address_state").value + " " + document.getElementById("campus_address_zipcode").value;
                        document.getElementById("requestDescriptionReview").innerHTML = document.getElementById("requestDescription").value;

                        // Add the academic careers checkboxes and remove those that are not checked
                        $("#academicCareersReview").empty();
                        $("#academicCareersReview").append($("#careerCheckboxes").clone());
                        $("#academicCareersReview").find("h5").remove();
                        $.each($("#academicCareersReview").find("input"), function () {
                            if (this.type == 'checkbox') {
                                if (this.checked == false) {
                                    $("#academicCareersReview label[for='" + this.id + "']").remove();
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

        } else { // low ferpa score

            // clear previous messages
            $('#modalMessageHeader').empty();
            $('#modalMessageContents').empty();
            //$('#modalMessageFooter').empty();

            // repopulate the message content
            var name = document.getElementById("employeeName").innerHTML;
            $('#modalMessageHeader').append('<h4 class="modal-title">Low FERPA Score</h4>');
            $('#modalMessageContent').append('<p class="modal-body">'+ name +' has not yet received a satisfactory score on their FERPA quiz. Press OK below to send and email requesting that they retake the quiz.</p>');


            // show the message modal
            $("#messageModal").modal('show');


        }
    });
});