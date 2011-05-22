function sassyFx() {
  $('p.flash_notice, p.flash_warning, p.flash_error, p.flash_alert').fadeOut(1500);
}

$(document).ready(function() {
  setTimeout(sassyFx, 2500);
});