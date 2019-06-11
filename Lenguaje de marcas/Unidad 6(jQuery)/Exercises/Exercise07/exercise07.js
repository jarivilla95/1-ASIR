$(document).ready(function () {
    $('.article').on('click',function(){
        $(this).hide();
    });
    $('button').on('click',function(){
        $(this).siblings().show();
    });
});