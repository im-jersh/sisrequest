/**
 * Created by Josh on 12/6/15.
 */
$(document).ready(function(){
    $('#generalInfoSection').on('click', 'button.viewRequestButton', function(){
        console.log($(this).attr('id'));
    });
});


