$(document).ready(function(){
	$('#instructions ul').append('<div class="clear"></div>')
	$('#share').append('<div class="clear"></div>')
	$('#share ul li:nth-child(6n)').css('margin-right', '0');
   /* $('#share-images li a').lightBox();*/
    $(".snowflakeform").fancybox(
    	{	'onStart' : function(){document.getElementById("video").style.visibility = 'hidden';},
    		'onClosed' : function(){document.getElementById("video").style.visibility = 'visible';},
    		'centerOnScroll' : true,
    		padding: 0,
    		minHeight: 450,
    		maxHeight: 500
		}
	);
	/*$('#share-images li a').fancybox(
    	{	'onStart' : function(){document.getElementById("video").style.visibility = 'hidden';},
    		'onClosed' : function(){document.getElementById("video").style.visibility = 'visible';},
    		'centerOnScroll' : true,
		    	maxWidth	: 800,
				maxHeight	: 600,
				fitToView	: false,
				width		: '70%',
				height		: '70%',
				autoSize	: false,
				closeClick	: false,
				openEffect	: 'none',
				closeEffect	: 'none',
				padding: 0
		}
	);*/

});