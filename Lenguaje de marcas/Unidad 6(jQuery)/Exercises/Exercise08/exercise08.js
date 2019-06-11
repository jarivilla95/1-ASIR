$(document).ready(function(){
    $('button').on('click',function(){
        $(this).siblings().toggle('slow');
    })
})

