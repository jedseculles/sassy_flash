var sassyFx = function() {
  $$('.flash_notice', '.flash_warning', '.flash_error', '.flash_alert').each(function(e) {
    if (e) {
      Effect.Fade(e, {
        duration: 1.5
      });
    }
  });
};

document.observe('dom:loaded', function() {
  setTimeout(sassyFx, 2500);
});