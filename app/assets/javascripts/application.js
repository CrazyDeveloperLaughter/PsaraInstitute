// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require jquery-ui
//= require tag-it
//= require bootstrap
//= require twitter/bootstrap
//= require turbolinks
//= require_tree .
//= require bootstrap-wysihtml5

$(document).ready(function() {
  return $(".textarea").wysihtml5();
});

$('.textarea').wysihtml5();
$('.textarea').val();

$(document).scroll(function() {    
    var scroll = $(window).scrollTop();

    if (scroll <= 100) {
    	$(".header").removeClass("scrolingHeader");
    	$(".header").addClass("topHeader");
    } else {
    	$(".header").removeClass("topHeader");
        $(".header").addClass("scrolingHeader");
    }
});

function put_editor_data() {
	$("TEXTAREA[name=editor_data]").val($(".textarea").html());
	return true;
}