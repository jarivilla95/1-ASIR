$(document).ready(function () {
    $("#close-panel").hide();
    $("#open-panel").click(function(){
        $("#side-panel").animate({"width":"+=200px",}, 1000);
        $("#open-panel").hide();
        $("#close-panel").show();
    });
    $("#close-panel").click(function(){
        $("#side-panel").animate({"width":"-=200px",}, 1000);
        $("#close-panel").hide();
        $("#open-panel").show();
    });
});