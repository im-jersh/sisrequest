/**
 * Created by Josh on 11/20/15.
 */
$(document).ready(function(){
    $("#search-box").keyup(function(){

        // Retrieve the input field text and reset the count to zero
        var search = $(this).val();

        // Loop through the comment list

        $(".inner-table .mainName").each(function(){

            // If the list item does not contain the text phrase fade it out
            if ($(this).text().search(new RegExp(search, "i")) < 0) {
                $(this).parent().parent().parent().parent().fadeOut();

                // Show the list item if the phrase matches
            } else {
                $(this).parent().parent().parent().parent().show();
            }
        });
    });
});
	