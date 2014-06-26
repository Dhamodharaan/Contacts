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

 function validate()
{
	
alert("hi");
var fname=document.getElementById("contact_firstname").value

var lname=document.getElementById("contact_lastname").value

var emailid=document.getElementById("contact_emailid").value

var mno=document.getElementById("contact_mno").value


var avatar=document.getElementById("contact_photo").value

var age=document.getElementById("contact_avatar_female").checked

var fage=document.getElementById("contact_avatar_male").checked



if (fname == "" || lname == "" || emailid == "" || mno == "" || avatar == false)
{
alert("Input Feilds cannot be empty !");
return false;
}
return true;
}
