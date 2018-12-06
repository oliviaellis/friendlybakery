console.log('Hello');

var bg = document.getElementById('bg-photo');
var cookies = document.getElementById('cookies');
var cakes = document.getElementById('cakes');
var pastries = document.getElementById('pastries');
var blurb = document.getElementById('blurb');

// Timeout function to slide in the homepage elements on page load + 2s
setTimeout( function() {
  cookies.classList.toggle('hidden');
  cakes.classList.toggle('hidden');
  pastries.classList.toggle('hidden');
}, 900);

function load_out(url) {
  cookies.style.left = '-50%';
  cakes.style.left = '-50%';
  pastries.style.left = '-50%';
  blurb.style.top = '-150%';
  bg.style.opacity = '0.3';
  setTimeout( function() {
    cookies.classList.toggle('hidden');
    cakes.classList.toggle('hidden');
    pastries.classList.toggle('hidden');
  }, 800);
  setTimeout( function() {
    window.location = url;
  }, 1700);
}
