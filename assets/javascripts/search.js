$(document).ready(function(){
    $("#search-box").keyup(function(){
 
        // Retrieve the input field text and reset the count to zero
        var search = $(this).val();
 
        // Loop through the comment list
        $(".mainName").each(function(){
 
            // If the list item does not contain the text phrase fade it out
            if ($(this).children(".employeeTD").text().search(new RegExp(search, "i")) < 0) {
                $(this).fadeOut();
 
            // Show the list item if the phrase matches and increase the count by 1
            } else {
                $(this).show();
            }
        });
    });
});
	