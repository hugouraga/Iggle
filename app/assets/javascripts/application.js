// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require jquery
//= require bootstrap-sprockets
//= require turbolinks
//= require_tree .

//= SIDEBAR (Cliente)
function openNav() {
    document.getElementById("mySidebar").style.width = "250px";
    document.getElementById("openbtn").style.marginLeft = "92%";
    document.getElementById("escurecendo").style.backgroundColor = "rgba(0, 0, 0, 0.3)";
}

function closeNav() {
    document.getElementById("mySidebar").style.width = "0";
    document.getElementById("openbtn").style.marginLeft = "92%";
    document.getElementById("escurecendo").style.backgroundColor = "#FFF";
    document.getElementById("escurecendo").style.transitionDuration = "1s";
}