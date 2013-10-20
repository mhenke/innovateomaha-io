


// Slider Revolution

jQuery('.mainslider').revolution(
{
		delay:9000,
		startheight:490,
		startwidth:950,

		thumbWidth:100,
		thumbHeight:50,
		thumbAmount:4,

		onHoverStop:"on",
		hideThumbs:200,
		navigationType:"thumb",
		navigationStyle:"round",
		navigationArrows:"verticalcentered",

		touchenabled:"on",

		navOffsetHorizontal:0,
		navOffsetVertical:0,
		shadow:1,
		fullWidth:"off"
});


$(function() {
            $(".contentHover").hover(
                function() {
                    $(this).children(".content").fadeTo(200, 0.25).end().children(".hover-content").fadeTo(200, 1).show();
                },
                function() {
                    $(this).children(".content").fadeTo(200, 1).end().children(".hover-content").fadeTo(200, 0).hide();
                });
        });
		
// Flexi Slider
  <!-- Target sliders individually with different properties -->
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