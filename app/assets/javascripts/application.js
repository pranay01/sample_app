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
//= require turbolinks
//= require_tree .
$(function(){
	if ($(".image").length >0){
		setTimeout(updateImages, 30000);
	}
});

function updateImages () {
	if ($(".image").length() > 0)
	{
		var after_id = $(".image:last").attr("post-id");
	}
	else
	{
	var after_id = 0;
	}	
	
	$.getScript("/instagram.js?after_id=" + after_id)
	setTimeout(updateImages,30000)
}