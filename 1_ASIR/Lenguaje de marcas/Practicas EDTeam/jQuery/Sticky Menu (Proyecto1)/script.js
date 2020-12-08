var $nav = $('nav');
var $navTop = $nav.offset().top;
var pasteNav = function(){
    var $scrollTop =$(window).scrollTop();
    if($scrollTop >= $navTop){
        $nav.addClass('sticky')
    } else {
        $nav.removeClass('sticky')
    }
}

$(window).on('scroll',pasteNav);