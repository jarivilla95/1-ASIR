$(document).ready(function () {
    $('.article').on('click',function(){
        $(this).hide();
    });
    $('button').on('click',function(){
        $(this).siblings().show();
    });
    $('#closebutton').on('click',function(){
        $('.article').slideUp();
    });
    $('#openbutton').on('click',function(){
        $('.article').slideDown();
    });
});
