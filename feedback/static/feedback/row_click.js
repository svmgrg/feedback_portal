jQuery(document).ready(function($) {
    $(".highlight").click(function() {
        window.document.location = $(this).data("href");
    });
});
