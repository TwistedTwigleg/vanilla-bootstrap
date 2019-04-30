window.onscroll = function() {scrollFunction()};

var scrollStart = $(window).height();

function scrollFunction() {
    if (document.body.scrollTop > scrollStart || document.documentElement.scrollTop > scrollStart) {
        document.getElementById("ReturnToTop").style.display = "block";
    } else {
        document.getElementById("ReturnToTop").style.display = "none";
    }
}

// When the user clicks on the button, scroll to the top of the document
function topFunction() {
    document.body.scrollTop = 0; // For Safari
    document.documentElement.scrollTop = 0; // For Chrome, Firefox, IE and Opera
}

// TODO: Make this a plugin - Twisted.
// Convert all links to GodotDevelopers.org to GodotForums.org
$(document).ready(function(){
    $('a[href^="https://godotdevelopers.org"]').each(function(){
        var oldUrl = $(this).attr("href");
        var newUrl = oldUrl.replace("https://godotdevelopers.org/forum/", "https://godotforums.org/")
        $(this).attr("href", newUrl);
    })
})