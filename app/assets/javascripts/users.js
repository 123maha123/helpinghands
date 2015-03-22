$(document).on('click','.navbar-collapse.in',function(e) {
    if( $(e.target).is('a') && $(e.target).attr('class') != 'dropdown-toggle' ) {
        $(this).collapse('hide');
    }
});

$('#myTab a').click(function(e) {
    e.preventDefault();
    $(this).tab('show');
});

/*$("#nextSignupButton").click(function(){
    $("#infoTab").attr("class", "");
    $("#addressTab").attr("class", "active");
});
    
$("#backSignupButton").click(function(){
    $("#infoTab").attr("class", "active");
    $("#addressTab").attr("class", "");
});*/

$(document).on('click','#nextSignupButton',function(e) {
    $("#infoTab").attr("class", " ");
    $("#addressTab").attr("class", "active");
});

$(document).on('click','#backSignupButton',function(e) {
    $("#infoTab").attr("class", "active");
    $("#addressTab").attr("class", " ");
});