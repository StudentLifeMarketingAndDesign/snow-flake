<div id="header">
		<h1>Season's Greetings from Sally and Ken Mason</h1>
	</div>
	<div id="video">
		<object width="853" height="505"><param name="movie" value="http://www.youtube.com/v/AWh439L4MmE?fs=1&amp;hl=en_US&amp;rel=0"></param><param name="allowFullScreen" value="true"></param><param name="allowscriptaccess" value="always"></param><embed src="http://www.youtube.com/v/AWh439L4MmE?fs=1&amp;hl=en_US&amp;rel=0" type="application/x-shockwave-flash" allowscriptaccess="always" allowfullscreen="true" width="853" height="505"></embed></object>
	</div>
	<div id="instructions">
		<h2>Create Your Own University of Iowa Snowflake</h2>
		<ul>
			<li class="download"><a href="{$BaseHref}assets/i-snowflake.pdf"><strong>Download</strong> Click here to download the PDF template.</a></li>
			<li class="create"><strong>Create</strong> Print, fold and cut out your snowflake.</a></li>
			<li class="share last"><a href="./submission-form/" id="snowflakeform" class="iframe" ><strong>Share</strong> Snap a photo and click here to share with us!</a></li>
		</ul>
	</div>
	<div id="share">
	<a name="snowflakes"></a>
		<h2>Your Iowa Snowflakes</h2>
		<ul id="share-images">
			<li><a href="/snowflake/assets/sallysnowflake_full.jpg"><img src="/snowflake/assets/sallysnowflake_cropped.jpg"></a></li> 
			<% control SnowFlakes %>
			<li><a href="<% control Image %>$SetWidth(450).URL<% end_control %>"><img src="<% control Image %>$CroppedImage(130,130).URL<% end_control %>"></a></li>
			<% end_control %>
		</ul>
		<ul id="share-links">
			<li><a href="./list">See all photos</a></li>
			<li><a href="./submission-form/" id="snowflakeform2" class="iframe" >Share your photo</a></li>
		</ul>
	</div>
	<div id="footer">
		<div class="logo"><a href="http://www.uiowa.edu/president"><img src="{$ThemeDir}/images/ui_logo.png" alt="The University of Iowa Logo" align="left" /></a></div>
		<p>&copy;$Now.Year The University of Iowa. Site by IMU Marketing &amp; Design</p>
	</div>
