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
                    console.log('SUCCESS!');
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