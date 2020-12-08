$(document).ready(function () {
    $('.article').on('click',function(){
        $(this).fadeOut();
    });
    $('button').on('click',function(){
        $(this).siblings().fadeIn();
    });
});