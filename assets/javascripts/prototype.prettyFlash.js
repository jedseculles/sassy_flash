var hideFlashes = function() {
  $$('.notice', '.warning', '.error', '.alert').each(function(e) {
    if (e) {
      Effect.Fade(e, {
        duration: 1.5
      });
    }
  });
};

document.observe('dom:loaded', function() {
  setTimeout(hideFlashes, 2500);
});