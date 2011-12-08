$(document).ready(function(){
	$('#instructions ul').append('<div class="clear"></div>')
	$('#share').append('<div class="clear"></div>')
	$('#share ul li:nth-child(6n)').css('margin-right', '0');
    $('#share-images li a').lightBox();
    $("#snowflakeform").fancybox(
    	{	'onStart' : function(){document.getElementById("video").style.visibility = 'hidden';},
    		'onClosed' : function(){document.getElementById("video").style.visibility = 'visible';},
    		'centerOnScroll' : true
		}
	);
	
	  $("#snowflakeform2").fancybox(
    	{	'onStart' : function(){document.getElementById("video").style.visibility = 'hidden';},
    		'onClosed' : function(){document.getElementById("video").style.visibility = 'visible';},
    		'centerOnScroll' : true
		}
	);
});