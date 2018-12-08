//= require 'rails-ujs'
//= require 'activestorage'
//= require 'turbolinks'
//= require 'jquery'
//= require 'top_nav'
//= require 'login'
//= require_tree .

//Exit overlay
$(document).keydown(function(e) {
    if (e.keyCode == 27) {
        document.getElementById('overlay').style.display = 'none'
    }
});

