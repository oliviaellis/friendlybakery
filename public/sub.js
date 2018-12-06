var container = document.getElementById('container');
var nav = document.getElementById('navbar')
var bg = document.getElementById('bg-photo-page');

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
