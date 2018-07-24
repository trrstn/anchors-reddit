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


// 2. Toggle tabs on new posts
const postButtons = document.querySelectorAll('.tab');
const postDiv = document.querySelectorAll('#post');

[...postButtons].map((button, index) => {
  button.addEventListener('click', () => {
    // removes tabs with '-selected' class
    [...postButtons].map((all) => {
      all.classList.remove('-selected');
    })
    // adds clicked tab with mentioned class
    button.classList.add('-selected');
    // Displays all divs to none
    [...postDiv].map((all) => {
      if (!all.classList.contains('_remove')) {
        all.classList.add('_remove');
      }
    })
    // Displays selected div
    postDiv[index].classList.remove('_remove');
  })
})

// 3. Expand textarea
const textArea = document.querySelector('.textarea');


// // 4. Color upvote buttons

const upVote = document.querySelectorAll('.upvote');
const downVote = document.querySelectorAll('.downvote');
