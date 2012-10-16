$(document).ready(function() {
  $('nav ul li').each(function() {
   if (jQuery(this).children().length === 0 ) {
     jQuery(this).addClass('active');
   }});
});