
	<div id="share">
	<a name="snowflakes"></a>
		<h2>Your Iowa Snowflakes</h2>
		<ul id="share-images">
			<li><a href="/snowflake/assets/sallysnowflake_full.jpg"><img src="/snowflake/assets/sallysnowflake_cropped.jpg"></a></li> 
			<% control AllSnowFlakes %>
				<li><a href="<% control Image %>$SetWidth(450).URL<% end_control %>"><img src="<% control Image %>$CroppedImage(130,130).URL<% end_control %>"></a></li>
			<% end_control %>
		</ul>
		<ul id="share-links" class="list-page">
			<!--<li><a href="{$BaseHref}/?more=1#snowflakes">See more photos</a></li> -->
			<li><a href="/snowflake">Share your photo</a></li>
		</ul>
	</div>
	<div id="footer">
		<div class="logo"><a href="http://www.uiowa.edu/president"><img src="{$ThemeDir}/images/ui_logo.png" alt="The University of Iowa Logo" align="left" /></a></div>
		<p>&copy;$Now.Year The University of Iowa. Site by IMU Marketing &amp; Design</p>
	</div>
