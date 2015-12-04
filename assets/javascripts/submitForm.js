/**
 * Created by Josh on 12/2/15.
 */
$(document).ready(function() {
    $("#formSubmit").click(function() {

        // Get the form values as objects
        var serializedForm = $(document.forms["SISrequestForm"]).serializeArray();

        // Create a dictionary from the values
        var formData = {};
        $.each(serializedForm, function(){
            formData[this.name] = this.value;
        });


        // Post the data to the controller
        $.ajax({
            type: "POST",
            url: window.location.href + '/submitForm',
            data: { 'formData' : formData },
            success: function(message) {
                //message = $.parseJSON(message);
                //console.log(message);
            }
        });

    })
});