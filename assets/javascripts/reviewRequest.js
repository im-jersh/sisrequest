/**
 * Created by Josh on 12/6/15.
 */
$(document).on('click', "button.viewRequestButton", function() {

    // Extract the empID of the selected employee
    var empID = $(this).attr("id");

    // Get the request information for that employee
    $.ajax({
        type: "POST",
        url: window.location.href + '/getRequestForEmployee',
        dataType: "json",
        data: {'empID': empID},
        success: function (returnData) {

            console.log(returnData);



        }
    });


});