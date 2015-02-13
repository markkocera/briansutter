$(window).load(function() {
  resizePortrait();
});

$(window).resize(function() {
  resizePortrait();
});

var resizePortrait = function() {
  if ($('.project-images-portrait-gallery').length) {
    $('.project-images-portrait-gallery').each(function() {
      var $this = $(this);
      var a = $this.find('.landscape-first').height();
      var b = $this.find('.landscape-second').height();
      $('.portrait figure').height(a + b);
    });
  }
};

$('p.brian img').on('mouseover', function() {
  $this = $(this);
  $this.prop('src', $this.data('mouseover'));
});

$('p.brian img').on('mouseout', function() {
  $this = $(this);
  $this.prop('src', $this.data('mouseout'));
});
