```<!DOCTYPE html>
<html lang="en-us" class=" styleguide">
<head>
<!--
                     _
           . -  ` : `   '.' ``  .            - '` ` .
         ' ,gi$@$q  pggq   pggq .            ' pggq
        + j@@@P*\7  @@@@   @@@@         _    : @@@@ !  ._  , .  _  - .
     . .  @@@K      @@@@        ;  -` `_,_ ` . @@@@ ;/           ` _,,_ `
     ; pgg@@@@gggq  @@@@   @@@@ .' ,iS@@@@@Si  @@@@  .6@@@P' !!!! j!!!!7 ;
       @@@@@@@@@@@  @@@@   @@@@ ` j@@@P*"*+Y7  @@@@ .6@@@P   !!!!47*"*+;
     `_   @@@@      @@@@   @@@@  .@@@7  .   `  @@@@.6@@@P  ` !!!!;  .    '
       .  @@@@   '  @@@@   @@@@  :@@@!  !:     @@@@7@@@K  `; !!!!  '  ` '
          @@@@   .  @@@@   @@@@  `%@@@.     .  @@@@`7@@@b  . !!!!  :
       !  @@@@      @@@@   @@@@   \@@@$+,,+4b  @@@@ `7@@@b   !!!!
          @@@@   :  @@@@   @@@@    `7%S@@hX!P' @@@@  `7@@@b  !!!!  .
       :  """"      """"   """"  :.   `^"^`    """"   `""""" ''''
        ` -  .   .       _._    `                 _._        _  . -
                , ` ,glllllllllg,    `-: '    .~ . . . ~.  `
                 ,jlllllllllllllllp,  .!'  .+. . . . . . .+. `.
              ` jllllllllllllllllllll  `  +. . . . . . . . .+  .
            .  jllllllllllllllllllllll   . . . . . . . . . . .
              .l@@@@@@@lllllllllllllll. j. . . . . . . :::::::l `
            ; ;@@@@@@@@@@@@@@@@@@@lllll :. . :::::::::::::::::: ;
              :l@@@@@@@@@@@@@@@@@@@@@l; ::::::::::::::::::::::;
            `  Y@@@@@@@@@@@@@@@@@@@@@P   :::::::::::::::::::::  '
             -  Y@@@@@@@@@@@@@@@@@@@P  .  :::::::::::::::::::  .
                 `*@@@@@@@@@@@@@@@*` `  `  `:::::::::::::::`
                `.  `*%@@@@@@@%*`  .      `  `+:::::::::+`  '
                    .    ```   _ '          - .   ```     -
                       `  '                     `  '  `

	You're reading. We're hiring.
	https://www.flickr.com/jobs/
-->
	<title>Welcome to Flickr - Photo Sharing</title>
	<script data-script-purpose="page_timing" nonce="4e1322febffb1fea89a198bddeb31773">
	var page_timing = {}; page_timing.modules = {}; page_timing.page_start = new Date().getTime();
		</script>
	<script data-script-purpose="page_timing" nonce="4e1322febffb1fea89a198bddeb31773">
	 var farm_timing = {}; farm_timing.page_start = new Date().getTime();
	</script>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta http-equiv="x-dns-prefetch-control" content="on">
	<link rel="dns-prefetch" href="//combo.staticflickr.com">
			<link rel="dns-prefetch" href="//yui-s.yahooapis.com">
		<link rel="dns-prefetch" href="//live.staticflickr.com">
	<link rel="dns-prefetch" href="//api.flickr.com">
	<link rel="dns-prefetch" href="//www.flickrpro.com">
	<link rel="dns-prefetch" href="//www.flickrprints.com">
	<meta name="description" content="Flickr is almost certainly the best online photo management and sharing application in the world. Show off your favorite photos and videos to the world, securely and privately show content to your friends and family, or blog the photos and videos you take with a cameraphone.">
	<meta http-equiv="imagetoolbar" content="no">
	<meta http-equiv="X-UA-Compatible" content="chrome=1">


<meta name="robots" content="noarchive">

	<meta name="p:domain_verify" content="16825c8b4764696afbc9d4c351ee61b5"/>	<meta name="viewport" content="width=1036">
		<meta name="application-name" content="Welcome to Flickr - Photo Sharing"/>
	<link href="https://plus.google.com/103080138884706395602/posts" rel="publisher">
	<script nonce="4e1322febffb1fea89a198bddeb31773">
	page_timing.head_js_start = new Date().getTime();
	F = window.F || {};

		
		
(function(F) {


/*jslint white: false, undef: false, browser: true, eqeqeq: true, regexp: false, newcap: true, immed: true, onevar: false, plusplus: false */
/*global F: false, YUI: false, window: false */ 

	// ================================================================================
	// Constants and variables.
	// ================================================================================

	// --------------------------------------------------------------------------------
	// Constants.
	// --------------------------------------------------------------------------------

	var TIMEOUT = 10000, // 10 seconds
		ACTIVATE_COOKIE_CONSENT_CLIENT_SIDE = false,
		cookieConsentObjectName = "ccc",
		cookieLevelBuckets = { // cookie level buckets for cookie consent
			"required": ["ccc","cookie_accid","cookie_epass","cookie_l10n","cookie_session","dcbn","ffs","ffs","flrb","flrbfd","flrbgdrp","flrbgmrp","flrbgrp","flrbp","flrbrgs","flrbrst","flrbs","flrtags","flrbase","liqph","liqpw","localization","RT","rtna","sa","s_sq","vp","xb"],
			"functional": [],
			"advertising": [],
		};

	// --------------------------------------------------------------------------------
	// Variables.
	// --------------------------------------------------------------------------------
	
	var pollers = { },
		pollerCount = 0,
		cachedEls = { },
		testDiv = document.createElement('div'),
		support = {
		nativeTrim: typeof String.prototype.trim === 'function',
		classList: 'classList' in testDiv
		};

	// ================================================================================
	// Attach the public methods to the F object.
	// ================================================================================

	F.util = {

		// ================================================================================
		// Objects.
		// ================================================================================

		clone: function (o) {
			if (o === null || typeof o !== 'object') {
				return o;
			}
			var c = new o.constructor();
			for (var k in o) {
				c[k] = F.util.clone(o[k]);
			}
			return c;
		},

		// ================================================================================
		// Strings.
		// ================================================================================

		trim: function (str) {
			if (support.nativeTrim) {
				return str.trim();
			}
			else {
				return str.replace(/^\s+|\s+$/g, '');
			}
		},

		// ================================================================================
		// DOM.
		// ================================================================================

		// --------------------------------------------------------------------------------
		// Cache references to elements, since we may need them repeatedly.
		// --------------------------------------------------------------------------------

		getElementById: function (id) {
			if (!cachedEls[id]) {
				cachedEls[id] = document.getElementById(id);
			}
			return cachedEls[id];
		},

		// --------------------------------------------------------------------------------
		// Methods for adding, detecting, and removing classes.
		// --------------------------------------------------------------------------------

		hasClass: function (el, className) {
			if (!el) {
				return false;
			}
			if (support.classList) {
				return el.classList.contains(className);
			}
			else {
				var re = new RegExp('(?:^|\\s+)' + className + '(?:\\s+|$)');
					return re.test(el.className);
			}
		},

		addClass: function (el, className) {
			if (!el) {
				return;
			}
			if (support.classList) {
				el.classList.add(className);
			}
			else if (!F.util.hasClass(el, className)) {
				el.className = F.util.trim([el.className, className].join(' '));
			}
		},

		removeClass: function (el, className) {
			if (support.classList) {
				el.classList.remove(className);
			}
			else if (className && F.util.hasClass(el, className)) {
				el.className = F.util.trim(el.className.replace(new RegExp('(?:^|\\s+)' + className + '(?:\\s+|$)'), ' '));

				if (F.util.hasClass(el, className) ) { // In case of multiple adjacent.
					F.util.removeClass(el, className);
				}
			}
		},

		// --------------------------------------------------------------------------------
		// Do something as soon as an element (with an ID) is available on the page.
		// --------------------------------------------------------------------------------	

		whenElementExists: function (id, callback, interval) {

			var iterations = 0,
				pollerId = id + pollerCount++;
			
			interval = interval || 10;

			// Function used to check and call the callback.
		
			var checkElementAndCallback = function () {

				var el = (id === 'body') ? document.body : F.util.getElementById(id);
				if (el) {
					clearInterval(pollers[pollerId]);
					callback(el);
					return true;
				}
				else if (++iterations * interval >= TIMEOUT) {
					clearInterval(pollers[pollerId]);
					return false;
				}
			};

			// First check to see if it exists.

			if (!checkElementAndCallback()) {

				// Otherwise set up a poller.

				pollers[pollerId] = setInterval(checkElementAndCallback, interval);
			}
		},

		// ================================================================================
		// Events.
		// ================================================================================

		addListener: function (el, type, fn, capture) {
			if (el.addEventListener) {
				el.addEventListener(type, fn, capture);
			}
			else if (el.attachEvent) {
				el.attachEvent('on' + type, fn);
			}
		},	

		// ================================================================================
		// Cookies.
		// ================================================================================

		setCookie: function (name, value, days, path) {
		
			var date, 
				expires = '', 
				path = path || '/';
			if (days) {
				date = new Date();
				date.setTime(date.getTime() + (days * 24 * 60 * 60 * 1000));
				expires = '; expires=' + date.toGMTString();
			}
			if (ACTIVATE_COOKIE_CONSENT_CLIENT_SIDE) {
				var cookieLevel = F.util.getCookieLevel(name),
					consentContext = F.util.getCookieConsentContext();
				if (cookieLevel === null || cookieLevel <= consentContext.info.cookieBlock.level) {
					document.cookie = name + '=' + value + expires + '; path=' + path;
				}
			} else {
				document.cookie = name + '=' + value + expires + '; path=' + path;
			}

		},

		getCookieLevel: function (cookieName) {
			if (cookieLevelBuckets.required.indexOf(cookieName) !== -1) {
				return 0;
			} else if (cookieLevelBuckets.functional.indexOf(cookieName) !== -1) {
				return 1;
			} else if (cookieLevelBuckets.advertising.indexOf(cookieName) !== -1) {
				return 2;
			} else {
				return null;
			}
		},

		getCookieConsentContext: function () {
			var cookieContext = decodeURIComponent(F.util.getCookie(cookieConsentObjectName)),
				path = '/',
				newCookieContext = {
					managed: 0, // Verifying whether user has given their consent
					changed: 0, // Determines whether consent has been changed on the client, because the level will be set, but no removal action taken yet
					info: {
						cookieBlock: {
							level: 0, // 0 = required only, 1 = functional, 2 = advertising
							blockRan: 0, // Verifying whether the blocking of cookies/trackers occurred
						},
					},
				};

			if (cookieContext) {
				try {
					newCookieContext = JSON.parse(cookieContext);
				} catch (err) {
					document.cookie = cookieConsentObjectName + '=' + JSON.stringify(newCookieContext) + new Date((new Date()).getTime() + 24 * 60 * 60 * 1000 * 30) + '; path=' + path;
				}
			} else { // Assume zero cookie load preferences, create cookie context
				document.cookie = cookieConsentObjectName + '=' + JSON.stringify(newCookieContext) + new Date((new Date()).getTime() + 24 * 60 * 60 * 1000 * 30) + '; path=' + path;
			}
			return newCookieContext;
		},

		getCookie: function (name) {

			var i, 
				cookies = ' ' + document.cookie + ';';

			name = ' ' + name + '=';

			if ((i = cookies.indexOf(name)) >= 0) {
				i += name.length;
				cookies = cookies.substring(i, cookies.indexOf(';', i));
				return cookies;
			}
		},

		removeCookie: function (name) {
			return F.util.setCookie(name, '', 0);
		}
	};
	
	// ================================================================================
	// Cleanup.
	// ================================================================================
	
	testDiv = null;

}(F));

				

(function(wipe_msg, root_url, bust_image_search, is_debug) {

var w=window,d=document,top_loc=top.location,self_loc=self.location,referrer=d.referrer,flickr_regex=/^[A-Za-z]+:\/{2,3}(?:[0-9\-A-Za-z]+\.)*flickr\.(?:(?:com)|(?:net))(?::\d+)?(?:\/[^?#]*)?(?:\?[^#]*)?(?:#.*)?$/i,self_is_offline=(self_loc.protocol&&self_loc.protocol.indexOf('http')<0),self_is_flickr=flickr_regex.test(self_loc),self_url=self_is_flickr?self_loc.href:root_url+'/',photo_page_re_result=self_is_flickr&&/\/photos\/[^\/]+\/(\d+)/i.exec(self_loc.pathname),photo_id=photo_page_re_result&&parseInt(photo_page_re_result[1],10),frame_whitelist_regex=/^[A-Za-z]+:\/{2,3}(?:[0-9\-A-Za-z]+\.)*(?:(?:flickr\.(?:(?:com)|(?:net)))|(?:yahoo\.(?:(?:com)|(?:net)|(?:(?:com?\.)?[A-Za-z]{2})))|(?:creativecommons\.org)|(?:eyewonderlabs\.com)|(?:stumbleupon\.com)|(?:screenqueri\.es)|(?:su\.pr)|(?:bing\.com)|(?:bingj\.com)|(?:webcache\.googleusercontent\.com)|(?:google\.(?:(?:com)|(?:(?:com?\.)?[A-Za-z]{2}))))(?::\d+)?(?:\/[^?#]*)?(?:\?[^#]*)?(?:#.*)?$/i,self_whitelist_regex=/^[A-Za-z]+:\/{2,3}(?:[0-9\-A-Za-z]+\.)*(?:(?:flickr\.(?:(?:com)|(?:net)))|(?:yahoo\.(?:(?:com)|(?:net)|(?:(?:com?\.)?[A-Za-z]{2})))|(?:translate\.google\.com)|(?:translate\.googleusercontent\.com)|(?:web\.archive\.org))(?::\d+)?(?:\/[^?#]*)?(?:\?[^#]*)?(?:#.*)?$/i,image_search_regex=/^[A-Za-z]+:\/{2,3}(?:[0-9\-A-Za-z]+\.)*(?:(?:(?:google)|(?:bing))\.(?:(?:com)|(?:(?:com?\.)?[A-Za-z]{2})))(?::\d+)?(?:\/[^?#]*)?(?:\?[^#]*)?(?:#.*)?$/i,referrer_is_flickr=flickr_regex.test(referrer),referrer_is_whitelisted=frame_whitelist_regex.test(referrer),referrer_is_image_search=image_search_regex.test(referrer),faq_url=root_url+'/frame_redir.gne?source='+encodeURIComponent(referrer)+'&dest='+encodeURIComponent(root_url+'/help/blogging/#1392237'),redir_url=root_url+'/frame_redir.gne?source='+encodeURIComponent(referrer)+'&dest='+encodeURIComponent(self_url),should_bust,should_wipe,base;function redirect(){w.onerror=function(){return true;};if(typeof top_loc.replace==='function'){top_loc.replace(redir_url);}else{top_loc.href=redir_url;}} function wipe(){var logo_w,font_size,win_width,html,msg;w.onerror=function(){return true;};logo_w=162;font_size='12px';d.head.parentNode.removeChild(d.head);setInterval(function(){if(d&&d.body){if(d.body.lastChild&&d.body.lastChild.className&&d.body.lastChild.className==='wipe-msg'){}else{msg=wipe_msg.replace('{url}',redir_url).replace('{faq}',faq_url);if(typeof w.innerWidth==='number'){win_width=w.innerWidth;}else if(d.body.clientWidth){win_width=d.body.clientWidth;} if(win_width&&win_width<162){logo_w=win_width;font_size='10px';} html='<div class="wipe-msg" style="font-size:'+font_size+';text-align:left;"><div style="margin-bottom:3px;"><img alt="Flickr" width="'+logo_w+'" src="https://combo.staticflickr.com/pw/images/logo_home.png"></div><div style="padding-left:5px;line-height:1.2em;">'+msg+'</div></div>';d.body.style.margin='0';d.body.innerHTML=html;}}},200);} function get_frame_depth(){var win=self,frame_depth=0;while(win!==win.parent){frame_depth+=1;win=win.parent;} return frame_depth;} function debug(){if(is_debug){console.log(arguments);}} if(self_is_flickr&&self_loc===top_loc){}else if(self_is_offline){}else if(!self_is_flickr&&!self_whitelist_regex.test(self_loc)){should_wipe=true;}else if(bust_image_search&&photo_id&&referrer_is_image_search){should_bust=true;}else if(!referrer_is_whitelisted&&get_frame_depth()>0){should_wipe=true;}else if(!referrer_is_flickr&&get_frame_depth()>1){should_wipe=true;} if(is_debug){debug({self_is_flickr:self_is_flickr,top_loc:top_loc,self_loc:self_loc,referrer:referrer,self_is_offline:self_is_offline,self_is_flickr:self_is_flickr,self_url:self_url,photo_page_re_result:photo_page_re_result,photo_id:photo_id,referrer_is_flickr:referrer_is_flickr,referrer_is_whitelisted:referrer_is_whitelisted,referrer_is_image_search:referrer_is_image_search,self_is_whitelisted:self_whitelist_regex.test(self_loc),frame_depth:get_frame_depth(),faq_url:faq_url,redir_url:redir_url,should_bust:should_bust,should_wipe:should_wipe,base:base});}else{if(should_bust){setTimeout(function(){w.onbeforeunload=w.onunload=null;redirect();},1000);setTimeout(wipe,2000);redirect();}else if(should_wipe){wipe();}else if(referrer_is_whitelisted&&!referrer_is_flickr){base=document.createElement('base');base.target='_top';document.getElementsByTagName('head')[0].appendChild(base);}}

}('We\'re sorry, Flickr <a href="{faq}" target="_top">doesn\'t allow embedding within frames</a>.<br><br>If you\'d like to view this content, <a href="{url}" target="_top">please click here</a>.', 'https://www.flickr.com', true, false));

	
		(function(F){var el,w,d,n,ua,ae,is_away_from_tab,de,disabled=false,assigned_events=false;w=window;d=w.document;n=w.navigator;ua=n&&n.userAgent;var supportsActiveElt=false;if('activeElement'in document){supportsActiveElt=true;} function doF(e,me){if(is_away_from_tab&&e.target===w){is_away_from_tab=false;}else{el=e.target||me;}} function doB(e){if(el!==w&&e.target===w){is_away_from_tab=true;}else{el=undefined;}} function get(){var nt,in_doc;if(supportsActiveElt){el=document.activeElement;}else if(el&&(nt=el.nodeType)){if(d.contains){if((ua&&ua.match(/Opera[\s\/]([^\s]*)/))||nt===1){in_doc=d.contains(el);}else{while(el){if(d===el){in_doc=true;} el=el.parentNode;}}}else if(d.compareDocumentPosition){if(d===el||!!(d.compareDocumentPosition(el)&16)){in_doc=true;}}else{var myEl=el;while(myEl){if(d===myEl){in_doc=true;} myEl=myEl.parentNode;}}} return in_doc?el:undefined;} function isInput(){var n=get(),nn;if(!n){return false;} nn=n.nodeName.toLowerCase();return(nn==='input'||nn==='textarea');} function instrumentInputs(){if(!assigned_events){var i,me,inputs=document.getElementsByTagName('input'),tas=document.getElementsByTagName('textarea'),nInputs=inputs.length,nTextAreas=tas.length;if(nInputs||nTextAreas){for(i=0;i<nTextAreas;i++){me=tas[i];tas[i].attachEvent('onfocusin',function(e){if(!disabled){doF(e,me);}});} for(i=0;i<nInputs;i++){me=inputs[i];inputs[i].attachEvent('onfocusin',function(e){if(!disabled){doF(e,me);}});} assigned_events=true;}}} function destroy(){disabled=true;if(de=w.removeEventListener){de('focus',doF,true);de('blur',doB,true);}else if(de=d.removeEvent){de('blur',doB);}} function dom_onready(onready_handler){if(typeof onready_handler==='undefined'){return false;} if(document.readyState==='complete'){onready_handler();}else{if(document.addEventListener){DOMContentLoaded=function(){document.removeEventListener('DOMContentLoaded',DOMContentLoaded,false);onready_handler();};}else if(document.attachEvent){DOMContentLoaded=function(){if(document.readyState==='complete'){document.detachEvent('onreadystatechange',DOMContentLoaded);onready_handler();}};} if(document.addEventListener){document.addEventListener('DOMContentLoaded',onready_handler,false);}else if(document.attachEvent){document.attachEvent('onreadystatechange',onready_handler);}}} if(ae=w.addEventListener){ae('focus',doF,true);ae('blur',doB,true);}else if(ae=d.attachEvent){dom_onready(instrumentInputs);ae('onfocusout',doB);} F.focus_tracker={get:get,isInput:isInput,destroy:destroy};}(F));
		(function(){var mod='imageChecker',imgs={},i=0;function stamp(node){return node.id||(node.id=mod+'-'+new Date().getTime()+i++);} F[mod]={load:function(node){imgs[stamp(node)]=true;},error:function(node){imgs[stamp(node)]=false;},check:function(node){return imgs[stamp(node)];}};}());
	
	</script>


							
		
		
		<script data-script-purpose="page_timing" nonce="4e1322febffb1fea89a198bddeb31773">page_timing.seed_fetch_start = new Date().getTime();</script>
		<script src="https://combo.staticflickr.com/pw/combo/1/3.11.0?j/yui/3.11.0/yui/yui-.E.A.v7vakqy.57&amp;j/yui/3.11.0/.FN/.FN-.E.A.v7eRFVJ.57"></script>

		
		<script data-script-purpose="page_timing" nonce="4e1322febffb1fea89a198bddeb31773">page_timing.seed_fetch_end = new Date().getTime();</script>	
<script data-script-purpose="page_timing" nonce="4e1322febffb1fea89a198bddeb31773">page_timing.head_js_end = new Date().getTime();</script>

<script data-script-purpose="page_timing" nonce="4e1322febffb1fea89a198bddeb31773">page_timing.head_css_start = new Date().getTime();</script>

		
	
	<link rel="stylesheet" href="https://combo.staticflickr.com/pw/combo/1/3.11.0?c/c_.X_nav_re.GW.BC.v7j8KEx.57&c/c_.J_.D.BC.v3McPHb.57&c/c_.J_.D.BC.v3McPHb.57&c/c_.EM_.D.BC.v5yQcnc.57&" type="text/css">




	


<script data-script-purpose="page_timing" nonce="4e1322febffb1fea89a198bddeb31773">page_timing.head_css_end = new Date().getTime();</script>





<link rel="shortcut icon" href="https://combo.staticflickr.com/pw/favicon.ico">
<link rel="icon" sizes="16x16 32x32" href="https://combo.staticflickr.com/pw/favicon.ico">

<link rel="icon" href="https://combo.staticflickr.com/pw/images/favicons/favicon-32.png" sizes="32x32">
<link rel="icon" href="https://combo.staticflickr.com/pw/images/favicons/favicon-57.png" sizes="57x57">
<link rel="icon" href="https://combo.staticflickr.com/pw/images/favicons/favicon-76.png" sizes="76x76">
<link rel="icon" href="https://combo.staticflickr.com/pw/images/favicons/favicon-96.png" sizes="96x96">
<link rel="icon" href="https://combo.staticflickr.com/pw/images/favicons/favicon-128.png" sizes="128x128">
<link rel="icon" href="https://combo.staticflickr.com/pw/images/favicons/favicon-196.png" sizes="196x196">
<link rel="icon" href="https://combo.staticflickr.com/pw/images/favicons/favicon-228.png" sizes="228x228">

<link rel="shortcut icon" sizes="196x196" href="https://combo.staticflickr.com/pw/images/favicons/favicon-196.png">

<link rel="apple-touch-icon-precomposed" href="https://combo.staticflickr.com/pw/images/favicons/favicon-120.png" sizes="120x120">
<link rel="apple-touch-icon-precomposed" href="https://combo.staticflickr.com/pw/images/favicons/favicon-152.png" sizes="152x152">
<link rel="apple-touch-icon-precomposed" href="https://combo.staticflickr.com/pw/images/favicons/favicon-180.png" sizes="180x180">

<meta name="msapplication-TileColor" content="#FFFFFF">
<meta name="msapplication-TileImage" content="https://combo.staticflickr.com/pw/images/favicons/favicon-144.png">
	<link rel="search" type="application/opensearchdescription+xml" href="/opensearch.xml" title="Flickr">

<script data-script-purpose="page_timing" nonce="4e1322febffb1fea89a198bddeb31773">page_timing.head_end = new Date().getTime();</script></head>


	





<body class="zeus en-us new-footer super-liquid extras signed-out">
<script nonce="4e1322febffb1fea89a198bddeb31773">(function(){var b=document.body,ua=typeof YUI==='function'&&YUI()&&YUI().UA,os=ua&&(ua.os?ua.os.replace(/\s/g,''):'')||(ua.ios?'ios':'')||(ua.android?'android':'');function make_class(browser){if(/Trident\/7/.test(window.navigator.userAgent)){if(browser==='ie'){return'ua-windows-ie ua-windows-ie-11';} else{return'';}} return(os&&ua[browser])?'ua-'+os+'-'+browser+' '+'ua-'+os+'-'+browser+'-'+Math.floor(ua[browser]):'';} b.className=[b.className,'js',make_class('webkit')||make_class('ie')||make_class('gecko')].join(' ');}());</script>
	<script data-script-purpose="page_timing" nonce="4e1322febffb1fea89a198bddeb31773">page_timing.body_start = new Date().getTime();</script>
<script type='text/javascript' nonce="4e1322febffb1fea89a198bddeb31773">
	('<a href="/enfnl">')
</script>
<!-- <a href="/enfnl"> -->


<script nonce="4e1322febffb1fea89a198bddeb31773">
	/*jslint white: false, undef: false, browser: true, eqeqeq: true, regexp: false, newcap: true, immed: true, onevar: false, plusplus: false */
/*global F: false, YUI: false, window: false */ 

(function(F){var OFFSETS={GLOBAL_NAV:null,UNIVERSAL_HEADER:null};function alignToAnchor(anchor,preventDelay){var delay=(!preventDelay&&document.documentMode)?800:50;var elt=document.getElementById(anchor)||document.getElementsByName(anchor)[0];if(elt){setTimeout(function(){var destination=elt.offsetTop,origPosition=elt.style.position;if(F.util.hasClass(document.body,'header-underlap')){destination-=OFFSETS.GLOBAL_NAV;} if(F.util.hasClass(document.body,'with-eyebrow')){destination-=OFFSETS.UNIVERSAL_HEADER;} if(!origPosition){elt.style.position='relative';destination=Math.max(destination,elt.offsetTop-destination);elt.style.position=origPosition;} window.scrollTo(0,destination);},delay);}} function normalizeAnchor(){var anchor=document.location.hash;if(anchor[0]==='#'){anchor=anchor.replace('#','');} return anchor;} function handleEvent(elt,eventName,handler,useCapture){useCapture=useCapture||false;if(elt.addEventListener){elt.addEventListener(eventName,handler,useCapture);}else if(elt.attachEvent){elt.attachEvent('on'+eventName,handler);}} F.anchorRepositioner={init:function(){F.util.whenElementExists('global-nav',function(nav){OFFSETS.GLOBAL_NAV=nav.offsetHeight;});F.util.whenElementExists('eyebrow',function(eyebrow){OFFSETS.UNIVERSAL_HEADER=eyebrow.offsetHeight;});var pageLoadAnchor=normalizeAnchor();if(pageLoadAnchor){handleEvent(document,'DOMContentLoaded',function(){alignToAnchor(pageLoadAnchor);});} handleEvent(window,'hashchange',function(e){if(e.preventDefault){e.preventDefault();}else{e.returnValue=false;} var anchor=normalizeAnchor();alignToAnchor(anchor);},true);}};}(F));	F.anchorRepositioner.init();
</script>


<script nonce="4e1322febffb1fea89a198bddeb31773">
			/*jslint white: false, undef: false, browser: true, eqeqeq: true, regexp: false, newcap: true, immed: true, onevar: false, plusplus: false */
/*global F: false, YUI: false, window: false */

(function(F) {
	var useNewExplore =  false ,
    	    useEyebrow = false,
	    HEIGHT_TO_PHOTO_TOP = 49,
    	    savingThrowAgainstTrailingCommas = true;
 
            var NEW_PHOTO_HEIGHT;
    var MIN_PAGE_WIDTH=1024,MIN_PAGE_HEIGHT=768,MIN_PHOTO_WIDTH=975,SCROLLBAR_GUTTER=26,PHOTO_INTERIOR_PADDING_TOP=0,PHOTO_INTERIOR_PADDING_SIDES=10,PHOTO_TITLE_HEIGHT=41,PHOTO_ATTRIBUTION_HEIGHT=NEW_PHOTO_HEIGHT||45;var bodyInitialized=false,subnavDefaultWidth=0;function verifyDimension(n){return(typeof n==='number'&&n>0);} function resizeCoverPhoto(subnav){var main=F.util.getElementById('main')||F.util.getElementById('Main');if(F.util.hasClass(document.body,'breakout')){subnav.style.left=0;subnav.style.width='auto';return;} if(!subnavDefaultWidth){subnavDefaultWidth=main.offsetWidth;} var clientWidth=document.body.clientWidth;if(clientWidth<975){return;} var offset=Math.ceil((clientWidth-subnavDefaultWidth)/2);subnav.style.left=(-1*offset)+'px';subnav.style.width=clientWidth+'px';} F.liquid={getDimensions:function(preventHighResolution){var doc=window.document,win=doc.defaultView||doc.parentWindow,mode=doc.compatMode,h=win.innerHeight,w=win.innerWidth,root=doc.documentElement,preventHighResolution=preventHighResolution||false,pixelRatio=preventHighResolution?1:(window.devicePixelRatio||1);if(mode){if(mode!=='CSS1Compat'){root=doc.body;} h=root.clientHeight;w=root.clientWidth;} h*=pixelRatio;w*=pixelRatio;if(verifyDimension(w)&&verifyDimension(h)){return{height:h,width:w,isHighResolution:(pixelRatio>1)};} return false;},getAvailableSpaceForPhoto:function(){var dimensions,pixelRatio=window.devicePixelRatio||1;dimensions=F.liquid.getDimensions()||{width:MIN_PAGE_WIDTH,height:MIN_PAGE_HEIGHT};return{w:Math.max(dimensions.width-(2*pixelRatio*PHOTO_INTERIOR_PADDING_SIDES),pixelRatio*MIN_PHOTO_WIDTH),h:dimensions.height-(pixelRatio*(HEIGHT_TO_PHOTO_TOP+PHOTO_INTERIOR_PADDING_TOP+PHOTO_TITLE_HEIGHT+PHOTO_ATTRIBUTION_HEIGHT))};},getAvailableSpaceForPhotoContainer:function(){var dimensions,pixelRatio=window.devicePixelRatio||1;dimensions=F.liquid.getDimensions()||{width:MIN_PAGE_WIDTH,height:MIN_PAGE_HEIGHT};dimensions.width/=pixelRatio;dimensions.height/=pixelRatio;return{w:dimensions.width,h:dimensions.height-HEIGHT_TO_PHOTO_TOP-PHOTO_ATTRIBUTION_HEIGHT};},resizePage:function(){var pageDimensions=F.liquid.getDimensions(true),pageWidth=pageDimensions.width,pageHeight=pageDimensions.height-HEIGHT_TO_PHOTO_TOP;F.util.setCookie('liqpw',pageWidth,365);F.util.setCookie('liqph',pageHeight,365);if(!bodyInitialized){F.util.whenElementExists('body',function(body){F.util.addClass(body,'liquid');bodyInitialized=true;});} F.util.whenElementExists('subnav-refresh',function(subnav){resizeCoverPhoto(subnav);});return pageWidth;}};}(F));		F.liquid.resizePage();
	
</script>



<noscript><div id="beacon"><img src="https://geo.yahoo.com/f?s=792600119&t=4c94103e86e04e1802bc2984bd8f73fb&fl_ev=0&lang=en&intl=us" width="0" height="0" alt="" /></div></noscript>

<a name="top"></a>



			

	





<!-- Code to be placed in the header of the page-->
<script nonce="4e1322febffb1fea89a198bddeb31773" async src="https://securepubads.g.doubleclick.net/tag/js/gpt.js"></script>
<script nonce="4e1322febffb1fea89a198bddeb31773">
  window.googletag = window.googletag || {cmd: []};
  googletag.cmd.push(function() {
    
        googletag.defineSlot('/21833886396/Flickr_PhotoUpload_Desktop_728x90', [728, 90], 'gpt-photo-upload').addService(googletag.pubads());
        
    googletag.pubads().enableSingleRequest();
    googletag.enableServices();
  });
</script>
<div id="main" class="clearfix wide soup" role="main">
<style>


html,
body {
	background: #000;
}

#main {
	width: auto;
	/* white-space hacks */
	font-size: 0px;
}

body.new-footer #main {
	margin-bottom: 0px;
}

#sohp-2014 {
	position: relative;
}

#sohp-2014 #global-nav {
	-moz-osx-font-smoothing: initial;
	-webkit-font-smoothing: initial;
	/* http://files.christophzillgens.com/webkit-font-smoothing.html */
	/* font-smoothing: subpixel-antialiased; */
	/* general font niceness */
	font-smoothing: initial;
	text-rendering: optimizeLegibility;
}

@font-face {
  font-family: "Proxima Nova";
  src: url('https://combo.staticflickr.com/pw/images/../fonts/ProximaNova-Reg-webfont-v2.eot?#iefix');
  src: url('https://combo.staticflickr.com/pw/images/../fonts/ProximaNova-Reg-webfont-v2.eot?#iefix?#iefix') format('eot'), url('https://combo.staticflickr.com/pw/images/../fonts/ProximaNova-Reg-webfont-v2.woff') format('woff'), url('https://combo.staticflickr.com/pw/images/../fonts/ProximaNova-Reg-webfont-v2.ttf') format('truetype'), url('https://combo.staticflickr.com/pw/images/../fonts/ProximaNova-Reg-webfont-v2.svg#svgFontName') format('svg');
  font-weight: 400;
}

.sohp-shade {
	position: absolute;
	position: fixed;
	left: 0px;
	top: 0px;
	width: 100%;
	height: 100%;
	/* is box-shadow expensive? apparently not so bad in modern browsers. */
	box-shadow: inset 0px 0px 96px rgba(0,0,0,1);
	display: none;
}

.sohp-shade.hidden {
	display: none;
}

#sohp-background-wrapper {
	position: fixed;
	top: 0px;
	left: 0px;
	width: 100%;
	height: 100%;
	/* hide overflow/parallax elements */
	overflow: hidden;
}

.sohp-background-parallax {
	/* this is the element that moves. */
	position: absolute;
	left: 0px;
	top: 0px;
	width: 100%;
	height: 110%; /* parallax buffer */
}

#sohp-2014.mobile .sohp-background-wrapper {
	display: none;
}

.sohp-background {
	position: absolute;
	left: 0px;
	top: 0px;
	width: 100%;
	height: 100%;
	background-position: 50% 0%;
	background-repeat: no-repeat;
	background-size: cover;
}




#sohp-2014.enabled .sohp-background {
	/* GPU acceleration? Don't mind if I do. */
	transform: translateZ(0);
	-webkit-transform: translate3d(0,0,0);
	-ms-transform: translate3d(0,0,0);
	transform: translate3d(0,0,0);
}

.sohp-background.noblur {
	background-image: url(https://combo.staticflickr.com/pw/images/sohp_2014/trees_noblur.jpg);
}

#sohp-2014.enabled .sohp-background.blur {
	background-image: url(https://combo.staticflickr.com/pw/images/sohp_2014/trees_blur.jpg);
	opacity: 0;
}

#sohp-2014.enabled .sohp-background.superblur {
	background-image: url(https://combo.staticflickr.com/pw/images/sohp_2014/trees_superblur.jpg);
	opacity: 0;
}

#sohp-2014.mobile .sohp-background.noblur {
	background-image: url(https://combo.staticflickr.com/pw/images/sohp_2014/trees_superblur.jpg);
}

.sohp {
	/* collapse whitespace */
	font-family: "Proxima Nova", helvetica, verdana, arial, sans-serif;
	color: #fff;
	font-weight: 400;
	-moz-osx-font-smoothing: grayscale;
	-webkit-font-smoothing: antialiased;
	/* http://files.christophzillgens.com/webkit-font-smoothing.html */
	/* font-smoothing: subpixel-antialiased; */
	/* general font niceness */
	font-smoothing: antialiased;
	text-rendering: optimizeLegibility;
	min-width: 1001px;
}

.sohp .standard-aa {
	-moz-osx-font-smoothing: auto !important;
	-webkit-font-smoothing: auto !important;
	font-smoothing: auto !important;
	text-rendering: auto !important;
}

.sohp a {
	color: #fff;
	font-weight: 400;
	text-decoration: none;
}

.sohp h1,
.sohp h2 {
	font-family: "Proxima Nova", "helvetica neue", helvetica, verdana, arial, tahoma, sans-serif;
	margin: 0px;
	padding: 0px;
}

.sohp h1 {
	font-size: 36px;
	line-height: 1em;
	margin-bottom: 0.25em;
	font-weight: 400;
}

.sohp h1.primary {
	font-size: 40px;
}

.sohp h2 {
	font-size: 30px;
	line-height: 1em;
	font-weight: 400;
	margin: 0px 0px 0.5em 0px;
}

.sohp h2.primary {
	font-size: 30px;
}

.sohp p {
	margin: 0px;
	padding: 0px;
	font-size: 19px;
	font-weight: 400;
	line-height: 1.3em;
}

.sohp .sohp-logo {
	position: relative;
	display: inline-block;
	margin-left: 10px;
	margin-right: 28px;
	top: 15px;
	width: 72px;
	height: 23px;
	overflow: hidden;
	background: transparent url(https://combo.staticflickr.com/pw/images/sohp_2014/logo.png) 0px 0px no-repeat;
	background-size: contain;
}

.sohp .sohp-logo-large {
	margin: 0px;
	padding: 0px;
	width: 260px;
	height: 83px;
	overflow: hidden;
	background-image: url(https://combo.staticflickr.com/pw/images/sohp_2014/flickr_logo_large_2x.png);
	background-repeat: no-repeat;
	background-position: 50% 50%;
	background-size: contain;
}

.sohp .sohp-logo-large span {
	font-family: "helvetica neue", helvetica, verdana, arial, sans-serif;
	line-height: 8em;
}

@media
(-webkit-min-device-pixel-ratio: 2),
(min-resolution: 192dpi) {
	.sohp .sohp-logo {
		background-image: url(https://combo.staticflickr.com/pw/images/sohp_2014/logo@2x.png);
	}
}

.sohp-logo span {
	line-height: 5em;
}

.sohp-top {
	position: fixed;
	top: 45px;
	left: 0px;
	width: 100%;
	height: 72px;
	/* "sign-in" needs to sit on top of right corner */
	z-index: 3;
	background: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAABICAYAAAA3Qp8tAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAA2tpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuMy1jMDExIDY2LjE0NTY2MSwgMjAxMi8wMi8wNi0xNDo1NjoyNyAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wTU09Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9tbS8iIHhtbG5zOnN0UmVmPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvc1R5cGUvUmVzb3VyY2VSZWYjIiB4bWxuczp4bXA9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC8iIHhtcE1NOk9yaWdpbmFsRG9jdW1lbnRJRD0ieG1wLmRpZDpGODdGMTE3NDA3MjA2ODExOUNENERCMjk4NTMzNUY5MyIgeG1wTU06RG9jdW1lbnRJRD0ieG1wLmRpZDozRUFCQUM3MDY2QTYxMUU0QjkzNERDMTAyRDVDRDBCMyIgeG1wTU06SW5zdGFuY2VJRD0ieG1wLmlpZDozRUFCQUM2RjY2QTYxMUU0QjkzNERDMTAyRDVDRDBCMyIgeG1wOkNyZWF0b3JUb29sPSJBZG9iZSBQaG90b3Nob3AgQ0MgKE1hY2ludG9zaCkiPiA8eG1wTU06RGVyaXZlZEZyb20gc3RSZWY6aW5zdGFuY2VJRD0ieG1wLmlpZDo5M2I1YWFhMC0yNmM3LTQyZjItOWYzNS1jOTEzY2VhNWE1ZmEiIHN0UmVmOmRvY3VtZW50SUQ9InhtcC5kaWQ6Rjg3RjExNzQwNzIwNjgxMTlDRDREQjI5ODUzMzVGOTMiLz4gPC9yZGY6RGVzY3JpcHRpb24+IDwvcmRmOlJERj4gPC94OnhtcG1ldGE+IDw/eHBhY2tldCBlbmQ9InIiPz4LYikmAAAANElEQVR42mJgYGDwZQIS/0EEAxYWxcQ/UiT+4ZL9R7K6f5S6hUyCgRkWfkCB//8hLIAAAwCkVkONypHCegAAAABJRU5ErkJggg==) repeat-x 0 0;
}

.sohp-right {
	position: fixed;
	top: 0px;
	right: 0px;
	width: 40px;
	height: 100%;
	z-index: 2;
}

.sohp-bottom {
	position: fixed;
	bottom: 0px;
	left: 0px;
	width: 100%;
	height: 40px;
	z-index: 2;
}

.sohp-section,
.sohp-nav {
	font-size: 16px;
}

.sohp a.standard {
	padding: 2px 4px;
	border-radius: 3px;
	transition: background-color 150ms ease-in-out;
}

.sohp a.standard:hover {
	background-color: rgba(0,0,0,0.5);
}

.sohp .sohp-top a.standard {
	margin-left: 26px;
	font-weight: 700;
}

.sohp .sohp-top a.standard.signin {
	margin: 0 5px 0 -4px;
}

.sohp-nav a.gn-signup {
	position: relative;
	top: -1px;
	height: 36px;
	text-align: center;
	padding: 0 22px 0 21px;
	background-color: #128fdc;
	color: #fff;
	border-radius: 3px;
	border: none;
	cursor: pointer;
	font-weight: 600;
	font-size: 16px;
	line-height: 36px;
	display: inline-block;
	margin: 6px 5px 0 20px;
	transition: background-color 150ms ease-in-out;
}

.sohp-nav a.gn-signup:hover, .sohp-nav a.gn-signup:focus {
	background-color: #1c9be9;
}

.sohp-section {
	position: relative;
	width: 100%;
	height: 100%;
	min-height: 1000px;
	text-align: center;
	z-index: 2;
}

.sohp-dots-nav {
	position: absolute;
	top: 50%;
	left: 50%;
	list-style-type: none;
}

#sohp-2014.mobile .sohp-dots-nav {
	display: none;
}

.sohp-dots-nav,
.sohp-dots-nav li {
	margin: 0px;
	padding: 0px;
}

.sohp-dots-nav {
	margin-left: -10px;
	/* -ve margin, half of height */
	margin-top: -44px;
	z-index: 10;
}

.sohp-dots-nav li {
	position: relative;
	width: 17px;
	height: 17px;
	overflow: hidden;
}

.sohp-dots-nav li:last-of-type {
	margin-bottom: 0px;
	margin-top: 0px;
}

.sohp-dots-nav li a {
	position: absolute;
	top: 50%;
	left: 50%;
	width: 4px;
	height: 4px;
	margin: -2px 0px 0px -2px;
	background: #ccc;
	background: rgba(255,255,255,0.75);
	border-radius: 100%;
	line-height: 5em; /* sneaky: hide inner text */
	transition: all 0.1s ease-in-out;
}

.sohp-dots-nav li a:focus {
	outline: none;
}

.sohp-dots-nav li:hover a,
.sohp-dots-nav li.selected a {
	width: 12px;
	height: 12px;
	margin: -6px 0px 0px -6px;
	background: #fff;
}

.sohp-dots-nav li.selected a {
	transition: all 0.15s ease-in-out;
}

.sohp-dots-nav li:not(.selected):hover a {
	background-color: rgba(255,255,255,0.75);
	width: 10px;
	height: 10px;
	margin: -5px 0px 0px -5px;
}

.sohp-row {
	position: relative;
	display: table-row;
	vertical-align: middle;
}

.sohp-col {
	position: relative;
	display: table-cell;
	padding-right: 1em;
}

.sohp-col.nowrap {
	white-space: nowrap;
	/* stupid Firefox absolute-inside-table-cell fix for up/down arrow links */
	z-index: 3;
}

.sohp-col:last-of-type {
	padding-right: 0px;
}

.sohp-col.full-width {
	width: 100%;
}

.sohp .sohp-cta,
.sohp .sohp-cta-2,
.sohp .sohp-cta-3 {
	position: relative;
	display: inline-block;
	font-size: 20px;
	padding: 0.5em 1em;
	border-radius: 4px;
	font-weight: 600;
	background: rgb(4,145,220);
	text-align: center;
	-moz-box-sizing: border-box;
	-webkit-box-sizing: border-box;
	box-sizing: border-box;
	transition: background-color 150ms ease-in-out;
}

.sohp .sohp-cta:hover,
.sohp .sohp-cta-2:hover {
	background-color: #1c9be9;
}

.sohp .sohp-cta-2 {
	background: #fff;
	color: #000;
	padding-left: 2em;
	padding-right: 2em;
}

.sohp .sohp-cta-3 {
	background: transparent;
	text-align: center;
	/* counter for border */
	padding: 10px 1em 9px;
	vertical-align: top;
}

.sohp .sohp-cta-3:hover {
	opacity: 0.7;
}

.sohp-section-bd .sohp-cta,
.sohp-section-bd .sohp-cta-2 {
	padding-top: 11px;
	padding-bottom: 11px;
	padding-left: 22px;
	padding-right: 22px;
}

.sohp .sohp-join {
	padding-left: 3em;
	padding-right: 3em;
}

.sohp-search {
	position: relative;
	top: -2px;
	display: inline-block;
	-webkit-appearance: none;
	-moz-appearance: none;
	background-color: rgba(255, 255, 255, 0.8);
	transition: background-color 150ms ease-in-out;
	border-radius: 3px;
	width: 245px;
	border: none;
	color: #000;
	font-size: 13px;
	height: 33px;
	margin: 0 1em 0 0;
	padding: 0 5px 0 32px;
}

.sohp-search:focus {
	box-shadow: inset 0 0 3px 1px rgba(0, 112, 255, 0.13);
	background: #fff;
	outline: none;
}

.sohp-search[type="search"]::-webkit-search-decoration,
.sohp-search[type="search"]::-webkit-search-cancel-button,
.sohp-search[type="search"]::-webkit-search-results-button,
.sohp-search[type="search"]::-webkit-search-results-decoration {
	display: none;
}

#search-form .sohp-search-icon {
	text-indent: 200%;
	white-space: nowrap;
	overflow: hidden;
	position: absolute;
	top: -2px;
	left: 0;
	height: 100%;
	width: 32px;
	padding: 0;
	background-image: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACQAAAAkCAQAAABLCVATAAABLklEQVR4Ae2VIW+EQBCFv+WS0yRsPeYqMaRJBRU1+LYJKRZzjirMXbjy04vYbEim7GzTFRX9npzJy87AvkVgKGkZmJhXTQy0lBh+REbNyILUSE1GJJYzS0BnLOicuLAounDSbWbffqOjwnJcZanouPnaHLaym9O8U4h6Qe/r1/0Bs81uHvkew9NmVztrrxUbx8aqBolh9EOFMX7AEYOg9Csu0Cj82ksErSt1xNC57hbB4EoVMVSue0AwuZIlhtx1TwhmVzoSw8H/mOmNko+WbNmpPn+CH1JckV4N1L0rIi5tQ4jG99V6jDQ7pzI0IkaUYOuVYBPn1qI257Aq30at0ycVAe65skRKsbpTn6Nn3Up7ID/cA/kQa6U/2bqVzr/V37B6gRRWb2Twe6tXMvgCdY+2o6I/WE8AAAAASUVORK5CYII=);
	background-size: 18px;
	background-color: transparent;
	background-repeat: no-repeat;
	background-position: center center;
	z-index: 1002;
	cursor: pointer;
	*padding-left: 100px;
	border: none;
}

.sohp-section-bd {
	position: relative;
	display: inline-block;
	min-width: 900px;
	margin: 0px auto;
	padding: 72px 0px 0px 0px;
	text-align: left;
}

.sohp-section-bd.flex {
	/* slightly flexible */
	max-width: 1080px;
	width: 100%;
	/* full width, plus some padding so content doesn't overlap right dot nav */
	-moz-box-sizing: border-box;
	-webkit-box-sizing: border-box;
	box-sizing: border-box;
	padding: 0px 40px;
}

.sohp-section-bd.sohp-full-screen {
	/* absolute-positioned, centered content inside */
	position: absolute;
	left: 0px;
	top: 0px;
	width: 100%;
	height: 100%;
	padding: 0px;
	margin:0px;
}

.sohp-section-bd .sohp-full-screen-bd {
	position: absolute;
	left: 50%;
	top: 50%;
	/* defaults */
	width: 1000px;
	height: 660px;
	margin-left: -500px;
	margin-top: -330px;
}

#sohp-2014.gpu .sohp-section-bd .sohp-full-screen-bd {
	/* fix Safari scroll rendering issue, content is sometimes blank until resize */
	-webkit-transform: scale3d(1,1,1);
	transform: scale3d(1,1,1);
}

.sohp-ios {
	display: inline-block;
	width: 25px;
	height: 31px;
	background-image: url(https://combo.staticflickr.com/pw/images/sohp_2014/appstore@2x.png.v2);
	background-size: contain;
	overflow: hidden;
	margin-left: 1em;
	margin-right: 1.5em;
}

.sohp-android {
	display: inline-block;
	width: 28px;
	height: 31px;
	background-image: url(https://combo.staticflickr.com/pw/images/sohp_2014/playstore@2x.png);
	background-size: contain;
	overflow: hidden;
	margin-right: 1.5em;
}

.sohp-ios,
.sohp-android {
	margin-top: -10px;
}

.sohp-ios span,
.sohp-android span {
	line-height: 5em;
}

.sohp-arrow-down,
.sohp-arrow-up {
	display: inline-block;
	width: 44px;
	height: 16px;
	background-size: contain;
	background-position: 0px 0px;
	background-repeat: no-repeat;
	overflow: hidden;
	line-height: 5em;
}

.sohp-arrow-down {
	background-image: url(https://combo.staticflickr.com/pw/images/sohp_2014/down@2x.png);
}

.sohp-arrow-up {
	background-image: url(https://combo.staticflickr.com/pw/images/sohp_2014/up@2x.png);
	margin-top: 1em;
}

.sohp-icon-list,
.sohp-icon-list li {
	margin: 0px;
	padding: 0px;
}

.sohp-icon-list {
	position: relative;
	left: -10px;
	margin-top: 1em;
	margin-bottom: 15px;
	list-style-type: none;
	font-weight: 400;
}

.sohp-icon-list li {
	display: table;
	width: 100%;
}

.sohp-icon-list li .row {
	display: table-row;
}

.sohp-icon-list li .icon,
.sohp-icon-list li .copy {
	display: table-cell;
	vertical-align: middle;
}

.sohp-icon-list li .icon {
	width: 100px;
	height: 100px;
}

.sohp-icon-list li .copy p {
	font-size: 22px;
	line-height: 26px;
	margin-left: 1em;
	width: 305px;
}

.sohp .icon {
	background-position: 50%;
	background-repeat: no-repeat;
	background-size: contain;
}

.sohp .icon {
	background-image: url(https://combo.staticflickr.com/pw/images/sohp_2014/camera_icon_small_2x.png.v3);
	background-size: 74px 74px;
}

.sohp .icon.album-icon {
	background-image: url(https://combo.staticflickr.com/pw/images/sohp_2014/album_icon_small_2x.png.v4);
	background-size: 73px 64px;
}

.sohp .icon.group-icon {
	background-image: url(https://combo.staticflickr.com/pw/images/sohp_2014/group_icon_small_2x.png);
	background-size: 88px 79px;
}

.sohp-inline-icon {
	display: inline-block;
	vertical-align: top;
	width: 128px;
	height: 128px;
	background-position: 50%;
	background-repeat: no-repeat;
}

.sohp-inline-icon {
	background-image: url(https://combo.staticflickr.com/pw/images/sohp_2014/camera_icon_2x.png);
	background-size: 120px 120px;
	margin-top: -10px;
	margin-left: 15px;
}

.sohp-inline-icon.album-icon {
	background-image: url(https://combo.staticflickr.com/pw/images/sohp_2014/album_icon_2x.png);
	width: 167px;
	width: 128px;
	height: 99px;
	background-size: contain;
}

.sohp-inline-icon.group-icon {
	position: absolute;
	left: 0px;
	margin-left: -143px;
	padding-top: 265px;
	background-image: url(https://combo.staticflickr.com/pw/images/sohp_2014/group_icon_2x.png);
	background-size: 140px 127px;
	width: 140px;
	height: 127px;
}

.sohp video {
	background-color: #000;
}

.sohp video:focus {
	outline: none;
}

#section-stunning-overlay,
#section-stunning-graphite,
#section-stunning-throwback,
#section-stunning-iced-tea {
	position: absolute;
	top: 0px;
	left: 0px;
	width: 100%;
	height: 100%;
	/* alignment with body background */
	background-position: 50% 0%;
	background-repeat: no-repeat;
	background-size: cover;
}

#section-stunning-overlay {
	/* hidden by default, shown only when section 2 is in view. */
	opacity: 0;
	transition: opacity 0.5s ease-in-out;
	display: none;
}

#sohp-2014.enabled #section-stunning-overlay {
	display: block;
}

#section-stunning-overlay.visible {
	opacity: 1;
}

#section-stunning-graphite,
#section-stunning-throwback,
#section-stunning-iced-tea {
	opacity: 0;
	transition: all 1.5s ease-in-out;
	transition-property: -webkit-transform, opacity;
	transition-property: transform, opacity;
}

#section-stunning-graphite.visible,
#section-stunning-throwback.visible,
#section-stunning-iced-tea.visible {
	opacity: 1;
}

#sohp-2014.enabled #section-stunning-graphite {
	background-image: url(https://combo.staticflickr.com/pw/images/sohp_2014/graphite.jpg);
}

#sohp-2014.enabled #section-stunning-throwback {
	background-image: url(https://combo.staticflickr.com/pw/images/sohp_2014/throwback.jpg);
}

#sohp-2014.enabled #section-stunning-iced-tea {
	background-image: url(https://combo.staticflickr.com/pw/images/sohp_2014/iced_tea.jpg.v3);
}

.down-link {
	position: absolute;
	left: 0px;
	top: 0px;
	width: 100%;
	height: 100%;
	min-height: 42px;
	text-align: center;
	overflow: hidden;
}

.up-link {
	position: absolute;
	left: 0px;
	top: 0px;
	width: 100%;
	height: 100%;
	min-height: 42px;
	text-align: center;
	overflow: hidden;
}

.down-link:hover,
.up-link:hover {
	background-color: transparent;
}

.down-link:focus,
.up-link:focus {
	outline: none;
}

#up-arrow-ui {
	position: absolute;
	left: 0px;
	top: 0px;
	width: 100%;
	height: 100%;
	text-align: center;
}

#down-arrow-ui {
	position: absolute;
	left: 0px;
	bottom: 1em;
	width: 100%;
	height: 16px;
	text-align: center;
}

#down-arrow-ui.yoohoo-over-here {
	-webkit-animation: pulse 0.75s ease-in-out infinite alternate;
	animation: pulse 0.75s ease-in-out infinite alternate;
}

#up-arrow-ui,
#down-arrow-ui {
	opacity: 0.5;
	transition: opacity 0.25s ease-in-out;
}

#up-arrow-ui.hover,
#down-arrow-ui.hover {
	opacity: 1;
}

#down-arrow-link.disabled,
#up-arrow-link.disabled {
	display: none;
}

#up-arrow-ui.disabled,
#down-arrow-ui.disabled {
	opacity: 0;
}

#sohp-downloads {
	opacity: 1;
	transition: opacity 0.25s ease-in-out;
}

#sohp-downloads.disabled {
	opacity: 0;
	-ms-pointer-events: none;
	-moz-pointer-events: none;
	-webkit-pointer-events: none;
	pointer-events: none;
}

#sohp-downloads a:hover {
	background-color: transparent;
}

@-webkit-keyframes pulse {
	0% {
		opacity: 0.5;
		-webkit-transform: scale3d(1,1,1);
	}
	100% {
		opacity: 1;
		-webkit-transform: scale3d(1.1,1.1,1.1);
	}
}

@keyframes pulse {
	0% {
		opacity: 0.5;
		transform: scale3d(1,1,1);
	}
	100% {
		opacity: 1;
		transform: scale3d(1.1,1.1,1.1);
	}
}

.sohp video {
	cursor: pointer;
}

.sohp ul.languages {
	list-style-type: none;
}

.sohp ul.languages,
.sohp ul.languages li {
	margin: 0px;
	padding: 0px;
}

.sohp ul.languages li {
	display: inline-block;
	margin-right: 1em;
}

.sohp ul.languages li,
#photo-credit,
#foot-legal a,
#foot-legal .like-link {
	opacity: 0.7;
}

#photo-credit {
	display: inline-block;
	font-size: 13px;
	margin-left: 1em;
	text-shadow: 0px 0px 2px #000;
	padding: 1px 3px;
}

.sohp ul.languages li:last-of-type {
	margin-right: 0px;
}

.sohp .download-app-store,
.sohp .download-google-play {
	display: inline-block;
	background-color: transparent;
	background-position: 0px 0px;
	background-size: contain;
	background-repeat: no-repeat;
	width: 170px;
	height: 60px;
	margin-right: 1em;
	overflow: hidden;
}

.sohp .download-app-store span,
.sohp .download-google-play span {
	line-height: 10em;
}

.sohp .download-app-store {
	background-image: url(https://combo.staticflickr.com/pw/images/sohp_2014/appstore_badge_2x.png);
}

.sohp .download-google-play {
	background-image: url(https://combo.staticflickr.com/pw/images/sohp_2014/googleplay_2x.png.v2);
}

#sohp-2014.no-ad .ad {
	display: none;
}

#section-0 {
	/* this is the ad container. */
	min-height: 290px;
	/* Hide until we have an ad to show. */
	display: none;
}

#section-0 .sohp-full-screen-bd {
	width: 970px;
	margin-left: -485px;
	height: 290px;
	margin-top: -145px;
}

#section-home-left {
	position: relative;
	display: inline-block;
	width: 318px;
	height: 668px;
	vertical-align: top;
}

#section-home-right {
	display: inline-block;
	vertical-align: top;
	margin-left: 110px;
	width: 460px;
	margin-top: 90px;
}

#section-1 .sohp-full-screen-bd {
	width: 900px;
	margin-left: -450px;
}

#section-1-video-box,
section-connect-video-box,
#section-stunning-video-box,
#section-albums-video-box {
	background: #000;
}

#section-1-video-box {
	position: absolute;
	/* 1-pixel clip hack */
	left: 26px;
	top: 97px;
	width: 270px;
	height: 476px;
	overflow: hidden;
}

#section-1-video,
#section-1-video-box img.thumb {
	position: absolute;
	left: 0px;
	top: 0px;
	width: 270px;
	height: 477px;
}

#section-1 .sohp-full-screen-bd.ipad {
	width: 1150px;
	height: 450px;
	margin-left: -575px;
	margin-top: -225px;
}

.ipad #section-home-left {
	position: relative;
	display: inline-block;
	width: 643px;
	height: 668px;
	vertical-align: top;
}

.ipad #section-home-right {
	display: inline-block;
	vertical-align: top;
	width: 450px;
	margin-left: 50px;
	margin-top: 0px;
}

.ipad #section-home-right #best-of-2014 {
	margin-bottom: 50px;
}

.ipad #section-home-right p {
	margin-bottom: 1.5em;
}

.ipad #section-home-right p.join {
	margin-bottom: 3em;
}

.ipad #section-1-video-box {
	position: absolute;
	/* 1-pixel clip hack */
	left: 59px;
	top: 30px;
	width: 525px;
	height: 388px;
	overflow: hidden;
}

.ipad #section-1-video,
.ipad #section-1-video-box img.thumb {
	position: absolute;
	left: 0;
	top: 0;
	width: 523px;
	height: 388px;
}

#section-stunning-video-box {
	/* 1-pixel clip hack */
	position: absolute;
	left: 16px;
	top: 56px;
	width: 304px;
	height: 539px;
	overflow: hidden;
}

#section-stunning-video,
#section-stunning-video-box img.thumb {
	position: absolute;
	top: 0px;
	left: 0px;
	width: 304px;
	height: 540px;
}

#section-albums-video-box {
	position: relative;
	display: inline-block;
	width: 687px;
	height: 341px;
	overflow: hidden;
	box-shadow: 0px 0px 64px #162f42;
}

#section-albums-video,
#section-albums-video-box img.thumb {
	position: absolute;
	left: 0px;
	top: 0px;
	width: 689px;
	height: 342px;
}

#section-stunning-left {
	position: relative;
	display: inline-block;
	vertical-align: top;
	width: 340px;
	margin-left: 25px;
}

#section-stunning-right {
	position: relative;
	display: inline-block;
	width: 600px;
	margin-top: 150px;
	vertical-align: top;
}

#section-stunning-right .copy {
	display: inline-block;
	width: 27em;
	vertical-align:top;
	margin-left: 20px;
}

#section-albums .copy {
	padding-left: 150px;
}

#section-albums .sohp-full-screen-bd {
	height: 530px;
	margin-top: -265px;
	text-align: center;
}

#section-albums .section-right {
	position: relative;
	display: inline-block;
	margin-top: 40px;
	width: 800px;
	text-align: left;
}

#section-connect-video,
#section-connect-video-box img.thumb {
	position: absolute;
	left: 17px;
	top: 57px;
	width: 298px;
	height: 533px;
}

#section-connect .sohp-full-screen-bd {
	width: 900px;
	margin-left: -450px;
}

#section-connect .section-left {
	position: relative;
	display: inline-block;
	width: 32em;
	margin-left: 1em;
	margin-right: 1em;
	padding-top: 150px;
}

#section-connect .section-right {
	position: relative;
	display: inline-block;
	width: 335px;
	vertical-align: top;
	margin-left:1em;
}

#section-5 .using-yahoo {
	margin-bottom: 0.5em;
}

#section-5 .sohp-full-screen-bd {
	width:920px;
	/* presume signed-out */
	height: 276px;
	margin-top: -138px;
	margin-left: -460px;
	/* + app store shiz version */
	height: 400px;
	margin-top: -200px;
	text-align: center;
}

#sohp-2014.signed-in #section-5 .sohp-full-screen-bd {
	height: 300px;
	margin-top: -150px;
}

#section-5-content {
	width: 263px;
	margin: 0px auto;
}

.section-inline {
	display: inline-block;
	text-align: center;
	margin-top: 30px;
}

#foot-legal {
	margin-top: 1em;
	font-size: 14px;
}

#sohp-search {
	padding-left: 2em;
}

#search-form {
	display: inline-block;
	position: relative;
	margin-right: 1em;
}

#sohp-bottom-row {
	position: absolute;
	left: 0px;
	bottom: 0px;
	width: 100%;
	height: 42px;
}

#sohp-bottom-row .sohp-row {
	position: absolute;
	bottom: 0px;
	left: 0px;
	width: 100%;
	height: 100%;
}

.static-video-frame {
	position: absolute;
	left: 0px;
	top: 0px;
}

.sohp ul.languages {
	margin-top: 4em;
}

#foot-legal .divider {
	color: #666;
}


</style>


<!--[if lt IE 9]>
<style type="text/css">


.sohp .sohp-ios {
	background-image: url(https://combo.staticflickr.com/pw/images/sohp_2014/appstore.png.v3);
}

.sohp .sohp-android {
	background-image: url(https://combo.staticflickr.com/pw/images/sohp_2014/playstore.png);
}

.sohp .sohp-arrow-down {
	background-image: url(https://combo.staticflickr.com/pw/images/sohp_2014/down.png);
}

.sohp .sohp-arrow-up {
	background-image: url(https://combo.staticflickr.com/pw/images/sohp_2014/up.png);
}

.sohp .icon {
	background-image: url(https://combo.staticflickr.com/pw/images/sohp_2014/camera_icon_small.png.v3);
}

.sohp .icon.album-icon {
	background-image: url(https://combo.staticflickr.com/pw/images/sohp_2014/album_icon_small.png.v3);
}

.sohp .icon.group-icon {
	background-image: url(https://combo.staticflickr.com/pw/images/sohp_2014/group_icon_small.png);
}

.sohp .sohp-logo-large {
	background-image: url(https://combo.staticflickr.com/pw/images/sohp_2014/flickr_logo_large.png);
}

.sohp .sohp-inline-icon {
	background-image: url(https://combo.staticflickr.com/pw/images/sohp_2014/camera_icon.png);
}

.sohp .download-app-store {
	background-image: url(https://combo.staticflickr.com/pw/images/sohp_2014/appstore_badge.png);
}

.sohp .download-google-play {
	background-image: url(https://combo.staticflickr.com/pw/images/sohp_2014/googleplay.png);
}

.sohp .group-icon {
	background-image: url(https://combo.staticflickr.com/pw/images/sohp_2014/group_icon.png);
}

.sohp-inline-icon.album-icon {
	background-image: url(https://combo.staticflickr.com/pw/images/sohp_2014/album_icon.png);
}

#search-field {
	position: relative;
	top: -2px;
	line-height: 30px;
	color: #000;
}

#up-arrow-ui,
#down-arrow-ui,
#down-arrow-link,
#up-arrow-link {
	display: none;
}

.sohp-dots-nav {
	display: none;
}

#ad-container {
	position: relative;
	top: 48px;
}


</style>
<![endif]-->





<div id="sohp-2014">

	<div id="sohp-background-wrapper">
		<div id="background-parallax" class="sohp-background-parallax">
			<div id="background-noblur" class="sohp-background noblur"></div>
			<div id="background-blur" class="sohp-background blur"></div>
			<div id="background-superblur" class="sohp-background superblur"></div>
			<div id="section-stunning-overlay">
				<div id="section-stunning-graphite"></div>
				<div id="section-stunning-iced-tea"></div>
				<div id="section-stunning-throwback"></div>
			</div>
		</div>
	</div>

	<div class="sohp">

		<div class="sohp-sections">

		
							
		
			<div id="section-1" class="sohp-section">

				<div class="sohp-section-bd sohp-full-screen">

					
					<div class="sohp-full-screen-bd ipad">

						<div id="section-home-left">
							<img src="https://combo.staticflickr.com/pw/images/sohp_2014/ipad.png" width="643" height="452" alt="" />
							<div id="section-1-video-box">
								<video id="section-1-video" onclick="this.play()" data-fallback="https://combo.staticflickr.com/pw/images/sohp_2014/ipad-ui.jpg">
									<source src="https://combo.staticflickr.com/pw/images/sohp_2014/ipad-hidpi.webm" type="video/webm">
									<!-- so this is nutty, but IE 9+ dislikes the dimensions and/or bitrate of the 2048-kbps MP4 which can't play, and takes the 1024 instead. -->
									<source src="https://combo.staticflickr.com/pw/images/sohp_2014/ipad-hidpi-2048.mp4" type="video/mp4">
									<source src="https://combo.staticflickr.com/pw/images/sohp_2014/ipad-1024.mp4" type="video/mp4">
									<!-- no video support -->
																									</video>
							</div>
						</div>

						<div id="section-home-right">

							<img id="best-of-2014" src="https://combo.staticflickr.com/pw/images/sohp_2014/best_of_2014_badge_2x.png" width="222" height="54" />
							<h1 class="primary">Introducing Flickr for iPad</h1>

							<p>The new Flickr app makes it easy to access, organize and share your photos from anywhere - now available to enjoy on Apple’s beautiful, large retina display.</p>

							<p class="join"><a href="/signup/" class="join-top sohp-cta sign-up-pixel-trigger" data-track="joinFlickrTop">Join Flickr</a></p>

							<div>
								<a href="https://itunes.apple.com/us/app/flickr/id328407587?ls=1&mt=8" class="download-app-store" title="Get the App" data-track="appStoreHome"><span>Download (App Store)</span></a>
								<a href="https://play.google.com/store/apps/details?id=com.yahoo.mobile.client.android.flickr" data-track="googlePlayHome" title="Get the App" class="download-google-play" data-track="googlePlayHome"><span>Download (Google Play)</span></a>
							</div>

						</div>

					</div>

					
				</div>

			</div>

			<div id="section-2" class="sohp-section">

				<div id="section-connect" class="sohp-section-bd sohp-full-screen">

					<div class="sohp-full-screen-bd">

						<div class="sohp-inline-icon group-icon"></div>

						<div class="section-left">

							<h2>Share and connect with the Flickr Community. Discover billions of beautiful photos.</h2>

							
							
							<p style="width:26em">Become obsessed with our social feed of daily inspiration from the photographers you follow. Explore Flickr to easily find everything you're interested in. Join the world's largest photography community, discover billions of beautiful photos and share your own.

														
						</div>

						<div class="section-right">
							<img src="https://combo.staticflickr.com/pw/images/sohp_2014/s4-600.png" alt="" width="332" height="651" />
							<div id="section-connect-video-box">
								<video id="section-connect-video" onclick="this.play()" data-fallback="https://combo.staticflickr.com/pw/images/sohp_2014/android-ui.jpg">
									<!-- so this is nutty, but IE 9+ dislikes the dimensions and/or bitrate of the 2048-kbps MP4 which can't play, and takes the 1024 instead. -->
									<source src="https://combo.staticflickr.com/pw/images/sohp_2014/android-profile-hidpi.webm" type="video/webm">
									<source src="https://combo.staticflickr.com/pw/images/sohp_2014/android-profile-hidpi-2048-v2.mp4" type="video/mp4">
									<source src="https://combo.staticflickr.com/pw/images/sohp_2014/android-profile-1024.mp4" type="video/mp4">
									<!-- no video support -->
																								</video>
							</div>
						</div>

					</div>

				</div>

			</div>

			<div id="section-3" class="sohp-section">

				<div class="sohp-section-bd sohp-full-screen">

					<div class="sohp-full-screen-bd">

						<div id="section-stunning-left">

							<img src="https://combo.staticflickr.com/pw/images/sohp_2014/nexus5-600.png" width="337" height="663" alt="" />
							<div id="section-stunning-video-box">
								<video id="section-stunning-video" onclick="this.play()" data-fallback="https://combo.staticflickr.com/pw/images/sohp_2014/android-filters.jpg.v2">
									<source src="https://combo.staticflickr.com/pw/images/sohp_2014/android-filters-hidpi-v2.webm" type="video/webm">
									<source src="https://combo.staticflickr.com/pw/images/sohp_2014/android-filters-hidpi-1600-v2.mp4" type="video/mp4">
									<!-- no video support -->
																	</video>
							</div>

						</div>

						<div id="section-stunning-right">

							<div class="sohp-inline-icon camera-icon"></div>

							<div class="copy">
								<h2>Stunning photos made easy.</h2>
								<p>Our powerful mobile camera makes it easy to take expert photos in high resolution. Free professional editing tools and live filters let you refine your pictures in real-time. Record HD video to capture all your moments.</p>
							</div>

						</div>

					</div>

				</div>

			</div>

			<div id="section-4" class="sohp-section">

				<div id="section-albums" class="sohp-section-bd sohp-full-screen">

					<div class="sohp-full-screen-bd">

						<div id="section-albums-video-box">
							<video id="section-albums-video" onclick="this.play()" data-fallback="https://combo.staticflickr.com/pw/images/sohp_2014/albums.jpg">
								<source src="https://combo.staticflickr.com/pw/images/sohp_2014/albums.webm" type="video/webm">
								<source src="https://combo.staticflickr.com/pw/images/sohp_2014/albums-1600.mp4" type="video/mp4">
							</video>
													</div>

						<div class="section-right">

							<div style="position:absolute;top:0px;left:0px">
								<div class="sohp-inline-icon album-icon"></div>
							</div>

							<div class="copy">

								<h2>All your pictures in one place.</h2>
								<p>On Flickr, everyone gets 1000GB of free storage, enough space for more than 500,000 photos. Our powerful search technology means you can find them anytime you want. No matter where you are, automatically sync your phone's photos to Flickr. Now you can save a lifetime of memories in one place.</p>

							</div>

						</div>

					</div>

				</div>

			</div>

			<div id="section-5" class="sohp-section">

				<div class="sohp-section-bd sohp-full-screen">

					<div class="sohp-full-screen-bd">

						<div id="section-5-content">

							<h2 class="sohp-logo-large">
								<span>flickr</span>
							</h2>

						</div>

						
						<div class="section-inline">

													<div class="using-yahoo">
								Using your Yahoo Account
							</div>
						
							<a href="/signin/" class="sohp-cta-3" data-track="signInEnd" style="padding-left:1.5em;padding-right:1.5em;margin-right:20px">Sign In</a><a href="/signup/" class="sohp-cta sign-up-pixel-trigger" data-track="joinFlickrEnd">Join Flickr</a>

						</div>

						
						<div style="margin-top:2.25em;margin-left:6px">

							<a href="https://itunes.apple.com/us/app/flickr/id328407587?ls=1&mt=8" title="Get the App" class="download-app-store" style="margin-right:0.95em" data-track="appStoreEnd"><span>Download (App Store)</span></a>
							<a href="https://play.google.com/store/apps/details?id=com.yahoo.mobile.client.android.flickr" title="Get the App" class="download-google-play" data-track="googlePlayEnd"><span>Download (Google Play)</span></a>
						</div>

							
						<ul class="languages">
							<li>							<a href="/change_language.gne?lang=zh-hk&magic_cookie=a12084181a1567c8b056cdb63a61afbb" id="lang_zh-hk" class="standard">繁體中文</a>
														</li>
							<li><a href="/change_language.gne?lang=de-de&magic_cookie=a12084181a1567c8b056cdb63a61afbb" class="standard">Deutsch</a></li>
							<li><a href="/change_language.gne?lang=en-us&magic_cookie=a12084181a1567c8b056cdb63a61afbb" class="standard">English</a></li>
							<li><a href="/change_language.gne?lang=es-us&magic_cookie=a12084181a1567c8b056cdb63a61afbb" class="standard">Espa&#241;ol</a></li>
							<li><a href="/change_language.gne?lang=fr-fr&magic_cookie=a12084181a1567c8b056cdb63a61afbb" class="standard">Fran&#231;ais</a></li>
							<li>								<a href="/change_language.gne?lang=ko-kr&magic_cookie=a12084181a1567c8b056cdb63a61afbb" id="lang_ko-kr" class="standard">한글</a>
														</li>
							<li><a href="/change_language.gne?lang=it-it&magic_cookie=a12084181a1567c8b056cdb63a61afbb" class="standard">Italiano</a></li>
							<li><a href="/change_language.gne?lang=pt-br&magic_cookie=a12084181a1567c8b056cdb63a61afbb" class="standard">Portugu&#234;s</a></li>
							<li><a href="/change_language.gne?lang=vn-vn&magic_cookie=a12084181a1567c8b056cdb63a61afbb" class="standard">Tiếng Việt</a></li>							<li><a href="/change_language.gne?lang=id-id&magic_cookie=a12084181a1567c8b056cdb63a61afbb" class="standard">Bahasa Indonesia</a></li>													</ul>

						<div id="foot-legal">

														
															<span class="like-link">A Yahoo Company&nbsp;</span> <span class="divider">|</span>
															
															<a href="/help/terms/" class="standard">Terms</a> <span class="divider">|</span>
							
							<a href="/help/privacy-policy/" class="standard">Privacy</a> <span class="divider">|</span>

						</div>

					</div>

				</div>

			</div>

		</div>

					








	
	
	
	
		
	
	
	
	

 					



<div id="global-nav" class="no-js gn-signed-out styleguide-global-nav">
	
	<div id="gn-wrap" class="gn-wrap " >

		<div class="logo new-logo">
			<a href="/" data-track="Logo-main" title="Flickr logo. If you click it, you'll go home">				<span class="refresh-logo-2013">Flickr logo. If you click it, you'll go home</span>
							</a>		</div>

		<div class="nav small-logo new-logo">
						<ul class="top-nav">
								<li class="toplink">
					<a data-track="Signup-main" href="/signup" class="gn-link gn-signup sign-up-pixel-trigger"><span>Sign Up</span></a>
				</li>
				
				
								<li class="gn-menu-parent toplink" data-context="explore">
					<a data-track="Explore-main" class="gn-link explore" href="/explore"><span>Explore</span></a>
					<div class="panel" id="explore-panel">
						<div class="arrow"></div>
						<div class="bd">
							<ul>
								<li class="gn-subnav-item"><a data-track="Explore-recent_photos" href="/explore">Recent Photos</a></li>
																	<li class="gn-subnav-item"><a data-track="Explore-trending_tags_click" href="/tags">Trending</a></li>
																									<li class="gn-subnav-item"><a data-track="Explore-vr_landing_click" href="/vr">Flickr VR</a></li>
																<li class="gn-subnav-item"><a data-track="Explore-the_commons" href="/commons">The Commons</a></li>
								<li class="gn-subnav-item"><a data-track="Explore-galleries" href="/galleries">Galleries</a></li>
								<li class="gn-subnav-item"><a data-track="Explore-world_map" href="/map">World Map</a></li>
								<li class="gn-subnav-item"><a data-track="Explore-camera_finder" href="/cameras">Camera Finder</a></li>
													<li class="gn-subnav-item"><a data-track="Explore-the_weekly_flickr" href="/photos/flickr/albums/72157639868074114/">The Weekly Flickr</a></li>
													<li class="gn-subnav-item"><a data-track="Explore-flickr_blog" href="http://blog.flickr.net">FlickrBlog</a></li>
							</ul>
						</div>
					</div>
				</li>
				
								<li class="toplink">
					<a data-track="Create-main" class="gn-link" href="/prints"><span>Prints</span></a>
				</li>
												<li class="toplink">
					<a data-track="Get-Pro-main" class="gn-link" href="/account/upgrade/pro"><span>Get Pro</span></a>
				</li>
							</ul>
					</div>

		<div class="tools with-upload-icon">

									
									<form action="/search/" method="get" role="search" class="nav-selecta bo-selecta-3">
									<input type="text" placeholder="Photos, people, or groups" name="q" value="" id="gn-search-field" class="gn-search" autocomplete="off" aria-label="Search">
				
				<input type="submit" data-track="Search-search_icon" class="search-icon icon rapidnofollow" tabindex="-1" value="Search">
			</form>
			
			<ul class="top-nav">

								<li class="toplink upload-icon-link">
					<a data-track="UploadIcon-main" class="gn-link global-nav-upload" href="/upload">
						<i class="upload-icon" title="Upload">Upload</i>
					</a>
				</li>
								
				
				
				
				
								<li class="toplink gn-signin">
					<a data-track="Account-sign_in" href="/signin/" class="gn-link secondary"><span>Sign In</span></a>
				</li>
							</ul>
		</div>
	</div>
</div>




	
		
		<div class="sohp-nav sohp-top">

			<!-- UI for the "up arrow" link -->
			<span id="up-arrow-ui" class="disabled">
				<span class="sohp-arrow-up">&uarr;</span>
			</span>

			<div class="sohp-row">

				<div class="sohp-col nowrap">
				</div>

				<div class="sohp-col full-width">
					<!-- up arrow: hover + click overlay -->
					<a id="up-arrow-link" href="#up" class="up-link disabled rapidnofollow"><span style="line-height:7em">&uarr;</span></a>
				</div>

				<div id="sohp-search" class="sohp-col nowrap">
				</div>

			</div>

		</div>

		<div class="sohp-nav sohp-right">

			<ul class="sohp-dots-nav">
				<li class="ad" style="display:none">
					<a href="#section-0" class="rapidnofollow">Ad</a>
				</li>
				<li>
					<a href="#section-1" class="rapidnofollow">Home</a>
				</li>
				<li>
					<a href="#section-2" class="rapidnofollow">Capture</a>
				</li>
				<li>
					<a href="#section-3" class="rapidnofollow">Storage</a>
				</li>
				<li>
					<a href="#section-4" class="rapidnofollow">Search</a>
				</li>
				<li>
					<a href="#section-5" class="rapidnofollow">Join</a>
				</li>
			</ul>

		</div>

		<div class="sohp-nav sohp-bottom">

			<!-- UI for the "down arrow" link -->
			<span id="down-arrow-ui" class="disabled">
				<span class="sohp-arrow-down">&uarr;</span>
			</span>

			<div id="sohp-bottom-row">

				<div class="sohp-row">

					<div class="sohp-col nowrap">

						<p id="photo-credit" class="standard-aa">
							by <a href="https://www.flickr.com/photos/papy06/11384700923/" class="standard" target="_blank">Gilles Couturier</a>
						</p>

					</div>

					<div class="sohp-col full-width" style="padding-right:1em">
						<!-- down arrow: hover + click target overlay -->
						<a id="down-arrow-link" href="#down" class="down-link disabled rapidnofollow"><span style="line-height:6em">&darr;</span></a>
					</div>

					<div id="sohp-downloads" class="sohp-col nowrap disabled">

						<a href="https://itunes.apple.com/us/app/flickr/id328407587?ls=1&mt=8" title="Get the App" class="sohp-ios" data-track="appStoreBottomNav">
							<span>App Store</span>
						</a>

						<a href="https://play.google.com/store/apps/details?id=com.yahoo.mobile.client.android.flickr" title="Get the App" class="sohp-android" data-track="googlePlayBottomNav">
							<span>Google Play</span>
						</a>

					</div>

				</div>

			</div>

		</div>

	</div>


		


</div>







<div id="global-dialog-background"></div>










<div id="page-gen"><!-- page generated by aws-www-live (in us-east-1) at 02:52:19 01/27/21 in 18ms --></div>












<!--beacons: 0 -->



<script type='text/javascript' nonce="4e1322febffb1fea89a198bddeb31773">
	('<a href="/enfnl">')
</script>
	<!-- <a href="/enfnl"> -->






			
	
	
	
	
	
	

			
	
	
		<script src="//assets.adobedtm.com/launch-ENd8846597b4254546afff313cb328c80d.min.js" async></script>
	
		


	


		<script nonce="4e1322febffb1fea89a198bddeb31773">
	(function() {
					page_timing.js_assets_start = new Date().getTime();
				

	
		
	
F.intl = 'en-us';

var yconf = {"flickr":{"is_secure":true,"flags":{"enable_grease":true,"enable_advanced_gestures":true,"enable_advanced_gestures_lightbox":true,"enable_desktop_lightbox_retina_images":true,"enable_fave_keyboard_shortcut":true,"enable_sets_keyboard_shortcut":true,"enable_faves_manage":true,"enable_galleries_context":true,"enable_rapid_tracking":true,"enable_groups_keyboard_shortcut":true,"enable_gallery_keyboard_shortcut":true,"enable_addperson_keyboard_shortcut":true,"enable_tags_keyboard_shortcut":true,"enable_comments_keyboard_shortcut":true,"enable_sitekey_fetcher":true,"enable_keyboard_shortcut_legend":true,"enable_keyboard_shortcut_legend_keyboard_layouts":true,"enable_keyboard_shortcuts":true,"enable_faves_page_flanal":true,"enable_viewing_party_ie9_support_messages":true,"enable_facebook_2":true,"enable_touch_lightbox_searchified":true,"enable_tag_selecta_photogne":true,"enable_tag_selecta_uploadr":true,"enable_exif_thumbs":true,"enable_justified_search":true,"enable_retina_justified":true,"enable_jsfail_detection":true,"enable_farm_timing_sampling":true,"enable_high_res_pref":true,"enable_liquid_everything":true,"enable_justified_explore":true,"enable_account_order_redesign":true,"enable_global_nav":true,"enable_ywa_rapid":true,"enable_photopage_perf":true,"enable_homerun_navtiming_beacon":true,"enable_2013_photo_page":true,"enable_2013_photo_page_extras":true,"enable_ken_burns":true,"enable_ken_burns_face":true,"enable_hermes_sihp_fb_friendfinder":true,"enable_hermes_sihp_deferred_sidebar":true,"enable_refresh_sihp_feed_ads":true,"enable_justified_inline_ads":true,"enable_justified_view_inline_commenting":true,"enable_justified_groups":true,"enable_sihp_viewcount":true,"enable_photostream_viewcount":true,"enable_n_to_ldrb_ads":true,"enable_follow_theme":true,"enable_group_post_beta":true,"enable_ads_on_login_page":1,"enable_playr":true,"enable_merch_from_organizr":true,"enable_set_to_album_change":true,"enable_https_api":true,"enable_client_fullpath_api":true,"enable_simple_client_side_utf8_escaping":true,"enable_global_nav_restyle":true,"enable_feed_reskin":true,"enable_global_nav_upload_icon":true,"show_pro_upsell_banner":true,"disable_bulk_license_changes":true,"enable_jubilee_urls":true},"formatting":{"decimalSeparator":"."},"farm_samples":{"f1":4,"f2":5,"f3":15,"f4":20,"f5":20,"f6":20,"f7":20,"f8":70,"f9":20,"f10":20},"is_zeus":true,"justified_row_height":330,"lang":"en-us","photo_root":"https:\/\/farm.staticflickr.com\/","site_root":"https:\/\/www.flickr.com","images_root":"https:\/\/combo.staticflickr.com\/pw\/images","intl_images_root":"https:\/\/combo.staticflickr.com\/pw\/images\/en-us","int2lang":{"1":"en-us","2":"fr-fr","3":"es-us","4":"de-de","5":"it-it","6":"pt-br","7":"ko-kr","9":"zh-hk","13":"vn-vn","14":"id-id"},"search":{"textsearch_enabled":true,"search_scope":"all"},"photos":[],"contact_limit":100000,"server_timestamp":1611744739,"magic_cookie":"a12084181a1567c8b056cdb63a61afbb","filmstrips":{"preload_page_count":2,"photos_per_page":4,"container":"#sidebar"},"notes":{"can_add_note":false,"can_add_person":false,"ratio":"0.000000","count":"0.000000","max_count":100},"video_player_version":"2968162862","lightbox":{"enable":false,"enable_faves":true,"enable_comments":true,"enable_favorites_count":true,"node_prune_threshold":50,"node_prune_amount":10,"position_preload_limit":10,"position_preload_threshold":5,"image_preload_limit":2,"hd_default":false,"video_autoplay":true,"enable_mobile_lightbox":true,"enable_mobile_lightbox_pinch_zoom":true,"enable_fullscreen":true,"spaceid":792600515,"biggering_2013":true},"max_photo_ids_per_api_call":20,"flickr_api_uri_direct":"https:\/\/www.flickr.com\/services\/rest\/","host_ip":"127.0.0.1","radjax_endpoint":"https:\/\/y-flickr.yahoo.com\/ad","static_domain":"staticflickr.com","user":{"user_ok":false,"useragent_fully_supported":true,"useragent_reboot_supported":true},"printing":[],"sharing":[],"nav_selecta":{"additional_sections":[{"name":"Terms of Use","sectionType":"text","url":"\/help\/terms\/"},{"name":"Your Privacy","sectionType":"text","url":"\/help\/privacy\/"},{"name":"Copyright\/IP Policy","sectionType":"text","url":"\/help\/guidelines"}]},"people":{"api_url":"","can_only_add_self":true},"tags":{"api_url":""},"iphone_app_store_url":"https:\/\/itunes.apple.com\/app\/flickr\/id328407587"},"flickrAPI":{"flickr_api_uri":"https:\/\/www.flickr.com\/services\/rest","api_key":"723d5a8690452b669d3b52bf37d3b472","auth_hash":"a12084181a1567c8b056cdb63a61afbb","auth_token":"","secret":"f4b33f5e12f00eda"},"flickrMap":{"generatedInYconf":true,"enable_alternate_tiles_plugin":1},"cookieConsent":{"cookie_level_buckets":{"required":["ccc","cookie_accid","cookie_epass","cookie_l10n","cookie_session","dcbn","ffs","ffs","flrb","flrbfd","flrbgdrp","flrbgmrp","flrbgrp","flrbp","flrbrgs","flrbrst","flrbs","flrtags","flrbase","liqph","liqpw","localization","RT","rtna","sa","s_sq","vp","xb"],"functional":[],"advertising":[]},"consent_context_name":"ccc","consent_context_expiration_days":30,"allow_level":{"required":true,"functional":false,"advertising":false}},"yui2":"2.5.2","loadOptional":false,"combine":true,"root":"","base":"https:\/\/combo.staticflickr.com\/pw\/combo\/1\/3.11.0?","comboBase":"https:\/\/combo.staticflickr.com\/pw\/combo\/1\/3.11.0?","workerBase":"\/combo\/1\/3.11.0?","maxURLLength":1999,"dev":false,"debug":false,"modules":{"account-manage":{"path":"j\/.IR-manage.A.v4iwWf.57","requires":["flickr-dialog","io-base","sprintf","yui-base"],"ext":false},"account-order-transjax":{"path":"j\/.IR-.JM-.C-.F.A.v2PRwgd.57","requires":["transjax-base","yui-base"],"ext":false},"account-order-ywa-tracking":{"path":"j\/.IR-.JM-ywa-.BW.A.v5TmHmz.57","requires":["event","datatype-date-format","yahoo-web-analytics","yui-base"],"ext":false},"account-order-manage-ywa-tracking":{"path":"j\/.IR-.JM-manage-ywa-.BW.A.vqYDF2.57","requires":["event","datatype-date-format","yahoo-web-analytics","yui-base"],"ext":false},"account-rules":{"path":"j\/.IR-rules.A.v7vKkB2.57","requires":["dd-constrain","dd-drop","dd-proxy","event","flickr-dialog-confirmation","gallery-flickr-api","node","yui-base"],"ext":false},"actions-menu-css":{"path":"c\/c_.IS-.BB.BC.v4BYcLb.57","type":"css","ext":false},"ad-masker":{"path":"j\/ad-masker.A.v5inFXJ.57","requires":["node","page-context","yui-base"],"ext":false},"add-to-dialog-css":{"path":"c\/c_.KQ.W-.D.BC.vWK4Rn.57","type":"css","ext":false},"addressbook":{"path":"j\/.HE.A.v47oE1T.57","requires":["better-throttle","event","gallery-flickr-api","io","node","yui-base"],"ext":false},"autocomplete-2-5-1":{"path":"j\/.CM\/.BA_2.5.1-.D.A.v5GDkpR.57","requires":["yui2-datasource","yui2-dom","yui2-event","yui2-yahoo"],"ext":false},"autosuggest":{"path":"j\/autosuggest.A.v7kQA5Z.57","requires":["promise","oop","base","querystring-stringify-simple","text-accentfold","template-base","handlebars-base","autocomplete","io","node","yui-base"],"ext":false},"batchr-photo-privacy":{"path":"j\/batchr-.B-privacy.A.v3bx26a.57","requires":["batchr-photo-privacy-transjax","flickr-dialog","gallery-flickr-api","yui-base"],"ext":false},"batchr-photo-privacy-transjax":{"path":"j\/batchr-.B-privacy-.C-.F.A.v4c984Z.57","requires":["transjax-base","yui-base"],"ext":false},"beehive-contact-suggestions":{"path":"j\/.IT-.FF-.IL.A.v7rm7s9.57","requires":["anim","beehive-contact-suggestions-transjax","contact-changer","gallery-flickr-api","node","yui-base"],"ext":false},"beehive-contact-suggestions-transjax":{"path":"j\/.IT-.FF-.IL-.C-.F.A.v6R6zDe.57","requires":["transjax-base","yui-base"],"ext":false},"better-throttle":{"path":"j\/.EH-.EB.A.v3dFsZT.57","requires":["yui-base","yui-later"],"ext":false},"bitmap-text":{"path":"j\/.Z-.DK-.D.A.v3EhfJR.57","requires":["yui-base"],"ext":false},"bitmap-type-silkscreen":{"path":"j\/.Z-.DJ-.BJ.A.v7pK5iT.57","requires":["yui-base"],"ext":false},"boomerang":{"path":"j\/.JK.A.vWzrBh.57","requires":["yui-base"],"ext":false},"box-host":{"path":"j\/box-.DG.A.v3Jk7wt.57","requires":["event-mousedrag","math","node","yui-base"],"ext":false},"bo-selecta":{"path":"j\/.HO-.D.A.v5MaJ9E.57","requires":["anim","autocomplete-2-5-1","bo-selecta-css","bo-selecta-transjax","event","event-custom","gallery-flickr-api","io-base","node","string-filters","yui-base"],"ext":false},"bo-selecta-3":{"path":"j\/.HO-3.A.v48RZAm.57","requires":["anim","autocomplete","bo-selecta-3-css","bo-selecta-global-search-datasource","bo-selecta-transjax","datasource-function","event","event-custom","gallery-flickr-api","image-fader","io-base","node","string-filters","widget","yui-base"],"optional":["contact-changer"],"ext":false},"bo-selecta-css":{"path":"c\/c_.HO-.D.BC.v5BkTTN.57","type":"css","ext":false},"bo-selecta-3-css":{"path":"c\/c_.HO-3.BC.v6yaHJR.57","type":"css","ext":false},"bo-selecta-global-search-datasource":{"path":"j\/.HO-.X-.CA-.BYsource.A.v4k2G6F.57","requires":["bo-selecta-transjax","datasource-local","gallery-flickr-api","yui-base"],"ext":false},"bo-selecta-transjax":{"path":"j\/.HO-.C-.F.A.voRNLK.57","requires":["transjax-base","yui-base"],"ext":false},"cache-simple":{"path":"j\/.EJ-.GK.A.v748vUT.57","requires":["yui-base"],"ext":false},"ccv":{"path":"j\/ccv.A.vWpcxU.57","requires":["yui-base"],"ext":false},"circle-fill-graph":{"path":"j\/circle-fill-graph.A.vpF39.57","requires":["anim","event","node","page-context","yui-base"],"ext":false},"comscore":{"path":"j\/.JN.A.v5fTqhX.57","ext":false},"contact-changer":{"path":"j\/.FF-.FG-.D.A.v5LtNEG.57","requires":["contact-changer-css","contact-changer-transjax","refresh-sihp-transjax","event-custom","event-delegate","gallery-flickr-api","global-dialog","io-base","yui-base"],"ext":false},"contact-changer-css":{"path":"c\/c_.FF-.FG-.D.BC.v6ykU8G.57","type":"css","ext":false},"contact-changer-transjax":{"path":"j\/.FF-.FG-.C-.F.A.v5UxBPa.57","requires":["transjax-base","yui-base"],"ext":false},"context-data":{"path":"j\/.H-.BY.A.v2oXYfv.57","requires":["event-custom","gallery-flickr-api","photo-data","urls","yui-base"],"ext":false},"cookie-catcher":{"path":"j\/.CK-catcher.A.v5Pjyi4.57","requires":["cookie"],"ext":false},"cookie-crusher":{"path":"j\/.CK-crusher.A.v3BbQ6B.57","requires":["cookie"],"ext":false},"dataview":{"path":"j\/.BY.JB.A.v2w7JsG.57","requires":["yui-base"],"ext":false},"date-widgets":{"path":"j\/.HB-.EZs.A.v6SUySQ.57","requires":["yui-base"],"optional":["datatype-date","event","gallery-calendar","node"],"ext":false},"defer-images":{"path":"j\/.GI-.GC.A.v5ewVDt.57","requires":["node-visibility","retry-image-on-error","yui-base"],"ext":false},"dejaview":{"path":"j\/.BZ-.D.A.v6xpj6D.57","requires":["cookie","yui-base"],"ext":false},"discussion-comments":{"path":"j\/discussion-.LGs.A.v67a5j8.57","requires":["event","node","yui-base"],"ext":false},"donut-progress-ui":{"path":"j\/donut.ID-ui.A.v6zpk8.57","requires":["yui-base"],"ext":false},"dynamic-messaging":{"path":"j\/dynamic-messaging.A.v57VzXc.57","requires":["io-form","gallery-flickr-api","message-primary-email-transjax","transjax-base","yui-base"],"ext":false},"editr":{"path":"j\/.GZr.A.v4Rp4Pk.57","requires":["boomerang","editr-edit-panel","editr-errors","editr-grid","editr-progress","editr-publish-dialog","editr-toolbar","event-base","feature-tour","health-check","gallery-popover","page-context","polyfills-placeholder","yui-base"],"optional":["editr-file-picker","editr-photo-picker","editr-upload-queue","flickr-dialog"],"ext":false},"editr-blocked":{"path":"j\/.GZr-blocked.A.v4Rp3yp.57","requires":["cookie","yui-base"],"ext":false},"editr-data-base":{"path":"j\/.KA.BL.A.v4eu9rV.57","requires":["array-extras","event-custom","yui-base"],"ext":false},"editr-data-groups":{"path":"j\/.KA.DMs.A.v6u5Kxb.57","requires":["editr-data-photos","editr-data-base","type-cast","yui-base"],"ext":false},"editr-data-people":{"path":"j\/.KA.L.A.v6fsenS.57","requires":["editr-data-base","type-cast","yui-base"],"ext":false},"editr-data-photos":{"path":"j\/.KA.EC.A.v38yiEG.57","requires":["editr-data-base","type-cast","yui-base"],"ext":false},"editr-data-sets":{"path":"j\/.KA.KF.A.v7s8vzw.57","requires":["editr-data-photos","editr-data-base","escape","type-cast","yui-base"],"ext":false},"editr-edit-panel":{"path":"j\/.GZr-.GZ.IC.A.v5N8Zgb.57","requires":["better-throttle","editr-data-photos","editr-edit-panel-tooltip","editr-edit-panel-groups","editr-edit-panel-owner-settings","editr-edit-panel-people","editr-edit-panel-sets","editr-edit-panel-tags","editr-edit-panel-title-description","editr-edit-panel-transjax","editr-grid","event-base","substitute","string-filters","yui-base"],"ext":false},"editr-edit-panel-component":{"path":"j\/.JZ.JY.A.v7uqRCA.57","requires":["event-base","keyboard-shortcut-manager","yui-base"],"ext":false},"editr-edit-panel-groups":{"path":"j\/.JZ.DMs.A.v5GqHHW.57","requires":["editr-data-photos","editr-data-groups","editr-edit-panel-tooltip","editr-edit-panel-transjax","event-base","flickr-dialog","keyboard-shortcut-manager","string-filters","yui-base"],"ext":false},"editr-edit-panel-location":{"path":"j\/.JZ.BR.A.v4G4KB1.57","requires":["editr-data-photos","editr-edit-panel-component","editr-edit-panel-transjax","yui-base"],"ext":false},"editr-edit-panel-owner-settings":{"path":"j\/.JZ.BK-.FR.A.v2VHsJz.57","requires":["editr-data-photos","editr-edit-panel-component","editr-edit-panel-transjax","yui-base"],"optional":["date-widgets"],"ext":false},"editr-edit-panel-people":{"path":"j\/.JZ.L.A.v2WwGxi.57","requires":["bo-selecta-3","editr-data-people","editr-data-photos","editr-edit-panel-component","editr-edit-panel-transjax","event-base","flickr-dialog","photo-keyboard-shortcuts-transjax","photo-people-transjax","string-filters","yui-base"],"ext":false},"editr-edit-panel-sets":{"path":"j\/.JZ.KF.A.v6CMPv4.57","requires":["editr-data-photos","editr-data-sets","editr-edit-panel-tooltip","editr-edit-panel-transjax","event-base","flickr-dialog","keyboard-shortcut-manager","string-filters","yui-base"],"ext":false},"editr-edit-panel-tags":{"path":"j\/.JZ.KD.A.v2Tk6A3.57","requires":["editr-data-photos","editr-edit-panel-transjax","event-base","tag-selecta","yui-base"],"ext":false},"editr-edit-panel-title-description":{"path":"j\/.JZ.KB-.KC.A.v3TBoj4.57","requires":["better-throttle","editr-data-photos","editr-edit-panel-transjax","event-base","focus-tracker","yui-base"],"ext":false},"editr-edit-panel-tooltip":{"path":"j\/.JZ.JT.A.v2Ve8zL.57","requires":["editr-edit-panel-tooltip-css","editr-edit-panel-tooltip-transjax","escape","event-base","gallery-popover","yui-base"],"ext":false},"editr-edit-panel-tooltip-css":{"path":"c\/c_.JZ.JT.BC.v5FEV71.57","type":"css","ext":false},"editr-edit-panel-tooltip-transjax":{"path":"j\/.JZ.JT-.C-.F.A.v7pWS19.57","requires":["transjax-base","yui-base"],"ext":false},"editr-edit-panel-transjax":{"path":"j\/.JZ.C-.F.A.v4zYY2s.57","requires":["transjax-base","yui-base"],"ext":false},"editr-errors":{"path":"j\/.GZr-.JPs.A.v45QNd.57","requires":["editr-data-photos","yui-base"],"ext":false},"editr-exif":{"path":"j\/.GZr-.GO.A.v51a9Ys.57","requires":["editr-data-photos","exif-thumbnail-extractor","datatype-xml","worker","yui-base"],"ext":false},"editr-file-picker":{"path":"j\/.GZr-.KG.A.v5JhqEQ.57","requires":["datatype","editr-data-photos","editr-exif","editr-file-picker-transjax","editr-progress","flickr-dialog","gallery-flickr-api","health-check","md5","rapid-tracker","string-filters","uploader","yui-base","murmurhash"],"ext":false},"editr-file-picker-transjax":{"path":"j\/.GZr-.KG-.C-.F.A.v2GnoQQ.57","requires":["transjax-base","yui-base"],"ext":false},"editr-grid":{"path":"j\/.KJ.A.v45aQcf.57","requires":["editr-data-photos","editr-grid-external-events","editr-grid-form-handler","editr-grid-item","editr-grid-key-monitor","editr-grid-marquee","editr-grid-progress-handler","editr-grid-selection","editr-grid-selection-ui","editr-grid-transjax","editr-grid-user-messaging","event-custom","editr-zoom","editr-errors","flickr-dialog","focus-tracker","gallery-popover","menus","yui-base"],"optional":["editr-upload-queue"],"ext":false},"editr-grid-external-events":{"path":"j\/.KJ-.KK-.Gs.A.v3soLpT.57","requires":["editr-grid","yui-base"],"ext":false},"editr-grid-form-handler":{"path":"j\/.KJ-.KL.A.v4pRwj1.57","requires":["editr-grid","yui-base"],"ext":false},"editr-grid-item":{"path":"j\/.KJ-item.A.v3H5Npq.57","requires":["editr-grid","yui-base"],"ext":false},"editr-grid-key-monitor":{"path":"j\/.KJ-.KM.A.v7krecv.57","requires":["editr-grid","keyboard-shortcut-manager","yui-base"],"ext":false},"editr-grid-marquee":{"path":"j\/.KJ-marquee.A.v6KD7Zj.57","requires":["editr-grid","yui-base"],"ext":false},"editr-grid-progress-handler":{"path":"j\/.KJ.ID-handler.A.v2uYNGH.57","requires":["editr-grid","editr-publish-dialog","transjax-base","yui-base"],"ext":false},"editr-grid-selection":{"path":"j\/.KJ-.KN.A.v4P1rA8.57","requires":["editr-grid","yui-base"],"ext":false},"editr-grid-selection-ui":{"path":"j\/.KJ-.KN-ui.A.v42T4nq.57","requires":["editr-grid","transjax-base","yui-base"],"ext":false},"editr-grid-transjax":{"path":"j\/.KJ-.C-.F.A.v4MTgXJ.57","requires":["transjax-base","yui-base"],"ext":false},"editr-grid-user-messaging":{"path":"j\/.KJ-.KO.A.v5p6saG.57","requires":["editr-grid","editr-errors","yui-base"],"ext":false},"editr-photo-picker":{"path":"j\/.GZr-.B-picker.A.v2WTDvq.57","requires":["editr-data-photos","flickr-dialog-spinner","flickr-geo","gallery-flickr-api","yui-base"],"ext":false},"editr-progress":{"path":"j\/.GZr.ID.A.v71mswE.57","requires":["better-throttle","event-base","event-custom","yui-base"],"ext":false},"editr-publish-dialog":{"path":"j\/.GZr-.KE-.W.A.v6cDysE.57","requires":["editr-progress","editr-publisher","editr-publisher-transjax","editr-upload-queue","event-base","event-custom","flickr-dialog","gallery-flickr-api","health-check","yui-base","querystring-parse-simple"],"optional":["flanal"],"ext":false},"editr-publisher":{"path":"j\/.GZr-.KEer.A.v5msN7H.57","requires":["editr-data-people","editr-data-photos","editr-data-sets","editr-errors","editr-publisher-transjax","editr-upload-queue","event-base","event-custom","flickr-dialog","gallery-flickr-api","health-check","yui-base"],"ext":false},"editr-publisher-transjax":{"path":"j\/.GZr-.KEer-.C-.F.A.v3xsmB1.57","requires":["transjax-base","yui-base"],"ext":false},"editr-secret-about-box":{"path":"j\/.GZr-secret-about-box.A.v2RXVyS.57","requires":["event","node","page-context","yui-base"],"ext":false},"editr-toolbar":{"path":"j\/.GZr-.KP.A.v4w4Z25.57","requires":["editr-grid","menus","yui-base"],"ext":false},"editr-upload-queue":{"path":"j\/.GZr-.KI-.CT.A.v7gXJfW.57","requires":["editr-data-photos","editr-errors","editr-file-picker","editr-publisher","event-custom","gallery-flickr-api","health-check","json","yui-base"],"optional":["flanal"],"ext":false},"editr-zoom":{"path":"j\/.GZr-zoom.A.v4r9RMh.57","requires":["editr-zoom-transjax","editr-data-photos","editr-file-picker","event-base","event-custom","flickr-dialog","node-event-html5","yui-base"],"ext":false},"editr-zoom-transjax":{"path":"j\/.GZr-zoom-.C-.F.A.vyrNJB.57","requires":["transjax-base","yui-base"],"ext":false},"exif-extractor":{"path":"j\/.KU.A.v782twS.57","requires":["exif-extractor-tags","xmp-extractor","yui-base"],"ext":false},"exif-extractor-tags":{"path":"j\/.KU-.KD.A.v4Gaagq.57","requires":["yui-base"],"ext":false},"exif-thumbnail-extractor":{"path":"j\/.GO-.IM-.IN.A.v6JCBPe.57","requires":["yui-base"],"ext":false},"event-annotations":{"path":"j\/.G-.BD.A.v6qsU7P.57","requires":["yui-base"],"ext":false},"event-mousedrag":{"path":"j\/.G-.BO.A.v6T8rd9.57","requires":["event-annotations","event-custom-complex","event-synthetic","node","yui-base","yui-throttle"],"ext":false},"face":{"path":"j\/face.A.v5Nxu9x.57","ext":false},"photo-list-model":{"path":"j\/.B-.CZ-.JA.A.v79onsC.57","requires":["gallery-flickr-api","model","murmurhash","photos-list","photo-data","context-data","querystring-stringify-simple","io","yui-base"],"ext":false},"photo-list-view":{"path":"j\/.B-.CZ-.JB.A.v25YhS9.57","requires":["view","handlebars","murmurhash","photos-list","io","flickr-app","lightbox","photos-list-justifier","flickr-dialog-infinite-spinner","better-throttle","rapid-tracker","template-fetcher","yui-base","node-imports","flickr-page-timing","view-count-on-visible"],"ext":false},"explore-hera-view":{"path":"j\/.FP-.LJ.JB.A.v7h6cBU.57","requires":["view","datatype-date","murmurhash","handlebars","photo-list-model","photo-list-view","flickr-app-explore","flickr-dialog-infinite-spinner","template-fetcher","gallery-popover","rapid-tracker","io","yui-base"],"ext":false},"search-hera-view":{"path":"j\/.CA-.LJ.JB.A.v4wkcc1.57","requires":["view","datatype-date","murmurhash","handlebars","photo-list-model","photo-list-view","flickr-app-explore","flickr-dialog-infinite-spinner","template-fetcher","gallery-popover","rapid-tracker","io","yui-base"],"ext":false},"photostream-hera-view":{"path":"j\/.ECtream-.LJ.JB.A.v4PbHae.57","requires":["view","app","datatype-date","murmurhash","handlebars","photo-list-model","photo-list-view","flickr-dialog-infinite-spinner","template-fetcher","gallery-popover","rapid-tracker","io","yui-base"],"ext":false},"fave-star":{"path":"j\/.CX-.CY.A.v4K3qrD.57","requires":["anim","node","yui-base"],"ext":false},"farm_timing":{"path":"j\/farm_.FZ.A.v2r1AH5.57","requires":["node","yui-base","io","event"],"ext":false},"feature-tour":{"path":"j\/.KT-.DA.A.v6T2Eev.57","requires":["anim","cookie","dom","event","feature-tour-css","feature-tour-transjax","yui-base"],"ext":false},"feature-tour-css":{"path":"c\/c_.KT-.DA.BC.v2he3je.57","type":"css","ext":false},"feature-tour-transjax":{"path":"j\/.KT-.DA-.C-.F.A.v4BqwFn.57","requires":["transjax-base","yui-base"],"ext":false},"flanal":{"path":"j\/.IU.A.v59gCyS.57","requires":["yui-base"],"optional":["io"],"ext":false},"flapid":{"path":"j\/.JO.A.vNUtnb.57","requires":["gallery-flickr-api","yui-base"],"ext":false},"flickr":{"path":"j\/.J-.D.A.v6sbPNJ.57","requires":["flickr-app","flickr-tooltips","personmenu","yui-base"],"optional":["gallery-flickr-api","share-this-v3-menu"],"ext":false},"flickr-app":{"path":"j\/.J-app.A.v72zDwq.57","requires":["app-base","yui-base"],"ext":false},"flickr-app-photo":{"path":"j\/.J-app-.B.A.vrQbG9.57","requires":["context-data","flickr-app","photo-data","urls","yui-base"],"optional":["video"],"ext":false},"flickr-app-photostream":{"path":"j\/.J-app-.ECtream.A.v2uCKsr.57","requires":["context-data","flickr-app","photo-data","template-fetcher","photo-list-model","photo-list-view","photostream-hera-view","photos-subnav-view","refresh-sihp-comment","urls","io","yui-base"],"optional":["video"],"ext":false},"flickr-app-explore":{"path":"j\/.J-app-.FP.A.v58T2kS.57","requires":["context-data","flickr-app","explore-hera-view","rapid-tracker","template-fetcher","urls","yui-base"],"ext":false},"flickr-app-soup":{"path":"j\/.J-app-soup.A.v7ksAKK.57","requires":["flickr-app","soup-hera-view","rapid-tracker","template-fetcher","urls","yui-base"],"ext":false},"group-model":{"path":"j\/.DM-.JA.A.vPDjAS.57","requires":["context-data","model","gallery-flickr-api","urls","yui-base"],"ext":false},"groups-model":{"path":"j\/.DMs-.JA.A.v2sh7A5.57","requires":["context-data","model","model-list","lazy-model-list","group-model","gallery-flickr-api","urls","yui-base"],"ext":false},"groups-page-model":{"path":"j\/.DMs-.GF-.JA.A.v5RofKs.57","requires":["context-data","model","group-model","gallery-flickr-api","urls","yui-base"],"ext":false},"groups-list-view":{"path":"j\/.DMs-.CZ-.JB.A.v7u6jUK.57","requires":["context-data","view","groups-model","handlebars","yui-base"],"ext":false},"groups-recent-view":{"path":"j\/.DMs-recent-.JB.A.v5kWQoe.57","requires":["context-data","view","groups-model","groups-page-model","handlebars","yui-base"],"ext":false},"group-subnav":{"path":"j\/.DM-subnav.A.v5VJRJC.57","requires":["flickr-dialog","yui-base"],"ext":false},"flickr-app-groups":{"path":"j\/.J-app-.DMs.A.vdKG6X.57","requires":["context-data","cookie","flickr-app","groups-model","group-model","groups-page-model","groups-list-view","groups-recent-view","group-strip-view","template-fetcher","urls","yui-base"],"ext":false},"flickr-dialog":{"path":"j\/.IZ.A.v5ornZu.57","requires":["flickr-dialog-alert","flickr-dialog-confirmation","flickr-dialog-destructive-confirmation","flickr-dialog-frame","flickr-dialog-short-message","flickr-dialog-spinner","yui-base"],"ext":false},"flickr-dialog-alert":{"path":"j\/.IZ-.JX.A.v4XJR97.57","requires":["flickr-dialog-base","substitute","yui-base"],"ext":false},"flickr-dialog-base":{"path":"j\/.IZ-.BL.A.v6qt2KQ.57","requires":["attribute","better-throttle","event","event-custom","focus-tracker","flickr-dialog-css","global-dialog-transjax","keyboard-shortcut-manager","node","page-context","substitute","yui-base"],"ext":false},"flickr-dialog-confirmation":{"path":"j\/.IZ-.JR.A.v4Le69w.57","requires":["flickr-dialog-base","substitute","yui-base"],"ext":false},"flickr-dialog-css":{"path":"c\/c_.IZ.BC.v3aT27m.57","type":"css","ext":false},"flickr-dialog-destructive-confirmation":{"path":"j\/.IZ-.JS-.JR.A.v6KbBA5.57","requires":["flickr-dialog-base","yui-base"],"ext":false},"flickr-dialog-frame":{"path":"j\/.IZ-.JW.A.v2bT6ki.57","requires":["flickr-dialog-base","yui-base"],"ext":false},"flickr-dialog-geo-css":{"path":"c\/c_.IZ-geo.BC.vyXUBC.57","type":"css","ext":false},"flickr-dialog-geo":{"path":"j\/.IZ-geo.A.v2tmJQJ.57","requires":["flickr-dialog-base","flickr-dialog-geo-css","flickr-map2","yui-base"],"ext":false},"flickr-dialog-infinite-spinner-css":{"path":"c\/c_.IZ-infinite-.JV.BC.v3cE63f.57","type":"css","ext":false},"flickr-dialog-infinite-spinner":{"path":"j\/.IZ-infinite-.JV.A.v6NoNnK.57","requires":["flickr-dialog-base","flickr-dialog-infinite-spinner-css","yui-base","html5-balls"],"ext":false},"flickr-dialog-short-message":{"path":"j\/.IZ-short-.JU.A.v4afJtE.57","requires":["flickr-dialog-base","substitute","yui-base"],"ext":false},"flickr-dialog-spinner":{"path":"j\/.IZ-.JV.A.v4V3q3D.57","requires":["flickr-dialog-base","yui-base"],"ext":false},"flickr-gallery-comments":{"path":"j\/.J-.FW-.LGs.A.v4EXgSC.57","requires":["anim","anim-scroll","dejaview","event-custom","event-delegate","formatting-tips-css","gallery-flickr-api","global-dialog","history-manager","input-hint","io-form","node","node-visibility","page-context","photo-comments-transjax","swfobject","yui-base"],"ext":false},"flickr-gallery-gallery-owner":{"path":"j\/.J-.FW-.FW-.BK.A.v717tS6.57","requires":["dd-drop","dd-proxy","event","flickr-gallery-gallery-owner-transjax","flickr-gallery-photo-remover","insitu","node","yui-base"],"ext":false},"flickr-gallery-gallery-owner-actions-menu":{"path":"j\/.J-.FW-.FW-.BK-.IS-.BB.A.v3n2cBg.57","requires":["event","gallery-popover","menus","node","yui-base"],"optional":["flickr-gallery-gallery-owner"],"ext":false},"flickr-gallery-gallery-owner-transjax":{"path":"j\/.J-.FW-.FW-.BK-.C-.F.A.vgEc9s.57","requires":["transjax-base","yui-base"],"ext":false},"flickr-gallery-keyboard-shortcuts":{"path":"j\/.J-.FW-.HZs.A.v4yL7pi.57","requires":["anim","anim-scroll","better-throttle","event","flickr-gallery-keyboard-shortcuts-transjax","keyboard-shortcut-manager","node","node-visibility","yui-base"],"ext":false},"flickr-gallery-keyboard-shortcuts-transjax":{"path":"j\/.J-.FW-.HZs-.C-.F.A.v38A8T9.57","requires":["transjax-base","yui-base"],"ext":false},"flickr-gallery-photo-owner":{"path":"j\/.J-.FW-.B-.BK.A.v4kDHeP.57","requires":["event","flickr-gallery-photo-remover","node","yui-base"],"ext":false},"flickr-gallery-photo-remover":{"path":"j\/.J-.FW-.B-.IP.A.v3kmxW4.57","requires":["event","flickr-gallery-photo-remover-transjax","gallery-flickr-api","global-dialog","node","yui-base"],"ext":false},"flickr-gallery-photo-remover-transjax":{"path":"j\/.J-.FW-.B-.IP-.C-.F.A.v6zJMy2.57","requires":["transjax-base","yui-base"],"ext":false},"flickr-geo":{"path":"j\/.J-geo.A.v2ZRYPQ.57","requires":["io","gallery-flickr-api","yui-base"],"ext":false},"flickr-leaflet-utils-css":{"path":"c\/c_.J-leaflet-utils.BC.v7cc4se.57","type":"css","ext":false},"flickr-leaflet-utils":{"path":"j\/.J-leaflet-utils.A.v25m7Fg.57","requires":["osm-places","flickr-leaflet-utils-css","yui-base"],"ext":false},"flickr-location-search":{"path":"j\/.J_.BR_.CA.A.v5vrpda.57","requires":["event","node","query-string-args","yui-base"],"ext":false},"flickr-map":{"path":"j\/.J-map.A.v4jxMYe.57","requires":["flickr-map-transjax","base","selector-css3","slider","gallery-flickr-api","photo","dragdrop","dd-drag","flickr-map-css","flickr-map-css-intl","excanvas","json","gallery-storage-lite","better-throttle","selector-circle","flickr-geo","yui-base"],"ext":false},"flickr-map2":{"path":"j\/.J-map2.A.v6jHcoQ.57","requires":["base","cookie","dd-drag","dragdrop","event","flickr-geo","flickr-map-css","flickr-map-transjax","keyboard-shortcut-manager","page-context","selector-css3","slider","yui-base"],"ext":false},"flickr-map-provider-ymap":{"path":"j\/.J-.IK-ymap.A.v5Dxkqy.57","requires":["ymap","yui-base","yui2_5-yahoo","yui2_5-event","yui2_5-dom","yui2_5-animation","yui2_5-dragdrop"],"ext":false},"flickr-map-provider-bing":{"path":"j\/.J-.IK-bing.A.v7uu7Kf.57","requires":["bing_map","yui-base"],"ext":false},"flickr-map-provider-ovi":{"path":"j\/.J-.IK-ovi.A.v5nAtU.57","requires":["yui-base"],"ext":false},"flickr-map-provider-gmap":{"path":"j\/.J-.IK-gmap.A.v5frZH6.57","requires":["yui-base"],"ext":false},"flickr-map-provider-flickr_osm":{"path":"j\/.J-.IK-.J_osm.A.v4VkhoW.57","requires":["yui-base"],"ext":false},"flickr-map-transjax":{"path":"j\/.J-map-.C-.F.A.v5iFmbB.57","requires":["transjax-base","yui-base"],"ext":false},"flickr-map-css":{"path":"c\/c_.J-map.BC.v54KH6m.57","type":"css","ext":false},"flickr-map-css-intl":{"path":"c\/c_.J-map-.F.BC.v5TLxx1.57","type":"css","ext":false},"flickr-nav":{"path":"j\/.J_nav.A.v46fjrT.57","requires":["event","node","page-context","yui-base"],"ext":false},"flickr-overlay-css":{"path":"c\/c_.J-overlay-.BL.BC.v6GRNkG.57","type":"css","ext":false},"flickr-overlay-base":{"path":"j\/.J-overlay-.BL.A.v75ohws.57","requires":["attribute","better-throttle","event","event-custom","focus-tracker","flickr-overlay-css","keyboard-shortcut-manager","node","page-context","substitute","yui-base"],"ext":false},"flickr-page-timing":{"path":"j\/.J_.GF_.FZ.A.v25uHUF.57","requires":["event","node","yui-base"],"ext":false},"flickr-printing":{"path":"j\/.J_.FD.A.v6TzzvD.57","requires":["node","event","io","gallery-flickr-api","event-delegate","global-dialog","sprintf","flickr-printing-css","flickr-printing-transjax","flickr-tooltips","yui-base"],"ext":false},"flickr-printing-css":{"path":"c\/c_.J_.FD_.D.BC.v7dMdaa.57","type":"css","ext":false},"flickr-printing-transjax":{"path":"j\/.J_.FD-.C-.F.A.vg2n1s.57","requires":["transjax-base","yui-base"],"ext":false},"flickr-tooltips":{"path":"j\/.J-.GA.A.v4shUW4.57","requires":["event","event-delegate","yui-base"],"ext":false},"focus-tracker":{"path":"j\/.CV-.CH.A.v5cyayP.57","requires":["event","node","yui-base"],"ext":false},"formatting-tips-css":{"path":"c\/c_.EN_.EQ_.D.BC.v2jhjxM.57","type":"css","ext":false},"gallery-boomr":{"path":"j\/.FW-boomr.A.v2k4KzL.57","requires":["lang","yui-base"],"ext":false},"gallery-calendar":{"path":"j\/.FW-.IO.A.vuJVo8.57","requires":["gallery-calendar-transjax","gallery-popover","node","yui-base"],"ext":false},"gallery-calendar-transjax":{"path":"j\/.FW-.IO-.C-.F.A.v4mRwAA.57","requires":["transjax-base","yui-base"],"ext":false},"gallery-flickr-api":{"path":"j\/.J_api.A.v6WvLAD.57","requires":["dump","event","io-xdr","json-parse","yui-base"],"ext":false},"gallery-history-lite":{"path":"j\/.FW-.CE-.GH.A.v6sCkn6.57","requires":["event-custom","event-custom-complex","node","yui-base"],"ext":false},"gallery-popover":{"path":"j\/.FW-.HN.A.v3Eniu5.57","requires":["event-custom","node","overlay","yui-base"],"ext":false},"gallery-popover-css":{"path":"c\/c_.FW-.HN.BC.v71zCUH.57","type":"css","ext":false},"gallery-storage-lite":{"path":"j\/.FW-.FX-.GH.A.v3T6ijV.57","requires":["event-base","event-custom","event-custom-complex","json","yui-base"],"ext":false},"geo-exif-backfill-transjax":{"path":"j\/geo-.GO-.IF-.C-.F.A.v4xKXDo.57","requires":["transjax-base","yui-base"],"ext":false},"geofences-geopanel-css":{"path":"c\/c_.IA-.IB.BC.v4QJWPg.57","type":"css","ext":false},"geofences-geopanel-transjax":{"path":"j\/.IA-.IB-.C-.F.A.v3LoHEz.57","requires":["transjax-base","yui-base"],"ext":false},"geofences-geopanel":{"path":"j\/.IA-.IB.A.v3An7Kw.57","requires":["geofences-geopanel-transjax","geofences-geopanel-css","geopanel","global-dialog","map-pinwin","yui-base"],"ext":false},"geofences":{"path":"j\/.IA.A.vbWhnB.57","requires":["base","yui-base"],"optional":["gallery-flickr-api"],"ext":false},"geofences-apply-panel":{"path":"j\/.IA.IE.IC.A.v2hAe9w.57","requires":["anim","event","event-custom","gallery-flickr-api","geofences","geofences-transjax","global-dialog","io","node","node-visibility","yui-base"],"optional":["geofences-geopanel"],"ext":false},"geofences-apply-progress":{"path":"j\/.IA.IE.ID.A.vJjXkP.57","requires":["better-throttle","event-custom","gallery-flickr-api","geofences","yui-base"],"ext":false},"geofences-list-view":{"path":"j\/.IA-.CZ-.JB.A.v43SmQE.57","requires":["better-throttle","event","event-custom","geofences-geopanel","geofences","geofences-apply-panel","geofences-apply-progress","global-dialog","io","node","yui-base"],"optional":["anim"],"ext":false},"geofences-prefs-map":{"path":"j\/.IA-prefs-map.A.v6YZqzA.57","requires":["node","event","css3pie","flickr-map","geofences","geofences-transjax","geofences-prefs-map-transjax","map-pinwin","yui-base"],"ext":false},"geofences-prefs-map-transjax":{"path":"j\/.IA-prefs-map-.C-.F.A.v2oRbKa.57","requires":["transjax-base","yui-base"],"ext":false},"geofences-transjax":{"path":"j\/.IA-.C-.F.A.v4mMJS9.57","requires":["transjax-base","yui-base"],"ext":false},"geopanel-css":{"path":"c\/c_.IB.BC.v6CjA5Y.57","type":"css","ext":false},"geopanel":{"path":"j\/.IB.A.v38xxhU.57","requires":["event","global-dialog","geopanel-css","yui-base"],"optional":["autocomplete-2-5-1","flickr-map","gallery-flickr-api"],"ext":false},"getty":{"path":"j\/.FI_new.A.v36ZeC3.57","requires":["anim","dom","event","gallery-flickr-api","node","yui-base"],"ext":false},"global-dialog":{"path":"j\/.X-.W-.D.A.v4QpoeT.57","requires":["event","event-custom","event-delegate","event-key","focus-tracker","global-dialog-css","global-dialog-transjax","keyboard-shortcut-manager","node","page-context","yui-base"],"ext":false},"global-dialog-css":{"path":"c\/c_.X-.W-.D.BC.v3r7zPb.57","type":"css","ext":false},"global-dialog-transjax":{"path":"j\/.X-.W-.C-.F.A.v5frjd.57","requires":["transjax-base","yui-base"],"ext":false},"global-nav":{"path":"j\/.JC.A.v7jDCN4.57","requires":["anim","event","menus","node","page-context","yui-base","circle-fill-graph"],"ext":false},"group-blast-insitu":{"path":"j\/.DM-blast-.DT.A.v3wNzGM.57","requires":["event","insitu","node","string-filters","yui-base"],"ext":false},"guestpass-hide":{"path":"j\/.DZ-.ET.A.v5QHWcF.57","requires":["anim","cookie","node","yui-base"],"ext":false},"grease":{"path":"j\/.HQ.A.vKf5Z7.57","requires":["event-focus","gallery-flickr-api","gallery-storage-lite","global-dialog","json","node","occult","photo-data","urls","yui-base"],"ext":false},"grease-css":{"path":"c\/c_.HQ.BC.v6Bkjaa.57","type":"css","ext":false},"health-check":{"path":"j\/.KH.A.v55StzQ.57","requires":["event-custom","gallery-flickr-api","yui-base"],"ext":false},"history-manager":{"path":"j\/.CE-.K.A.v2YR44m.57","requires":["event","urls","yui-base"],"ext":false},"html5-balls":{"path":"j\/.LI.A.v2EEyEb.57","requires":["event","urls","base","yui-base","html5-balls-css"],"ext":false},"html5-balls-css":{"path":"c\/c_.LI.BC.v2e2SKH.57","type":"css","ext":false},"image-fader":{"path":"j\/.CW-.CU.A.v4UALgx.57","requires":["anim","node","yui-base"],"ext":false},"infinite-scrolling-transjax":{"path":"j\/infinite-scrolling-.C-.F.A.v74ZZqo.57","requires":["transjax-base","yui-base"],"ext":false},"input-hint":{"path":"j\/.CN-.DD.A.v3tUrod.57","requires":["event-focus","focus-tracker","node","yui-base"],"ext":false},"input-counter":{"path":"j\/.CN-counter.A.v5dMoNS.57","requires":["event","node","yui-base"],"ext":false},"india-disclaimer":{"path":"j\/.IH.A.v76Kodn.57","requires":["event","global-dialog","io-base","node","yui-base"],"ext":false},"insitu":{"path":"j\/.DT-.D.A.v4a3FjA.57","requires":["input-counter","dejaview","event-custom","event-key","gallery-flickr-api","insitu-transjax","json-stringify","node","string-filters","substitute","yui-base"],"optional":["anim","anim-scroll","io","photo-data"],"ext":false},"insitu-transjax":{"path":"j\/.DT-.C-.F.A.v31Pw1V.57","requires":["transjax-base","yui-base"],"ext":false},"jfif-extractor":{"path":"j\/jfif-.IN.A.v61qF5P.57","requires":["yui-base"],"ext":false},"jobs":{"path":"j\/jobs.A.v3ZQVdK.57","requires":["event","flanal","flickr-page-timing","io","motion-blur","node","popup-login","rapid-tracker","transition","yui-base"],"ext":false},"justifier":{"path":"j\/.LA.A.v27cTiR.57","requires":["yui-base"],"ext":false},"ken-burns":{"path":"j\/.KY.A.v5ruQFa.57","requires":["smart-crop","gallery-flickr-api","yui-base","page-context","ken-burns-transjax","context-data","html5-balls","konami","event-custom","rapid-tracker","oop"],"ext":false},"ken-burns-transjax":{"path":"j\/.KY-.C-.F.A.v2Upw4H.57","requires":["transjax-base","yui-base"],"ext":false},"keyboard-shortcut-legend":{"path":"j\/.HZ-.HY.A.v67cEg2.57","requires":["better-throttle","cookie","gallery-flickr-api","global-dialog","keyboard-shortcut-legend-css","keyboard-shortcut-legend-layouts","keyboard-shortcut-legend-transjax","page-context","yui-base"],"ext":false},"keyboard-shortcut-legend-css":{"path":"c\/c_.HZ-.HY.BC.v77Rex6.57","type":"css","ext":false},"keyboard-shortcut-legend-layouts":{"path":"j\/.HZ-.HY-layouts.A.v2bqKzY.57","requires":["keyboard-shortcut-legend-transjax","yui-base"],"ext":false},"keyboard-shortcut-legend-transjax":{"path":"j\/.HZ-.HY-.C-.F.A.vjYgro.57","requires":["transjax-base","yui-base"],"ext":false},"keyboard-shortcut-manager":{"path":"j\/.HZ-.K.A.v7dR6FY.57","requires":["event-custom","event-focus","event-key","focus-tracker","keyboard-shortcut-legend","node","page-context","yui-base"],"ext":false},"konami":{"path":"j\/.LC.A.viSiTg.57","ext":false},"leaflet":{"path":"j\/leaflet.A.v4RCQnc.57","requires":["flickr-leaflet-utils","leaflet-css","leaflet-utils-css","yui-base"],"ext":false},"leaflet-css":{"path":"c\/c_leaflet.BC.v3hmxC3.57","type":"css","ext":false},"leaflet-utils-css":{"path":"c\/c_leaflet-utils.BC.v6nCHMS.57","type":"css","ext":false},"lightbox":{"path":"j\/.N.A.v3FRKhA.57","requires":["anim","better-throttle","context-data","cookie","node","escape","event-annotations","event-custom","event-delegate","event-gestures","event-key","fave-star","gallery-flickr-api","history","history-manager","json","ken-burns","keyboard-shortcut-manager","lightbox-transjax","node-visibility","page-context","photo-context-menu","photo-transjax","rapid-tracker","string-filters","swfobject","transition","urls","view-count","yui-base","yui-throttle"],"optional":["global-dialog","photos-list-transjax"],"ext":false},"lightbox-transjax":{"path":"j\/.N-.C-.F.A.v5Jy3vw.57","requires":["transjax-base","yui-base"],"ext":false},"liquid-photo-resizer":{"path":"j\/.JL-.B.LB.A.v4oPso1.57","requires":["event"],"ext":false},"liquid-resizer":{"path":"j\/.JL.LB.A.v6UjYWf.57","requires":["event"],"ext":false},"location-picker-css":{"path":"c\/c_.BR-picker.BC.v3B77DV.57","type":"css","ext":false},"location-picker":{"path":"j\/.BR-picker.A.v3Zef7F.57","requires":["location-picker-css","keyboard-shortcut-manager","flickr-geo","event","map-pinwin","dragdrop","dd-drag","yui-base"],"ext":false},"location-selecta-css":{"path":"c\/c_.BR-.S.BC.v7fiTKN.57","type":"css","ext":false},"location-selecta":{"path":"j\/.BR-.S.A.v6tuYHd.57","requires":["location-selecta-css","keyboard-shortcut-manager","flickr-geo","event","yui-base"],"ext":false},"make-a-book-css":{"path":"c\/c_make-a-book.BC.v3zdNCj.57","type":"css","ext":false},"make-a-book":{"path":"j\/make-a-book.A.v3fKcGq.57","requires":["template-fetcher","view","event","node","gallery-flickr-api","flickr-dialog-frame","flickr-dialog","html5-balls","make-a-book-css","yui-base","escape","rapid-tracker"],"ext":false},"mail-zeus":{"path":"j\/mail-.D.A.v6oCLcv.57","requires":["mail-zeus-transjax","flickr-dialog-confirmation","event","node","yui-base"],"ext":false},"mail-zeus-transjax":{"path":"j\/mail-.D-.C-.F.A.v2gSkab.57","requires":["transjax-base","yui-base"],"ext":false},"map-pinwin":{"path":"j\/map-.IV.A.v5NQGPh.57","requires":["map-pinwin-css","string-filters","yui-base"],"ext":false},"map-pinwin-css":{"path":"c\/c_map-.IV.BC.voUCe3.57","type":"css","ext":false},"math":{"path":"j\/.DL.A.v4AGMqt.57","requires":["yui-base"],"ext":false},"matrix-math":{"path":"j\/matrix-.DL.A.v21MhLH.57","requires":["yui-base"],"ext":false},"message-primary-email-transjax":{"path":"j\/.JU-primary-.HH-.C-.F.A.v3pM2rA.57","requires":["transjax-base","yui-base"],"ext":false},"md5":{"path":"j\/md5-.D.A.vKLY5B.57","ext":false},"menus":{"path":"j\/.BBs.A.v48rccc.57","requires":["base","event","event-custom","event-mouseenter","gallery-popover","keyboard-shortcut-manager","node","page-context","yui-base"],"ext":false},"momentjs":{"path":"j\/momentjs-wrapper.A.v6u4DPw.57","requires":[],"ext":false},"motion-blur":{"path":"j\/motion-blur.A.v7b2KLW.57","requires":["node","transition","yui-base"],"ext":false},"mrpinchy":{"path":"j\/mrpinchy.A.v56sFFP.57","requires":["node","event","event-custom","transition","urls","matrix-math","yui-base"],"ext":false},"murmurhash":{"path":"j\/.KZ3_gc.A.v5K2wW5.57","ext":false},"nav-selecta":{"path":"j\/.JQ.A.v4uZRCu.57","requires":["bo-selecta-3","keyboard-shortcut-manager","nav-selecta-css","nav-selecta-transjax","nav-selecta-rapid","node","event","widget","string-filters","yui-base"],"ext":false},"nav-selecta-css":{"path":"c\/c_.JQ.BC.v3L8qN7.57","type":"css","ext":false},"nav-selecta-transjax":{"path":"j\/.JQ-.C-.F.A.v5HVUzV.57","requires":["transjax-base","yui-base"],"ext":false},"nav-selecta-rapid":{"path":"j\/.JQ-.IY.A.v4kFACr.57","requires":["event","rapid-tracker","yui-base"],"ext":false},"node-visibility":{"path":"j\/.CR-.DY.A.v4zVpAK.57","requires":["better-throttle","cache-simple","node","node-pluginhost","yui-base"],"optional":["anim","anim-scroll"],"ext":false},"note-data":{"path":"j\/note-.BY.A.v6hhV1S.57","requires":["base","person-data","yui-base"],"ext":false},"notification-base":{"path":"j\/notification-.BL.A.v3Go2Rh.57","requires":["attribute","notification-center"],"ext":false},"notification-center":{"path":"j\/notification-center.A.vfd9rB.57","requires":["attribute","cookie","event","event-custom","gallery-flickr-api"],"ext":false},"number":{"path":"j\/.Y.A.v5F4Bxp.57","requires":["number-transjax","yui-base"],"ext":false},"number-transjax":{"path":"j\/.Y-.C-.F.A.v69N6cZ.57","requires":["transjax-base","yui-base"],"ext":false},"occult":{"path":"j\/.CF.A.v3qRJRN.57","requires":["node","yui-base"],"ext":false},"osm-places":{"path":"j\/osm-places.A.vp6hk4.57","requires":["yui-base"],"ext":false},"page-context":{"path":"j\/.GF-.H.A.v3RcTFA.57","requires":["event-custom","yui-base"],"ext":false},"pagination-keyboard-shortcuts":{"path":"j\/.EG-.HZs.A.vcUVc.57","requires":["keyboard-shortcut-manager","node","pagination-keyboard-shortcuts-transjax","yui-base"],"ext":false},"pagination-keyboard-shortcuts-transjax":{"path":"j\/.EG-.HZs-.C-.F.A.v2SexMu.57","requires":["transjax-base","yui-base"],"ext":false},"person-data":{"path":"j\/.FK-.BY.A.v59tzLo.57","requires":["base","yui-base"],"ext":false},"personmenu":{"path":"j\/.CB-.D.A.v3KDSpf.57","requires":["anim","anim-scroll","cache-simple","event-custom","io-base","node","node-visibility","personmenu-css","personmenu-transjax","personmenu-rapid","yui-base"],"optional":["contact-changer"],"ext":false},"personmenu-css":{"path":"c\/c_.CB-.D.BC.v33GLFn.57","type":"css","ext":false},"personmenu-transjax":{"path":"j\/.CB-.C-.F.A.vdFdo9.57","requires":["transjax-base","yui-base"],"ext":false},"personmenu-rapid":{"path":"j\/.CB-.IY.A.v4AZYgx.57","requires":["event","rapid-tracker","yui-base"],"ext":false},"photo":{"path":"j\/.B-.D.A.v3jAj8R.57","requires":["anim","anim-scroll","better-throttle","context-data","defer-images","event-annotations","event-custom","event-delegate","event-key","event-mousedrag","event-mouseenter","flickr-app-photo","focus-tracker","global-dialog","history-manager","html5-balls","keyboard-shortcut-manager","math","node-visibility","occult","page-context","photo-button-bar","photo-comments","photo-context-menu","photo-data","photo-keyboard-shortcuts","photo-rotate","photo-sidebar","retry-image-on-error","share-this-v3-menu","lightbox","urls","yahoo-ult","yui-base"],"optional":["gallery-flickr-api","io-base","photo-group-invites","photo-insitu","photo-notes","photo-people-list","photo-tags","view-count"],"ext":false},"photo-button-bar":{"path":"j\/.B-.T-bar.A.v4rPCHF.57","requires":["add-to-dialog-css","context-data","event","event-custom","event-delegate","event-key","fave-star","flanal","focus-tracker","gallery-flickr-api","gallery-popover","global-dialog","io-base","keyboard-shortcut-manager","menus","node","node-event-simulate","page-context","photo-button-bar-transjax","photo-people-list","querystring-stringify-simple","urls","yui-base"],"optional":["flickr-printing","photo-notes","photo-replace","photo-rotate","picnik"],"ext":false},"photo-button-bar-transjax":{"path":"j\/.B-.T-bar-.C-.F.A.v5upaKF.57","requires":["transjax-base","yui-base"],"ext":false},"photo-comments":{"path":"j\/.B-.LGs.A.v6Wjkoi.57","requires":["anim","anim-scroll","defer-images","dejaview","event-custom","event-delegate","flickr-app","flickr-dialog-alert","flickr-dialog-confirmation","flickr-dialog-spinner","formatting-tips-css","gallery-flickr-api","input-hint","io-form","node","node-visibility","page-context","photo-comments-transjax","photo-data","swfobject","urls","yui-base"],"optional":["insitu"],"ext":false},"photo-comments-image-hiding":{"path":"j\/.B-.LGs-.CW-hiding.A.v6aX3sd.57","requires":["node","yui-base"],"ext":false},"photo-comments-transjax":{"path":"j\/.B-.LGs-.C-.F.A.v2iMw8p.57","requires":["transjax-base","yui-base"],"ext":false},"photo-context-menu":{"path":"j\/.B-.H-.BB.A.v7byKfm.57","requires":["event","node","photo","photo-context-menu-css","photo-context-menu-transjax","photo-data","urls","yui-base"],"ext":false},"photo-context-menu-css":{"path":"c\/c_.B-.H-.BB.BC.v5KK4Y8.57","type":"css","ext":false},"photo-context-menu-transjax":{"path":"j\/.B-.H-.BB-.C-.F.A.v5rgAHQ.57","requires":["transjax-base","yui-base"],"ext":false},"photo-data":{"path":"j\/.B-.BY.A.v3J3A5i.57","requires":["anim","base","cookie","event","gallery-flickr-api","grease","node","photo-transjax","type-cast","urls","yui-base"],"ext":false},"photo-filmstrips":{"path":"j\/.B-.Ms.A.v3PECDh.57","requires":["anim","base","better-throttle","context-data","event","event-custom","event-delegate","event-key","focus-tracker","global-dialog","image-fader","io","keyboard-shortcut-manager","node","number","page-context","photo-button-bar-transjax","photo-data","photo-filmstrips-transjax","retry-image-on-error","string-filters","transition","urls","yui-base"],"ext":false},"photo-filmstrips-transjax":{"path":"j\/.B-.Ms-.C-.F.A.v2ovPt1.57","requires":["transjax-base","yui-base"],"ext":false},"photo-geolocation":{"path":"j\/.B-.R.A.v4XZKCc.57","requires":["global-dialog","page-context","photo","photo-geolocation-transjax","yui-base"],"optional":["autocomplete-2-5-1","flickr-map","gallery-flickr-api","photo-geolocation-css"],"ext":false},"photo-geolocation-transjax":{"path":"j\/.B-.R-.C-.F.A.v4zFfMM.57","requires":["transjax-base","yui-base"],"ext":false},"photo-geolocation-css":{"path":"c\/c_.B-.R.BC.v4MVLZ.57","type":"css","ext":false},"photo-geopanel":{"path":"j\/.B-.IB.A.v2CSFBR.57","requires":["flickr-dialog-geo","flickr-geo","flickr-map-provider-flickr_osm","location-picker","photo-map-display-pinwin","woe-corrector","yui-base","ymap"],"ext":false},"flickr-ymap":{"path":"j\/.J-ymap.A.v24D3s4.57","requires":["base","event"],"ext":false},"flickr-leaflet":{"path":"j\/.J-leaflet.A.v2YMwJh.57","requires":["base","event","leaflet"],"ext":false},"geo-editor":{"path":"j\/geo-.GZor.A.v5LZMGv.57","requires":["flickr-geo","flickr-dialog","html5-balls","base","event"],"ext":false},"parallax":{"path":"j\/parallax.A.v2k1QbV.57","requires":["base","node-base"],"ext":false},"photo-group-invites":{"path":"j\/.B-.DM-.CO.A.v2t4wsT.57","requires":["context-data","gallery-flickr-api","global-dialog","node","photo","photo-group-invites-transjax","yui-base"],"ext":false},"photo-group-invites-transjax":{"path":"j\/.B-.DM-.CO-.C-.F.A.vSNPwZ.57","requires":["transjax-base","yui-base"],"ext":false},"photo-insitu":{"path":"j\/.B-.DT.A.v4aMjox.57","requires":["insitu","photo","photo-data","photo-transjax","yui-base"],"ext":false},"photo-keyboard-shortcuts":{"path":"j\/.B-.HZs.A.vcoSks.57","requires":["cookie","event-focus","event-key","event-simulate","focus-tracker","keyboard-shortcut-manager","node","page-context","photo-keyboard-shortcuts-transjax","yui-base"],"optional":["photo-people-list"],"ext":false},"photo-keyboard-shortcuts-transjax":{"path":"j\/.B-.HZs-.C-.F.A.v4CLsRk.57","requires":["transjax-base","yui-base"],"ext":false},"photo-map-display-pinwin-css":{"path":"c\/c_.B-map-.IQ-.IV.BC.vJnsgQ.57","type":"css","ext":false},"photo-map-display-pinwin":{"path":"j\/.B-map-.IQ-.IV.A.v7skJ9n.57","requires":["flickr-geo","map-pinwin","base","photo-map-display-pinwin-css","yui-base"],"ext":false},"photo-notes":{"path":"j\/.B-.BE-.D.A.v7qnLr5.57","requires":["better-throttle","bo-selecta-3","bo-selecta-transjax","box-host","event","escape","event-annotations","event-delegate","focus-tracker","gallery-flickr-api","global-dialog","node","node-visibility","photo-notes-transjax","photo-people-controller","photo-people-transjax","string-filters","urls","yui-base"],"optional":["note-data"],"ext":false},"photo-notes-transjax":{"path":"j\/.B-.BE-.C-.F.A.v62PMPK.57","requires":["transjax-base","yui-base"],"ext":false},"photo-owner-dialogs-css":{"path":"c\/c_.B-.BK-.EO-.D.BC.v4VETHH.57","type":"css","ext":false},"photo-people-controller":{"path":"j\/.HX-.BH.A.v58V69G.57","requires":["event","gallery-flickr-api","dejaview","photo-people-transjax","yui-base"],"ext":false},"photo-people-list":{"path":"j\/.HX-.CZ.A.v4kTtV9.57","requires":["anim","bo-selecta-3","event-delegate","global-dialog","node","node-visibility","photo","photo-people-controller","photo-people-transjax","string-filters","urls","yui-base"],"optional":["photo-notes"],"ext":false},"photo-people-transjax":{"path":"j\/.HX-.C-.F.A.v42mzUb.57","requires":["transjax-base","yui-base"],"ext":false},"photo-preloader":{"path":"j\/.B-.FJ.A.v3FaLoX.57","requires":["context-data","event","yui-base"],"ext":false},"photo-replace":{"path":"j\/.B-.GQ.A.v4NYTW.57","requires":["event","global-dialog","io","node","yui-base"],"optional":["flanal","worker"],"ext":false},"photo-rotate":{"path":"j\/.B-.GE.A.vR6i71.57","requires":["anim","event","gallery-flickr-api","node","photo","photo-data","photo-rotate-css","photo-rotate-transjax","yui-base"],"ext":false},"photo-rotate-css":{"path":"c\/c_.B-.GE.BC.v4MWhaP.57","type":"css","ext":false},"photo-rotate-transjax":{"path":"j\/.B-.GE-.C-.F.A.v4tXGwH.57","requires":["transjax-base","yui-base"],"ext":false},"photo-sidebar":{"path":"j\/.HV.A.v2ipM58.57","requires":["anim","bitmap-text","bitmap-type-silkscreen","event-custom","event-delegate","excanvas","flapid","gallery-flickr-api","io-base","node","node-visibility","photo-data","photo-filmstrips","photo-sidebar-transjax","querystring-stringify-simple","contact-changer","contact-changer","stylesheet","datatype","yui-base","photo-sidebar-not-owner"],"optional":["context-data","photo-sidebar-admin","photo-sidebar-owner"],"ext":false},"photo-sidebar-transjax":{"path":"j\/.HV-.C-.F.A.v6jTLJz.57","requires":["transjax-base","yui-base"],"ext":false},"photo-sidebar-not-owner":{"path":"j\/.HV-.HW.A.v3pHMCa.57","requires":["flickr-dialog-frame","flickr-dialog-short-message","flickr-dialog-spinner","gallery-flickr-api","photo-owner-dialogs-css","photo-sidebar","photo-sidebar-not-owner-transjax","yui-base"],"ext":false},"photo-sidebar-not-owner-transjax":{"path":"j\/.HV-.HW-.C-.F.A.v3mnXFo.57","requires":["photo-sidebar-owner-transjax","transjax-base","yui-base"],"ext":false},"photo-sidebar-owner":{"path":"j\/.HV-.BK.A.v5bZDrK.57","requires":["better-throttle","event-custom","flickr-dialog-frame","flickr-dialog-short-message","flickr-dialog-spinner","gallery-flickr-api","page-context","photo-owner-dialogs-css","photo-data","photo-sidebar","photo-sidebar-owner-transjax","yui-base"],"ext":false},"photo-sidebar-owner-transjax":{"path":"j\/.HV-.BK-.C-.F.A.v4221ND.57","requires":["transjax-base","yui-base"],"ext":false},"photos-subnav-view":{"path":"j\/.EC-subnav-.JB.A.vxkivq.57","requires":["parallax","template-fetcher","view","yui-base"],"ext":false},"photo-tags":{"path":"j\/.B-.KD.A.v3YeUzG.57","requires":["event","event-delegate","node","node-visibility","photo","photo-tags-transjax","query-string-args","urls","yui-base"],"ext":false},"photo-tags-transjax":{"path":"j\/.B-.KD-.C-.F.A.v2fWVL8.57","requires":["transjax-base","yui-base"],"ext":false},"photo-tour":{"path":"j\/.B-.DA.A.v78bo4g.57","requires":["anim","cookie","dom","event","photo","photo-tour-transjax","yui-base"],"ext":false},"photo-tour-transjax":{"path":"j\/.B-.DA-.C-.F.A.v2wYiSx.57","requires":["transjax-base","yui-base"],"ext":false},"photo-transjax":{"path":"j\/.B-.C-.F.A.v6J9KHH.57","requires":["transjax-base","yui-base"],"ext":false},"photo-ywa-tracking":{"path":"j\/.B-ywa-.BW.A.v6onw7T.57","requires":["event","yahoo-web-analytics","yui-base"],"ext":false},"photogne-exif-fetcher":{"path":"j\/.Bgne-.GO-fetcher.A.v6MzZFS.57","requires":["gallery-flickr-api","yui-base"],"ext":false},"photos-display":{"path":"j\/.EC-.IQ.A.v6tytWu.57","requires":["photos-display-css","event","io","node","photo-data","selector-css3","photos-display-transjax","yui-base"],"ext":false},"photos-display-transjax":{"path":"j\/.EC-.IQ-.C-.F.A.v6innkS.57","requires":["transjax-base","yui-base"],"ext":false},"photos-display-css":{"path":"c\/c_.EC-.IQ.BC.v3qrKHZ.57","type":"css","ext":false},"photos-list":{"path":"j\/.EC-.CZ.A.v77gX.57","requires":["anim","anim-scroll","better-throttle","cookie","defer-images","event","flanal","gallery-flickr-api","gallery-popover","global-dialog","io","keyboard-shortcut-manager","menus","murmurhash","node","node-visibility","pagination-keyboard-shortcuts","photo-data","photos-list-transjax","string-filters","better-throttle","refresh-sihp-comment","refresh-sihp-share","urls","yui-base"],"optional":["lightbox"],"ext":false},"photos-list-justifier":{"path":"j\/.EC-.CZ-.LA.A.v7rQ8WY.57","requires":["refresh-sihp-comment","refresh-sihp-share","yui-base"],"ext":false},"photos-list-transjax":{"path":"j\/.EC-.CZ-.C-.F.A.v57ZeeC.57","requires":["transjax-base","yui-base"],"ext":false},"photostream-insitu":{"path":"j\/.ECtream-.DT.A.v5X7Cna.57","requires":["event","insitu","node","yui-base"],"ext":false},"photoset-transjax":{"path":"j\/.ECet-.C-.F.A.v5tbLz9.57","requires":["transjax-base","yui-base"],"ext":false},"picnik":{"path":"j\/.EY-.D.A.v52QFer.57","requires":["global-dialog","io-base","json","picnik-css","picnik-transjax","swfobject","yui-base"],"ext":false},"picnik-css":{"path":"c\/c_.EY-.D.BC.v5aWskr.57","type":"css","ext":false},"picnik-transjax":{"path":"j\/.EY-.C-.F.A.vQ1qB9.57","requires":["transjax-base","yui-base"],"ext":false},"playr":{"path":"j\/playr.A.v381FBx.57","requires":["context-data","cookie","escape","event","gallery-flickr-api","history-manager","html5-balls","keyboard-shortcut-manager","lightbox-transjax","node","page-context","photo-transjax","rapid-tracker","refresh-sihp-comment","swfobject","urls","view-count","yui-base"],"optional":["lightbox"],"ext":false},"polyfills-placeholder":{"path":"j\/.KR-.KS.A.v3yKHQ8.57","requires":["node","yui-base"],"ext":false},"popup-login":{"path":"j\/.HP.A.v3KaEzU.57","requires":["event","node","io-base","yui-base"],"ext":false},"post-message":{"path":"j\/post-.JU.A.v5Lm7So.57","requires":["event","node","yui-base"],"ext":false},"post-upload-sharing-ui":{"path":"j\/post-.KI-.EE-ui.A.v7ozvRN.57","requires":["event","node","yui-base"],"ext":false},"post-upload-sharing-owner-ui":{"path":"j\/post-.KI-.EE-.BK-ui.A.v5GshXp.57","requires":["event","node","yui-base","share-this-v3-menu","share-this-v3-dialog"],"ext":false},"pro-survey":{"path":"j\/pro-survey.A.v43KdUi.57","requires":["event","node","yui-base","attribute","flickr-dialog-confirmation","rapid-tracker"],"ext":false},"pro-upsell-bandwidth-limit-notification":{"path":"j\/pro-upsell-bandwidth-limit-notification.A.v6KgYb2.57","requires":["flickr-dialog-confirmation","notification-base","pro-upsell-notification-transjax"],"ext":false},"pro-upsell-photo-limit-notification":{"path":"j\/pro-upsell-.B-limit-notification.A.v65A6gB.57","requires":["flickr-dialog-confirmation","notification-base","pro-upsell-notification-transjax"],"ext":false},"pro-upsell-notification-transjax":{"path":"j\/pro-upsell-notification-.C-.F.A.v7gQpc3.57","requires":["transjax-base","yui-base"],"ext":false},"query-string-args":{"path":"j\/.CP-.U-.DE.A.v6sJgnG.57","requires":["yui-base"],"ext":false},"rapid-tracker-2":{"path":"j\/.IY-.CH-2.A.v7gnXp9.57","requires":["yui-base"],"ext":false},"rapid-tracker-3":{"path":"j\/.IY-.CH-3.A.v3SQpvY.57","requires":["yui-base"],"ext":false},"rapid-tracker":{"path":"j\/.IY-.CH-yui3-wrapper.A.vs6jwH.57","requires":["yui-base","querystring-parse-simple","querystring-stringify-simple","rapid-tracker-3"],"ext":false},"refresh-sihp":{"path":"j\/refresh-sihp.A.vucWRk.57","requires":["gallery-flickr-api","swfobject","html5-balls","view-count-on-visible","io-form","refresh-sihp-comment","refresh-sihp-feed-ads","refresh-sihp-favorite","refresh-sihp-keyboard","refresh-sihp-muting","refresh-sihp-share","refresh-sihp-transjax","defer-images","yui-base","event-custom"],"ext":false},"refresh-sihp-comment":{"path":"j\/.LD.LG.A.v3DTyQd.57","requires":["flickr-dialog","photo-comments-transjax","refresh-sihp-sidebar","share-this-v3-menu","grease","node-visibility","yui-base"],"ext":false},"refresh-sihp-favorite":{"path":"j\/.LD.LF.A.v4eKUDQ.57","requires":["yui-base"],"ext":false},"refresh-sihp-feed-ads":{"path":"j\/.LDfeed-ads.A.v3nNkDA.57","requires":["yui-base","event-custom","refresh-sihp-sidebar"],"ext":false},"refresh-sihp-friendfinder":{"path":"j\/.LD.LH.A.vedjf7.57","requires":["gallery-flickr-api","string-filters","yui-base"],"ext":false},"refresh-sihp-keyboard":{"path":"j\/.LD.Q.A.v6W2sui.57","requires":["anim-scroll","better-throttle","dom","keyboard-shortcut-manager","yui-base"],"ext":false},"refresh-sihp-muting":{"path":"j\/.LD.LE.A.vAuaCg.57","requires":["yui-base"],"ext":false},"refresh-sihp-recofeed":{"path":"j\/.LDrecofeed.A.v57Ui19.57","requires":["gallery-flickr-api","yui-base"],"ext":false},"refresh-sihp-share":{"path":"j\/.LD.DN.A.v6KzuMz.57","requires":["share-this-v3-menu","global-dialog","yui-base"],"ext":false},"fmodal-dialog":{"path":"j\/fmodal-.W.A.v3odAWT.57","requires":["yui-base","io","node","event","event-key","dom"],"ext":false},"fb_suggestions_v2":{"path":"j\/fb_.IL_v2.A.vGtTML.57","requires":["yui-base","node","cookie","event","dom","io","json","gallery-flickr-api","fb_suggestions_transjax","yui-array","rapid-tracker"],"ext":false},"fb_suggestions":{"path":"j\/fb_.IL.A.v3tv5JH.57","requires":["yui-base","node","cookie","event","dom","io","json","gallery-flickr-api","fb_suggestions_transjax","yui-array","rapid-tracker"],"ext":false},"fb_suggestions_transjax":{"path":"j\/fb_.IL_.C.A.v61gv5Z.57","ext":false},"fb_signup":{"path":"j\/fb_signup.A.v4PRUM7.57","requires":["yui-base","node","event","dom","io","json","event-focus","fb_signup_transjax","rapid-tracker","querystring-parse-simple"],"ext":false},"fb_signup_transjax":{"path":"j\/fb_signup_.C.A.vca3ZP.57","ext":false},"fb-reco":{"path":"j\/fb-reco.A.v48U8hz.57","requires":["yui-base","node","event","dom"],"ext":false},"fb-reco-transjax":{"path":"j\/fb-reco-.C-.F.A.v5dFsBr.57","ext":false},"signup-dialog":{"path":"j\/signup-.W.A.vGqphJ.57","requires":["yui-base","signup-dialog-transjax","io","node","event","dom","fmodal-dialog","fb-reco"],"ext":false},"signup-dialog-transjax":{"path":"j\/signup-.W-.C-.F.A.v7o1kVw.57","ext":false},"refresh-sihp-sidebar":{"path":"j\/.LD.I.A.v2gxvEv.57","requires":["yui-base","fb-reco","refresh-sihp-friendfinder","refresh-sihp-transjax","rapid-tracker"],"ext":false},"refresh-sihp-transjax":{"path":"j\/.LD.C-.F.A.v7t2DFH.57","requires":["transjax-base","yui-base"],"ext":false},"refresh-photo-page-description":{"path":"j\/refresh-.B-.GF-.KC.A.v72mR4i.57","requires":["yui-base"],"ext":false},"retry-image-on-error":{"path":"j\/retry-.CW-on-.JP.A.v63QCiu.57","requires":["event-base","yui-base","yui-later"],"optional":["flanal"],"ext":false},"rev-dan-map":{"path":"j\/rev-dan-map.A.v2xNyDS.57","requires":["event-base","yui-base"],"ext":false},"rushmore-settings":{"path":"j\/.FS-.FR.A.v3fQau4.57","requires":["event","event-delegate","global-dialog","io","node","yui-base"],"ext":false},"search-keyboard-shortcuts":{"path":"j\/.CA-.HZs.A.veN67R.57","requires":["anim","event","keyboard-shortcut-manager","node","yui-base"],"ext":false},"flickr-app-search":{"path":"j\/.J-app-.CA.A.v7vnf7B.57","requires":["context-data","flickr-app","search-hera-view","rapid-tracker","template-fetcher","urls","yui-base"],"ext":false},"search-refer":{"path":"j\/.CA-.DX-.D.A.v6jQmEa.57","requires":["anim","cookie","node","yahoo-ult","yui-base"],"ext":false},"selector-circle-css":{"path":"c\/c_.GB-circle.BC.v3eGMAc.57","type":"css","ext":false},"selector-circle":{"path":"j\/.GB-circle.A.v4UYGk9.57","requires":["base","css3pie","event","selector-circle-css","yui-base"],"ext":false},"set-meta-insitu":{"path":"j\/set-meta-.DT.A.v46vn9H.57","requires":["event","insitu","node","yui-base"],"ext":false},"share-menu-transjax":{"path":"j\/.DN-.BB-.D-.C-.F.A.vfe7L7.57","requires":["transjax-base","yui-base"],"ext":false},"share-this-v3-account-settings":{"path":"j\/.HG-.IR-.FR.A.v3W86q4.57","requires":["dom","event","global-dialog","io","io-form","querystring-stringify-simple","yui-base"],"ext":false},"share-this-v3-css":{"path":"c\/c_.HG.BC.v49NfV2.57","type":"css","ext":false},"share-this-v3-dialog":{"path":"j\/.HG-.W.A.v4KN4kq.57","requires":["dom","event","global-dialog","io-base","node","share-menu-transjax","share-this-v3-dialog-css","share-this-v3-dialog-transjax","share-this-v3-services","yui-base"],"optional":["flanal"],"ext":false},"share-this-v3-dialog-css":{"path":"c\/c_.HG-.W.BC.v6GWuqL.57","type":"css","ext":false},"share-this-v3-dialog-transjax":{"path":"j\/.HG-.W-.C-.F.A.v3ysU7g.57","requires":["transjax-base","yui-base"],"ext":false},"share-this-v3-menu":{"path":"j\/.HG-.BB.A.v5SMmQm.57","requires":["better-throttle","dom","event","event-custom","gallery-flickr-api","gallery-popover","global-dialog","io-base","json-stringify","menus","node","share-menu-transjax","share-this-v3-triggers","yui-base","node-visibility"],"optional":["photo-data"],"ext":false},"share-this-v3-service-blogger":{"path":"j\/.HF.HJ.A.v4RfP3S.57","requires":["share-this-v3-services","yui-base"],"ext":false},"share-this-v3-service-email":{"path":"j\/.HF.HH.A.v34X2b5.57","requires":["bo-selecta-3","share-this-v3-services","share-this-v3-service-email-transjax","yui-base"],"ext":false},"share-this-v3-service-email-transjax":{"path":"j\/.HF.HH-.C-.F.A.v72BHuz.57","requires":["transjax-base","yui-base"],"ext":false},"share-this-v3-service-facebook":{"path":"j\/.HF.HL.A.vD2awp.57","requires":["share-this-v3-services","yui-base"],"ext":false},"share-this-v3-service-livejournal":{"path":"j\/.HF.HT.A.v79MhdW.57","requires":["share-this-v3-services","yui-base"],"ext":false},"share-this-v3-service-tumblr":{"path":"j\/.HF.HU.A.v4ZpZky.57","requires":["share-this-v3-services","yui-base"],"ext":false},"share-this-v3-service-twitter":{"path":"j\/.HF.HK.A.v2R2xZj.57","requires":["share-this-v3-services","share-this-v3-service-twitter-transjax","yui-base"],"ext":false},"share-this-v3-service-twitter-transjax":{"path":"j\/.HF.HK-.C-.F.A.v7iQ5Cp.57","requires":["transjax-base","yui-base"],"ext":false},"share-this-v3-service-wordpress":{"path":"j\/.HF.HM.A.v48FjZ1.57","requires":["share-this-v3-services","yui-base"],"ext":false},"share-this-v3-service-yahoo-pulse":{"path":"j\/.HF.CM-.HI.A.v3NE4f1.57","requires":["share-this-v3-services","yui-base"],"ext":false},"share-this-v3-service-pinterest":{"path":"j\/.HFpinterest.A.v6AmLr7.57","requires":["share-this-v3-services","yui-base"],"ext":false},"share-this-v3-services":{"path":"j\/.HG-.HR.A.v4GfQr8.57","requires":["share-this-v3-service-blogger","share-this-v3-service-email","share-this-v3-service-facebook","share-this-v3-service-livejournal","share-this-v3-service-pinterest","share-this-v3-service-tumblr","share-this-v3-service-twitter","share-this-v3-service-wordpress","share-this-v3-service-yahoo-pulse","yui-base"],"ext":false},"share-this-v3-triggers":{"path":"j\/.HG-.HS.A.v6dV84.57","requires":["event","flanal","node","share-this-v3-dialog","yui-base"],"ext":false},"sprintf":{"path":"j\/.CC.A.v4bFUj1.57","requires":["yui-base"],"ext":false},"smartbanner-css":{"path":"c\/c_smartbanner.BC.v4HCMKS.57","type":"css","ext":false},"smartbanner":{"path":"j\/smartbanner.A.v4iLzaP.57","requires":["smartbanner-css","node","array-extras"],"ext":false},"smart-crop":{"path":"j\/.KX.A.v2gr1Fu.57","requires":["ccv","face"],"ext":false},"snow-init":{"path":"j\/snow_init.A.v6aNnDx.57","requires":["yui-base","snow-src"],"ext":false},"snow-src":{"path":"j\/snow_src.A.v5mvu28.57","requires":["yui-base"],"ext":false},"soundmanager2":{"path":"j\/sound.K2.A.v5NQm24.57","requires":["yui-base"],"ext":false},"string-filters":{"path":"j\/.U-.CG.A.v3E6xbG.57","requires":["yui-base"],"ext":false},"soup":{"path":"j\/soup.A.v48efxL.57","requires":["event","flanal","flickr-page-timing","io","motion-blur","node","popup-login","rapid-tracker","transition","yui-base"],"ext":false},"soup-hera-view":{"path":"j\/soup-.LJ.JB.A.v3AaP86.57","requires":["view","datatype-date","murmurhash","handlebars","photo-list-model","photo-list-view","flickr-dialog-infinite-spinner","template-fetcher","gallery-popover","rapid-tracker","io","yui-base"],"ext":false},"tag-selecta":{"path":"j\/tag-.S.A.v2HSNfd.57","requires":["anim","autocomplete","tag-selecta-css","tag-selecta-transjax","datasource-function","event","event-custom","gallery-flickr-api","image-fader","io-base","node","string-filters","yui-base"],"ext":false},"tag-selecta-css":{"path":"c\/c_tag-.S.BC.v5zLeKD.57","type":"css","ext":false},"tag-selecta-transjax":{"path":"j\/tag-.S-.C-.F.A.v5YTVnZ.57","requires":["transjax-base","yui-base"],"ext":false},"template-fetcher":{"path":"j\/.KW.A.v3Y39mK.57","requires":["handlebars"],"ext":false},"tour-nav":{"path":"j\/.DA-nav.A.vLkJVM.57","requires":["anim","node","node-event-simulate","io","querystring","history","yahoo-ult","yui-base"],"ext":false},"tour-carousel":{"path":"j\/.DA-.ER.A.v2bfUC6.57","requires":["anim","node","yui-base"],"ext":false},"touch-lightbox":{"path":"j\/touch-.N.A.v5se96C.57","requires":["context-data","cookie","escape","event","gallery-flickr-api","history-manager","lightbox-transjax","mrpinchy","node","page-context","photo-transjax","rapid-tracker","transition","urls","view-count","yui-base"],"optional":["lightbox"],"ext":false},"type-cast":{"path":"j\/.DJ-cast.A.v6vF8kL.57","requires":["yui-base"],"ext":false},"transjax-base":{"path":"j\/.C-.BL.A.v29r71X.57","requires":["sprintf","yui-base"],"ext":false},"trustarc-consent":{"path":"j\/consent_init.A.v2ntcVW.57","requires":["yui-base"],"ext":false},"trustarc-consent-manager":{"path":"j\/tru.CYc-consent-.K.A.v6bpkQ5.57","requires":["yui-base"],"ext":false},"urls":{"path":"j\/urls.A.v68gVxQ.57","requires":["yui-base"],"ext":false},"user-refave":{"path":"j\/user-re.CX.A.v6LUrBt.57","requires":["event","gallery-flickr-api","node","yui-base"],"ext":false},"video":{"path":"j\/.DV-.D.A.v5oXpLf.57","requires":["cookie","event-custom","gallery-flickr-api","node","query-string-args","string-filters","swfobject","video-transjax","yui-base"],"ext":false},"video-masker":{"path":"j\/.DV-masker-.D.A.v6oaiPC.57","requires":["node","page-context","yui-base"],"ext":false},"video-transjax":{"path":"j\/.DV-.D-.C-.F.A.v3sBrRf.57","requires":["transjax-base","yui-base"],"ext":false},"view-count":{"path":"j\/.JB-count.A.v6kb9cC.57","requires":["gallery-flickr-api","json","yui-base"],"ext":false},"view-count-on-visible":{"path":"j\/.JB-count-on-visible.A.v8pFoS.57","requires":["node-visibility","view-count","yui-base"],"ext":false},"whispers":{"path":"j\/whispers.A.vJEAJD.57","requires":["node","event","gallery-flickr-api","yui-base"],"ext":false},"woe-corrector-css":{"path":"c\/c_woe-corrector.BC.v4U2PfG.57","type":"css","ext":false},"woe-corrector":{"path":"j\/woe-corrector.A.v26sa8v.57","requires":["base","woe-corrector-css","keyboard-shortcut-manager","flickr-geo","event","yui-base"],"ext":false},"worker":{"path":"j\/.IW.A.v5X2Z1g.57","requires":["base","event","yui-base"],"ext":false},"xmp-extractor":{"path":"j\/xmp-.IN.A.v5Gt5se.57","requires":["yui-base"],"ext":false},"you-subnav-menu":{"path":"j\/you-subnav-.BB.A.v28zNjG.57","requires":["actions-menu-css","event","gallery-popover","gallery-popover-css","menus","node","yui-base"],"ext":false},"ywa-link-tracking":{"path":"j\/ywa-link-.BW.A.v4BTXxF.57","requires":["event","yahoo-web-analytics","yui-base"],"ext":false},"swfobject":{"path":"j\/.BM.A.v6VEEoL.57","ext":false},"yahoo-ult":{"path":"j\/.CM-ult.A.v3XZXwN.57","ext":false},"yahoo-web-analytics":{"path":"j\/ywa.A.v5K9FXt.57","ext":false},"ymap":{"path":"j\/.FV.A.v2H8RP.57","requires":["event-synthetic","yui2_5-animation","yui2_5-yahoo","yui2_5-event","yui2_5-dom","yui2_5-dragdrop"],"ext":false},"bing_map":{"path":"j\/bing_map_6_3.A.vcv8FR.57","ext":false},"yui2_5-yahoo":{"path":"j\/.CM\/.CM_2.5.1.A.v6pEFyx.57","ext":false},"yui2_5-event":{"path":"j\/.CM\/.G_2.5.1.A.v28dYvG.57","requires":["yui2_5-yahoo"],"ext":false},"yui2_5-dom":{"path":"j\/.CM\/dom_2.5.1.A.v5yiDjN.57","requires":["yui2_5-yahoo"],"ext":false},"yui2_5-dragdrop":{"path":"j\/.CM\/.FT_2.5.1.A.v69rxZ5.57","requires":["yui2_5-dom","yui2_5-event","yui2_5-yahoo"],"ext":false},"yui2_5-animation":{"path":"j\/.CM\/.FL_2.5.1.A.v5KbeHv.57","requires":["yui2_5-dom","yui2_5-event","yui2_5-yahoo"],"ext":false},"worker-echo":{"path":"j\/.IW-echo.A.v5inXRc.57","requires":["worker-yui-ready","yui-base"],"ext":false},"worker-exif-extractor":{"path":"j\/.IW-.KU.A.v4iFXq2.57","requires":["jfif-extractor","better-throttle","dataview","exif-extractor","exif-extractor-tags","worker-yui-ready","yui-base","xmp-extractor"],"ext":false},"worker-yui-ready":{"path":"j\/.IW-.KV.A.v5wXwfK.57","requires":["event","event-custom","yui-base"],"ext":false},"set-inline-comments-transjax":{"path":"j\/set-inline-.LGs-.C-.F.A.v78kCoc.57","ext":false}}};

	
		
	
		
	
		

	

F.config = F.util.clone(yconf);		YUI(yconf).use(function (Y) {
							page_timing.js_assets_end = new Date().getTime();
						Y.use('global-nav', 'node', 'dom', 'anim', 'rapid-tracker', 'nav-selecta-rapid', 'cookie', function(Y) {

	Y.globalNav.init();

	

	/**
	 * Howdy. Did I mention we're hiring? Because we are. ;)
	 * http://flickr.com/jobs/
	 */

	var winloc = window.location.toString();

	var css = {
	    disabled: 'disabled',
	    enabled: 'enabled',
	    mobile: 'mobile',
	    notEmpty: 'not-empty',
	    visible: 'visible',
	    yoohooOverHere: 'yoohoo-over-here'
	};

	var windowInnerWidth;
	var windowInnerHeight;
	var bodyOffsetHeight;

	var dotsNavItems = document.querySelectorAll('.sohp-dots-nav li');
	var lastDotNavItem;

	var sohp = Y.one('#sohp-2014');

	var frames = Y.all('.sohp-section');
	var frameHeights = [];

	var maxSections = frames.size();

	// whether ads are present on the page, or not
	var adEnabled = (0 || 0);

	// presumed true until otherwise.
	var hasAd = true;

	// if there's no ad in section 0, it will be hidden from view and minSection will be 1.
	var minSection = 0;

	var sectionBodies = Y.all('.sohp-section-bd');

	var scrollAnimation;
	var lastScrollTimestamp = new Date();

	var upArrowLink = Y.one('#up-arrow-link');
	var upArrowUI = Y.one('#up-arrow-ui');
	var downArrowLink = Y.one('#down-arrow-link');
	var downArrowUI = Y.one('#down-arrow-ui');

	var downloads = Y.one('#sohp-downloads');

	var overlayWrapper = Y.one('#section-stunning-overlay');
	var overlayWrapperVisible = false;

	var overlays = {
		graphite: Y.one('#section-stunning-graphite'),
		icedTea: Y.one('#section-stunning-iced-tea'),
		throwback: Y.one('#section-stunning-throwback')
	};

	var backgrounds = [Y.one('#background-noblur'), Y.one('#background-blur'), Y.one('#background-superblur')];
	var backgroundOpacity = [1,0,0];

	var backgroundParallax = Y.one('#background-parallax');

	var amount = 0;
	var lastAmount = 0;

	var searchField = Y.one('#search-field');

	// some browsers prefer scrollTop applied to documentElement, others prefer document.body.
	var scrollElement = (navigator.userAgent.match(/firefox|trident/i) ? document.documentElement : document.body);

	// various UA sniffing, mostly for performance or minor UI quirks.
	var isWebkit = (navigator.userAgent.match(/webkit/i));
	var isSafari = (navigator.userAgent.match(/safari/i) && !navigator.userAgent.match(/chrome/i));
	var isFirefox = (navigator.userAgent.match(/firefox/i));
	var isOldIE = (navigator.userAgent.match(/msie 8/i));
	var isIE9 = (navigator.userAgent.match(/msie 9/i));
	var isMobile = (navigator.userAgent.match(/iphone|ipad|android|silk|mobile/i));
	var isIPad = (navigator.userAgent.match(/ipad/i));
	var isWinXP = (navigator.userAgent.match(/windows nt 5/i));

	var allowMobile = (winloc.match(/allowmobile/i));

	var useBlur = (!winloc.match(/noblur/i));

	var scrollTop;

	var useParallax;

	// for now, everybody gets in on the fun; why not.
	useParallax = true;

	// allow URL-based overrides
	if (useParallax && winloc.match(/noparallax/i)) {

		useParallax = false;

	} else if (!useParallax && winloc.match(/parallax/i)) {

		useParallax = true;

	}

	var forceScale3D = winloc.match(/scale3d/i);

	var useIncrementalScroll = (winloc.match(/incrementalscroll/i));

	// exclude mobile (iOS, etc.) from zoom as the UI may go haywire.
	var useZoom = (!isOldIE && !isIE9 && (!isMobile || isIPad) && !winloc.match(/nozoom/i));

	var useScroll = (!winloc.match(/noscroll/i));

	// Webkit scales fonts up rasterized when using transforms (boourns), but Firefox gets it right (and also doesn't support element.style.zoom.)
	var useTransformZoom = (navigator.userAgent.match(/firefox|msie/i));

	var lastZoomScale = 1;
	var zoomScaleMin = 0.82;
	var zoomScaleMax = 2;

	var lastParallax;

	var isRetina;

	var useScale3D;

	var didFirstScroll;

	var animationTimer;

	var videos = document.getElementsByTagName('video');

	var enterEvents = {

		// these fire after the animation has completed, and the new section is in view.

		'section-1': function() {

			setTimeout(function () {
				playVideo(1);
			}, 1000);

		},

		'section-2': function() {

			playVideo(2);

		},

		'section-3': function() {

			/**
			 * show the special overlays for the "stunning" section
			 * ... ensuring we're actually there when this runs, also.
			 */

			if (getCurrentSection() === 3) {

				if (!overlayWrapperVisible) {

					overlayWrapper.addClass('visible');
					overlayWrapperVisible = true;

				}

			}

			playVideo(3);

		},

		'section-4': function() {

			playVideo(4);

		}


	};

	var leaveEvents = {

		// these fire when the section begins to animate out.

		'section-3': function() {

			// leaving the "stunning" section - hide the overlays.

			if (overlayWrapperVisible) {

				overlayWrapper.removeClass('visible');
				overlayWrapperVisible = false;

			}

		}

	};

	var videoActions = {

		/**
		 * given a video ID, provide an array of methods to be called when a certain position is reached.
		 * methods fire once until video ends or is otherwise reset.
		 */

		// <video> ID
		'section-stunning-video': {

			reset: function() {

				overlays.graphite.removeClass(css.visible);
				overlays.icedTea.removeClass(css.visible);
				overlays.throwback.removeClass(css.visible);

			},

			timeline: [{

				method: function() {
					// iced tea filter + texture
					overlays.graphite.removeClass(css.visible);
					overlays.icedTea.addClass(css.visible);
					overlays.throwback.removeClass(css.visible);
				},
				time: 0.25,
				fired: false

			}, {

				method: function() {
					// throwback filter
					overlays.graphite.removeClass(css.visible);
					overlays.icedTea.removeClass(css.visible);
					overlays.throwback.addClass(css.visible);
				},
				time: 3.45,
				fired: false

			}, {

				method: function() {
					// grey!
					overlays.graphite.addClass(css.visible);
					overlays.icedTea.removeClass(css.visible);
					overlays.throwback.removeClass(css.visible);
				},
				time: 6.75,
				fired: false

			}, {

				method: function() {
					// back to original
					overlays.graphite.removeClass(css.visible);
					overlays.icedTea.removeClass(css.visible);
					overlays.throwback.removeClass(css.visible);
				},
				time: 10.25,
				fired: false

			}]

		}

	};

	function checkRetina() {

		return (typeof window.devicePixelRatio !== 'undefined' && window.devicePixelRatio > 1);

	}

	function checkScale3D() {

		/**
		 * Perhaps this could be optimized / I'm missing something.
		 * As of 03/2014, Safari is smooth, Chrome slightly slow, Firefox quite slow when combining scale3d() + translate3d() on a 15" Retina LCD.
		 * Test machine: 15" (2880x1800) MacBook Pro Retina, Mid 2012 (NVIDIA GeForce GT 650M 1024 MB, 16 GB 1600 MHz DDR3, 2.6 GHz Intel Core i7)
		 */
		return (forceScale3D || (!isWinXP && !isFirefox && (!isRetina || isSafari)));

	}

	function animateTo(node, preventInterrupt, scrollAction) {

		var easing,
		    id,
		    oldId,
		    from,
		    duration,
		    interrupted,
		    sectionOffset,
		    targetY,
		    to,
		    oldSection;

		if (node) {

			oldSection = getCurrentSection();

			node = Y.one(node);

			if (!node) {
				return false;
			}

			id = node.get('id');

			targetY = node.getY();

			if (!preventInterrupt) {

				// new animation? stop the current one.
				if (scrollAnimation) {

					scrollAnimation.stop(false);

					// this is crap, but we have to debounce scroll events that may still be firing - particularly from touchpads.
					if (scrollAction) {

						window.setTimeout(function() {
							scrollAnimation = null;
						}, 500);

					} else {

						scrollAnimation = null;

					}

					interrupted = true;

				}

			} else {

				// new animation attempt while one is running? ignore, and bail.
				if (scrollAnimation) {
					return false;
				}

			}

			// remove "pulse" effect, as applicable
			if (!didFirstScroll) {
				downArrowUI.removeClass(css.yoohooOverHere);
				didFirstScroll = true;
			}

			// update retina check, for those of you who move windows between non-retina and retina monitors.
			isRetina = checkRetina();

			// and update useScale3D, too.
			useScale3D = checkScale3D();

			// force update of scrollTop?
			scrollTop = parseInt(scrollElement.scrollTop, 10);

			from = scrollTop;
			to = parseInt(targetY, 10);
			duration = 1;

			scrollAnimation = new Y.Anim({
				node: scrollElement,
				to: {
					scrollTop: parseInt(targetY, 10)
				},
				// if existing animation was interrupted, move really fast to indicate responsiveness.
				easing: (interrupted ? 'easeOutStrong' : (scrollAction ? 'easeBoth' : 'easeBothStrong')),
				duration: duration
			});

			easing = scrollAnimation.get('easing');

			scrollAnimation.on('tween', function(e) {

				var elapsedTime = this.get('elapsedTime');
				var position = easing(elapsedTime, from, to - from, duration*1000);

				scrollTop = parseInt(position, 10);

			});

			scrollAnimation.on('end', function() {

				// reset the previous video, if any.
				resetVideo(oldSection);

				// for crap browsers, navigate to the target URL after animation completes.
				if (!history || !history.replaceState) {
					window.location.hash = '#' + id;
				}

				// for preventing multiple simultaneous animations
				scrollAnimation = null;

				if (enterEvents[id]) {

					// apply this after a short delay, also checking that a new animation has not started.

					if (animationTimer) {
						window.clearTimeout(animationTimer);
					}

					animationTimer = window.setTimeout(function() {

						if (!scrollAnimation) {

							if (enterEvents[id]) {
								enterEvents[id]();
							}

						}

						animationTimer = null;

					}, 250);

				}

			});

			// update the browser URL without navigating to the link
			if (history && history.replaceState) {
				history.replaceState({}, id, "#" + id);
			}

			oldId = 'section-' + oldSection;

			// "leave" events should always fire.
			if (leaveEvents[oldId]) {
				leaveEvents[oldId]();
			}

			scrollAnimation.run();

			if (lastDotNavItem) {
				lastDotNavItem.removeClass('selected');
			}

			// hackish: section-3 to 3, etc.
			sectionOffset = parseInt(id.substr(id.length-1), 10);

			lastDotNavItem = Y.one(dotsNavItems[sectionOffset]);

			if (lastDotNavItem) {
				lastDotNavItem.addClass('selected');
			}

		}

		updateFixedItems();

	}

	function updateFixedItems() {

		var currentSection = getCurrentSection();

		// app links

		if (currentSection > 1 && currentSection < maxSections) {

			downloads.removeClass(css.disabled);

		} else {

			downloads.addClass(css.disabled);

		}

		// nav arrows

		if (currentSection <= minSection) {

			// top

			upArrowLink.addClass(css.disabled);
			upArrowUI.addClass(css.disabled);

			downArrowLink.removeClass(css.disabled);
			downArrowUI.removeClass(css.disabled);

		} else if (currentSection >= maxSections) {

			// bottom

			downArrowLink.addClass(css.disabled);
			downArrowUI.addClass(css.disabled);

			upArrowLink.removeClass(css.disabled);
			upArrowUI.removeClass(css.disabled);

			Y.one('#photo-credit').hide();

		} else {

			// somewhere in-between

			upArrowLink.removeClass(css.disabled);
			upArrowUI.removeClass(css.disabled);

			downArrowLink.removeClass(css.disabled);
			downArrowUI.removeClass(css.disabled);

			Y.one('#photo-credit').show();

		}

	}

	function playVideo(section) {

		var videoId,
		    video;

		section = parseInt(section, 10);

		// videoId = 'section-' + section + '-video';
		// video = document.getElementById(videoId);

		video = videos[section-1];

		if (getCurrentSection() === section && video) {

			if (!isMobile) {

				try {
					video.play();
				} catch(e) {
					// d'oh well
				}

			}

		}

	}

	function checkVideoPosition(video) {

		var i, j, id, action, foundMatch, timeline;

		if (video) {

			foundMatch = false;

			id = video.id;
			time = video.currentTime;

			if (id) {

				action = videoActions[id];

				if (action && action.timeline) {

					timeline = action.timeline;

					if (timeline.length) {

						// we have an object.
						for (i=0, j=timeline.length; i<j; i++) {

							if (timeline[i].method && !timeline[i].fired && time >= timeline[i].time) {
								timeline[i].method();
								timeline[i].fired = true;
							}

						}

					}

				}

			}

		}

	}

	function disableVideo(video) {

		/**
		 * If a video throws a fatal error, attempt to hide it with a static JPEG.
		 * Use with caution.
		 */

		var img;

		video = Y.one(video);

		img = video.get('parentNode').all('img');

		if (!video.getAttribute('data-disabled')) {

			video.setAttribute('data-disabled', 1);

			img = document.createElement('img');
			img.className = 'thumb';

			img.src = video.getAttribute('data-fallback');

			video.get('parentNode').appendChild(img);

		}

	}

	function resetVideoActions(videoId) {

		var i, j,
		    action,
		    timeline;

		action = videoActions[videoId];

		if (action) {

			timeline = action.timeline;

			// reset "fired" state
			for (i=0, j=timeline.length; i<j; i++) {
				timeline[i].fired = false;
			}

			// fire "reset" method, if provided.
			if (action.reset) {

				if (window.requestAnimationFrame) {
					window.requestAnimationFrame(action.reset)
				} else {
					action.reset();
				}

			}

		}

	}

	function resetVideo(videoNodeOrOffset) {

		// <video> element, or section number matching DOM ID pattern, section-#-video.

		var video;

		if (typeof videoNodeOrOffset === 'number') {
			video = videos[videoNodeOrOffset-1];
		} else {
			video = videoNodeOrOffset;
		}

		if (video) {

			try {
				video.pause();
				video.currentTime = 0;
			} catch(e) {
				// may fail if not loaded or not ready
			}

			resetVideoActions(video.id);

		}

	}

	function getCurrentSection() {

		var hash = window.location.hash,
		    sectionPrefix = 'section-';

		// parse out of the URL, or assume default.
		if (hash.match(/section/i)) {
			section = hash.substr(sectionPrefix.length+1);
		} else {
			section = minSection;
		}

		return parseInt(section, 10);

	}

	function getNextSection() {

		var currentSection = getCurrentSection();

		currentSection = Math.min(maxSections, currentSection+1);

		return currentSection;

	}

	function getPreviousSection() {

		var currentSection = getCurrentSection();

		currentSection = Math.max(minSection, currentSection-1);

		return currentSection;

	}

	function getDimensions() {

		// potentially-expensive, layout-triggering DOM queries.

		windowInnerWidth = parseInt(window.innerWidth, 10);
		windowInnerHeight = parseInt(window.innerHeight, 10);
		bodyOffsetHeight = document.body.offsetHeight;

	}

	function resizeHandler() {

		var i,
		    j,
		    offset,
		    minWidth = 1280, // from min-width on .sohp {} CSS
		    adjustedScrollTop = 0,
		    absoluteMinimumHeight,
		    zoomScale = 1,
		    zoomScaleOverflow,
		    scaledWidth,
		    currentFrame,
		    thisMinHeight,
		    innerHeight,
		    hash;

		// ensure measurements are current.
		getDimensions();

		targetHeight = windowInnerHeight;
		windowWidth = windowInnerWidth;

		/**
		 * Determine how small each screen can get. Ideally, each one is near full-height.
		 * If window is really short (i.e., 11" or 13" macbook screen with a full-size dock), let content get down to 600px height. otherwise, bump up toward desired target of 780. Scaling will take things from there for larger windows.
		 *
		 * Update from Ross: This was causing a gap in the scaling, where screens with height above 780 or below 600 were fine, but anything inbetween didn't scale correctly. Setting this to a fixed value solved the problem.
		 */

		absoluteMinimumHeight = 780; // (Math.min(Math.max(600, targetHeight), 780));

		innerHeight = Math.max(targetHeight, absoluteMinimumHeight);

		hash = window.location.hash;

		/**
		 * WARNING: pixelation and dragons ahead.
		 * This is why we use retina icons assets on non-retina screens, etc. (Thankfully, the file sizes are quite small as-is.)
		 * "You so crazy / I think I wanna have your baby"
		 */

		if (useZoom && targetHeight !== absoluteMinimumHeight) {

			// we have a candidate for scaling.
			// restrict scale to fit within both width + height of current browser window.
			zoomScale = Math.min(windowWidth / minWidth, targetHeight / absoluteMinimumHeight);

			// regardless of browser dimensions, limit within global range.
			zoomScale = Math.max(zoomScaleMin, Math.min(zoomScaleMax, zoomScale));

		}

		// ad should always be centered in a full-height frame.
		// only count if an ad is showing.

		if (hasAd) {

			Y.one('#section-0').setStyle('height', windowInnerHeight + 'px');

			// for positioning offset calculations
			frameHeights[0] = windowInnerHeight;

		} else {

			frameHeights[0] = 0;

		}

		// assign new min-height, based on natural offsetHeight.
		Y.each(frames, function(frame, i) {

			// special case: exclude the ad section (index 0) from scaling.
			if (!hasAd || i > 0) {

				if (zoomScale !== lastZoomScale) {

					// transform: scale3d() results in raster-sized fonts on Webkit. However, .style.zoom works on Webkit (and old IE.)
					if (useTransformZoom) {

						sectionBodies.item(i).setStyle('transform', 'scale3d(' + zoomScale + ',' + zoomScale + ',' + zoomScale + ')');
						frame.setStyle('overflow', 'hidden');

					} else {

						sectionBodies.item(i).setStyle('zoom', zoomScale);
						// frame.style.overflow = 'hidden';

					}

				}

				// read natural content height, assign min-height rounded up to nearest screen length.
				frame.setStyle('minHeight', '1px');
				frame.setStyle('height', 'auto');

				// reading offsetHeight may be expensive, cause layout etc. re-assigning height certainly will.
				thisMinHeight = Math.max(1, Math.ceil(frame.getAttribute('offsetHeight') / innerHeight));

				frameHeights[i] = thisMinHeight * innerHeight;

				frame.setStyle('minHeight', frameHeights[i] + 'px');

				if (isOldIE) {

					// no min-height here...
					frame.setStyle('height', frameHeights[i] + 'px');

				} else {

					frame.setStyle('height', 'auto');

				}

			}

		});

		if (zoomScale !== lastZoomScale) {
			lastZoomScale = zoomScale;
		}

		// determine current position/offset
		if (hash) {

			currentFrame = document.getElementById(hash.substr(1));

			if (currentFrame && document.body) {

				// figure out target height, and go there!

				// if there is no ad, subtract 1 since #section-0 will be gone.
				offset = parseInt(hash.substr(hash.lastIndexOf('-')+1), 10) + (!hasAd ? -1 : 0);

				for (i=0, j=offset; i<j; i++) {
					adjustedScrollTop += frameHeights[i];
				}

				// ipad may fire this on scroll, which breaks scroll.
				if (!isMobile || allowMobile) {
					scrollElement.scrollTop = adjustedScrollTop;
				}

			}

		}

		// refresh, since page layout likely just changed
		getDimensions();

	}

	function setBackgroundOpacity(offset, opacity) {

		if (backgroundOpacity[offset] !== opacity) {
			backgrounds[offset].setStyle('opacity', opacity);
			backgroundOpacity[offset] = opacity;
		}

	}

	function scrollUpdate() {

		var innerHeight,
		    documentHeight,
		    relativeScroll,
		    bgScale,
		    blur;

		// first-run, undefined case
		if (!windowInnerHeight || !bodyOffsetHeight) {
			getDimensions();
		}

		/**
		 * reading scrollTop may be expensive / trigger layout. Only read if a YUI animation is not running.
		 * in the case of YUI animation, we know and can calculate scrollTop independently.
		 */

		if (!scrollAnimation) {
			if (console && console.log) {
				// console.log('scrollAnimation inactive - reading expensive scroll from DOM');
			}
			scrollTop = scrollElement.scrollTop;
		}

		innerHeight = windowInnerHeight;
		documentHeight = bodyOffsetHeight;

		scrollPosition = (scrollTop / (documentHeight - innerHeight));

		// probably don't need *every* pixel, etc.
		if (!useIncrementalScroll) {

			amount = scrollPosition;

		} else {

			// trade-off: fidelity, less DOM updates, better performance
			amount = Math.floor(scrollPosition * 64);

		}

		if (amount !== lastAmount) {

			if (useBlur) {

				if (scrollPosition >= 0.45) {

					// bottom half: show partial blur, work down to full blur
					setBackgroundOpacity(1, 1);
					setBackgroundOpacity(2, Math.min(1, (scrollPosition-0.45) / 0.5));

				} else {

					// upper half: show original background, work down to partial blur
					setBackgroundOpacity(2, 0);
					setBackgroundOpacity(1, Math.min(1, scrollPosition / 0.45));

				}

			}

			if (useParallax) {

				if (lastParallax !== scrollPosition) {

					/**
					 * here's where the fun happens.
					 * subtract percentage of 110% height on background, and that's how much space we get to play with.
					 */

					if (useScale3D) {
						bgScale = 1 + (scrollPosition * 0.025);
						backgroundParallax.setStyle('transform', 'scale3d(' + bgScale + ', ' + bgScale + ', 1) translate3d(0%, ' + (-((10/110)*100) * scrollPosition) + '%, 0)');
					} else {
						backgroundParallax.setStyle('transform', 'translate3d(0%,' + (-((10/110)*100) * scrollPosition) + '%, 0)');
					}

					lastParallax = scrollPosition;

				}

			}

			// update
			lastAmount = amount;

		}

	}

	function scrollHandler() {

		// dirty, dirty, evil!
		if (window.requestAnimationFrame) {
			window.requestAnimationFrame(scrollUpdate);
		}

	}

	function evilWheelHandler(e) {

		/**
		 * There is nothing wrong with your television set. Do not attempt to adjust the picture. We are controlling transmission.
		 * ... We will control the horizontal. We will control the vertical.
		 */

		var now,
		    deltaY;

		// for now, just exit if there is an active animation.
		if (scrollAnimation) {
			e.preventDefault();
			return false;
		}

		// -- evil stuff below --

		now = new Date();
		deltaY = parseInt(e.deltaY || e.wheelDeltaY, 10);

		// don't mess with the event if there's no y.
		if (deltaY !== undefined && !isNaN(deltaY)) {

			// basic de-bouncing of scroll events; treat any that fire within a certain window as not being unique.
			if (now - lastScrollTimestamp > 1500) {

				// here's a fun one - this may not be fully implemented. doesn't seem to work when scrolling is inverted per OS preferences(?)
				if (typeof e.webkitDirectionInvertedFromDevice !== 'undefined') {

					if (e.webkitDirectionInvertedFromDevice && Y.UA.safari && Y.UA.safari < 600) {
						deltaY *= -1;
					}

				}

				// new scroll action
				if (deltaY < 0) {

					// up!
					animateTo('#section-' + getPreviousSection(), true, true);

				} else if (deltaY > 0) {

					// down!
					animateTo('#section-' + getNextSection(), true, true);

				}

				lastScrollTimestamp = Date.now();

			}

			e.preventDefault();
			return false;

		}

	}

	function addScrollHandlers() {

		/**
		 * dirty, dirty, evil: hijack mouse wheel (+trackpad) scroll gesture-type events, force controlled scroll.
		 * also, touch events if apparently supported.
		 * don't apply if it looks like there's a horizontal scrollbar.
	     */

		if (useScroll) {

			if (!isMobile) {

				if (window.addEventListener && document.body.scrollWidth <= window.innerWidth) {
					window.addEventListener('mousewheel', evilWheelHandler, false);
					window.addEventListener('wheel', evilWheelHandler, false);
				}

			}

			
						

		}

	}

	function enhancePage() {

		if (isOldIE) {
			return false;
		}

		Y.one('window').on('resize', resizeHandler, false);

		// no special effects for mobile, too expensive.
		if (!isMobile || allowMobile) {
			Y.one('window').on('scroll', scrollHandler, false);
		}

		// update retina check, for those of you who move windows between non-retina and retina monitors.
		isRetina = checkRetina();

		// and update useScale3D, too.
		useScale3D = checkScale3D();

		scrollHandler();
		resizeHandler();

		if (!isMobile || allowMobile) {
			// enable + load some of the larger background images.
			sohp.addClass(css.enabled);
		} else {
			// explicitly disable a few things for mobile.
			sohp.addClass(css.mobile);
		}

		Y.one(document).on('keydown', function(e) {

			var down, up, beginning, end;
			var ignoreMultiple;

			// space bar / page down, j/k, arrow keys
			if (e.keyCode) {
				down = (e.keyCode === 32 || e.keyCode === 34 || e.keyCode === 74 || e.keyCode === 40);
				up = (e.keyCode === 33 || e.keyCode === 75 || e.keyCode === 38);
				beginning = (e.keyCode === 36);
				end = (e.keyCode === 35);
			}

			// ignore if in an input, select/option etc, or if modifier keys are used..
			if ((!document.activeElement || !document.activeElement.nodeName.match(/(input|select|option)/i)) && !e.shiftKey && !e.altKey && !e.metaKey) {

				// block multiple events only for up/down arrow keys.
				if (!down && !up) {
					ignoreMultiple = true;
				}

				// do the nav thing
				if (down) {
					animateTo('#section-' + getNextSection(), ignoreMultiple);
				} else if (up) {
					animateTo('#section-' + getPreviousSection(), ignoreMultiple);
				} else if (beginning) {
					animateTo('#section-1');
				} else if (end) {
					animateTo('#section-' + maxSections);
				}

				if (up || down || beginning || end) {
					e.preventDefault();
					return false;
				}

			}

		});

		// watch scrolling
		addScrollHandlers();

		// wait a moment, notify user
		window.setTimeout(function() {

			updateFixedItems();

			window.setTimeout(function() {

				if (!didFirstScroll && getCurrentSection() < maxSections) {
					downArrowUI.addClass(css.yoohooOverHere);

				}

				// update nav, and start first video
				updateDotsNav();

			}, 550);

		}, 250);

	}

	if (!isOldIE) {

		// get the party started.

		// listen to video progress events.
		(function() {

			var i, j;
			var videos = document.querySelectorAll('video');

			/**
			 * IE 9 *might* choke on some MP4 videos, despite them apparently being encoded to spec.
			 * Additionally, IE 9-11 may not support the <video> poster attribute (or, it doesn't show in the error case) - so, use a fallback.
			 */

			var handleErrors = (navigator.userAgent.match(/msie|trident/i));

			// not you, IE 8.
			if (window.addEventListener) {

				for (i=0, j=videos.length; i<j; i++) {

					videos[i].addEventListener('timeupdate', function(e) {
						checkVideoPosition(e.target);
					}, false);

					videos[i].addEventListener('ended', function(e) {
						resetVideoActions(e.target.id);
					}, false);

					if (handleErrors) {

						videos[i].addEventListener('error', function(e) {
							disableVideo(e.target);
						}, false);

					}
				}

			}

		}());

		// watch clicks for section links - direct navigation, or previous/next.

		Y.one('body').on('click', function(e) {

			var target = e.target;
			var href = target.get('href');
			var hash, hashOffset;
			var url;
			var anim;

			if (href) {

				// a #section-x link was clicked.

				if (href.match(/section/i)) {

					hashOffset = href.indexOf('#');

					if (hashOffset !== -1) {
						hash = href.substr(hashOffset);
						animateTo(hash);
						e.preventDefault();
						return false;
					}

				} else {

					// up/down navigation links.

					if (href.match(/\#down/i)) {

						animateTo('#section-' + getNextSection());

						e.preventDefault();
						return false;

					} else if (href.match(/\#up/i)) {

						animateTo('#section-' + getPreviousSection());

						e.preventDefault();
						return false;

					}

				}

			}

		});

		/**
		 * Glorious hacks!
		 * Because of nested relative elements, the hover / click target for
		 * the up/down arrows and their respective UI bits must be separated.
		 * The link is flexible, while the arrow must be 50% and bottom-of-screen.
		 */

		if (upArrowLink) {

			upArrowLink.on('mouseover', function(e) {
				upArrowUI.addClass('hover');
			});

			upArrowLink.on('mouseout', function(e) {
				upArrowUI.removeClass('hover');
			});

			downArrowLink.on('mouseover', function(e) {
				downArrowUI.addClass('hover');
			});

			downArrowLink.on('mouseout', function(e) {
				downArrowUI.removeClass('hover');
			});

		}

		// update dots nav
		function updateDotsNav() {

			var currentSection = getCurrentSection(),
			    navItem,
			    eventID;

			if (lastDotNavItem) {
				lastDotNavItem.removeClass('selected');
			}

			navItem = Y.one(dotsNavItems[currentSection]);

			navItem.addClass('selected');
			lastDotNavItem = navItem;

			eventID = 'section-' + currentSection;

			if (enterEvents[eventID]) {

				// apply this after a short delay, also checking that a new animation has not started.

				if (animationTimer) {
					window.clearTimeout(animationTimer);
				}

				animationTimer = window.setTimeout(function() {
					if (!scrollAnimation) {
						enterEvents[eventID]();
					}
					animationTimer = null;
				}, 250);

			}

		}

	}

	// ad stuff

    function noAd() {

		// Ad iframe says, no ad (or postMessage error / timed out, etc.) Hide ad section of page, prevent navigation from going there.

		var sohp = document.getElementById('sohp-2014');

		if (sohp) {
			sohp.className = ((sohp.className ? sohp.className + ' ' : '') + 'no-ad');
		}

		// update ad flag, prevent nav going to 0.
		hasAd = false;
		minSection = 1;

		// if the ad was enabled, remove the extra section.
		if (adEnabled) {
			maxSections--;
		}

	}

	(function() {

		// safety net
		var adTimer;

		/**
		 * Wait and see if we have an ad scheduled, according to adHelper.
		 * If no response within a reasonable time, presume there is no ad and render page without ad elements.
		 */

		if (adEnabled && typeof window.billboardAd !== 'undefined' && F && F.adHelper) {

			// if no ad response within a reasonable amount of time, enable all the JS.
			adTimer = window.setTimeout(function() {

				noAd();
				enhancePage();

			}, 2000);

			F.adHelper.onScheduledAd(window.billboardAd, function() {

				// Ad server says, "we have an ad."

				// kill the timer, if running
				if (adTimer) {
					window.clearTimeout(adTimer);
					adTimer = null;
				}

				// and get fancy
				enhancePage();

			});

			F.adHelper.onEmptyAd(window.billboardAd, function() {

				// Ad server says, "no ad."

				// kill the timer, if running
				if (adTimer) {
					window.clearTimeout(adTimer);
					adTimer = null;
				}

				noAd();

				// and enable the scroll features
				enhancePage();

			});

		} else {

			// no ad - enable features right away.

			noAd();
			enhancePage();

		}

	}());

	// Apply a GPU tweak to fix some scroll-based rendering quirks - video or text not displaying on scroll, etc.
	if (isWebkit) {
		Y.one('#sohp-2014').addClass('gpu');
	}

	
	

				
		
			function clientOnOffSwitch() {
				var enableRapid = true;

				return enableRapid;
			}
		

		
		
		
		var keys = {
			A_pn: '/index.gne'
			, joindate: '-1'
						, bx: '-1'
									, ispro: '0'
								};

			
		YAHOO.i13n.YWA_ACTION_MAP = {
				};

			
	
		var conf = {
			use_rapid: (true && clientOnOffSwitch()),
			keys: keys,
			lt_attr: 'data-track',
			client_only: 1,
			spaceid: '792600119',
			tracked_mods: [], 			track_lv: true,
			compr_on: true,
			webworker_file: '/javascript/rapidworker-1.1.js',

					use_sampling: false,
		
					
					
			
			nofollow_class: ["nav_more","signin-popup","rapidnofollow","contact-changer-trigger","personmenu-relationship-change"]
		};

						
					conf.tracked_mods.push('sohp-2014');
					conf.tracked_mods.push('global-nav');
		
		Y.config.flickr.rapidconf = conf;
		Y.rapidTracker.init(conf);

		Y.rapidTracker.stripQueryParams(['campaignID', 'linkID']);

	

	
});
			Y.use('flickr', 'popup-login', 'nav-selecta', 'grease', 'comscore', 'murmurhash', function(Y) {

		Y.flickr();
	
		Y.popup_login.init();
	
		
			if (document.getElementById('gn-search-field')) {
				var field_node = Y.one('#gn-search-field');
				var nav_selecta = new Y.NavSelecta(field_node, {linkUsernameToPhotostream: 1,preloadText:field_node.get('value')});
			}
		
	
	Y.grease.init(0);

	if (typeof COMSCORE !== 'undefined') {
		COMSCORE._flickrconf = { c1: 2, c2: 7241469, c3: "", c4: "www.flickr.com%2F", c5: "792600119", c6: "", c15: "" };
		COMSCORE.beacon(COMSCORE._flickrconf);
	}


		window.dataLayer = {
			page: {
				pageInfo: {
					pageID: Y.murmurhash(document.title, document.title + ' insecure hawaiian volcano salt'),
					pageName: '/index.gne',
					destinationURL: document.location.href,
					referringURL: '',
					onsiteSearchTerm: '',
					language: '',
					country: '',
					geoRegion: '',
					author: '',
					pageType: ''
				}
			},
			product: [],
			events: [],
			cart: {},
			transaction: {},
			user: {
				profile: {
					profileInfo: {
						profileID: '',
						userName: '',
						language: window.navigator.language || '',
						intl: 'en-us',
						signedIn: 'signedOut'
					},
					segment: {
						isNewRegistration: null,
						isUserNewCustomer: null,
						isLoggedIn: null,
						customerClassDimension: 'free',
						visitorLifetimeValue: 0
					}
				}
			}
		};

		function sendCustomEvent(type, detail) {
			var event;
			var params = {
				bubbles: true,
				cancelable: true,
				detail: detail
			};

			if (document.createEvent && document.body.dispatchEvent) {
				event = document.createEvent('CustomEvent');
				event.initCustomEvent(type, params.bubbles, params.cancelable, params.detail);
				document.body.dispatchEvent(event);
			} else if (window.CustomEvent && document.body.dispatchEvent) {
				event = new CustomEvent(type, params);
				document.body.dispatchEvent(event);
			}
		}

		sendCustomEvent('sendPageView', window.dataLayer);
	

	page_timing.js_done = new Date().getTime();
	
});
			Y.use('flickr-page-timing', function(Y) {

	Y.flickrPageTiming({
		is_owner: false,
		page_id: 'soup'	});


	
});
		});
	})();
	</script>


<noscript>

			<img src="https://sb.scorecardresearch.com/b?c1=2&c2=7241469&c3=&c4=www.flickr.com%2F&c5=792600119&c6=&c15=&cv=1.3&cj=1" style="display:none" width="0" height="0" alt="" />
	</noscript>


<script data-script-purpose="page_timing" nonce="4e1322febffb1fea89a198bddeb31773">
(function(){if(typeof page_timing!='undefined'){page_timing.page_end=new Date().getTime();function timing_dom_ready(){page_timing.dom_ready=new Date().getTime();} function timing_window_load(){page_timing.window_load=new Date().getTime();} function dom_onready(onready_handler){if(typeof onready_handler=='undefined'){return false;} if(document.readyState==="complete"){onready_handler();}else{if(document.addEventListener){DOMContentLoaded=function(){document.removeEventListener('DOMContentLoaded',DOMContentLoaded,false);onready_handler();}}else if(document.attachEvent){DOMContentLoaded=function(){if(document.readyState==="complete"){document.detachEvent("onreadystatechange",DOMContentLoaded);onready_handler();}}};if(document.addEventListener){document.addEventListener('DOMContentLoaded',onready_handler,false);}else if(document.attachEvent){document.attachEvent("onreadystatechange",onready_handler);}}} function window_onload(onready_handler){var m1=window.addEventListener;var m2=document.addEvent;if(m1){m1('load',onready_handler,false);}else if(m2){m2(window,'onload',onready_handler);}} dom_onready(timing_dom_ready);window_onload(timing_window_load);}})();
</script>

<script nonce="4e1322febffb1fea89a198bddeb31773">(function(a,b,c,d,e){function f(){var a=b.createElement("script");a.async=!0;a.src="//radar.cedexis.com/1/18573/radar.js";b.body.appendChild(a)}/\bMSIE 6/i.test(a.navigator.userAgent)||(a[c]?a[c](e,f,!1):a[d]&&a[d]("on"+e,f))})(window,document,"addEventListener","attachEvent","load");</script>

</body>
</html>```