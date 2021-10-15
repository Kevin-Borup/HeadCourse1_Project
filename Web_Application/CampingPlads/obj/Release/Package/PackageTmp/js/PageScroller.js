$(document).ready(function () {
    $(".scroll-top").click(function () {
        $("html, body").animate({
            scrollTop: $('#banner').offset().top - 75
        }, "slow");
        return false;
    })
});