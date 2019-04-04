$(document).ready(function(){
$("#up").click(function(){
    $("#theblock").animate({top: '0%'});
  });
$("#right").click(function(){
    $("#theblock").animate({left: '90%'});
  });
$("#left").click(function(){
    $("#theblock").animate({left: '0%'});
  });
$("#down").click(function(){
    $("#theblock").animate({top: '90%'});
  });
});