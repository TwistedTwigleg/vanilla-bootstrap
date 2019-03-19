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