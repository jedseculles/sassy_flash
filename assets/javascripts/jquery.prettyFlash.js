var hideFlashes = function() {
  $('p.notice, p.warning, p.error, p.alert').fadeOut(1500);
};

$(document).ready(function() {
  setTimeout(hideFlashes, 2500);
});