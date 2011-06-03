function sassyFx() {
  $$('div.sassy_flashes').tween('opacity', '0');
}

window.addEvent('domready', function() {
  (sassyFx).delay(2500);
});