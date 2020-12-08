$(document).ready(function () {
    $('.side-panel').on('mouseenter',function(){
        $(this).animate({
            "width":"+=200px",}, 1000);
        })
    $('.side-panel').on('mouseleave',function(){
        $(this).animate({
        "width":"-=200px",}, 1000);
        })
});