/**
 * Created by Josh on 12/6/15.
 */
$(document).ready(function() {

    $("#data-list .outerRow").click(function() {

        // Hide any error from a previous form review validation
        var formError = $("#formError");
        formError.addClass('hide');
        formError.empty();

        // Change the row's background color to show it was selected
        var row = $(this);

        $("#data-list .outerRow").removeClass('rowHighlighted');
        var previousSelection = row.hasClass('rowHighlighted');
        if (!previousSelection) {
            row.toggleClass('rowHighlighted');
        }

        // clear the previous selections employee data
        $("#pendingRequests").empty();
        $("#acceptedRequests").empty();
        $("#deniedRequests").empty();
        $("#noRequests").empty();


        var tableRowID = row.attr('id');
        document.getElementById("employeeName").innerHTML = row.attr('id');

        $.ajax({
            type: "POST",
            url: window.location.href + '/getRowDataForKey',
            dataType: "json",
            data: { 'department' : tableRowID },
            success: function(returnData) {

                var employees = returnData['employees'];

                console.log(employees);

                // Iterate through the objects and put them in the correct reqeust bucket on the page
                $(employees).each(function() {

                    switch (this['status']) {
                        case '0':
                            $("#pendingRequests").append('<div class="employeeRequestRow" id="'+ this['empID'] +'"><div class="personalInfo"><h4>'+ this['fName'] + ' ' + this['lName'] + '</h4><p class="empTitle">'+ this['title'] +'</p></div><div class="requestActionButtons"><button type="button" class="btn btn-default btn-default viewRequestButton" >Review</button></div></div>');
                            break;
                        case '1':
                            $("#acceptedRequests").append('<div class="employeeRequestRow" id="'+ this['empID'] +'"><div class="personalInfo"><h4>'+ this['fName'] + ' ' + this['lName'] + '</h4><p class="empTitle">'+ this['title'] +'</p></div><div class="requestActionButtons"><button type="button" class="btn btn-default btn-default viewRequestButton" >Review</button></div></div>');
                            break;
                        case '2':
                            $("#deniedRequests").append('<div class="employeeRequestRow" id="'+ this['empID'] +'"><div class="personalInfo"><h4>'+ this['fName'] + ' ' + this['lName'] + '</h4><p class="empTitle">'+ this['title'] +'</p></div><div class="requestActionButtons"><button type="button" class="btn btn-default btn-default viewRequestButton" >Review</button></div></div>');
                            break;
                        default:
                            $("#noRequests").append('<div class="employeeRequestRow" id="'+ this['empID'] +'"><div class="personalInfo"><h4>'+ this['fName'] + ' ' + this['lName'] + '</h4><p class="empTitle">'+ this['title'] +'</p></div><div class="requestActionButtons"><button type="button" class="btn btn-default btn-default viewRequestButton" >Review</button></div></div>');
                            break;
                    }

                });


            }

        });

    })

});