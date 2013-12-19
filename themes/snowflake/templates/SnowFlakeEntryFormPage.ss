<!DOCTYPE html>

<html lang="$ContentLocale">
  <head>
		<% base_tag %>
		<title><% if MetaTitle %>$MetaTitle<% else %>$Title<% end_if %> &raquo; $SiteConfig.Title</title>
		$MetaTags(false)
		<link rel="shortcut icon" href="/favicon.ico" />
		
		<style type="text/css">
			body {
				font-size: 100%;
  				color: #333;
  				background: #FFDF6B;
  				font-family: "Helvetica Neue", Arial, Helvetica, sans-serif; 
  			}
  			
  			fieldset {
  				border: none;
  				padding: 0;
  			}
  			
  			#MyCaptcha{
  				margin-top: 25px;
  			
  			}
			
			.simpleimage{
				margin-top: 5px;
			
			}
			
			.action {
				margin-left: 15px;
			
			}
			
			.close {
				margin-top: 30px;
				display: block;
			
			}
			
			a{ color: #375D81;}
			
			#recaptcha_area {
				-moz-box-shadow: 0px 2px 5px #666;
				-webkit-box-shadow: 0px 2px 5px #666;
				box-shadow: 0px 2px 5px #666; 
			}
			#container {
				padding: 20px;
			
			}
			
			h1{
				margin: 0;
				padding: 10px 0;
			}
			
			p{
				margin: 0;
				padding: 0;
			
			}
			
		.button, #Form_Form_action_SignupAction{
			display: block;
	        background-color: #fff1bd;
	        padding: 6px;
	        -moz-border-radius: 18px;
	        border-radius: 18px; 
	        width: 100px;
	        margin-top: 10px;
	        text-align: center;
	        text-decoration: none;
	        border: none;
        }
        
        #Form_Form_action_SignupAction {
        	width: 300px;
        	font-size: 16px;
        	margin-top: 20px;
        	cursor: pointer;
        
        }
        
        #Form_Form_Image {
			
			margin-top: 20px;        
        
        
        }
        
#Form_Form {
	padding: 10px;
	/*margin: 20px 0;*/
	margin-bottom: 20px;
	border-top: 1px solid #FFF1BD;
	border-bottom: 1px solid #FFF1BD;
	background: #FFE27A;
}

.message {
	margin: 10px 0;
	display: block;
	font-weight: bold;


}
		
		</style>
		

	</head>
<body>

<div id="container">
<h1>Upload Your Snowflake</h1>
<% if StatusMessage %> 
<% control StatusMessage %> 
<div id="message-container">
<p>$Message</p>
<a href="#" onClick="parent.$.fancybox.close()" class="button">Close This</a>
</div>
<% end_control %> 

<% else %>
$Form

<% end_if %>


</div>
</body>
</html>