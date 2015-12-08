/**
 * Created by Josh on 12/7/15.
 */
$(document).ready(function(){

    // APPROVE the request
    $("#approveRequest").click(function(){

        var requestID = $('#formRequestID').val();

        $.ajax({
            type: "POST",
            url: window.location.href + '/approveRequestWithID',
            data: {'requestID' : requestID},
            success: function(message) {
                console.log("APPROVED!!!");
            }
        });

    });

    // DENY the request
    $("#denyRequest").click(function(){

        var requestID = $('#formRequestID').val();

        $.ajax({
            type: "POST",
            url: window.location.href + '/denyRequestWithID',
            data: {'requestID' : requestID},
            success: function(message) {
                console.log("DENIED!!!");
            }
        });

    });

    // PRINT the request
    $("#printRequest").click(function(){
        var empID = $('#empIDForm').val();

        $.ajax({
            type: "POST",
            url: window.location.href + '/printRequestWithID',
            data: {'empID' : empID},
            success: function(message) {
                console.log("PRINTING!!!");
            }
        });
    });

});