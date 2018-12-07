var container = document.getElementById('container');
var nav = document.getElementById('navbar')
var bg = document.getElementById('bg-photo-page');
var icon = document.getElementById('icon');
var form = document.getElementById('form');
var req = document.getElementById('req');


icon.addEventListener('click', emailer);

// Displays email input
function emailer() {
  form.style.marginTop = '25px';
  req.style.display = 'none';
}

// Animation to slide out elements from item pages
function load_out_pages(url) {
  container.style.top = '-100%';
  navbar.style.top = '-100%';
  if (url == '/') {
    bg.style.opacity = '1';
  }
  setTimeout( function() {
    window.location = url;
  }, 1000);
}
