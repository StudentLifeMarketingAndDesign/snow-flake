<!DOCTYPE html>
<html lang="en" class="no-js">
<head>
<% base_tag %>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

  <title>University of Iowa Snowflake #iowasnowflake</title>
  <meta name="description" content="Seasons Greetings from The University of Iowa #iowasnowflake">
  <meta name="author" content="Student Life Marketing &amp; Design">
	<% require themedCSS(layout) %> 


  
</head>

<!--[if lt IE 7 ]> <body class="ie6"> <![endif]-->
<!--[if IE 7 ]>    <body class="ie7"> <![endif]-->
<!--[if IE 8 ]>    <body class="ie8"> <![endif]-->
<!--[if IE 9 ]>    <body class="ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <body> <!--<![endif]-->

<div id="container">

<div id="header-container" href="#">
		<a href="{$BaseHref}"><img src="{$ThemeDir}/images/logo_combined.png" /></a>
	</div>
	
<div id="individual-nav-container">
<ul id="individual-nav">
			<li><a href="./list">See All Snowflakes</a></li>
			<li><a href="./#instructions" id="snowflakeform2" class="fancybox.iframe" >Upload Your Snowflake!</a></li>
</ul>

<input type="text" name="fname" value="$AbsoluteLink" placeholder="tests" />

<!-- AddThis Button BEGIN -->
<div class="addthis_toolbox addthis_default_style addthis_32x32_style">
<a class="addthis_button_preferred_1"></a>
<a class="addthis_button_preferred_2"></a>
<a class="addthis_button_preferred_3"></a>
<a class="addthis_button_preferred_4"></a>
<a class="addthis_button_compact"></a>
<a class="addthis_counter addthis_bubble_style"></a>
</div>
<script type="text/javascript" src="http://s7.addthis.com/js/250/addthis_widget.js#pubid=xa-4ee119ba73961338"></script>
<!-- AddThis Button END -->
<div class="clear"></div> 
</div>

<div id="individual-image-container">
	<% control PrevNextPage(prev) %>
		<% if Link %>
	      <a href="$Link" title="Go to $Title"><img src="{$ThemeDir}/images/prev.png" class="previous" /></a> 
	     <% end_if %>  
	<% end_control %>
	
	<img src="<% control Image.SetWidth(500) %>$URL<% end_control %>" width="500" class="individual-image" />
	
	<% control PrevNextPage(next) %>   
		<% if Link %>           
	      <a href="$Link" title="Go to $Title"><img src="{$ThemeDir}/images/next.png" class="next" /> </a>
	     <% end_if %>
	<% end_control %>
	
</div>	
	<% include Footer %>
</div>



</body>
</html>