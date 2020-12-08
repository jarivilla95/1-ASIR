$(document).ready(function () {
    $('.article').on('click',function(){
        $(this).hide(5000);
    });
    $('button').on('click',function(){
        $(this).siblings().show(5000);
    });
});