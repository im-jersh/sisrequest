/**
 * Created by Josh on 11/17/15.
 */
$(document).ready(function() {
    $("#data-list .outerRow").click(function() {

        var tableRowID = $(this).attr('id');

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
                document.getElementById("employeeName").innerHTML = employee['fName'] + " " + employee['lName'];
                document.getElementById("empID").innerHTML = employee['empID'];
                document.getElementById("pawprint").innerHTML = employee['pawprint'];
                document.getElementById("title").innerHTML = employee['title'];
                document.getElementById("phone_number").innerHTML = employee['phone_number'];
                document.getElementById("campus_address").innerHTML = employee['campus_address'];

            }

        });

    })

});