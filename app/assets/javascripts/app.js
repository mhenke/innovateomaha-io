
// Flexi Slider
//  Target sliders individually with different properties
  $(window).load(function() {
	  
    $('.simple-slider').flexslider({
        animation: "slide",
		slideshow: false,
		controlNav: false,
		smoothHeight: true,
        start: function(slider){
          $('body').removeClass('loading');
        }
      });
	
	$('.gallery-slider').flexslider({
        animation: "slide",
		controlNav: "thumbnails",
        start: function(slider){
          $('body').removeClass('loading');
        }
	});
 
    $('#main-slider').flexslider({
        animation: "slide",
		controlNav: false,
        start: function(slider){
          $('body').removeClass('loading');
        }
	});
  })