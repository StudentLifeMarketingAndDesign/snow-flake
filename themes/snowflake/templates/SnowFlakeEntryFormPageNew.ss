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
		
		
		</style>
		

	</head>
<body>
<% if StatusMessage %> 
<% control StatusMessage %> 

$Message 

<% end_control %> 
<% end_if %>
$Form
</body>
</html>