// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
document.observe('dom:loaded', function() {
  setTimeout(hideFlashes, 3000);
});

var hideFlashes = function() {
  $$('.notice', '.warning', '.error').each(function(e) {
    if (e) Effect.Fade(e, { duration: 2 });
  })
}