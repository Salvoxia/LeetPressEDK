<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
	<meta name="description" content="EDK Killboard - {$config->get('cfg_kbtitle')}" />
	<meta name="keywords" content="EDK, killboard, {$config->get('cfg_kbtitle')}, {if $kb_owner}{$kb_owner}, {/if}Eve-Online, killmail" />
	<title>{$kb_title}</title>
	{if isset($style)}<link rel="stylesheet" type="text/css" href="{$theme_url}/{$style}.css" />{/if}
{$page_headerlines}
	<script type="text/javascript" src="{$kb_host}/themes/generic.js"></script>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.4/jquery.min.js"></script> 
<script type="text/javascript" src="{$theme_url}/js/superfish.js"></script> 
<script type="text/javascript" src="{$theme_url}/js/mobilyslider.js"></script> 
<script type="text/javascript" src="{$theme_url}/js/init.js"></script> 
<script type="text/javascript" src="{$theme_url}/js/jquery.fancybox-1.3.4.pack.js"></script> 
<script type="text/javascript" src="{$theme_url}/js/jquery.scrollTo.js"></script> 
<script type="text/javascript" src="{$theme_url}/js/scripts.js"></script> 
<script> 
    $(document).ready(function() { 
        $('ul#navigation').superfish(); 
		$('ul#top-navigation').superfish(); 
    }); 
</script> 
</head>
<body {if isset($on_load)}{$on_load}{/if}>
{$page_bodylines}
	<div id="popup"></div>
	<div id="stuff1"></div>
	<div id="stuff2"></div>
	<div id="stuff3"></div>
	<div id="stuff4"></div>
<!-- BEGIN HEADER --> 
<div id="header-wrapper"> 
	
		<div id="header"> 
	
			<!-- BEGIN TOP NAVIGATION --> 
			
			<!-- END TOP NAVIGATION --> 

			<!-- BEGIN LOGO --> 
			<div id="logo"> 
				<a href="{if $banner_link}{$banner_link}{else}?a=home{/if}">
			<img src="{$kb_host}/banner/{$banner}" border="0" alt="Banner" {if $banner_x && $banner_y}width = "{$banner_x}"{/if} />
		</a> 
			</div> 
			<!-- END LOGO --> 
			<!-- BEGIN NAVIGATION --> 
			<div id="navigation-wrapper"> 
				 


				<ul id="navigation" class="sf-js-enabled sf-shadow">
		{section name=item loop=$menu}
					<li><a class="link" href="{$menu[item].link}">{$menu[item].text}</a></li>
		{/section}
				</ul> 
				
			</div> 
			<!-- END NAVIGATION --> 
	
		</div> 
	
	</div>
<!-- END HEADER --> 
<!-- BEGIN MAIN WRAPPER --> 
<div id="main-wrapper">
<!-- BEGIN MAIN -->
	<div id="main">
<!-- BEGIN POST -->
<div id="post">
<div class="post-entry"> 


					{if isset($message)}
		<div id="boardmessage">{$message}</div>
{/if}
		<div id="page-title">{$page_title}</div>



		<div id="content">
{$content_html}
		</div>
{if $context_html}
		<div id="context">
{section name=item loop=$context_divs}
		<div class="context_element" id="context_{$smarty.section.item.index}">{$context_divs[item]}</div>
{/section}
		</div>
{/if}
{if $profile}
		<div id="profile"><!-- profile -->{$profile_sql} queries{if $profile_sql_cached} (+{$profile_sql_cached} cached) {/if} SQL time {$sql_time}s, {if $esi_time > 0}ESI time {$esi_time}s, {/if}Total time {$profile_time}s<!-- /profile --></div>
{/if}
		<div class="counter"></div>


</div></div> 
<!-- EMD POST --> 
			
</div> 
<!-- END MAIN --> 
		

 
	</div>
<!-- END main-wrapper --> 
<!-- BEGIN FOOTER TOP --> 

<div id="footer-top-wrapper"> 
	
		<div id="footer-top"> 

			<ul id="footer-navigation"> 
{section name=item loop=$menu}
					<li><span> // </span><a class="link" href="{$menu[item].link}">{$menu[item].text}</a></li>
		{/section}
			</ul> 
			
			<div id="back-top"> 
				<a href="#">Back to top</a> 
			</div> 
			
		</div> 
	
	</div>

<!-- END FOOTER TOP --> 
<!-- BEGIN FOOTER BOTTOM WRAPPER --> 
<div id="footer-bottom-wrapper"> 
	
		<!-- BEGIN FOOTER BOTTOM --> 
		<div id="footer-bottom"> 
		
			<span class="footer-bottom-left">EDK Killboard theme by <a href="http://gate.eveonline.com/profile/vecati">Vecati</a>. Based on LeetPress WP Theme.</span> 
			<span class="footer-bottom-right"></span> 
		
		</div> 
		<!-- END FOOTER BOTTOM --> 
	
	</div>
<!-- END FOOTER BOTTOM WRAPPER --> 



</body>
</html>
