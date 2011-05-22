var sassyFx = function() {
  $$('p.flash_notice, p.flash_warning, p.flash_error, p.flash_alert').tween('opacity', '0');
};

window.addEvent('domready', function() {
  (sassyFx).delay(2500);
});