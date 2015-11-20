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
            success: function(ret_val) {
                //ret_val = $.parseJSON(ret_val);
                //Information returned from controller to append to view
                //$("<div/>").append($("<h3/>", {text: ret_val['id']}));

                console.log(ret_val);
            }

        });

    })

});