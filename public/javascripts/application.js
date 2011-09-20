/*jslint white: false, onevar: false, browser: true, devel: true, undef: true, nomen: true, laxbreak: true, eqeqeq: true, plusplus: true, bitwise: true, regexp: true, strict: false, newcap: true, immed: true, laxbreak: true */
/*global jQuery, $, Raphael */

var flash = {

	injectFlashBox: function() {
		$('#flash').addClass("flash_wrap");
		$("#flash").hide();
	},

	setFlash: function() {
		var flash_message = $("#flash").html();
		var msg = $.trim(flash_message);
		if (msg !== "") {
			flash.activateNotice(flash_message);
		}
	},

	activateNotice: function(flash_message) {
		var $flash_div = $("#flash");
		$flash_div.html(flash_message);
		$flash_div.show("slide", {
			direction: 'up'
		});
		// Set the fadeout
		setTimeout(function() {
			$flash_div.hide("slide", {
				direction: 'up'
			},
			function() {
				$flash_div.html("");
				$flash_div.hide();
			});
		},
		2500);
	}

};

var forms = {
	
	hideTeacherFields: function() {
		var teacherFields = $("#teacher_fields");
		teacherFields.hide();
	},
	
	showTeacherFields: function() {
		var allRadios = $(".radio_buttons"),
				teacherRadio = $("#inquiry_type_teacher"),
				teacherFields = $("#teacher_fields"),
				involvedCheckBox = $("#involved_interest");
				
		allRadios.click(function() {
			if (teacherRadio.is(':checked') && involvedCheckBox.is(':checked')) {
				teacherFields.slideDown();
			} else {
				teacherFields.slideUp();
			}
		});
		
		involvedCheckBox.click(function() {
			if (teacherRadio.is(':checked') && involvedCheckBox.is(':checked')) {
				teacherFields.slideDown();
			} else {
				teacherFields.slideUp();
			}
		});
	},
	
	charCounter: function() {
		var textField = $('#blog_meta_description'),
				charCount = $('#char-count');
		
		textField.live('keyup keydown', function(e) {
			var maxLen = 150;
			var left = maxLen - $(this).val().length;
			charCount.html(left);
		});
	}
	
};

var share = {
	
};

var video = {
	
	adminVideo: function() {
		flowplayer("video", "/flowplayer-3.2.7.swf", {
  		clip: {
  			url: '../videos/ES.m4v'
  		},
  		plugins: {
      	controls: {
        	url: '/flowplayer.controls-3.2.5.swf',
          playlist: false,
          backgroundColor: '#000', 
          height: 18,
          time: false,
          fullscreen: true,
          volume: false,
          bufferColor: '#666666',
          buttonColor: '#666666',
          tooltips: {
          	buttons: true, 
            fullscreen: 'Fullscreen' 
          } 
        }
  		}
  	});
	}
	
}

var base = {
	
	indexBanners: function() {
    var horizontal = true,
     		$panels = jQuery('#slider .panel'),
     		$container = jQuery('#slider .scrollContainer'),
     		$scroll = jQuery('#slider .scroll').css('overflow', 'hidden'),
				$nav = jQuery('#banner_nav .navigation a'),
		 		$prevNav = jQuery("div.banner_button.l"),
				$nextNav = jQuery("div.banner_button.r");
    
    var scrollOptions = {
      target: $scroll,
      items: $panels,
      navigation: $nav,
      prev: $prevNav,
      next: $nextNav,
      axis: 'xy',
      duration: 500,
      easing: 'swing',
      onAfter: trigger
    };
    
    if (horizontal) {
      $panels.css({ 'float' : 'left', 'position' : 'relative'});
      if (typeof $panels[0] == 'undefined') {
      
      } else {
        $container.css('width', $panels[0].offsetWidth * $panels.length);
      }
    }
    
    $nav.bind('mouseover, click', selectNav);

    function selectNav() {
      jQuery(this).parents('ul:first').find('a').removeClass('selected active').end().end().addClass('active selected');
      jQuery(this).parents('ul:first').find('li').removeClass('selected active').end().end().addClass('active selected');
    }
    
    function trigger(data) {
      var el = jQuery('#banner_nav .navigation').find('a[href$="' + data.id + '"]').get(0);
      selectNav.call(el);
    }

    jQuery('#slider').serialScroll(scrollOptions);
    $.localScroll(scrollOptions);
  },
	
	triggerBanner: function() {
		var bannerButton = $("div.banner_button.r");
		bannerButton.trigger("click");
	},
	
	stopProp: function() {
		$('.stop_prop').bind('click', function(e) {
			e.stopPropagation();
		});
	},

	setFade: function(e) {
		e.effect("highlight", {
			color: '#cff2ff'
		},
		1000);
	}

};

//**********Initialize Document**********//
$(document).ready(function() {
	// injects flash div into dom
	flash.injectFlashBox();
	flash.setFlash();
});
