<div id="header">
		<h1>Season's Greetings from Sally and Ken Mason</h1>
	</div>
<div id="video">
	<iframe width="853" height="505" src="//www.youtube.com/embed/AWh439L4MmE" frameborder="0" allowfullscreen></iframe>
</div>
	<div id="instructions">
		<h2>Create Your Own University of Iowa Snowflake</h2>
		<ul>
			<li class="download"><a href="{$BaseHref}assets/i-snowflake.pdf"><strong>Download</strong> Click here to download the PDF template.</a></li>
			<li class="create"><strong>Create</strong> Print, fold and cut out your snowflake.</a></li>
			<li class="share last"><a href="./submission-form/" class="fancybox.iframe snowflakeform" ><strong>Upload</strong> Share your snowflake with the tag <a href="https://twitter.com/search?q=%23iowasnowflake&src=typd">#iowasnowflake</a></li>
		</ul>
	</div>
	<div id="share">
	<a name="snowflakes"></a>

		<h2>Your Iowa Snowflakes</h2>
		<div id="homepage-nav-container">
<ul id="homepage-nav">
			<li><a href="./list">See All Snowflakes</a></li>
			<li><a href="./submission-form/" id="snowflakeform2" class="fancybox.iframe snowflakeform" >Upload Your Snowflake!</a></li>
</ul>
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
</div>		<div class="clear"></div>
		<ul id="share-images">
			<% loop SnowFlakes %>
			<li><a href="$Link" class="fancybox.iframe" rel="snowflakes"><img src="<% loop Image %>$CroppedImage(130,130).URL<% end_loop %>"></a></li>
			<% end_loop %>
		</ul>

	</div>
	<% include Footer %>
