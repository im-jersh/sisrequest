/**
 * Created by Josh on 11/17/15.
 */
$(document).ready(function() {
    $("#data-list .outerRow").click(function() {

        // Change the row's background color to show it was selected
        var row =  $(this)

        $("#data-list .outerRow").removeClass('rowHighlighted');
        var previousSelection = row.hasClass('rowHighlighted');
        if (!previousSelection) {
            row.toggleClass('rowHighlighted');
        }

        var tableRowID = row.attr('id');

        $.ajax({
            type: "POST",
            url:'landing_page/getRowDataForKey',
            dataType: "json",
            data: { 'pawprint' : tableRowID },
            success: function(returnData) {
                //ret_val = $.parseJSON(ret_val);
                //Information returned from controller to append to view
                //$("<div/>").append($("<h3/>", {text: ret_val['id']}));

                console.log(returnData);
                var employee = returnData['employee'];
                console.log(employee['fName'] + " " + employee['lName']);

                // Start loading the info into the form

                // These fields can not be edited
                document.getElementById("employeeName").innerHTML = employee['fName'] + " " + employee['lName'];
                document.getElementById("empID").innerHTML = employee['empID'];
                document.getElementById("pawprint").innerHTML = employee['pawprint'];

                // These fields can be edited
                document.querySelector('#title').value = employee['title'];
                document.querySelector('#phone_number').value = employee['phone_number'];
                document.querySelector('#campus_address').value = employee['campus_address'];

            }

        });

    })

});