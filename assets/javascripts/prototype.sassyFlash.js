function sassyFx() {
  Effect.Fade('sassy_flashes', { duration: 1.5 });
}

document.observe('dom:loaded', function() {
  setTimeout(sassyFx, 2500);
});