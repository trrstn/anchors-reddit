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
//= require_tree .


var reply = document.getElementById('reply');
var form = document.getElementById('form-reply');
var textarea = document.getElementById('comment_body');

reply.addEventListener("click", function(){

  if (form.classList.contains('_remove')) {
    form.classList.remove('_remove');
  } else {
    form.classList.add('_remove');
  }

});

console.log(this.form);

// textarea.addEventListener("keydown", function(){
//
//   if (textarea.scrollHeight > textarea.clientHeight) {
//     textarea.style.height = textarea.scrollHeight + 'px';
//   }
//
// });
