$(document).ready(function() {
  $('p.customfont.title').click(function() {
    $('p.customfont.title').fadeOut(1000);
    $('p.customfont.p1').delay(1000).css('visibility','visible').hide().fadeIn(2500);
    $('p.customfont.p2').delay(2500).css('visibility','visible').hide().fadeIn(2500);

    $('.right1').delay(3500).css('visibility','visible').hide().fadeIn(2500).delay(2500).fadeOut(1500);
    $('.left1').delay(4500).css('visibility','visible').hide().fadeIn(2500).delay(2500).fadeOut(1500);
    $('.right2').delay(5500).css('visibility','visible').hide().fadeIn(2500).delay(2500).fadeOut(1500);
    $('.left2').delay(6500).css('visibility','visible').hide().fadeIn(2500).delay(2500).fadeOut(1500);
    $('.right3').delay(7500).css('visibility','visible').hide().fadeIn(2500).delay(2500).fadeOut(1500);
    $('.left3').delay(8500).css('visibility','visible').hide().fadeIn(2500).delay(2500).fadeOut(1500);
    $('.right4').delay(9500).css('visibility','visible').hide().fadeIn(2500).delay(2500).fadeOut(1500);
    $('.left4').delay(10500).css('visibility','visible').hide().fadeIn(2500).delay(2500).fadeOut(1500);
    $('.right5').delay(11500).css('visibility','visible').hide().fadeIn(2500).delay(2500).fadeOut(1500);

    $('.logo').delay(14500).css('visibility','visible').hide().fadeIn(5000);
  });
});
