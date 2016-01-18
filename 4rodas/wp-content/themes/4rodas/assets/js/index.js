$(document).ready(function () {
    $("#botao-menu").on('click', function () {
        $(".menu-principal").slideToggle('slow');
        $("#botao-menu").hide();
        $("#close-menu").show();
        $("header").css('height','1065px');
    });
    $("#close-menu").on('click', function () {
        $(".menu-principal").slideToggle('fast');
        $("#botao-menu").show();
        $("#close-menu").hide();
        $("header").css('height','150px');
    });
});
