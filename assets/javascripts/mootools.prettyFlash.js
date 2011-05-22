var hideFlashes = function() {
  $$('p.notice,p.warning,p.error,p.alert').tween('opacity', '0');
};

window.addEvent('domready', function() {
  (hideFlashes).delay(2500);
});