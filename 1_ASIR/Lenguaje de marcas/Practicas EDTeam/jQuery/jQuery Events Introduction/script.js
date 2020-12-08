$('.boxbuttons').on('click','a', function(){
  $('.target').removeClass('buttonblue buttonred buttongreen buttonoff active')
    .addClass($(this).attr('class'));
    $(this).addClass('active');
    $(this).siblings().removeClass('active');
    $(this).parent().siblings().removeClass('active');
})

