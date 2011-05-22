function sassyFx() {
  Effect.Fade('flash_notice', { duration: 1.5 });
  Effect.Fade('flash_warning', { duration: 1.5 });
  Effect.Fade('flash_error', { duration: 1.5 });
  Effect.Fade('flash_alert', { duration: 1.5 });
}

document.observe('dom:loaded', function() {
  setTimeout(sassyFx, 2500);
});