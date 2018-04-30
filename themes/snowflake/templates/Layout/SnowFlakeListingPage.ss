<div id="header-container" href="#">
		<a href="{$BaseHref}"><img src="{$ThemeDir}/images/logo_combined.png" /></a>
	</div>
	
<div id="individual-nav-container">
<ul id="individual-nav">
			<li class="single-nav-link"><a href="./#instructions" id="snowflakeform2" class="fancybox.iframe " >Share Yours!</a></li>
</ul>
<div class="clear"></div> 

</div>

	<div id="share" class="full-listing">
	<a name="snowflakes"></a>
		<h2>Your Iowa Snowflakes</h2>
		<ul id="share-images">
			<% loop AllSnowFlakes %>
				<li><a href="$Link"><img src="<% loop Image %>$CroppedImage(130,130).URL<% end_loop %>"></a></li>
			<% end_loop %>
		</ul>
		<ul id="share-links" class="list-page">
			<!--<li><a href="{$BaseHref}/?more=1#snowflakes">See more photos</a></li> -->
			<li><a href="/snowflake">Share Yours!</a></li>
		</ul>
	</div>
<% include Footer %>
