```<!DOCTYPE html>
<html lang="en">
  <head>
    <title>API Documentation / PlanetHoster Developers Portal</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta property="og:title" content="Web API Documentation / PlanetHoster" />
    <meta name="description" content="This reference covers the entire Application Programming Interface of PlanetHoster - Developer Guides" />
    <meta property="og:description" content="This reference covers the entire Application Programming Interface of PlanetHoster - Developer Guides" />
    <meta property="og:type" content="website" />
    <meta property="og:url" content="https://apidoc.planethoster.com" />
    <meta property="og:image" content="https://apidoc.planethoster.com/api_PH_domain.jpg" />
    <link href="/css.css" rel="stylesheet" type="text/css" />
    <link rel="icon" type="image/png" href="/favicon.ico" />
    <script src="/jquery.js"></script>
    <style type="text/css">
      html{font-size:100%;-webkit-text-size-adjust:100%;-ms-text-size-adjust:100%}a:focus{outline:thin dotted #333;outline:5px auto -webkit-focus-ring-color;outline-offset:-2px}a:hover,a:active{outline:0}@media print{*{text-shadow:none!important;color:#000!important;background:transparent!important;box-shadow:none!important}a,a:visited{text-decoration:underline}a[href]:after{content:" (" attr(href) ")"}.ir a:after,a[href^="javascript:"]:after,a[href^="#"]:after{content:""}pre,blockquote{border:1px solid #999;page-break-inside:avoid}tr,img{page-break-inside:avoid}@page{margin:.5cm}p,h2,h3{orphans:3;widows:3}h2,h3{page-break-after:avoid}}body{margin:0;font-family:Open Sans,Helvetica Neue,Helvetica,Arial,sans-serif;font-size:14px;line-height:20px;color:#3b393e;background-color:#fff}a{color:#2362ad;text-decoration:none}a:hover,a:focus{color:#163e6d;text-decoration:underline}[class*="span"]{float:left;min-height:1px;margin-left:20px}.container,.navbar-static-top .container,.navbar-fixed-top .container,.navbar-fixed-bottom .container{width:940px}.span12{width:940px}.row-fluid .controls-row [class*="span"]+[class*="span"]{margin-left:2.1276595744681%}[class*="span"].hide,.row-fluid [class*="span"].hide{display:none}[class*="span"].pull-right,.row-fluid [class*="span"].pull-right{float:right}.container{margin-right:auto;margin-left:auto;*zoom:1}.container:before,.container:after{display:table;content:"";line-height:0}.container:after{clear:both}p{margin:0 0 10px}.lead{margin-bottom:20px;font-size:21px;font-weight:200;line-height:30px}strong{font-weight:700}h1,h2,h3,h4,h5,h6{margin:10px 0;font-family:open Sans;font-weight:100;line-height:20px;color:#4d4c50;text-rendering:optimizelegibility}h1,h2,h3{line-height:40px}h1{font-size:38.5px}h2{font-size:31.5px}h3{font-size:24.5px}h4{font-size:17.5px}h5{font-size:14px}.page-header{padding-bottom:9px;margin:20px 0 30px;border-bottom:1px solid #eee}ul,ol{padding:0;margin:0 0 10px 25px}ul ul,ul ol,ol ol,ol ul{margin-bottom:0}li{line-height:20px}ul.inline,ol.inline{margin-left:0;list-style:none}hr{margin:20px 0;border:0;border-top:1px solid #eee;border-bottom:1px solid #fff}code,pre{padding:0 3px 2px;font-family:Monaco,Menlo,Consolas,Courier New,monospace;font-size:12px;color:#333;-webkit-border-radius:3px;-moz-border-radius:3px;border-radius:3px}code{padding:2px 4px;color:#d14;background-color:#f7f7f9;border:1px solid #e1e1e8;white-space:nowrap}pre{display:block;padding:9.5px;margin:0 0 10px;font-size:13px;line-height:20px;word-break:break-all;word-wrap:break-word;white-space:pre;white-space:pre-wrap;background-color:#f5f5f5;border:1px solid #ccc;border:1px solid rgba(0,0,0,0.15);-webkit-border-radius:4px;-moz-border-radius:4px;border-radius:4px}.radio,.checkbox{min-height:20px;padding-left:20px}.radio input[type="radio"],.checkbox input[type="checkbox"]{float:left;margin-left:-20px}.controls-row [class*="span"]+[class*="span"]{margin-left:20px}.controls-row .checkbox[class*="span"],.controls-row .radio[class*="span"]{padding-top:5px}.control-group.warning .checkbox,.control-group.warning .radio,.control-group.warning input,.control-group.warning select,.control-group.warning textarea{color:#c09853}.control-group.error .checkbox,.control-group.error .radio,.control-group.error input,.control-group.error select,.control-group.error textarea{color:#b94a48}.control-group.success .checkbox,.control-group.success .radio,.control-group.success input,.control-group.success select,.control-group.success textarea{color:#468847}.control-group.info .checkbox,.control-group.info .radio,.control-group.info input,.control-group.info select,.control-group.info textarea{color:#236dad}.form-search .hide,.form-inline .hide,.form-horizontal .hide{display:none}.form-search .radio,.form-search .checkbox,.form-inline .radio,.form-inline .checkbox{padding-left:0;margin-bottom:0;vertical-align:middle}.form-search .radio input[type="radio"],.form-search .checkbox input[type="checkbox"],.form-inline .radio input[type="radio"],.form-inline .checkbox input[type="checkbox"]{float:left;margin-right:3px;margin-left:0}table{max-width:100%;background-color:transparent;border-collapse:collapse;border-spacing:0}.table{width:100%;margin-bottom:20px}.table th,.table td{padding:8px;line-height:20px;text-align:left;vertical-align:top;border-top:1px solid #3a87ad}.table th{font-weight:700}.table thead th{vertical-align:bottom}.table caption+thead tr:first-child th,.table caption+thead tr:first-child td,.table colgroup+thead tr:first-child th,.table colgroup+thead tr:first-child td,.table thead:first-child tr:first-child th,.table thead:first-child tr:first-child td{border-top:0}.table tbody+tbody{border-top:2px solid #3a87ad}.table .table{background-color:#fff}.table-striped tbody>tr:nth-child(odd)>td,.table-striped tbody>tr:nth-child(odd)>th{background-color:#f9f9f9}table td[class*="span"],table th[class*="span"],.row-fluid table td[class*="span"],.row-fluid table th[class*="span"]{display:table-cell;float:none;margin-left:0}.table td.span1,.table th.span1{float:none;width:44px;margin-left:0}.table td.span2,.table th.span2{float:none;width:124px;margin-left:0}.table td.span3,.table th.span3{float:none;width:204px;margin-left:0}.table td.span4,.table th.span4{float:none;width:284px;margin-left:0}.table td.span5,.table th.span5{float:none;width:364px;margin-left:0}.table td.span6,.table th.span6{float:none;width:444px;margin-left:0}.table td.span7,.table th.span7{float:none;width:524px;margin-left:0}.table td.span8,.table th.span8{float:none;width:604px;margin-left:0}.table td.span9,.table th.span9{float:none;width:684px;margin-left:0}.table td.span10,.table th.span10{float:none;width:764px;margin-left:0}.table td.span11,.table th.span11{float:none;width:844px;margin-left:0}.table td.span12,.table th.span12{float:none;width:924px;margin-left:0}.table tbody tr.success>td{background-color:#eff7eb}.table tbody tr.error>td{background-color:#faf2f2}.table tbody tr.warning>td{background-color:#fcf8e3}.table tbody tr.info>td{background-color:#f3f9fc}.dropdown-toggle{*margin-bottom:-3px}.dropdown-toggle:active,.open .dropdown-toggle{outline:0}.btn{display:inline-block;*display:inline;*zoom:1;padding:4px 12px;margin-bottom:0;font-size:14px;line-height:20px;text-align:center;vertical-align:middle;cursor:pointer;color:#333;text-shadow:0 1px 1px rgba(255,255,255,0.75);background-color:#f0f0f0;background-image:-moz-linear-gradient(top,#e6e6e6,#fff);background-image:-webkit-gradient(linear,0 0,0 100%,from(#e6e6e6),to(#fff));background-image:-webkit-linear-gradient(top,#e6e6e6,#fff);background-image:-o-linear-gradient(top,#e6e6e6,#fff);background-image:linear-gradient(to bottom,#e6e6e6,#fff);background-repeat:repeat-x;filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#ffe6e6e6',endColorstr='#ffffffff',GradientType=0);border-color:#fff #fff #d9d9d9;border-color:rgba(0,0,0,0.1) rgba(0,0,0,0.1) rgba(0,0,0,0.25);*background-color:#fff;filter:progid:DXImageTransform.Microsoft.gradient(enabled = false);border:1px solid #ccc;*border:0;border-bottom-color:#b3b3b3;-webkit-border-radius:4px;-moz-border-radius:4px;border-radius:4px;*margin-left:.3em;-webkit-box-shadow:inset 0 1px 0 rgba(255,255,255,.2),0 1px 2px rgba(0,0,0,.05);-moz-box-shadow:inset 0 1px 0 rgba(255,255,255,.2),0 1px 2px rgba(0,0,0,.05);box-shadow:inset 0 1px 0 rgba(255,255,255,.2),0 1px 2px rgba(0,0,0,.05)}.btn:hover,.btn:focus,.btn:active,.btn.active,.btn.disabled,.btn[disabled]{color:#333;background-color:#fff;*background-color:#f2f2f2}.btn:active,.btn.active{background-color:#e6e6e6 \9}.btn:first-child{*margin-left:0}.btn:hover,.btn:focus{color:#333;text-decoration:none;background-position:0 -15px;-webkit-transition:background-position .1s linear;-moz-transition:background-position .1s linear;-o-transition:background-position .1s linear;transition:background-position .1s linear}.btn:focus{outline:thin dotted #333;outline:5px auto -webkit-focus-ring-color;outline-offset:-2px}.btn.active,.btn:active{background-image:none;outline:0;-webkit-box-shadow:inset 0 2px 4px rgba(0,0,0,.15),0 1px 2px rgba(0,0,0,.05);-moz-box-shadow:inset 0 2px 4px rgba(0,0,0,.15),0 1px 2px rgba(0,0,0,.05);box-shadow:inset 0 2px 4px rgba(0,0,0,.15),0 1px 2px rgba(0,0,0,.05)}.btn.disabled,.btn[disabled]{cursor:default;background-image:none;opacity:.65;filter:alpha(opacity=65);-webkit-box-shadow:none;-moz-box-shadow:none;box-shadow:none}.btn-mini [class^="icon-"],.btn-mini [class*=" icon-"]{margin-top:-1px}.btn-mini{padding:0 6px;font-size:10.5px;-webkit-border-radius:3px;-moz-border-radius:3px;border-radius:3px}.btn-group .dropdown-toggle:active,.btn-group.open .dropdown-toggle{outline:0}.btn-group.open .dropdown-toggle{background-image:none;-webkit-box-shadow:inset 0 2px 4px rgba(0,0,0,.15),0 1px 2px rgba(0,0,0,.05);-moz-box-shadow:inset 0 2px 4px rgba(0,0,0,.15),0 1px 2px rgba(0,0,0,.05);box-shadow:inset 0 2px 4px rgba(0,0,0,.15),0 1px 2px rgba(0,0,0,.05)}.alert{padding:8px 35px 8px 14px;margin-bottom:20px;text-shadow:0 1px 0 rgba(255,255,255,0.5);background-color:#fcf8e3;border:1px solid #fcf8e3;-webkit-border-radius:4px;-moz-border-radius:4px;border-radius:4px}.alert,.alert h4{color:#c09853}.nav{margin-left:0;margin-bottom:20px;list-style:none}.nav li+.nav-header{margin-top:9px}.nav .dropdown-toggle .caret{border-top-color:#2362ad;border-bottom-color:#2362ad;margin-top:6px}.nav .dropdown-toggle:hover .caret,.nav .dropdown-toggle:focus .caret{border-top-color:#163e6d;border-bottom-color:#163e6d}.nav-tabs .dropdown-toggle .caret{margin-top:8px}.nav .active .dropdown-toggle .caret{border-top-color:#fff;border-bottom-color:#fff}.nav-tabs .active .dropdown-toggle .caret{border-top-color:#555;border-bottom-color:#555}.nav-tabs .open .dropdown-toggle,.nav-pills .open .dropdown-toggle,.nav>li.dropdown.open.active>a:hover,.nav>li.dropdown.open.active>a:focus{color:#fff;background-color:#999;border-color:#999}.nav li.dropdown.open .caret,.nav li.dropdown.open.active .caret,.nav li.dropdown.open a:hover .caret,.nav li.dropdown.open a:focus .caret{border-top-color:#fff;border-bottom-color:#fff;opacity:1;filter:alpha(opacity=100)}.tabbable{*zoom:1}.tabbable:before,.tabbable:after{display:table;content:"";line-height:0}.tabbable:after{clear:both}.tab-content{overflow:auto}.tab-content>.tab-pane,.pill-content>.pill-pane{display:none}.tab-content>.active,.pill-content>.active{display:block}.navbar-form input,.navbar-form select,.navbar-form .radio,.navbar-form .checkbox{margin-top:5px}.navbar .nav{position:relative;left:0;display:block;float:left;margin:0 10px 0 0}.navbar .nav .dropdown-toggle .caret{margin-top:8px}.navbar .nav li.dropdown>a:hover .caret,.navbar .nav li.dropdown>a:focus .caret{border-top-color:#333;border-bottom-color:#333}.navbar .nav li.dropdown.open>.dropdown-toggle,.navbar .nav li.dropdown.active>.dropdown-toggle,.navbar .nav li.dropdown.open.active>.dropdown-toggle{background-color:#e5e5e5;color:#555}.navbar .nav li.dropdown>.dropdown-toggle .caret{border-top-color:#777;border-bottom-color:#777}.navbar .nav li.dropdown.open>.dropdown-toggle .caret,.navbar .nav li.dropdown.active>.dropdown-toggle .caret,.navbar .nav li.dropdown.open.active>.dropdown-toggle .caret{border-top-color:#555;border-bottom-color:#555}.navbar-inverse .nav .active>a,.navbar-inverse .nav .active>a:hover,.navbar-inverse .nav .active>a:focus{color:#fff;background-color:#111}.navbar-inverse .nav li.dropdown.open>.dropdown-toggle,.navbar-inverse .nav li.dropdown.active>.dropdown-toggle,.navbar-inverse .nav li.dropdown.open.active>.dropdown-toggle{background-color:#111;color:#fff}.navbar-inverse .nav li.dropdown>a:hover .caret,.navbar-inverse .nav li.dropdown>a:focus .caret{border-top-color:#fff;border-bottom-color:#fff}.navbar-inverse .nav li.dropdown>.dropdown-toggle .caret{border-top-color:#999;border-bottom-color:#999}.navbar-inverse .nav li.dropdown.open>.dropdown-toggle .caret,.navbar-inverse .nav li.dropdown.active>.dropdown-toggle .caret,.navbar-inverse .nav li.dropdown.open.active>.dropdown-toggle .caret{border-top-color:#fff;border-bottom-color:#fff}@-webkit-keyframes progress-bar-stripes{from{background-position:40px 0}to{background-position:0 0}}@-moz-keyframes progress-bar-stripes{from{background-position:40px 0}to{background-position:0 0}}@-ms-keyframes progress-bar-stripes{from{background-position:40px 0}to{background-position:0 0}}@-o-keyframes progress-bar-stripes{from{background-position:0 0}to{background-position:40px 0}}@keyframes progress-bar-stripes{from{background-position:40px 0}to{background-position:0 0}}.progress{overflow:hidden;height:20px;margin-bottom:20px;background-color:#f7f7f7;background-image:-moz-linear-gradient(top,#f5f5f5,#f9f9f9);background-image:-webkit-gradient(linear,0 0,0 100%,from(#f5f5f5),to(#f9f9f9));background-image:-webkit-linear-gradient(top,#f5f5f5,#f9f9f9);background-image:-o-linear-gradient(top,#f5f5f5,#f9f9f9);background-image:linear-gradient(to bottom,#f5f5f5,#f9f9f9);background-repeat:repeat-x;filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#fff5f5f5',endColorstr='#fff9f9f9',GradientType=0);-webkit-box-shadow:inset 0 1px 2px rgba(0,0,0,0.1);-moz-box-shadow:inset 0 1px 2px rgba(0,0,0,0.1);box-shadow:inset 0 1px 2px rgba(0,0,0,0.1);-webkit-border-radius:4px;-moz-border-radius:4px;border-radius:4px}.progress .bar{width:0;height:100%;color:#fff;float:left;font-size:12px;text-align:center;text-shadow:0 -1px 0 rgba(0,0,0,0.25);background-color:#0e90d2;background-image:-moz-linear-gradient(top,#149bdf,#0480be);background-image:-webkit-gradient(linear,0 0,0 100%,from(#149bdf),to(#0480be));background-image:-webkit-linear-gradient(top,#149bdf,#0480be);background-image:-o-linear-gradient(top,#149bdf,#0480be);background-image:linear-gradient(to bottom,#149bdf,#0480be);background-repeat:repeat-x;filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#ff149bdf',endColorstr='#ff0480be',GradientType=0);-webkit-box-shadow:inset 0 -1px 0 rgba(0,0,0,0.15);-moz-box-shadow:inset 0 -1px 0 rgba(0,0,0,0.15);box-shadow:inset 0 -1px 0 rgba(0,0,0,0.15);-webkit-box-sizing:border-box;-moz-box-sizing:border-box;box-sizing:border-box;-webkit-transition:width .6s ease;-moz-transition:width .6s ease;-o-transition:width .6s ease;transition:width .6s ease}.progress .bar+.bar{-webkit-box-shadow:inset 1px 0 0 rgba(0,0,0,.15),inset 0 -1px 0 rgba(0,0,0,.15);-moz-box-shadow:inset 1px 0 0 rgba(0,0,0,.15),inset 0 -1px 0 rgba(0,0,0,.15);box-shadow:inset 1px 0 0 rgba(0,0,0,.15),inset 0 -1px 0 rgba(0,0,0,.15)}.progress-danger .bar,.progress .bar-danger{background-color:#dd514c;background-image:-moz-linear-gradient(top,#ee5f5b,#c43c35);background-image:-webkit-gradient(linear,0 0,0 100%,from(#ee5f5b),to(#c43c35));background-image:-webkit-linear-gradient(top,#ee5f5b,#c43c35);background-image:-o-linear-gradient(top,#ee5f5b,#c43c35);background-image:linear-gradient(to bottom,#ee5f5b,#c43c35);background-repeat:repeat-x;filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#ffee5f5b',endColorstr='#ffc43c35',GradientType=0)}.progress-success .bar,.progress .bar-success{background-color:#5eb95e;background-image:-moz-linear-gradient(top,#62c462,#57a957);background-image:-webkit-gradient(linear,0 0,0 100%,from(#62c462),to(#57a957));background-image:-webkit-linear-gradient(top,#62c462,#57a957);background-image:-o-linear-gradient(top,#62c462,#57a957);background-image:linear-gradient(to bottom,#62c462,#57a957);background-repeat:repeat-x;filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#ff62c462',endColorstr='#ff57a957',GradientType=0)}.progress-info .bar,.progress .bar-info{background-color:#4bb1cf;background-image:-moz-linear-gradient(top,#5bc0de,#339bb9);background-image:-webkit-gradient(linear,0 0,0 100%,from(#5bc0de),to(#339bb9));background-image:-webkit-linear-gradient(top,#5bc0de,#339bb9);background-image:-o-linear-gradient(top,#5bc0de,#339bb9);background-image:linear-gradient(to bottom,#5bc0de,#339bb9);background-repeat:repeat-x;filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#ff5bc0de',endColorstr='#ff339bb9',GradientType=0)}.progress-warning .bar,.progress .bar-warning{background-color:#faa732;background-image:-moz-linear-gradient(top,#fbb450,#f89406);background-image:-webkit-gradient(linear,0 0,0 100%,from(#fbb450),to(#f89406));background-image:-webkit-linear-gradient(top,#fbb450,#f89406);background-image:-o-linear-gradient(top,#fbb450,#f89406);background-image:linear-gradient(to bottom,#fbb450,#f89406);background-repeat:repeat-x;filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#fffbb450',endColorstr='#fff89406',GradientType=0)}.pull-right{float:right}.hide{display:none}.show{display:block}.hidden{display:none;visibility:hidden}@media (min-width:1200px){[class*="span"]{float:left;min-height:1px;margin-left:30px}.container,.navbar-static-top .container,.navbar-fixed-top .container,.navbar-fixed-bottom .container{width:1170px}.span12{width:1170px}.row-fluid .controls-row [class*="span"]+[class*="span"]{margin-left:2.5641025641026%}.controls-row [class*="span"]+[class*="span"]{margin-left:30px}}@media (min-width:768px) and (max-width:979px){[class*="span"]{float:left;min-height:1px;margin-left:20px}.container,.navbar-static-top .container,.navbar-fixed-top .container,.navbar-fixed-bottom .container{width:724px}.span12{width:724px}.row-fluid .controls-row [class*="span"]+[class*="span"]{margin-left:2.7624309392265%}.controls-row [class*="span"]+[class*="span"]{margin-left:20px}}@media (max-width:767px){body{padding-left:20px;padding-right:20px}.container{width:auto}.span12,.row-fluid .span12{width:100%;-webkit-box-sizing:border-box;-moz-box-sizing:border-box;box-sizing:border-box}.controls-row [class*="span"]+[class*="span"]{margin-left:0}}@media (max-width:979px){body{padding-top:0}.nav-collapse .nav{float:none;margin:0 0 10px}.nav-collapse .nav .nav-header{color:#777;text-shadow:none}}a:active,a:focus,:active,:focus,.btn:hover,.btn:focus /* cancel link dotted border for firefox*/{outline:none;outline-offset:0}.page-header{padding-bottom:5px;border-bottom:1px solid #ddd;margin-bottom:18px;font-size:36px;font-weight:400}.container.front{background-color:#fff}.nav > li.pinkbloc.active > a,.nav > li.pinkbloc > a:hover,.nav > li.pinkbloc > a:active{background:#EB2C7C;color:#fff}.nav .pinkbloc.active a.dropdown-toggle .caret,.nav .pinkbloc a.dropdown-toggle:hover .caret,.nav .pinkbloc a.dropdown-toggle:active .caret{border-bottom-color:#fff;border-top-color:#fff}#blocuser.nav-tabs .open .dropdown-toggle,#blocuser.nav-pills .open .dropdown-toggle,#blocuser.nav > li.dropdown.open.active > a:hover,#blocuser.nav > li.dropdown.open.active > a:focus,#blocuser > li > a:hover,#blocuser > li > a:focus,#blocuser > li > a:active{color:#2362AD;background:#fff;text-decoration:none}.nav{list-style:none}.nav-pills .active .dropdown-toggle .caret{opacity:.9;border-top-color:#fff;border-bottom-color:#fff}.submenu_left .nav{margin-bottom:0}.content-box{border:0;border-radius:0}.twitbloc a[href^="http://"]:after,.twitbloc a[href^="https://"]:after{content:""}.form-horizontal .error .controls,.alert.alert-error,.alert-error{background:#FAF2F2;border:none}h1,h2,h3,h4,h5,h6{margin-top:30px}h2.page-header,.h2{font-size:31.5px}h1,.h1{font-size:36px;line-height:36px;margin-bottom:18px}a[href^="http://"]:after,a[href^="https://"]:after{content:"\e164";display:inline-block;font-family:'Glyphicons Halflings';font-size:50%;font-style:normal;font-weight:400;line-height:inherit;opacity:.8;padding-left:2px;padding-top:0;position:relative;vertical-align:top}.3deffect{text-shadow:1px 1px 1px rgba(127,127,127,0.3)}.form-horizontal p.error{line-height:20px;padding:0}.control-group.error label.checkbox{color:#B94A48}.error .checkbox input[type="checkbox"]{box-shadow:0 0 6px #B94A48}textarea.expand,input.expand,select.expand{width:100%}@-moz-keyframes spin{from{-moz-transform:rotate(0deg)}to{-moz-transform:rotate(360deg)}}@-webkit-keyframes spin{from{-webkit-transform:rotate(0deg)}to{-webkit-transform:rotate(360deg)}}@keyframes spin{from{transform:rotate(0deg)}to{transform:rotate(360deg)}}.error{color:#B94A48}.control-group.error input,.control-group.error select,.control-group.error textarea,.error input,.error select,.error textarea{border-color:#B94A48;-webkit-box-shadow:inset 0 1px 1px rgba(233,50,45,0.075);-moz-box-shadow:inset 0 1px 1px rgba(233,50,45,0.075);box-shadow:inset 0 1px 1px rgba(233,50,45,0.075)}.success{color:#468847}.success input,.success select,.success textarea{border-color:#468847;-webkit-box-shadow:inset 0 1px 1px rgba(0,0,0,0.075);-moz-box-shadow:inset 0 1px 1px rgba(0,0,0,0.075);box-shadow:inset 0 1px 1px rgba(0,0,0,0.075)}.success input:focus,.success select:focus,.success textarea:focus{border-color:#356635;-webkit-box-shadow:inset 0 1px 1px rgba(0,0,0,0.075),0 0 6px #7aba7b;-moz-box-shadow:inset 0 1px 1px rgba(0,0,0,0.075),0 0 6px #7aba7b;box-shadow:inset 0 1px 1px rgba(0,0,0,0.075),0 0 6px #7aba7b}.table tbody tr.info > td{background:rgba(224,233,255,0.2);border-top:1px solid #E0E9FF;border-bottom:1px solid #E0E9FF}table{max-width:100%;background-color:transparent;border-collapse:collapse;border-spacing:0}table td.option{padding-left:35px}table th,table td,table.table th,table.table td{text-align:left;vertical-align:top;border-top:1px solid #ddd;padding:8px 3px;line-height:20px}table th,table.table th{line-height:30px}table.rowspan-striped .odd{border-top:1px solid #DDD;background:#f9f9f9}.table th.text-right,.table td.text-right,.admin .table td.text-right{text-align:right}.table th.text-center,.table td.text-center{text-align:center}.table th.text-left,.table td.text-left{text-align:left}table.table td.nobordercell,table.table th.nobordercell{border-top:none}table.table td.vcenter,table.table th.vcenter{vertical-align:middle}.table td.centered_contents,.table th.centered_contents,.centered_contents{text-align:center}div.api_doc{margin-bottom:40px}.api_doc table{border:1px solid #f5f5f5}.api_doc ol>li{margin-bottom:20px}#api_examples h4{margin-top:30px}#api_examples pre{max-height:300px;overflow:auto}.planetapi_row{display:block;font-size:12px;clear:both}.planetapi_row h4{font-size:14px}@media (max-width: 767px){body{position:relative}h1,h2,h3,h4,h5,h6{margin-top:10px}.navphone .open .dropdown-toggle,.navphone .open .dropdown-toggle .caret,.navphone .dropdown-toggle:hover,.navphone .dropdown-toggle:hover .caret,.navphone .dropdown-toggle:active,.navphone .dropdown-toggle:focus{background:#999;color:#efefef}.navphone .pinkbloc .dropdown-toggle:hover .caret{background:#EB2C7C}}ol.tt-dropdown-menu li a[href^="http://"],ol.tt-dropdown-menu li a[href^="https://"]{color:#0093D3;position:relative;display:inline-block}ol.tt-dropdown-menu li a[href^="http://"]:after,ol.tt-dropdown-menu li a[href^="https://"]:after{position:absolute;left:2px;top:2px}
      .planetapi_row{display:block;clear:both}.planetapi_operation{margin-bottom:10px}.planetapi_parameter_required{font-weight:600}.planetapi_operation_signature{background-color:#f5f5f5;cursor:pointer;padding:0;height:40px;line-height:40px}.planetapi_operation_signature h4{display:inline-block;margin:0;height:40px;line-height:40px;padding-right:20px;zoom:1}.planetapi_operation_signature h4 span{color:#fff;font-weight:300;display:inline-block;width:70px;padding:0 20px;margin-right:20px}.planetapi_operation_GET .planetapi_operation_signature,.planetapi_parameter_GET{color:#163E6D}.planetapi_operation_GET .planetapi_operation_signature{background-color:#c6eEfD}.planetapi_operation_GET h4 span{background-color:#163E6D}.planetapi_operation_GET .planetapi_operation_full{border-color:#163E6D}.planetapi_operation_POST .planetapi_operation_signature,.planetapi_parameter_POST{color:#E50068}.planetapi_operation_POST .planetapi_operation_signature{background-color:#ffe0f8}.planetapi_operation_POST h4 span{background-color:#E50068}.planetapi_operation_POST .planetapi_operation_full{border-color:#E50068}.planetapi_operation_PUT .planetapi_operation_signature,.planetapi_parameter_PUT{color:#5a3}.planetapi_operation_PUT .planetapi_operation_signature{background-color:#efe}.planetapi_operation_PUT h4 span{background-color:#5a3}.planetapi_operation_DELETE .planetapi_operation_signature,.planetapi_operation_event .planetapi_operation_signature,.planetapi_parameter_DELETE,.planetapi_parameter_event{color:#555}.planetapi_operation_DELETE .planetapi_operation_signature,.planetapi_operation_event .planetapi_operation_signature{background-color:#eee}.planetapi_operation_DELETE h4 span,.planetapi_operation_event h4 span{background-color:#555}.planetapi_operation_DELETE .planetapi_operation_full,.planetapi_operation_event .planetapi_operation_full{border-color:#555}.planetapi_operation_summary{margin-right:20px}.planetapi_operation_full{margin:0 0 20px;padding:0 20px 20px;border:1px solid #eee}.planetapi_block{margin:10px 0 30px}.planetapi_operation h5{font-size:17.5px}.planetapi_schema_placeholder pre{max-height:300px;overflow:auto}.language-button {background-color: #61c297; border-radius: 50px; color: white; padding: 8px 0px; display: inline-block; min-width: 37px; text-align: center; position:absolute; top:20px;right:40px; text-decoration: none !important;}.language-button:hover{ color: white; background-color:#4a9776 ;}
      .menu-api{background-color: #DFE2E7; padding: 26px 0 13px 60px;}
      .nav{display: flex;-ms-flex-wrap: wrap;flex-wrap: wrap;}
      .nav-tabs li {margin-right: 2px;}
      .active-menu span {background: #FFF!important; border-top-right-radius: 15px; border-top-left-radius: 15px;}
      .nav-tabs li span {padding: 13px 40px; font-size: 22px; color: #4f4f4f; cursor: pointer;}
      @media (max-width: 968px) {
        .nav-tabs li span{ padding: 13px;}
        .menu-api{padding: 26px 0 13px 10px;}
      }
    </style>
    <script type="text/javascript">
      var LApi={init:function(e){
        $(".planetapi_operation_full").hide(),
        $(".planetapi_operation_signature").click(function(e){
          $(this).siblings(".planetapi_operation_full").slideToggle()}),
          $("span.planetapi_model").each(function(e){
            var e=$(this).attr("data-model-id");
            $("#planetapi_model_"+e).length?$(this).children("a").click(function(e){
              var e=$(this).parent().attr("data-model-id"),
              a=$("#planetapi_model_"+e).html(),
              l=$(this).parents("p").siblings(".planetapi_schema_placeholder");
              l.hide(),l.html(a),l.slideToggle(),
              $(this).hide()}):$(this).children("span a").hide()}),
              $("p.planetapi_return_value"),
              $("select.planetapi_code_sample_language_select").change(function(e){
                var e=$("option:selected",this).val(),
                a=$(this).parent().parent().children(".planetapi_code_sample_placeholder");
                if(""===e)a.html("");
                else{
                  var l=$("#planetapi_code_sample_"+e).html();
                  a.html(l)}}).change()}
      };
      $(document).ready(function(e){
        $('#world-api').hide();
        LApi.init();
        $(".api_call_example_link").click(function(){
          var e=$(this).attr("data-example-id");
          $("#"+e).slideToggle()
        });

        $('.navbar-each').click(function(){
          $(".navbar-each").removeClass("active-menu");
          $(this).addClass("active-menu");
          var id = $(this).data('id');
          $('#' + id).show();
          if (id == "reseller-api"){
            $('#world-api').hide();
          }else{
            $('#reseller-api').hide();
          }
          return false;
        });
      });
    </script>
  </head>
  <body class="online">
    <div class="container front">
      <div class="span12">
        <div class="tabbable">
          <img src="/api_PH_domain.jpg" alt="PlanetHoster API Logo" title="Logo de API PlanetHoster" width="300" height="253">
          <a href="https://apidoc.planethoster.com/fr/" class="language-button">FR</a>
          <div class="tab-content">
            <h1>PlanetHoster API Documentation</h1>
            <hr>
            <div id="api_base_documentation" class="tab-pane active">
              <div class="api_doc">
                <h2 class="page-header">Implementation details</h2>
                <ul>
                    <li>This documentation is split into GET and POST commands. All available API methods are listed here underneath each category.</li>
                    <li>SSL only: we require that all requests are done over encrypted TLS/SSL connections.</li>
                    <li>Supported HTTP verbs are GET and POST. If your client does not support all HTTP verbs you can overide the verb with <i>X-Http-Method-Override</i> HTTP header.</li>
                    <li>Unless specified otherwise in the method's documentation, all successful API calls return an HTTP code 200 with a JSON object.</li>
                    <li>Errors are returned with an HTTP code 4XX or 5XX, a JSON object with properties "error" (an error message) and "error_code" (optional, an integer).</li>
                    <li>Every string passed to and from the API needs to be UTF-8 encoded. For maximum compatibility, normalize to <a href="https://unicode.org/reports/tr15/" rel="nofollow" title="Unicode Normalization Forms">Unicode Normalization Form C</a> (NFC) before UTF-8 encoding.</li>
                    <li>The API sends ETag headers and supports the <i>If-None-Match</i> header.</li>
                    <li>Unless specified otherwise, all API methods require authentication with <b>api_user</b> and <b>api_key</b></li>
                    <li>When you want to use API, <a href="https://my.planethoster.net/domain-reseller">you must specify a list of IPs</a> that are authorized to use this.</li>
                </ul>
              </div>
            </div>
          </div>
          <div id="api_methods" class="api_doc">
            <ul class="nav nav-tabs menu-api">
              <li class="navbar-each reseller active-menu" data-id="reseller-api"><span>Domain API</span></li>
              <li class="navbar-each" data-id="world-api"><span>World API</span></li>
            </ul>
            <div id="reseller-api">
              <!-- content for Reseller API here -->
              <h2 class="page-header">API methods</h2>
              <p>The Base URL of the Rest API is:</p>
              <pre>https://api.planethoster.net/reseller-api/</pre>
              <hr>
              <h3>Account/Informations</h3>
              <div class="planetapi_resource">
                  <!-- Test API connection  -->
                <div class="planetapi_row planetapi_operation planetapi_operation_GET">
                  <div class="planetapi_row planetapi_operation_signature">
                    <h4 class=""><span>GET</span> /test-connection</h4>
                    <div class="pull-right planetapi_operation_summary">
                        Test API connection
                    </div>
                  </div>

                  <div style="display: none;" class="planetapi_row planetapi_operation_full">
                    <div class="planetapi_block">
                      <p class="lead">Tests the connection to the reseller API, along with the API Key and API User.</p>
                    </div>

                    <pre>
curl -X GET \
  -H "X-API-KEY: XXXXX" \
  -H "X-API-USER: XXXXX" \
  'https://api.planethoster.net/reseller-api/test-connection'
</pre>

                    <div class="planetapi_block">
                      <h5>Return value:</h5>
                      <p class="planetapi_return_value">
                      <pre>
{
 "message": "Connection successful",
 "successful_connection": true
}
</pre>
                      </p>
                      <div class="planetapi_schema_placeholder"></div>
                    </div>

                    <div class="planetapi_block">
                      <h5>Possible JSON error codes:</h5>
                      <div class="planetapi_http_errors">
                        <table class="table table-striped">
                          <thead>
                            <tr>
                              <th class="span2">error_code</th>
                              <th>Reason</th>
                            </tr>
                          </thead>
                          <tbody>
                            <tr>
                              <td>5000</td>
                              <td>No reseller found</td>
                            </tr>
                          </tbody>
                        </table>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="planetapi_resource">
                  <!-- Show TLD Prices  -->
                  <div class="planetapi_row planetapi_operation planetapi_operation_GET">
                      <div class="planetapi_row planetapi_operation_signature">
                          <h4 class=""><span>GET</span> /tld-prices</h4>
                          <div class="pull-right planetapi_operation_summary">
                              Show TLD Prices.
                          </div>
                      </div>

                      <div style="display: none;" class="planetapi_row planetapi_operation_full">
                          <div class="planetapi_block">
                              <p class="lead">Returns domain name prices for registration, renewal and transfer. Also returns whether or not each TLD that we sell supports WHOIS ID Protection, and whether it requires an EPP Code for domain transfer.</p>
                          </div>

                          <pre>
curl -X GET \
  -H "X-API-KEY: XXXXX" \
  -H "X-API-USER: XXXXX" \
  'https://api.planethoster.net/reseller-api/tld-prices'
</pre>
                          <div class="planetapi_block">
                              <h5>Return value:</h5>

                              <p class="planetapi_return_value">
                                  <pre>
{
 "message": "Successfully retrieved prices",
 "tlds": {
   ".fr" {
   "register": "12.09", // register for 1 year, price in USD
   "transfer": "12.09", // transfer, price in USD
   "renew": "12.09", // renew for 1 year, price in USD
   "transfer_requires_epp_code": true,
   "id_protection_supported": false
   },
   //... each TLD that we sell is returned in the format above
 }
}
</pre>
                                                </p>

                                                <div class="planetapi_block">
                                                    <h5>Possible JSON error codes:</h5>
                                                    <div class="planetapi_http_errors">
                                                        <table class="table table-striped">
                                                            <thead>
                                                                <tr>
                                                                    <th class="span2">error_code</th>
                                                                    <th>Reason</th>
                                                                </tr>
                                                            </thead>
                                                            <tbody>
                                                                <tr>
                                                                    <td>5000</td>
                                                                    <td>No reseller found</td>
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </div>

                                                <div class="planetapi_schema_placeholder"></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="planetapi_resource">
                                    <!-- Account information  -->
                                    <div class="planetapi_row planetapi_operation planetapi_operation_GET">
                                        <div class="planetapi_row planetapi_operation_signature">
                                            <h4 class=""><span>GET</span> /account-info</h4>
                                            <div class="pull-right planetapi_operation_summary">
                                                Account information.
                                            </div>
                                        </div>

                                        <div style="display: none;" class="planetapi_row planetapi_operation_full">
                                            <div class="planetapi_block">
                                                <p class="lead">Returns information pertinent to your reseller account.</p>
                                            </div>

                                            <pre>
curl -X GET \
  -H "X-API-KEY: XXXXX" \
  -H "X-API-USER: XXXXX" \
  'https://api.planethoster.net/reseller-api/account-info'
</pre>

                                            <div class="planetapi_block">
                                                <h5>Return value:</h5>

                                                <p class="planetapi_return_value">
                                                    <pre>
{
 "message": "Account information successfully obtained",
 "credit_remaining": "500.00",
 "credit_currency": "USD"
 "num_active_orders": 2,
 "num_active_domains": 2
}
</pre>
                                                </p>

                                                <div class="planetapi_block">
                                                    <h5>Possible JSON error codes:</h5>
                                                    <div class="planetapi_http_errors">
                                                        <table class="table table-striped">
                                                            <thead>
                                                                <tr>
                                                                    <th class="span2">error_code</th>
                                                                    <th>Reason</th>
                                                                </tr>
                                                            </thead>
                                                            <tbody>
                                                                <tr>
                                                                    <td>5000</td>
                                                                    <td>No reseller found</td>
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </div>

                                                <div class="planetapi_schema_placeholder"></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="planetapi_resource">
                                    <!-- Check domain availability  -->
                                    <div class="planetapi_row planetapi_operation planetapi_operation_GET">
                                        <div class="planetapi_row planetapi_operation_signature">
                                            <h4 class=""><span>GET</span> /check-availability</h4>
                                            <div class="pull-right planetapi_operation_summary">
                                                Check domain availability.
                                            </div>
                                        </div>

                                        <div style="display: none;" class="planetapi_row planetapi_operation_full">
                                            <div class="planetapi_block">
                                                <p class="lead">Checks whether a domain name is available to register.</p>
                                            </div>

                                            <pre>
curl -X GET \
  -H "X-API-KEY: XXXXX" \
  -H "X-API-USER: XXXXX" \
  'https://api.planethoster.net/reseller-api/check-availability?sld=my-domain&tld=com'
</pre>

                                            <div class="planetapi_block">
                                                <h5>Parameters:</h5>

                                                <div class="planetapi_parameters">
                                                    <table class="table table-striped">
                                                        <thead>
                                                            <tr>
                                                                <th class="span2">&nbsp;</th>
                                                                <th class="span2">Name</th>
                                                                <th class="span2">Type</th>
                                                                <th>Description</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr>
                                                                <td class="planetapi_parameter_POST">GET</td>
                                                                <td class="planetapi_parameter_required required">sld</td>
                                                                <td>string</td>
                                                                <td>domain name without the Top-Level Domain - example: 'mydomain'</td>
                                                            </tr>
                                                            <tr>
                                                                <td class="planetapi_parameter_POST">GET</td>
                                                                <td class="planetapi_parameter_required required">tld</td>
                                                                <td>string</td>
                                                                <td>TLD without the leading period - example: 'com'</td>
                                                            </tr>
                                                        </tbody>
                                                    </table>

                                                </div>
                                            </div>

                                            <div class="planetapi_block">
                                                <h5>Success Response (non-premium domain available example):</h5>
                                                <p class="planetapi_return_value">
                                                    <pre>
   {
     "available": true,
     "message": "Available",
     "is_premium": true,
     "premium_register_price": "100.00", // registration price for 1 year in USD
     "premium_renew_price": "100.00" // renewal price for 1 year in USD
   }
</pre>
                                                </p>

                                                <h5>Success Response (premium domain available example): :</h5>
                                                <p class="planetapi_return_value">
                                                    <pre>
   {
     "available": true,
     "message": "Available",
     "is_premium": true,
     "premium_register_price": "100.00", // registration price for 1 year in USD
     "premium_renew_price": "100.00" // renewal price for 1 year in USD
   }
</pre>
                                                </p>

                                                <div class="planetapi_block">
                                                    <h5>Possible JSON error codes:</h5>
                                                    <div class="planetapi_http_errors">
                                                        <table class="table table-striped">
                                                            <thead>
                                                                <tr>
                                                                    <th class="span2">error_code</th>
                                                                    <th>Reason</th>
                                                                </tr>
                                                            </thead>
                                                            <tbody>
                                                                <tr>
                                                                    <td>5000</td>
                                                                    <td>No reseller found or Invalid TLD</td>
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </div>

                                                <div class="planetapi_schema_placeholder"></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="planetapi_resource">
                                    <!-- Domain information  -->
                                    <div class="planetapi_row planetapi_operation planetapi_operation_GET">
                                        <div class="planetapi_row planetapi_operation_signature">
                                            <h4 class=""><span>GET</span> /domain-info</h4>
                                            <div class="pull-right planetapi_operation_summary">
                                                Domain information.
                                            </div>
                                        </div>

                                        <div style="display: none;" class="planetapi_row planetapi_operation_full">
                                            <div class="planetapi_block">
                                                <p class="lead">Retrieve information for a domain which you successfully registered or created a transfer order.</p>
                                            </div>

                                            <pre>
curl -X GET \
  -H "X-API-KEY: XXXXX" \
  -H "X-API-USER: XXXXX" \
  'https://api.planethoster.net/reseller-api/domain-info?sld=my-domain&tld=com'
</pre>

                                            <div class="planetapi_block">
                                                <h5>Parameters:</h5>

                                                <div class="planetapi_parameters">
                                                    <table class="table table-striped">
                                                        <thead>
                                                            <tr>
                                                                <th class="span2">&nbsp;</th>
                                                                <th class="span2">Name</th>
                                                                <th class="span2">Type</th>
                                                                <th>Description</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr>
                                                                <td class="planetapi_parameter_POST">GET</td>
                                                                <td class="planetapi_parameter_required required">sld</td>
                                                                <td>string</td>
                                                                <td>domain name without the Top-Level Domain - example: 'mydomain'</td>
                                                            </tr>
                                                            <tr>
                                                                <td class="planetapi_parameter_POST">GET</td>
                                                                <td class="planetapi_parameter_required required">tld</td>
                                                                <td>string</td>
                                                                <td>TLD without the leading period - example: 'com'</td>
                                                            </tr>
                                                        </tbody>
                                                    </table>

                                                </div>
                                            </div>

                                            <div class="planetapi_block">
                                                <h5>Success Response (non-premium domain available example):</h5>
                                                <p class="planetapi_return_value">
                                                    <pre>
   {
     "message": "Domain info successfully obtained",
     "order_id": "1122",
     "is_transfer": false,
     "is_registration": true,
     "registration_date": "2016-01-01", // YYYY-MM-DD
     "expiry_date": "2017-01-01", // not present for domain transfers that haven't been completed
     "registration_status": "Active", // can be "Active", "Pending", "Pending Transfer" or "Cancelled"
     // registration_status_info offers more information about why the registration status is the way it is. Can be one of:
     //   "" (empty string), "transfer_in_progress", "invalid_epp_code", "awaiting_transfer_approval_email_response_from_client"
     //   "awaiting_client_removal_of_id_protection_for_transfer", "awaiting_client_removal_of_transfer_prohibited_status",
     //   "domain_status_prevents_transfer", "awaiting_transfer_approval_from_registry", "transfer_request_expired_or_denied"
     "registration_status_info": "",
     "purchase_status": "Paid", // one of "Paid" or "Unpaid"
     "id_protection": true, // whether or not WHOIS ID protection is enabled for the domain
     "domain_statuses": ["clientTransferProhibited"], // statuses on the domain at the registry. Not always present.
     "transfer_request_status": "Pending", // only present for domain transfers for ICANN tlds. One of "Pending" (waiting for email transfer approval by registrant), "Confirmed" (waiting for registry to approve the transfer), "Denied" (transfer denied), "RegistryApproved" (transfer approved)
     "transfer_request_denied_reason": "" // only present for domain transfers for ICANN tlds, and if the transfer was denied.
     "transfer_request_denied_at": "2016-06-01", // YYYY-MM-DD, only present for domain transfers for ICANN tlds, and if the transfer was denied.
     "transfer_request_confirmed_at": "2016-06-01" // YYYY-MM-DD, only present for domain transfers for ICANN tlds, and if the transfer was confirmed by the registrant by email
   }
</pre>
                                                </p>

                                                <div class="planetapi_block">
                                                    <h5>Possible JSON error codes:</h5>
                                                    <div class="planetapi_http_errors">
                                                        <table class="table table-striped">
                                                            <thead>
                                                                <tr>
                                                                    <th class="span2">error_code</th>
                                                                    <th>Reason</th>
                                                                </tr>
                                                            </thead>
                                                            <tbody>
                                                                <tr>
                                                                    <td>5000</td>
                                                                    <td>No reseller found or Domain not found for given SLD and TLD</td>
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <h3>Get domain details</h3>
                                <div class="planetapi_resource">
                                    <!-- Get Domain Informations  -->
                                    <div class="planetapi_row planetapi_operation planetapi_operation_GET">
                                        <div class="planetapi_row planetapi_operation_signature">
                                            <h4 class=""><span>GET</span> /get-contact-details</h4>
                                            <div class="pull-right planetapi_operation_summary">
                                                Retrieve contact details
                                            </div>
                                        </div>

                                        <div style="display: none;" class="planetapi_row planetapi_operation_full">
                                            <div class="planetapi_block">
                                                <p class="lead">Returns the contact information (WHOIS information) for the active domain name.</p>
                                            </div>

                                            <pre>
curl -X GET \
  -H "X-API-KEY: XXXXX" \
  -H "X-API-USER: XXXXX" \
  'https://api.planethoster.net/reseller-api/get-contact-details?sld=my-domain&tld=com'
</pre>
                                            <div class="planetapi_block">
                                                <h5>Parameters:</h5>

                                                <div class="planetapi_parameters">
                                                    <table class="table table-striped">
                                                        <thead>
                                                            <tr>
                                                                <th class="span2">&nbsp;</th>
                                                                <th class="span2">Name</th>
                                                                <th class="span2">Type</th>
                                                                <th>Description</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr>
                                                                <td class="planetapi_parameter_POST">GET</td>
                                                                <td class="planetapi_parameter_required required">sld</td>
                                                                <td>string</td>
                                                                <td>domain name without the Top-Level Domain - example: 'mydomain'</td>
                                                            </tr>
                                                            <tr>
                                                                <td class="planetapi_parameter_POST">GET</td>
                                                                <td class="planetapi_parameter_required required">tld</td>
                                                                <td>string</td>
                                                                <td>TLD without the leading period - example: 'com'</td>
                                                            </tr>
                                                        </tbody>
                                                    </table>

                                                </div>
                                            </div>

                                            <div class="planetapi_block">
                                                <h5>Success Response (non-premium domain available example):</h5>
                                                <p class="planetapi_return_value">
                                                    <pre>
   {
     "message": "Contact(s) successfully obtained",
     "contacts": [
       {
         "name": 'Ryan Smith',
         "company_name": "",
         "addr": {
           "address1": "123 Melrose Avenue",
           "address2": "",
           "address3": "",
           "city": "Montreal",
           "state": "Quebec",
           "postal_code": "H6W 6W6",
           "country": "CA" // country code
         },
         "phone_number": "15145555555",
         "fax": "",
         "email": "ryansmith@mydomain.com",
         "contact_type": "registrant",
         "phone_extension": "13", // optional, not always returned
         "statuses": ["clientTransferProhibited"], // optional, not always returned
       },
       // ... other contact objects would have different "contact_type" values, if there are other contacts for the returned domain.
     ]
   }
</pre>
                                                </p>

                                                <div class="planetapi_block">
                                                    <h5>Possible JSON error codes:</h5>
                                                    <div class="planetapi_http_errors">
                                                        <table class="table table-striped">
                                                            <thead>
                                                                <tr>
                                                                    <th class="span2">error_code</th>
                                                                    <th>Reason</th>
                                                                </tr>
                                                            </thead>
                                                            <tbody>
                                                                <tr>
                                                                    <td>5000</td>
                                                                    <td>No reseller found or Domain not found for given SLD and TLD</td>
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="planetapi_resource">
                                    <!-- Get NameServers/NS  -->
                                    <div class="planetapi_row planetapi_operation planetapi_operation_GET">
                                        <div class="planetapi_row planetapi_operation_signature">
                                            <h4 class=""><span>GET</span> /get-nameservers</h4>
                                            <div class="pull-right planetapi_operation_summary">
                                                Show nameservers
                                            </div>
                                        </div>

                                        <div style="display: none;" class="planetapi_row planetapi_operation_full">
                                            <div class="planetapi_block">
                                                <p class="lead">Returns the nameservers for a registered domain name. There must be at least 2 existing nameservers associated with a domain name..</p>
                                            </div>

                                            <pre>
curl -X GET \
  -H "X-API-KEY: XXXXX" \
  -H "X-API-USER: XXXXX" \
  'https://api.planethoster.net/reseller-api/get-nameservers?sld=my-domain&tld=com'
</pre>
                                            <div class="planetapi_block">
                                                <h5>Parameters:</h5>

                                                <div class="planetapi_parameters">
                                                    <table class="table table-striped">
                                                        <thead>
                                                            <tr>
                                                                <th class="span2">&nbsp;</th>
                                                                <th class="span2">Name</th>
                                                                <th class="span2">Type</th>
                                                                <th>Description</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr>
                                                                <td class="planetapi_parameter_POST">GET</td>
                                                                <td class="planetapi_parameter_required required">sld</td>
                                                                <td>string</td>
                                                                <td>domain name without the Top-Level Domain - example: 'mydomain'</td>
                                                            </tr>
                                                            <tr>
                                                                <td class="planetapi_parameter_POST">GET</td>
                                                                <td class="planetapi_parameter_required required">tld</td>
                                                                <td>string</td>
                                                                <td>TLD without the leading period - example: 'com'</td>
                                                            </tr>
                                                        </tbody>
                                                    </table>

                                                </div>
                                            </div>

                                            <div class="planetapi_block">
                                                <h5>Success Response (non-premium domain available example):</h5>
                                                <p class="planetapi_return_value">
                                                    <pre>
   {
     "message": "Nameserver(s) successfully obtained",
     "nameservers": [
       { "host": 'ns1.resellersite.com' },
       { "host": 'ns2.resellersite.com' },
       { "host": 'ns3.resellersite.com' },
     ]
   }
</pre>
                                                </p>

                                                <div class="planetapi_block">
                                                    <h5>Possible JSON error codes:</h5>
                                                    <div class="planetapi_http_errors">
                                                        <table class="table table-striped">
                                                            <thead>
                                                                <tr>
                                                                    <th class="span2">error_code</th>
                                                                    <th>Reason</th>
                                                                </tr>
                                                            </thead>
                                                            <tbody>
                                                                <tr>
                                                                    <td>5000</td>
                                                                    <td>No reseller found or Domain not found for given SLD and TLD</td>
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="planetapi_resource">
                                    <!-- Get DNS Zone  -->
                                    <div class="planetapi_row planetapi_operation planetapi_operation_GET">
                                        <div class="planetapi_row planetapi_operation_signature">
                                            <h4 class=""><span>GET</span> /get-ph-dns-records</h4>
                                            <div class="pull-right planetapi_operation_summary">
                                                Show PlanetHoster DNS records
                                            </div>
                                        </div>

                                        <div style="display: none;" class="planetapi_row planetapi_operation_full">
                                            <div class="planetapi_block">
                                                <p class="lead">Retrieves the DNS records for the active domain name registered with PlanetHoster that has at least 1 PlanetHoster nameserver (one of nsa.planethoster.net, nsb.planethoster, nsc.planethoster.net).</p>
                                            </div>
                                            <pre>
curl -X GET \
  -H "X-API-KEY: XXXXX" \
  -H "X-API-USER: XXXXX" \
  'https://api.planethoster.net/reseller-api/get-ph-dns-records?sld=my-domain&tld=com'
</pre>
                                            <div class="planetapi_block">
                                                <h5>Parameters:</h5>

                                                <div class="planetapi_parameters">
                                                    <table class="table table-striped">
                                                        <thead>
                                                            <tr>
                                                                <th class="span2">&nbsp;</th>
                                                                <th class="span2">Name</th>
                                                                <th class="span2">Type</th>
                                                                <th>Description</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr>
                                                                <td class="planetapi_parameter_POST">GET</td>
                                                                <td class="planetapi_parameter_required required">sld</td>
                                                                <td>string</td>
                                                                <td>domain name without the Top-Level Domain - example: 'mydomain'</td>
                                                            </tr>
                                                            <tr>
                                                                <td class="planetapi_parameter_POST">GET</td>
                                                                <td class="planetapi_parameter_required required">tld</td>
                                                                <td>string</td>
                                                                <td>TLD without the leading period - example: 'com'</td>
                                                            </tr>
                                                        </tbody>
                                                    </table>

                                                </div>
                                            </div>

                                            <div class="planetapi_block">
                                                <h5>Success Response:</h5>
                                                <p class="planetapi_return_value">
                                                    <pre>
   {
     "message": "DNS zone found on PlanetHoster nameserver(s)",
     "records": [
       {
         "type": "A", // can be "A", "AAAA" (for IPv6 IP addresses), "CNAME", "MX", "MXE" or "TXT"
         "hostname": "mydomain.com",
         "address": "199.188.199.21", // the IP address with which the hostname is associated
       },
       // etc...
     ]
   }
</pre>
                                                </p>

                                                <div class="planetapi_block">
                                                    <h5>Possible JSON error codes:</h5>
                                                    <div class="planetapi_http_errors">
                                                        <table class="table table-striped">
                                                            <thead>
                                                                <tr>
                                                                    <th class="span2">error_code</th>
                                                                    <th>Reason</th>
                                                                </tr>
                                                            </thead>
                                                            <tbody>
                                                                <tr>
                                                                    <td>5000</td>
                                                                    <td>No reseller found or Domain not found for given SLD and TLD or DNS zone doesn't exist on PlanetHoster nameserver(s)</td>
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="planetapi_resource">
                                    <!-- Show lock status  -->
                                    <div class="planetapi_row planetapi_operation planetapi_operation_GET">
                                        <div class="planetapi_row planetapi_operation_signature">
                                            <h4 class=""><span>GET</span> /get-registrar-lock</h4>
                                            <div class="pull-right planetapi_operation_summary">
                                                Show lock status
                                            </div>
                                        </div>

                                        <div style="display: none;" class="planetapi_row planetapi_operation_full">
                                            <div class="planetapi_block">
                                                <p class="lead">Get the lock status of a registered domain name. If a domain is locked, it means that it cannot be transferred. It must be unlocked before it can be transferred from PlanetHoster to another domain name registrar. See save-registrar-lock for more info.</p>
                                            </div>

                                            <pre>
curl -X GET \
  -H "X-API-KEY: XXXXX" \
  -H "X-API-USER: XXXXX" \
  'https://api.planethoster.net/reseller-api/get-registrar-lock?sld=my-domain&tld=com'
</pre>
                                            <div class="planetapi_block">
                                                <h5>Parameters:</h5>

                                                <div class="planetapi_parameters">
                                                    <table class="table table-striped">
                                                        <thead>
                                                            <tr>
                                                                <th class="span2">&nbsp;</th>
                                                                <th class="span2">Name</th>
                                                                <th class="span2">Type</th>
                                                                <th>Description</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr>
                                                                <td class="planetapi_parameter_POST">GET</td>
                                                                <td class="planetapi_parameter_required required">sld</td>
                                                                <td>string</td>
                                                                <td>domain name without the Top-Level Domain - example: 'mydomain'</td>
                                                            </tr>
                                                            <tr>
                                                                <td class="planetapi_parameter_POST">GET</td>
                                                                <td class="planetapi_parameter_required required">tld</td>
                                                                <td>string</td>
                                                                <td>TLD without the leading period - example: 'com'</td>
                                                            </tr>
                                                        </tbody>
                                                    </table>

                                                </div>
                                            </div>

                                            <div class="planetapi_block">
                                                <h5>Success Response:</h5>
                                                <p class="planetapi_return_value">
                                                    <pre>
   {
     "message": "Lock status successfully obtained",
     "is_locked": true
   }
</pre>
                                                </p>
                                                <div class="planetapi_block">
                                                    <h5>Possible JSON error codes:</h5>
                                                    <div class="planetapi_http_errors">
                                                        <table class="table table-striped">
                                                            <thead>
                                                                <tr>
                                                                    <th class="span2">error_code</th>
                                                                    <th>Reason</th>
                                                                </tr>
                                                            </thead>
                                                            <tbody>
                                                                <tr>
                                                                    <td>5000</td>
                                                                    <td>No reseller found or Domain not found for given SLD and TLD or DNS zone doesn't exist on PlanetHoster nameserver(s)</td>
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <h3>Save/modify domain info</h3>
                                <div class="planetapi_resource">
                                    <!-- Save information contact  -->
                                    <div class="planetapi_row planetapi_operation planetapi_operation_POST">
                                        <div class="planetapi_row planetapi_operation_signature">
                                            <h4 class=""><span>POST</span> /save-contact-details</h4>
                                            <div class="pull-right planetapi_operation_summary">
                                                Change contact details
                                            </div>
                                        </div>

                                        <div style="display: none;" class="planetapi_row planetapi_operation_full">
                                            <div class="planetapi_block">
                                                <p class="lead"> Saves the contact information (WHOIS information) for the given active domain name.</p>
                                            </div>

                                            <pre>
curl -X POST \
  -H "X-API-KEY: XXXXX" \
  -H "X-API-USER: XXXXX" \
  -H "Content-Type: application/json" \
  -d '{"registrant_address1": "123 Cherry Hill", "registrant_city": "Laval", "registrant_company_name": ...}' \
  'https://api.planethoster.net/reseller-api/save-contact-details'</pre>
                                            <div class="planetapi_block">
                                                <h5>Parameters:</h5>

                                                <div class="planetapi_parameters">
                                                    <table class="table table-striped">
                                                        <thead>
                                                            <tr>
                                                                <th class="span2">&nbsp;</th>
                                                                <th class="span2">Name</th>
                                                                <th class="span2">Type</th>
                                                                <th>Description</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr>
                                                                <td class="planetapi_parameter_POST">POST</td>
                                                                <td class="planetapi_parameter_required required">sld</td>
                                                                <td>string</td>
                                                                <td>domain name without the Top-Level Domain - example: 'mydomain'</td>
                                                            </tr>
                                                            <tr>
                                                                <td class="planetapi_parameter_POST">POST</td>
                                                                <td class="planetapi_parameter_required required">tld</td>
                                                                <td>string</td>
                                                                <td>TLD without the leading period - example: 'com'</td>
                                                            </tr>
                                                            <tr>
                                                                <td class="planetapi_parameter_POST">POST</td>
                                                                <td class="planetapi_parameter_required required">registrant_first_name</td>
                                                                <td>string</td>
                                                                <td>first name of domain name Registrant Contact - example: 'Todd'</td>
                                                            </tr>
                                                            <tr>
                                                                <td class="planetapi_parameter_POST">POST</td>
                                                                <td class="planetapi_parameter_required required">registrant_last_name</td>
                                                                <td>string</td>
                                                                <td>last name of domain name Registrant Contact - example: 'Glass'</td>
                                                            </tr>
                                                            <tr>
                                                                <td class="planetapi_parameter_POST">POST</td>
                                                                <td class="planetapi_parameter_required required">registrant_email</td>
                                                                <td>string</td>
                                                                <td>email address of Registrant Contact - example: 'toddglass@gmail.com'</td>
                                                            </tr>
                                                            <tr>
                                                                <td class="planetapi_parameter_POST">POST</td>
                                                                <td class="planetapi_parameter_required required">registrant_company_name</td>
                                                                <td>string</td>
                                                                <td>name of company of organization for which Registrant Contact is registering the domain name. Can be empty if it's for personal use. - example: 'PlanetHoster Inc.'</td>
                                                            </tr>
                                                            <tr>
                                                                <td class="planetapi_parameter_POST">POST</td>
                                                                <td class="planetapi_parameter_required required">registrant_address1</td>
                                                                <td>string</td>
                                                                <td>number and street name of company or primary residence for Registrant Contact - example: '123 Parkway Lane'</td>
                                                            </tr>
                                                            <tr>
                                                                <td class="planetapi_parameter_POST">POST</td>
                                                                <td class="planetapi_parameter_required required">registrant_address2</td>
                                                                <td>string</td>
                                                                <td>number and street name of secondary residence for Registrant Contact. Can be empty.</td>
                                                            </tr>
                                                            <tr>
                                                                <td class="planetapi_parameter_POST">POST</td>
                                                                <td class="planetapi_parameter_required required">registrant_city</td>
                                                                <td>number</td>
                                                                <td>name of city in which Registrant Contact resides - example: 'Montreal'</td>
                                                            </tr>
                                                            <tr>
                                                                <td class="planetapi_parameter_POST">POST</td>
                                                                <td class="planetapi_parameter_required required">registrant_postal_code</td>
                                                                <td></td>
                                                                <td>postal code or ZIP code of Registrant Contact's residence - example: '4444'</td>
                                                            </tr>
                                                            <tr>
                                                                <td class="planetapi_parameter_POST">POST</td>
                                                                <td class="planetapi_parameter_required required">registrant_state</td>
                                                                <td>number</td>
                                                                <td>name of state or province in which Registrant Contact resides - example: 'Quebec'</td>
                                                            </tr>
                                                            <tr>
                                                                <td class="planetapi_parameter_POST">POST</td>
                                                                <td class="planetapi_parameter_required required">registrant_country_code</td>
                                                                <td>string</td>
                                                                <td>2 letter country code of country in which Registrant Contact resides. See [list](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2) - example: 'CA'</td>
                                                            </tr>
                                                            <tr>
                                                                <td class="planetapi_parameter_POST">POST</td>
                                                                <td class="planetapi_parameter_required required">registrant_phone</td>
                                                                <td>string</td>
                                                                <td>phone number including area code '+1.' for Canada or '+33.' for France. With international calling code at the beginning - example: '+1.5145555555'</td>
                                                            </tr>
                                                        </tbody>
                                                    </table>

                                                </div>
                                            </div>

                                            <div class="planetapi_block">
                                                <h5>Success Response (non-premium domain available example):</h5>
                                                <p class="planetapi_return_value">
                                                    <pre>
   {
     "message": "Contact(s) successfully saved",
   }
</pre>
                                                </p>

                                                <div class="planetapi_block">
                                                    <h5>Possible JSON error codes:</h5>
                                                    <div class="planetapi_http_errors">
                                                        <table class="table table-striped">
                                                            <thead>
                                                                <tr>
                                                                    <th class="span2">error_code</th>
                                                                    <th>Reason</th>
                                                                </tr>
                                                            </thead>
                                                            <tbody>
                                                                <tr>
                                                                    <td>5000</td>
                                                                    <td>No reseller found or Domain not found for given SLD and TLD</td>
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="planetapi_resource">
                                    <!-- Save NameServers -->
                                    <div class="planetapi_row planetapi_operation planetapi_operation_POST">
                                        <div class="planetapi_row planetapi_operation_signature">
                                            <h4 class=""><span>POST</span> /save-nameservers</h4>
                                            <div class="pull-right planetapi_operation_summary">
                                                Update Nameservers
                                            </div>
                                        </div>

                                        <div style="display: none;" class="planetapi_row planetapi_operation_full">
                                            <div class="planetapi_block">
                                                <p class="lead">Update nameservers associated with your domain. The nameservers must exist and be valid nameservers.</p>
                                            </div>

                                            <pre>
curl -X POST \
  -H "X-API-KEY: XXXXX" \
  -H "X-API-USER: XXXXX" \
  -H "Content-Type: application/json" \
  -d '{"sld": "my-domain", "tld": "com", "ns1": "nsa.planethoster.net", "ns2": ...}' \
  'https://api.planethoster.net/reseller-api/save-nameservers'
</pre>
                                            <div class="planetapi_block">
                                                <h5>Parameters:</h5>

                                                <div class="planetapi_parameters">
                                                    <table class="table table-striped">
                                                        <thead>
                                                            <tr>
                                                                <th class="span2">&nbsp;</th>
                                                                <th class="span2">Name</th>
                                                                <th class="span2">Type</th>
                                                                <th>Description</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr>
                                                                <td class="planetapi_parameter_POST">POST</td>
                                                                <td class="planetapi_parameter_required required">sld</td>
                                                                <td>string</td>
                                                                <td>domain name without the Top-Level Domain - example: 'mydomain'</td>
                                                            </tr>
                                                            <tr>
                                                                <td class="planetapi_parameter_POST">POST</td>
                                                                <td class="planetapi_parameter_required required">tld</td>
                                                                <td>string</td>
                                                                <td>TLD without the leading period - example: 'com'</td>
                                                            </tr>
                                                            <tr>
                                                                <td class="planetapi_parameter_POST">POST</td>
                                                                <td class="planetapi_parameter_required required">ns1</td>
                                                                <td>string</td>
                                                                <td>primary nameserver for the domain - example: 'ns1.resellersite.com'</td>
                                                            </tr>
                                                            <tr>
                                                                <td class="planetapi_parameter_POST">POST</td>
                                                                <td class="planetapi_parameter">ns2</td>
                                                                <td>string</td>
                                                                <td>secondary nameserver for the domain - example: 'ns2.resellersite.com'</td>
                                                            </tr>
                                                            <tr>
                                                                <td class="planetapi_parameter_POST">POST</td>
                                                                <td class="planetapi_parameter">ns3</td>
                                                                <td>string</td>
                                                                <td>backup nameserver for redundancy purposes - example: 'ns3.resellersite.com'</td>
                                                            </tr>
                                                            <tr>
                                                                <td class="planetapi_parameter_POST">POST</td>
                                                                <td class="planetapi_parameter">ns4</td>
                                                                <td>string</td>
                                                                <td>backup nameserver for redundancy purposes - example: 'ns4.resellersite.com'</td>
                                                            </tr>
                                                            <tr>
                                                                <td class="planetapi_parameter_POST">POST</td>
                                                                <td class="planetapi_parameter">ns5</td>
                                                                <td>string</td>
                                                                <td>backup nameserver for redundancy purposes - example: 'ns5.resellersite.com'</td>
                                                            </tr>
                                                        </tbody>
                                                    </table>

                                                </div>
                                            </div>

                                            <div class="planetapi_block">
                                                <h5>Success Response (non-premium domain available example):</h5>
                                                <p class="planetapi_return_value">
                                                    <pre>
   {
     "message": "Nameserver(s) successfully saved",
   }
</pre>
                                                </p>

                                                <div class="planetapi_block">
                                                    <h5>Possible JSON error codes:</h5>
                                                    <div class="planetapi_http_errors">
                                                        <table class="table table-striped">
                                                            <thead>
                                                                <tr>
                                                                    <th class="span2">error_code</th>
                                                                    <th>Reason</th>
                                                                </tr>
                                                            </thead>
                                                            <tbody>
                                                                <tr>
                                                                    <td>5000</td>
                                                                    <td>No reseller found or Domain not found for given SLD and TLD</td>
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="planetapi_resource">
                                    <!-- Save DNS Zone Records  -->
                                    <div class="planetapi_row planetapi_operation planetapi_operation_POST">
                                        <div class="planetapi_row planetapi_operation_signature">
                                            <h4 class=""><span>POST</span> /save-ph-dns-records</h4>
                                            <div class="pull-right planetapi_operation_summary">
                                                Update PlanetHoster DNS zone
                                            </div>
                                        </div>

                                        <div style="display: none;" class="planetapi_row planetapi_operation_full">
                                            <div class="planetapi_block">
                                                <p class="lead">Saves the DNS records for the active domain name registered with PlanetHoster that has at least 1 PlanetHoster nameserver (one of nsa.planethoster.net, nsb.planethoster, nsc.planethoster.net). If the DNS zone doesn't yet exist on PlanetHoster nameservers, it's created.</p>
                                            </div>

                                            <pre>
curl -X POST \
  -H "X-API-KEY: XXXXX" \
  -H "X-API-USER: XXXXX" \
  -H "Content-Type: application/json" \
  -d '{"sld": "my-domain", "tld": "com", "hostname1": "mydomain.com", "address1": "192.168.0.1", "type1": "A", "priority": ...}' \
  'https://api.planethoster.net/reseller-api/save-ph-dns-records'
</pre>
                                            <div class="planetapi_block">
                                                <h5>Parameters:</h5>

                                                <div class="planetapi_parameters">
                                                    <table class="table table-striped">
                                                        <thead>
                                                            <tr>
                                                                <th class="span2">&nbsp;</th>
                                                                <th class="span2">Name</th>
                                                                <th class="span2">Type</th>
                                                                <th>Description</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr>
                                                                <td class="planetapi_parameter_POST">POST</td>
                                                                <td class="planetapi_parameter_required required">sld</td>
                                                                <td>string</td>
                                                                <td>domain name without the Top-Level Domain - example: 'mydomain'</td>
                                                            </tr>
                                                            <tr>
                                                                <td class="planetapi_parameter_POST">POST</td>
                                                                <td class="planetapi_parameter_required required">tld</td>
                                                                <td>string</td>
                                                                <td>TLD without the leading period - example: 'com'</td>
                                                            </tr>
                                                            <tr>
                                                                <td class="planetapi_parameter_POST">POST</td>
                                                                <td class="planetapi_parameter_required required">hostname1</td>
                                                                <td>string</td>
                                                                <td>hostname with which to associate the DNS record - example: 'mydomain.com'</td>
                                                            </tr>
                                                            <tr>
                                                                <td class="planetapi_parameter_POST">POST</td>
                                                                <td class="planetapi_parameter_required required">address1</td>
                                                                <td>string</td>
                                                                <td>value depends on `type` given. For A and AAAA records, this is the IP address. For CNAME records, this is the canonical name itself. For MX and MXE records, this is the exchange. For TXT records, this is the TXT data. Example: '199.188.199.18'</td>
                                                            </tr>
                                                            <tr>
                                                                <td class="planetapi_parameter_POST">POST</td>
                                                                <td class="planetapi_parameter_required required">type1</td>
                                                                <td>string</td>
                                                                <td>one of 'A', 'AAAA', 'CNAME', 'MX', 'MXE' or 'TXT' - example: 'A'</td>
                                                            </tr>
                                                            <tr>
                                                                <td class="planetapi_parameter_POST">POST</td>
                                                                <td class="planetapi_parameter">priority1</td>
                                                                <td>integer</td>
                                                                <td>priority is for MX and MXE records only - example: '14000'</td>
                                                            </tr>
                                                            <tr>
                                                                <td class="planetapi_parameter_POST">POST</td>
                                                                <td class="planetapi_parameter">hostname2, address2, type2</td>
                                                                <td>string</td>
                                                                <td>one of 'A', 'AAAA', 'CNAME', 'MX', 'MXE' or 'TXT' - example: 'A'</td>
                                                            </tr>
                                                        </tbody>
                                                    </table>

                                                </div>
                                            </div>

                                            <div class="planetapi_block">
                                                <h5>Success Response (non-premium domain available example):</h5>
                                                <p class="planetapi_return_value">
                                                    <pre>
   {
     "message": "Successfully updated DNS record(s)",
   }
</pre>
                                                </p>

                                                <div class="planetapi_block">
                                                    <h5>Possible JSON error codes:</h5>
                                                    <div class="planetapi_http_errors">
                                                        <table class="table table-striped">
                                                            <thead>
                                                                <tr>
                                                                    <th class="span2">error_code</th>
                                                                    <th>Reason</th>
                                                                </tr>
                                                            </thead>
                                                            <tbody>
                                                                <tr>
                                                                    <td>5000</td>
                                                                    <td>No reseller found or "Error creating DNS zone"</td>
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="planetapi_resource">
                                    <!-- Save Registrar Lock  -->
                                    <div class="planetapi_row planetapi_operation planetapi_operation_POST">
                                        <div class="planetapi_row planetapi_operation_signature">
                                            <h4 class=""><span>POST</span> /save-registrar-lock</h4>
                                            <div class="pull-right planetapi_operation_summary">
                                                Update domain lock status
                                            </div>
                                        </div>

                                        <div style="display: none;" class="planetapi_row planetapi_operation_full">
                                            <div class="planetapi_block"> Lock or unlock a registered and active domain name. Locked domains cannot be transferred from PlanetHoster to another domain name registrar without first being unlocked.
                                                <p></p>
                                            </div>

                                            <pre>
curl -X POST \
  -H "X-API-KEY: XXXXX" \
  -H "X-API-USER: XXXXX" \
  -H "Content-Type: application/json" \
  -d '{"sld": "my-domain", "tld": "com", "lock_action": "Lock"}' \
  'https://api.planethoster.net/reseller-api/save-registrar-lock'
</pre>
                                            <div class="planetapi_block">
                                                <h5>Parameters:</h5>

                                                <div class="planetapi_parameters">
                                                    <table class="table table-striped">
                                                        <thead>
                                                            <tr>
                                                                <th class="span2">&nbsp;</th>
                                                                <th class="span2">Name</th>
                                                                <th class="span2">Type</th>
                                                                <th>Description</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr>
                                                                <td class="planetapi_parameter_POST">POST</td>
                                                                <td class="planetapi_parameter_required required">sld</td>
                                                                <td>string</td>
                                                                <td>domain name without the Top-Level Domain - example: 'mydomain'</td>
                                                            </tr>
                                                            <tr>
                                                                <td class="planetapi_parameter_POST">POST</td>
                                                                <td class="planetapi_parameter_required required">tld</td>
                                                                <td>string</td>
                                                                <td>TLD without the leading period - example: 'com'</td>
                                                            </tr>
                                                            <tr>
                                                                <td class="planetapi_parameter_POST">POST</td>
                                                                <td class="planetapi_parameter_required required">lock_action</td>
                                                                <td>string</td>
                                                                <td>one of 'Lock' or 'Unlock' - example: 'Lock'</td>
                                                            </tr>
                                                        </tbody>
                                                    </table>

                                                </div>
                                            </div>

                                            <div class="planetapi_block">
                                                <h5>Success Response (non-premium domain available example):</h5>
                                                <p class="planetapi_return_value">
                                                    <pre>
   {
     "message": "Lock status successfully saved (Locked)",
     "is_locked": true
   }
</pre>
                                                </p>

                                                <div class="planetapi_block">
                                                    <h5>Possible JSON error codes:</h5>
                                                    <div class="planetapi_http_errors">
                                                        <table class="table table-striped">
                                                            <thead>
                                                                <tr>
                                                                    <th class="span2">error_code</th>
                                                                    <th>Reason</th>
                                                                </tr>
                                                            </thead>
                                                            <tbody>
                                                                <tr>
                                                                    <td>5000</td>
                                                                    <td>No reseller found or Domain not found for given SLD and TLD</td>
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <h3>Other</h3>
                                <div class="planetapi_resource">
                                    <!-- Get Email Autinfo  -->
                                    <div class="planetapi_row planetapi_operation planetapi_operation_POST">
                                        <div class="planetapi_row planetapi_operation_signature">
                                            <h4 class=""><span>POST</span> /email-epp-code</h4>
                                            <div class="pull-right planetapi_operation_summary">
                                                Get Authinfo
                                            </div>
                                        </div>

                                        <div style="display: none;" class="planetapi_row planetapi_operation_full">
                                            <div class="planetapi_block">Email the domain name registrant their EPP code (also called Auth Info) for the given domain.
                                                <p></p>
                                            </div>

                                            <pre>
curl -X POST \
  -H "X-API-KEY: XXXXX" \
  -H "X-API-USER: XXXXX" \
  -H "Content-Type: application/json" \
  -d '{"sld": "my-domain", "tld": "com"}' \
  'https://api.planethoster.net/reseller-api/email-epp-code'
</pre>
                                            <div class="planetapi_block">
                                                <h5>Parameters:</h5>

                                                <div class="planetapi_parameters">
                                                    <table class="table table-striped">
                                                        <thead>
                                                            <tr>
                                                                <th class="span2">&nbsp;</th>
                                                                <th class="span2">Name</th>
                                                                <th class="span2">Type</th>
                                                                <th>Description</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr>
                                                                <td class="planetapi_parameter_POST">POST</td>
                                                                <td class="planetapi_parameter_required required">sld</td>
                                                                <td>string</td>
                                                                <td>domain name without the Top-Level Domain - example: 'mydomain'</td>
                                                            </tr>
                                                            <tr>
                                                                <td class="planetapi_parameter_POST">POST</td>
                                                                <td class="planetapi_parameter_required required">tld</td>
                                                                <td>string</td>
                                                                <td>TLD without the leading period - example: 'com'</td>
                                                            </tr>
                                                        </tbody>
                                                    </table>

                                                </div>
                                            </div>

                                            <div class="planetapi_block">
                                                <h5>Success Response (non-premium domain available example):</h5>
                                                <p class="planetapi_return_value">
                                                    <pre>
   {
     "message": "Epp code successfully sent to registrant email",
     "epp_code_sent_to": "admin@mydomain.com"
   }
</pre>
                                                </p>

                                                <div class="planetapi_block">
                                                    <h5>Possible JSON error codes:</h5>
                                                    <div class="planetapi_http_errors">
                                                        <table class="table table-striped">
                                                            <thead>
                                                                <tr>
                                                                    <th class="span2">error_code</th>
                                                                    <th>Reason</th>
                                                                </tr>
                                                            </thead>
                                                            <tbody>
                                                                <tr>
                                                                    <td>5000</td>
                                                                    <td>No reseller found or Domain not found for given SLD and TLD</td>
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="planetapi_resource">
                                    <!-- Register Domain  -->
                                    <div class="planetapi_row planetapi_operation planetapi_operation_POST">
                                        <div class="planetapi_row planetapi_operation_signature">
                                            <h4 class=""><span>POST</span> /register-domain</h4>
                                            <div class="pull-right planetapi_operation_summary">
                                                Register new domain
                                            </div>
                                        </div>

                                        <div style="display: none;" class="planetapi_row planetapi_operation_full">
                                            <div class="planetapi_block">Attempts to register a domain name for 1 to 10 years.
                                                <p></p>
                                            </div>
                                            <pre>
curl -X POST \
  -H "X-API-KEY: XXXXX" \
  -H "X-API-USER: XXXXX" \
  -H "Content-Type: application/json" \
  -d '{"sld": "my-domain", "tld": "com", "period": 1, "ns1": "nsa.planethoster.net", "ns2": "nsb.planethoster.net", ...}' \
  'https://api.planethoster.net/reseller-api/register-domain'
</pre>
                                            <div class="planetapi_block">
                                                <h5>Parameters:</h5>

                                                <div class="planetapi_parameters">
                                                    <table class="table table-striped">
                                                        <thead>
                                                            <tr>
                                                                <th class="span2">&nbsp;</th>
                                                                <th class="span2">Name</th>
                                                                <th class="span2">Type</th>
                                                                <th>Description</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr>
                                                                <td class="planetapi_parameter_POST">POST</td>
                                                                <td class="planetapi_parameter_required required">sld</td>
                                                                <td>string</td>
                                                                <td>domain name without the Top-Level Domain - example: 'mydomain'</td>
                                                            </tr>
                                                            <tr>
                                                                <td class="planetapi_parameter_POST">POST</td>
                                                                <td class="planetapi_parameter_required required">tld</td>
                                                                <td>string</td>
                                                                <td>TLD without the leading period - example: 'com'</td>
                                                            </tr>
                                                            <tr>
                                                                <td class="planetapi_parameter_POST">POST</td>
                                                                <td class="planetapi_parameter_required required">period</td>
                                                                <td>integer</td>
                                                                <td>number of years to register the domain name for, 1 to 10 only. Note that not all TLDs can be registered for up to 10 years, see the `tld-prices` command for more info - example: '1'</td>
                                                            </tr>
                                                            <tr>
                                                                <td class="planetapi_parameter_POST">POST</td>
                                                                <td class="planetapi_parameter_required required">ns1</td>
                                                                <td>string</td>
                                                                <td>existing nameserver to use for DNS lookup of the registered domain - example: 'ns1.resellersite.com'</td>
                                                            </tr>
                                                            <tr>
                                                                <td class="planetapi_parameter_POST">POST</td>
                                                                <td class="planetapi_parameter_required required">ns2</td>
                                                                <td>string</td>
                                                                <td>existing secondary nameserver (for redundancy) to use for DNS lookup of the registered domain - example: 'ns2.resellersite.com'</td>
                                                            </tr>
                                                            <tr>
                                                                <td class="planetapi_parameter_POST">POST</td>
                                                                <td class="planetapi_parameter_required required">id_protection</td>
                                                                <td>boolean</td>
                                                                <td>whether or not to order WHOIS ID protection for this domain name. Note that not all TLDs support ID protection. See `tld-prices` for more info - example: '1'</td>
                                                            </tr>
                                                            <tr>
                                                                <td class="planetapi_parameter_POST">POST</td>
                                                                <td class="planetapi_parameter_required required">registrant_first_name</td>
                                                                <td>string</td>
                                                                <td>first name of domain name Registrant Contact - example: 'Todd'</td>
                                                            </tr>
                                                            <tr>
                                                                <td class="planetapi_parameter_POST">POST</td>
                                                                <td class="planetapi_parameter_required required">registrant_last_name</td>
                                                                <td>string</td>
                                                                <td>last name of domain name Registrant Contact - example: 'Glass'</td>
                                                            </tr>
                                                            <tr>
                                                                <td class="planetapi_parameter_POST">POST</td>
                                                                <td class="planetapi_parameter_required required">registrant_email</td>
                                                                <td>string</td>
                                                                <td>email address of Registrant Contact - example: 'toddglass@gmail.com'</td>
                                                            </tr>
                                                            <tr>
                                                                <td class="planetapi_parameter_POST">POST</td>
                                                                <td class="planetapi_parameter_required required">registrant_company_name</td>
                                                                <td>string</td>
                                                                <td>name of company of organization for which Registrant Contact is registering the domain name. Can be empty if it's for personal use. - example: 'PlanetHoster Inc.'</td>
                                                            </tr>
                                                            <tr>
                                                                <td class="planetapi_parameter_POST">POST</td>
                                                                <td class="planetapi_parameter_required required">registrant_address1</td>
                                                                <td>string</td>
                                                                <td>number and street name of company or primary residence for Registrant Contact - example: '123 Parkway Lane'</td>
                                                            </tr>
                                                            <tr>
                                                                <td class="planetapi_parameter_POST">POST</td>
                                                                <td class="planetapi_parameter_required required">registrant_address2</td>
                                                                <td>string</td>
                                                                <td>number and street name of secondary residence for Registrant Contact. Can be empty.</td>
                                                            </tr>
                                                            <tr>
                                                                <td class="planetapi_parameter_POST">POST</td>
                                                                <td class="planetapi_parameter_required required">registrant_city</td>
                                                                <td>number</td>
                                                                <td>name of city in which Registrant Contact resides - example: 'Montreal'</td>
                                                            </tr>
                                                            <tr>
                                                                <td class="planetapi_parameter_POST">POST</td>
                                                                <td class="planetapi_parameter_required required">registrant_postal_code</td>
                                                                <td></td>
                                                                <td>postal code or ZIP code of Registrant Contact's residence - example: '4444'</td>
                                                            </tr>
                                                            <tr>
                                                                <td class="planetapi_parameter_POST">POST</td>
                                                                <td class="planetapi_parameter_required required">registrant_state</td>
                                                                <td>number</td>
                                                                <td>name of state or province in which Registrant Contact resides - example: 'Quebec'</td>
                                                            </tr>
                                                            <tr>
                                                                <td class="planetapi_parameter_POST">POST</td>
                                                                <td class="planetapi_parameter_required required">registrant_country_code</td>
                                                                <td>string</td>
                                                                <td>2 letter country code of country in which Registrant Contact resides. See [list](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2) - example: 'CA'</td>
                                                            </tr>
                                                            <tr>
                                                                <td class="planetapi_parameter_POST">POST</td>
                                                                <td class="planetapi_parameter_required required">registrant_phone</td>
                                                                <td>string</td>
                                                                <td>phone number including area code with only numeric characters. With or without international calling code at the beginning - example: '5145555555'</td>
                                                            </tr>

                                                            <tr>
                                                                <td class="planetapi_parameter_POST">POST</td>
                                                                <td class="planetapi_parameter">ns3</td>
                                                                <td>string</td>
                                                                <td>existing tertiary (for redundancy) nameserver to use for DNS lookup of the registered domain - example: 'ns3.resellersite.com'</td>
                                                            </tr>
                                                            <tr>
                                                                <td class="planetapi_parameter_POST">POST</td>
                                                                <td class="planetapi_parameter">ns4</td>
                                                                <td>string</td>
                                                                <td>existing nameserver (for redundancy) to use for DNS lookup - example: 'ns4.resellersite.com'</td>
                                                            </tr>
                                                            <tr>
                                                                <td class="planetapi_parameter_POST">POST</td>
                                                                <td class="planetapi_parameter">ns5</td>
                                                                <td>string</td>
                                                                <td>Register the domain name even if it's a premium domain, which could be much more expensive.</td>
                                                            </tr>
                                                            <tr>
                                                                <td class="planetapi_parameter_POST">POST</td>
                                                                <td class="planetapi_parameter">register_if_premium</td>
                                                                <td>boolean</td>
                                                                <td>register the domain name even if it's a premium domain, which could be much more expensive.</td>
                                                            </tr>
                                                            <tr>
                                                                <td class="planetapi_parameter_POST">POST</td>
                                                                <td class="planetapi_parameter">use_planethoster_nameservers</td>
                                                                <td>string</td>
                                                                <td>Only set this to '1' when using 'nsa.planethoster.net', 'nsb.planethoster.net', and 'nsc.planethoster.net' as your ns1, ns2 and ns3 values (ns4 and ns5 should be empty strings in this case). This option creates a DNS zone for the domain name on the nameservers after successful registration.</td>
                                                            </tr>
                                                            <tr>
                                                                <td class="planetapi_parameter_POST">POST</td>
                                                                <td class="planetapi_parameter">admin_first_name, admin_last_name, etc..</td>
                                                                <td>string</td>
                                                                <td>Information for the Administrative Contact (for WHOIS) of the domain</td>
                                                            </tr>
                                                            <tr>
                                                                <td class="planetapi_parameter_POST">POST</td>
                                                                <td class="planetapi_parameter">tech_first_name, tech_last_name, etc..</td>
                                                                <td>string</td>
                                                                <td>Information for the Technical Contact (for WHOIS) of the domain name.</td>
                                                            </tr>
                                                            <tr>
                                                                <td class="planetapi_parameter_POST">POST</td>
                                                                <td class="planetapi_parameter">billing_first_name, billing_last_name, etc..</td>
                                                                <td>string</td>
                                                                <td>Information for the Billing Contact (for WHOIS) of the domain name. Only available for some TLDs.</td>
                                                            </tr>
                                                            <tr>
                                                                <td class="planetapi_parameter_POST">POST</td>
                                                                <td class="planetapi_parameter">addtl_fields</td>
                                                                <td>assoc. array</td>
                                                                <td>associative array (hash map) of key-value pairs that represent additional fields specific for the TLD that is being registered. See the index of available additional fields for each TLD <a href="#additional_fields">here</a>. Note that some additional fields are required!</td>
                                                            </tr>
                                                        </tbody>
                                                    </table>

                                                </div>
                                            </div>

                                            <div class="planetapi_block">
                                                <h5>Success Response (non-premium domain available example):</h5>
                                                <p class="planetapi_return_value">
                                                    <pre>
 {
   "message": "Domain registration order successfully created", // always returned on success
   "order_id": "1112", // always returned on success
   "order_total": "19.95", // always returned on success
   "expiry_date": "2017-01-20", // not always present, depends on the TLD
 }
</pre>
                                                </p>

                                                <div class="planetapi_block">
                                                    <h5>Possible JSON error codes:</h5>
                                                    <div class="planetapi_http_errors">
                                                        <table class="table table-striped">
                                                            <thead>
                                                                <tr>
                                                                    <th class="span2">error_code</th>
                                                                    <th>Reason</th>
                                                                </tr>
                                                            </thead>
                                                            <tbody>
                                                                <tr>
                                                                    <td>5000</td>
                                                                    <td>No reseller found or Domain registration failed - invalid value for parameter 'registrant_country_code'</td>
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="planetapi_resource">
                                    <!-- Renew Domain Name  -->
                                    <div class="planetapi_row planetapi_operation planetapi_operation_POST">
                                        <div class="planetapi_row planetapi_operation_signature">
                                            <h4 class=""><span>POST</span> /renew-domain</h4>
                                            <div class="pull-right planetapi_operation_summary">
                                                Existing domain renewal
                                            </div>
                                        </div>

                                        <div style="display: none;" class="planetapi_row planetapi_operation_full">
                                            <div class="planetapi_block">Renew an already active domain name for 1-10 years.
                                                <p></p>
                                            </div>

                                            <pre>
curl -X POST \
  -H "X-API-KEY: XXXXX" \
  -H "X-API-USER: XXXXX" \
  -H "Content-Type: application/json" \
  -d '{"sld": "my-domain", "tld": "com", "period": 1}' \
  'https://api.planethoster.net/reseller-api/renew-domain'
</pre>
                                            <div class="planetapi_block">
                                                <h5>Parameters:</h5>

                                                <div class="planetapi_parameters">
                                                    <table class="table table-striped">
                                                        <thead>
                                                            <tr>
                                                                <th class="span2">&nbsp;</th>
                                                                <th class="span2">Name</th>
                                                                <th class="span2">Type</th>
                                                                <th>Description</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr>
                                                                <td class="planetapi_parameter_POST">POST</td>
                                                                <td class="planetapi_parameter_required required">sld</td>
                                                                <td>string</td>
                                                                <td>domain name without the Top-Level Domain - example: 'mydomain'</td>
                                                            </tr>
                                                            <tr>
                                                                <td class="planetapi_parameter_POST">POST</td>
                                                                <td class="planetapi_parameter_required required">tld</td>
                                                                <td>string</td>
                                                                <td>TLD without the leading period - example: 'com'</td>
                                                            </tr>
                                                            <tr>
                                                                <td class="planetapi_parameter_POST">POST</td>
                                                                <td class="planetapi_parameter_required required">period</td>
                                                                <td>integer</td>
                                                                <td>Number of years to renew the domain for - example: '1'</td>
                                                            </tr>
                                                        </tbody>
                                                    </table>

                                                </div>
                                            </div>

                                            <div class="planetapi_block">
                                                <h5>Success Response (non-premium domain available example):</h5>
                                                <p class="planetapi_return_value">
                                                    <pre>
   {
     "message": "Domain renewal order created successfully",
     "order_id": "1212",
     "order_total": "9.95"
   }
</pre>
                                                </p>

                                                <div class="planetapi_block">
                                                    <h5>Possible JSON error codes:</h5>
                                                    <div class="planetapi_http_errors">
                                                        <table class="table table-striped">
                                                            <thead>
                                                                <tr>
                                                                    <th class="span2">error_code</th>
                                                                    <th>Reason</th>
                                                                </tr>
                                                            </thead>
                                                            <tbody>
                                                                <tr>
                                                                    <td>5000</td>
                                                                    <td>No reseller found or Domain not found for given SLD and TLD</td>
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="planetapi_resource">
                                    <!-- Transfer Domain  -->
                                    <div class="planetapi_row planetapi_operation planetapi_operation_POST">
                                        <div class="planetapi_row planetapi_operation_signature">
                                            <h4 class=""><span>POST</span> /transfer-domain</h4>
                                            <div class="pull-right planetapi_operation_summary">
                                                Launch transfer domain name
                                            </div>
                                        </div>

                                        <div style="display: none;" class="planetapi_row planetapi_operation_full">
                                            <div class="planetapi_block">
                                                <p>transfer a domain name from your current registrar to us</p>
                                            </div>

                                            <pre>
curl -X POST \
  -H "X-API-KEY: XXXXX" \
  -H "X-API-USER: XXXXX" \
  -H "Content-Type: application/json" \
  -d '{"sld": "my-domain", "tld": "com", "epp_code": YYYYY}' \
  'https://api.planethoster.net/reseller-api/transfer-domain'
</pre>
                                            <div class="planetapi_block">
                                                <h5>Parameters:</h5>

                                                <div class="planetapi_parameters">
                                                    <table class="table table-striped">
                                                        <thead>
                                                            <tr>
                                                                <th class="span2">&nbsp;</th>
                                                                <th class="span2">Name</th>
                                                                <th class="span2">Type</th>
                                                                <th>Description</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr>
                                                                <td class="planetapi_parameter_POST">POST</td>
                                                                <td class="planetapi_parameter_required required">sld</td>
                                                                <td>string</td>
                                                                <td>domain name without the Top-Level Domain - example: 'mydomain'</td>
                                                            </tr>
                                                            <tr>
                                                                <td class="planetapi_parameter_POST">POST</td>
                                                                <td class="planetapi_parameter_required required">tld</td>
                                                                <td>string</td>
                                                                <td>TLD without the leading period - example: 'com'</td>
                                                            </tr>
                                                            <tr>
                                                                <td class="planetapi_parameter_POST">POST</td>
                                                                <td class="planetapi_parameter">epp_code</td>
                                                                <td>string</td>
                                                                <td>Transfer secret is a domain transfer secret (transfer key), a key or code - example: 'a!8/e!__Ph'</td>
                                                            </tr>
                                                        </tbody>
                                                    </table>

                                                </div>
                                            </div>

                                            <div class="planetapi_block">
                                                <h5>Success Response (non-premium domain available example):</h5>
                                                <p class="planetapi_return_value">
                                                    <pre>
   {
     "message": "Successfully transfer launch",
   }
</pre>
                                                </p>

                                                <div class="planetapi_block">
                                                    <h5>Possible JSON error codes:</h5>
                                                    <div class="planetapi_http_errors">
                                                        <table class="table table-striped">
                                                            <thead>
                                                                <tr>
                                                                    <th class="span2">error_code</th>
                                                                    <th>Reason</th>
                                                                </tr>
                                                            </thead>
                                                            <tbody>
                                                                <tr>
                                                                    <td>5000</td>
                                                                    <td>No reseller found or Error deleting DNS zone: DNS zone does not exist on PlanetHoster DNS servers</td>
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="planetapi_resource">
                                    <!-- Delete PlanetHoster DNS Zone  -->
                                    <div class="planetapi_row planetapi_operation planetapi_operation_POST">
                                        <div class="planetapi_row planetapi_operation_signature">
                                            <h4 class=""><span>POST</span> /delete-ph-dns-zone</h4>
                                            <div class="pull-right planetapi_operation_summary">
                                                Delete PlanetHoster DNS zone
                                            </div>
                                        </div>

                                        <div style="display: none;" class="planetapi_row planetapi_operation_full">
                                            <div class="planetapi_block">
                                                <p>Deletes the DNS zone on the PlanetHoster DNS servers for the given domain..</p>
                                            </div>

                                            <pre>
curl -X POST \
  -H "X-API-KEY: XXXXX" \
  -H "X-API-USER: XXXXX" \
  -H "Content-Type: application/json" \
  -d '{"sld": "my-domain", "tld": "com"}' \
  'https://api.planethoster.net/reseller-api/delete-ph-dns-zone'
</pre>
                                            <div class="planetapi_block">
                                                <h5>Parameters:</h5>

                                                <div class="planetapi_parameters">
                                                    <table class="table table-striped">
                                                        <thead>
                                                            <tr>
                                                                <th class="span2">&nbsp;</th>
                                                                <th class="span2">Name</th>
                                                                <th class="span2">Type</th>
                                                                <th>Description</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr>
                                                                <td class="planetapi_parameter_POST">POST</td>
                                                                <td class="planetapi_parameter_required required">sld</td>
                                                                <td>string</td>
                                                                <td>domain name without the Top-Level Domain - example: 'mydomain'</td>
                                                            </tr>
                                                            <tr>
                                                                <td class="planetapi_parameter_POST">POST</td>
                                                                <td class="planetapi_parameter_required required">tld</td>
                                                                <td>string</td>
                                                                <td>TLD without the leading period - example: 'com'</td>
                                                            </tr>
                                                        </tbody>
                                                    </table>

                                                </div>
                                            </div>

                                            <div class="planetapi_block">
                                                <h5>Success Response (non-premium domain available example):</h5>
                                                <p class="planetapi_return_value">
                                                    <pre>
   {
     "message": "Successfully deleted DNS zone on PlanetHoster DNS servers",
   }
</pre>
                                                </p>

                                                <div class="planetapi_block">
                                                    <h5>Possible JSON error codes:</h5>
                                                    <div class="planetapi_http_errors">
                                                        <table class="table table-striped">
                                                            <thead>
                                                                <tr>
                                                                    <th class="span2">error_code</th>
                                                                    <th>Reason</th>
                                                                </tr>
                                                            </thead>
                                                            <tbody>
                                                                <tr>
                                                                    <td>5000</td>
                                                                    <td>No reseller found or Error deleting DNS zone: DNS zone does not exist on PlanetHoster DNS servers</td>
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>





                    <div id="api_examples" class="api_doc tab-pane">
                        <div class="api_doc">
                            <h2 class="page-header">Example calls</h2>
                            <p>Here are some example calls, using <a href="https://curl.haxx.se/" rel="nofollow" title="A tool and a library (usable from many languages)">cURL</a>:</p>

                            <h4>Getting user informations:</h4>
                            <p><a class="btn api_call_example_link" data-example-id="api_call_example_0">Show/hide example</a></p>
                            <div class="hide api_call_example" id="api_call_example_0">
                                <pre class="api_call">curl -X GET \
     -d 'api_key=<b>XXXXX</b>&api_user=<b>XXXXX</b>' \
     "https://api.planethoster.net/reseller-api/test-connection"</pre>
                                <pre class="api_result">HTTP/1.1 200 OK
Content-Type: application/json
date: Jan 23 2021 07:41:59 GMT
---
<span style="color: #0000BB"><span style="color: #000099"></span><span style="color: #009900">{
&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #3366CC">"message"</span><span style="color: #009900">:&nbsp;</span><span style="color: #000099">"Connection successful"</span><span style="color: #009900">,
&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #3366CC">"successful_connection"</span><span style="color: #009900">:&nbsp;</span><span style="color: #3366CC">"true"</span><span style="color: #009900">,
</span><span style="color: #009900">}</span><span style="color: #000099"></span>
</span></pre>
                            </div>
                        </div>
                    </div>

                    <!-- TODO:
                                                        - PHP (Gabriel)/RUBY/PERL/PYTHON  (explose_tld)
                                                      - JSON to HTML RENDER
                                                      - Make French part
                                                      - Soon: DNSec + Email Forwarding + /Whois Anonyme + ProtectionID
                                                  -->

                    <div id="api_authentication" class="tab-pane">
                        <div class="api_doc">
                            <h2 class="page-header">PlanetHoster API Basics</h2>

                            <p>Our web API is organized so that integrating with it is as straightforward as possible. Every HTTP request is either a GET or a POST, every request requires an `api_key` and an `api_user`, which are provided to you upon signup, and the HTTP response is always formatted as JSON. Errors can occur, and when they do we return the keys: </p>

                            <pre>error_code: (integer), an error code</pre>

                            <p>and:</p>

                            <pre>error: (string), an error message</pre>

                            <p>For each API command that is documented here, we'll let you know about each possible error or success condition.</p>

                            <p class="alert alert-warning"><strong>Notice:</strong> If those fields aren't present in the returned JSON, the API command was successful. Success of course means different things for different commands: for domain registration it means the domain has successfully been registered, for domain transfer it means that the transfer request has been sent to the correct registry and for domain renewal, it means the domain has been renewed for the number of years specified in the command. A call to `get-nameservers` will simply return the nameservers associated with the domain, etc.</p>
                        </div>

                        <div class="api_doc">
                            <h2 class="page-header">API Conventions</h2>

                            <p>Requests to the API consist of fields (parameter names) and their values that are sent in either the URL's query parameters or the request's POST body (for GET and POST requests respectively). Each field for each API command is documented as having a 'type', either as a string, an integer, a boolean, a date, or a hashmap (associative array). </p>

                            <pre>For string fields, these are simply the strings themselves.
Example: "https://api.planethoster.net/domain-reseller/register-domain?sld=mydomain&tld=com"
--
For integer fields, these are simply the string representation of the integer.
Example: "https://api.planethoster.net/domain-reseller/register-domain?period=1"
---
For boolean fields, '1' is always treated as true, and "" (empty string) is treated as false.
Example: "https://api.planethoster.net/domain-reseller/register-domain?id_protection="
--
For dates fields, these are represented in the following format: "YYYY-MM-DD".
Example: "https://api.planethoster.net/domain-reseller/register-domain?somedatefield=2017-01-01"
---
For hashmaps, these are represented in the following way:
"https://api.planethoster.net/domain-reseller/register-domain?fieldname[key1]=val1&fieldname[key2]=val2"</pre>
                            <p>Note that all field names and their values must be URL-encoded. For example, in PHP, use the `urlencode` or `http_build_query` functions. Spaces in the field names and values can be encoded to `+` or `%20`. Either of these is acceptable. </p>

                            <p>For responses, which are in JSON, all dates are returned in the same format ("YYYY-MM-DD"), as strings. Booleans are returned as JSON `true` and `false`, and currency amounts are returned as strings formatted in the following way: "9.99". </p>
                        </div>

                        <div class="api_doc" id="reseller_panel">
                            <h3>Reseller Panel</h3>
                            <p>Our <a href="https://my.planethoster.net/domain-reseller" title="PlanetHoster Reseller domains">Reseller Panel</a> will be your gateway for the management of your domains that were resold with us. From the Reseller Panel website, you'll be able to renew and manage the lifecycle of the domains that you have on file with us. </p>
                        </div>

                        <div class="api_doc" id="Module_WHMCS">

                            <h3>WHMCS Registrar module</h3>
                            <p>Our WHMCS module offers the ability for our domain name resellers to use WHMCS to register, renew, transfer and manage domain names with PlanetHoster. The first step to getting started is to become a registered domain name reseller with PlanetHoster. This is free, and can either be done with an existing logged in account by clicking on the "Reseller" tab in our client area and activating your domain name reseller account. Alternatively, if you don't have an existing PlanetHoster account, you can create a new account here. After your account is created and you're logged in, you can then follow the previous step to activate your reseller account. </p>

                            <p>Features:</p>
                            <ul>
                                <li><b>Domain registration/transfer/renewal</b></li>
                                <li><b>Automatic domain synchronization (sync)</b></li>
                                <li><b>DNS Modifications</b></li>
                                <li><b>WHOIS contact modification</b></li>
                                <li><b>Private Registrations (ID Protection)</b></li>
                                <li><b>Registry Lock/unlock</b></li>
                                <li><b>Auth Code EPP request</b></li>
                                <li><b>DNS Management (A, AAAA, CNAME, MX, TXT) if nameservers used are PlanetHoster's nameservers (nsa.planethoster.net, nsb.planethoster.net, nsc.planethoster.net)</b></li>
                            </ul>

                            <p class="alert alert-warning"><strong>Ongoing Development:</strong> This module is open-source and you can contribute to it to make it even better. Add a feature request or create a pull request <a href="https://github.com/PlanetHoster/whmcs_module" title="PlanetHoster GitHub">here</a></p>

                            <h4>Installation/Setup</h4>
                            <p>Our WHMCS module is available online <a href="https://my.planethoster.net/downloads/planethoster_whmcs_module_v0.1.2.zip" title="WHMCS Module Registrar">here</a> or <a href="https://marketplace.whmcs.com/product/1990" title="Free PlanetHoster Registrar Module">here</a>.

                                              <ol>
                                                          <li>To install it, simply move or copy the "planethoster" folder so that it's under the "(whmcs)/modules/registrars/" folder.</li>
                                                          <li>After this, in WHMCS Admin, click on "<b>Setup</b>" >> "<b>Products/Services</b>" >> "<b>Domain Registrars</b>" in the dropdown menu.</li>
                                                          <li>Search for "<b>Planethoster</b>" and click on its "<b>Activate</b>" button.</li>
                                                          <li>Copy and paste the API_User and API_Key into the corresponding text field.</li>
                                                          <li>Once done, click on "<b>Save Changes</b>".</li>

                                                          <li>After this, in WHMCS, click on "<b>Setup</b>" >> "<b>Products/Services</b>" >> "<b>Domain Pricing</b>" in the dropdown menu.</li>
                                                          <li>Add new TLD, and set Auto Registration to "Planethoster" >> Save Changes.</li>
                                                     </ol>

                                                     <img src="/img/How-to.gif" alt="How-to Setup WHMCS?" >
                                                    </div>

                                                      <h3>Languages Libraries/GitHub</h3>
                                                      <p>PlanetHoster make a <a href="https://github.com/PlanetHoster?tab=repositories" title="PlanetHoster GitHub">public repositories</a> with for the moment Golang library & WHMCS registrar module</p>

                                                        <h3>Beginning examples/QuickStart</h3>

                                                        <ol>
                                                            <li>
                                                                <p>As stated in our overview, when you register as a reseller with PlanetHoster, you will receive an API key and an API user code. These two are essential as they are required for every command you will issue to the API. So, all the following commands will be under the form :</p>

                                                                <pre>curl -XGET (or POST) -d 'key1=X&key2=Y&key3=Z&api_key=XXXXX&api_user=XXXXX' 'API_URL'</pre>

                                                                <h5>Here I will use XXXXX as a wildcard for the actual key and id.</h5>
                                                                <p>So, let's say that I am interested in registering domain testingplanethoster.com. I would first like to know if the domain is already registered or not:</p>
                                                                <pre>curl -XGET -d 'sld=testingplanethoster&tld=com&api_key=XXXXX&api_user=XXXXX' 'https://api.planethoster.net/reseller-api/check-availability'</pre>

                                                                <h5>The API replies:</h5>
                                                                <pre><span style="color: #0000BB"><span style="color: #000099"></span><span style="color: #009900">{
&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #3366CC">"available"</span><span style="color: #009900">:&nbsp;</span><span style="color: #3366CC">true</span><span style="color: #009900">,
&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #3366CC">"message"</span><span style="color: #009900">:&nbsp;</span><span style="color: #3366CC">"Available"</span><span style="color: #009900">,
&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #3366CC">"is_premium"</span><span style="color: #009900">:&nbsp;</span><span style="color: #000099">true</span><span style="color: #009900">,
&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #3366CC">"premium_register_price"</span><span style="color: #009900">:&nbsp;</span><span style="color: #000099">"80.00"</span><span style="color: #009900">,
&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #3366CC">"premium_renew_price"</span><span style="color: #009900">:&nbsp;</span><span style="color: #3366CC">"80.00"
</span><span style="color: #009900">}</span><span style="color: #000099"></span>
</span></pre>
                                                            </li>

                                                            <li>
                                                                <p>Thankfully, our new domain is available, but it is also a premium domain, which is more expensive than a regular .com. Since this will cost us more than what we expected, it may be a good idea to check if we have enough credit in our account first before proceeding with registration:</p>
                                                              <pre>curl -XGET -d 'api_key=XXXXX&api_user=XXXXX' 'https://api.planethoster.net/reseller-api/account-info'</pre>
                                <h5>The API replies:</h5>
<pre><span style="color: #0000BB"><span style="color: #000099"></span><span style="color: #009900">{
&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #3366CC">"message"</span><span style="color: #009900">:&nbsp;</span><span style="color: #3366CC">"Account information successfully obtained"</span><span style="color: #009900">,
&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #3366CC">"credit_remaining"</span><span style="color: #009900">:&nbsp;</span><span style="color: #3366CC">"150.00"</span><span style="color: #009900">,
&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #3366CC">"credit_currency"</span><span style="color: #009900">:&nbsp;</span><span style="color: #000099">USD</span><span style="color: #009900">,
&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #3366CC">"num_active_orders"</span><span style="color: #009900">:&nbsp;</span><span style="color: #000099">2</span><span style="color: #009900">,
&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #3366CC">"num_active_domains"</span><span style="color: #009900">:&nbsp;</span><span style="color: #3366CC">2
</span><span style="color: #009900">}</span><span style="color: #000099"></span>
</span></pre>

                                                            </li>

                                                            <li>
                                                                <p>Now that we know we have enough money, we can proceed with registration. We will need to input the domain owner's information in the request as well as for how long we want to register this domain and the nameservers we will want to use for the new domain. As you can see, this makes a fairly long curl POST. </p>
                                                              <pre>curl -XPOST -d 'id_protection=1&ns1=nsa.planethoster.net&ns2=nsb.planethoster.net&period=1&amp;registrant_address1=123+Cherry+Hill&amp;registrant_city=Laval&amp;registrant_company_name=&amp;registrant_country_code=CA&amp;registrant_email=john%40hancock.com&amp;registrant_first_name=John&amp;registrant_last_name=Hancock&amp;registrant_phone=%2B1.5145555555&amp;registrant_postal_code=11111&amp;registrant_state=Quebec&register_if_premium=1&sld=testingplanethoster&tld=com&api_key=XXXXX&api_user=XXXXX' 'https://api.planethoster.net/reseller-api/register-domain'</pre>
                                <h5>The API replies:</h5>
<pre><span style="color: #0000BB"><span style="color: #000099"></span><span style="color: #009900">{
&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #3366CC">"message"</span><span style="color: #009900">:&nbsp;</span><span style="color: #3366CC">"Domain registration order successfully created"</span><span style="color: #009900">,
&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #3366CC">"order_id"</span><span style="color: #009900">:&nbsp;</span><span style="color: #3366CC">"1112"</span><span style="color: #009900">,
&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #3366CC">"order_total"</span><span style="color: #009900">:&nbsp;</span><span style="color: #000099">"80.00"</span><span style="color: #009900">,
&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #3366CC">"expiry_date"</span><span style="color: #009900">:&nbsp;</span><span style="color: #000099">"2017-06-14"</span><span style="color: #009900">
</span><span style="color: #009900">}</span><span style="color: #000099"></span>
</span></pre>
                              <p>As you may notice, I have also activated whois ID protection and I had to specify that it's ok to register it even though it's premium. </p>
                                                            </li>

                                                            <li>
                                                                <p>We now have a domain name registered, but we're not done just yet. Because we want to feel safer, we want to lock our domain in place so that it can't be transfered. To do so, we'll issue the following query: </p>
                                                               <pre>curl -XPOST -d 'lock_action=Lock&sld=testingplanethoster&tld=com&api_key=XXXXX&api_user=XXXXX' 'https://api.planethoster.net/reseller-api/save-registrar-lock'</pre>
                                <h5>The API replies:</h5>
<pre><span style="color: #0000BB"><span style="color: #000099"></span><span style="color: #009900">{
&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #3366CC">"message"</span><span style="color: #009900">:&nbsp;</span><span style="color: #3366CC">"Lock status successfully saved (Locked)"</span><span style="color: #009900">,
&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #3366CC">"is_locked"</span><span style="color: #009900">:&nbsp;</span><span style="color: #000099">true</span><span style="color: #009900">
</span><span style="color: #009900">}</span><span style="color: #000099"></span>
</span></pre>
                                                            </li>

                                                            <li>
                                                                <p>As you may have already noticed, when registering the domain, I set the nameservers to nsa and nsb.planethoster.net . This lets us control our domain's zone records through the API, as it is on the PlanetHoster nameservers. We'll create an A record and a MX, which should be the basic need for a website with emails. </p>
                                                               <pre>curl -XPOST -d 'hostname1=testingplanethoster.com&address1=192.168.0.1&type1=A&hostname2=testingplanethoster.com&address2=mail.testingplanethoster.com&priority3=0&type3=MX&sld=mydomainname&tld=com&api_key=XXXXX&api_user=XXXXX'</pre>
                                <h5>The API replies:</h5>
<pre><span style="color: #0000BB"><span style="color: #000099"></span><span style="color: #009900">{
&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #3366CC">"message"</span><span style="color: #009900">:&nbsp;</span><span style="color: #3366CC">"Successfully updated DNS record(s)"</span><span style="color: #009900">,
</span><span style="color: #009900">}</span><span style="color: #000099"></span>
</span></pre>
                                                            </li>

                                                            <li>
                                                                <p>Let's fast-forward in time a bit, about one year from now. You will want to renew your domain for, let's say, 2 years. Here's the query that will let us do that.</p>

                                                                <pre>curl -XPOST -d 'sld=testingplanethoster&tld=com&period=2&api_key=XXXXX&api_user=XXXXX' 'https://api.planethoster.net/reseller-api/renew-domain'</pre>
                                <h5>The API replies:</h5>
<pre><span style="color: #0000BB"><span style="color: #000099"></span><span style="color: #009900">{
&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #3366CC">"message"</span><span style="color: #009900">:&nbsp;</span><span style="color: #3366CC">"Domain renewal order created successfully"</span><span style="color: #009900">,
&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #3366CC">"order_id"</span><span style="color: #009900">:&nbsp;</span><span style="color: #000099">"1212"</span><span style="color: #009900">
&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #3366CC">"order_total"</span><span style="color: #009900">:&nbsp;</span><span style="color: #000099">"160.00"</span><span style="color: #009900">
</span><span style="color: #009900">}</span><span style="color: #000099"></span>
</span></pre>
<p>This should cover the basics of API usage. There are however several other methods available which cover a variety of operations. I suggest you read their documentation pages to have a better idea of what our API can do for you. </p>
                                                            </li>

                                                        </ol>
                                                    </div>

                                                  <div class="api_doc" id="glossary_of-termes">
                                                        <h3>Golang library for API</h3>

                                                        <p>Go (often referred to as golang) is an open source programming language created at Google in 2007 by Robert Griesemer, Rob Pike, and Ken Thompson. It is a compiled, statically typed language in the tradition of Algol and C, with garbage collection, limited structural typing, memory safety features and CSP-style concurrent programming features added.</p>

                                                        <h4>Exemple main.go:</h4>
                                                        <pre>package main

import (
  "log"
  "github.com/PlanetHoster/api_Golang/phapi"
)

const (
  APIKEY  = "mykey"
  APIUSER = "myuser"
)

func main() {
  sld := "exemple"
  tld := "com"
  //Aucune validation n'est faite à ce point
  api := phapi.New(APIKEY, APIUSER)

  //Vérifie si la connexion est valide
  if err := api.Test(); err != nil {
    log.Fatalln("Erreur de connexion", err)
  } else {
    log.Println("Connexion réussi")
  }

  //Retrouve les informations de votre compte revendeur
  log.Println(api.AccountInfo())

  //Vérifie la disponibiltié d'un domain
  log.Println(api.DomainAvailable(sld, tld))

  //Plus d'information sur un domaine
  log.Println(api.DomainInfo(sld, tld))

  //Retourne les informations du WHOIS du domaine
  log.Println(api.Whois(sld, tld))

  //Retourne les nameservers du domaine
  log.Println(api.Nameservers(sld, tld))

  //Si les DNS sont avec PlanetHoster, les retournes
  log.Println(api.DNSRecords(sld, tld))

  //Listes toutes les extensions disponibles
  log.Println(api.TLDPrices())

  //Enregistre un domaine (commenté pour éviter les erreurs)

  /*  domain := phapi.NewDomainData(&phapi.ContactDomain{
      FirstName:   "Gabriel",
      LastName:    "PlanetHoster",
      Email:       "test@monmail.com",
      CompanyName: "",
      Address1:    "123 Chemin des Planètes",
      Address2:    "",
      City:        "Paris",
      PostalCode:  "1234567",
      State:       "Paris",
      CountryCode: "FR",
      Phone:       "0176604143",
    }, "nsa.planethoster.net", "nsb.planethoster.net")
    domain.NS3 = "nsc.planethoster.net"
    fmt.Println(api.RegisterDomain(sld, tld, 1, domain))
  */
}</pre>

                                                  </div>

                                                    <div class="api_doc" id="glossary_of-termes">
                                                        <h3>Glossary of Terms</h3>

                          <ol>
                            <ul>
                              <li><code>TLD</code>: Top-level domain, such as '.com', '.ca', '.fr', '.co.uk', etc.</li>
                              <li><code>SLD</code>: Domain name without the TLD, such as 'google', 'example', 'mydomain', etc.</li>
                              <li><code>Domain name registry operator</code>: Often just called "registries", these are the organizations that are responsible for maintaining administrative data and managing registration of domain names for the TLDs in which they are responsible</li>
                              <li><code>Domain name registrar</code>: Often just called "registrars", these are organizations that let customers register, renew and transfer and manage domain names for various TLDs. PlanetHoster is a domain name registrar. </li>
                              <li><code>Domain name reseller</code>: These are organizations that use other domain name registrars (instead of the registries directly) for their domain registrations, renewals, transfers and management. They buy domains from registrars, then resell them to their customers.</li>
                              <li><code>Premium domains</code>: These are domains that are deemed by registries to be more valuable, and thus are more costly for registration, renewal and transfer.</li>
                              <li><code>EPP Code</code>: Also called "Auth Info", this is the secret code that is needed in order to transfer your domain to another domain name registrar. Not all TLDs require EPP codes for domain name transfer, but most do. </li>
                              <li><code>WHOIS</code>: WHOIS data is the data that is publicly available to anyone after domain name registration. It includes the registrant's name, email, physical address, the domain name registrar, etc. </li>
                              <li><code>ID Protection</code>: Also called WHOIS ID Protection, or similar, this is a service that you can order from a domain name registrar that replaces your WHOIS information with other valid information, generally to avoid spam. </li>
                              <li><code>Nameserver</code>: Nameservers are associated with a domain name at the registry level, and they tell the DNS (Domain Name System) which DNS server to use to lookup the IP address(es) your domain name is associated with, among other information.</li>
                              <li><code>DNS Zone</code>: A DNS Zone is created on the nameserver(s) for your domain to tell DNS clients that lookup your domain (such as a web browser) to use that nameserver as the authority for where to find the IP address(es) your domain name is associated with, among other information. </li>
                              <li><code>Domain name transfer request</code>: Once a domain name transfer order is made with PlanetHoster, the domain's registrant must approve the transfer by checking their email they gave as their 'Registrant Email' and following the steps in the email. Once this is done, a transfer request is sent from PlanetHoster to the proper registry. The request is not approved at the registry right away, it can take up to 5 days to be approved or denied.</li>
                              <li><code>Domain lock</code>: Domain names that are locked cannot be transferred to another registrar. This is mainly a security precaution for the registrant, so that no one tries to transfer their domain to another registrar out from under them. Before a transfer is made, the domain must be unlocked at the domain's current registrar. </li>
                            </ul>

                        </ol>

                                                   <div class="api_doc" id="additional_fields">
                                                        <h3>Additional fields/TLD</h3>

                                                        <p>Certain TLDs require additional fields to be sent to the API upon domain name registration. The field names
are meant to be URL-encoded, along with the field values. For instance, if registering a domain name with a
TLD of .us, the field 'Nexus Category' with the value of 'C11':</p>

<pre>/register-domain?addtl_fields[Nexus Category]=C11</pre>

becomes:

<pre>/register-domain?addtl_fields[Nexus&20Category]=C11</pre>

 <pre>== .us ==

* Field Name: "Nexus Category"
    - Type: Choice
    - Valid Values: "C11", "C12", "C21", "C31", "C32"
    - Value Descriptions: see https://www.a2hosting.com/kb/getting-started-guide/registering-a-domain1/nexus-codes-and-us-domain-registration
    - Required: False

* Field Name: "Nexus Country"
    - Type: Text
    - Required: True

* Field Name: "Application Purpose"
    - Type: Choice
    - Valid Values: "Business use for profit", "Non-profit business", "Club", "Association", "Religious Organization", "Personal Use", "Educational purposes", "Government purposes"
    - Required: False

== .co.uk ==

* Field Name: "Legal Type"
    - Type: Choice
    - Valid Values: "IND", "FIND", "LTD", "PLC", "PTNR", "LLP", "STRA", "RCHAR", "IP", "SCH", "FOTHER", "GOV", "CRC", "STAT", "OTHER", "FOTHER", "FCORP"
    - Value Descriptions: "UK Individual", "Non-UK Individual (representing self)", "UK Limited Company", "UK Public Limited Company", "UK Partnership", "UK LLP", "UK Sole Trader", "UK Registered Charity", "UK Industrial/Provident Registered Company", "UK School", "Other Foreign", "UK Government Body", "UK Corporation by Royal Charter", "UK Statutory Body", "UK Entity (other)", "Non-UK Organization (other)", "Non-UK Corporation"
    - Required: False

* Field Name: "Company ID Number"
    - Type: Text
    - Required: False

* Field Name: "Registrant Name"
    - Type: Text
    - Required: True

* Field Name: "WHOIS Opt-out"
    - Type: Boolean
    - Valid Values: '1', ''

== .net.uk ==

* Field Name: "Legal Type"
    - Type: Choice
    - Valid Values: "IND", "FIND", "LTD", "PLC", "PTNR", "LLP", "STRA", "RCHAR", "IP", "SCH", "FOTHER", "GOV", "CRC", "STAT", "OTHER", "FOTHER", "FCORP"
    - Value Descriptions: "UK Individual", "Non-UK Individual (representing self)", "UK Limited Company", "UK Public Limited Company", "UK Partnership", "UK LLP", "UK Sole Trader", "UK Registered Charity", "UK Industrial/Provident Registered Company", "UK School", "Other Foreign", "UK Government Body", "UK Corporation by Royal Charter", "UK Statutory Body", "UK Entity (other)", "Non-UK Organization (other)", "Non-UK Corporation"
    - Required: False

* Field Name: "Company ID Number"
    - Type: Text
    - Required: False

* Field Name: "Registrant Name"
    - Type: Text
    - Required: True

== .org.uk ==

* Field Name: "Legal Type"
    - Type: Choice
    - Valid Values: "IND", "FIND", "LTD", "PLC", "PTNR", "LLP", "STRA", "RCHAR", "IP", "SCH", "FOTHER", "GOV", "CRC", "STAT", "OTHER", "FOTHER", "FCORP"
    - Value Descriptions: "UK Individual", "Non-UK Individual (representing self)", "UK Limited Company", "UK Public Limited Company", "UK Partnership", "UK LLP", "UK Sole Trader", "UK Registered Charity", "UK Industrial/Provident Registered Company", "UK School", "Other Foreign", "UK Government Body", "UK Corporation by Royal Charter", "UK Statutory Body", "UK Entity (other)", "Non-UK Organization (other)", "Non-UK Corporation"
    - Required: False

* Field Name: "Company ID Number"
    - Type: Text
    - Required: False

* Field Name: "Registrant Name"
    - Type: Text
    - Required: True

== me.uk ==

* Field Name: "Legal Type"
    - Type: Choice
    - Valid Values: "IND", "FIND", "LTD", "PLC", "PTNR", "LLP", "STRA", "RCHAR", "IP", "SCH", "FOTHER", "GOV", "CRC", "STAT", "OTHER", "FOTHER", "FCORP"
    - Value Descriptions: "UK Individual", "Non-UK Individual (representing self)", "UK Limited Company", "UK Public Limited Company", "UK Partnership", "UK LLP", "UK Sole Trader", "UK Registered Charity", "UK Industrial/Provident Registered Company", "UK School", "Other Foreign", "UK Government Body", "UK Corporation by Royal Charter", "UK Statutory Body", "UK Entity (other)", "Non-UK Organization (other)", "Non-UK Corporation"
    - Required: False

* Field Name: "Company ID Number"
    - Type: Text
    - Required: False

* Field Name: "Registrant Name"
    - Type: Text
    - Required: True

== .plc.uk ==

* Field Name: "Legal Type"
    - Type: Choice
    - Valid Values: "IND", "FIND", "LTD", "PLC", "PTNR", "LLP", "STRA", "RCHAR", "IP", "SCH", "FOTHER", "GOV", "CRC", "STAT", "OTHER", "FOTHER", "FCORP"
    - Value Descriptions: "UK Individual", "Non-UK Individual (representing self)", "UK Limited Company", "UK Public Limited Company", "UK Partnership", "UK LLP", "UK Sole Trader", "UK Registered Charity", "UK Industrial/Provident Registered Company", "UK School", "Other Foreign", "UK Government Body", "UK Corporation by Royal Charter", "UK Statutory Body", "UK Entity (other)", "Non-UK Organization (other)", "Non-UK Corporation"
    - Required: False

* Field Name: "Company ID Number"
    - Type: Text
    - Required: False

* Field Name: "Registrant Name"
    - Type: Text
    - Required: True

== .ltd.uk ==

* Field Name: "Legal Type"
    - Type: Choice
    - Valid Values: "IND", "FIND", "LTD", "PLC", "PTNR", "LLP", "STRA", "RCHAR", "IP", "SCH", "FOTHER", "GOV", "CRC", "STAT", "OTHER", "FOTHER", "FCORP"
    - Value Descriptions: "UK Individual", "Non-UK Individual (representing self)", "UK Limited Company", "UK Public Limited Company", "UK Partnership", "UK LLP", "UK Sole Trader", "UK Registered Charity", "UK Industrial/Provident Registered Company", "UK School", "Other Foreign", "UK Government Body", "UK Corporation by Royal Charter", "UK Statutory Body", "UK Entity (other)", "Non-UK Organization (other)", "Non-UK Corporation"
    - Required: False

* Field Name: "Company ID Number"
    - Type: Text
    - Required: False

* Field Name: "Registrant Name"
    - Type: Text
    - Required: True

== .uk ==

* Field Name: "Legal Type"
    - Type: Choice
    - Valid Values: "IND", "FIND", "LTD", "PLC", "PTNR", "LLP", "STRA", "RCHAR", "IP", "SCH", "FOTHER", "GOV", "CRC", "STAT", "OTHER", "FOTHER", "FCORP"
    - Value Descriptions: "UK Individual", "Non-UK Individual (representing self)", "UK Limited Company", "UK Public Limited Company", "UK Partnership", "UK LLP", "UK Sole Trader", "UK Registered Charity", "UK Industrial/Provident Registered Company", "UK School", "Other Foreign", "UK Government Body", "UK Corporation by Royal Charter", "UK Statutory Body", "UK Entity (other)", "Non-UK Organization (other)", "Non-UK Corporation"
    - Required: False

* Field Name: "Company ID Number"
    - Type: Text
    - Required: False

* Field Name: "Registrant Name"
    - Type: Text
    - Required: True

== .ca ==

* Field Name: "Legal Type"
    - Type: Choice
    - Valid Values: "CCO", "CCT", "RES", "GOV", "EDU", "ASS", "HOP", "PRT", "TDM", "TRD", "PLT", "LAM", "TRS", "ABO", "INB", "LGR", "OMK", "MAJ"
    - Value Descriptions: "Corporation (Canada or Canadian province or territory)", "Canadian citizen", "Permanent Resident of Canada", "Government or government entity in Canada", "Canadian Educational institution", "Canadian Unincorporated Association", "Canadian Hospital", "Partnership Registered in Canada", "Trade-mark registered in Canada (by a non-Canadian owner)", "Canadian Trade union", "Canadian Political party", "Canadian Library Archive or Museum", "Trust established in Canada", "Aboriginal Peoples (individuals or groups) indigenous to Canada", "Indian Band recognized by the Indian Act of Canada", "Legal Representative of a Canadian Citizen or Permanent Resident", "Official mark registered in Canada", "Her Majesty the Queen"
    - Description: Legal type of registrant contact
    - Required: False

* Field Name: "CIRA Agreement"
    - Type: Boolean
    - Valid Values: '1', ''
    - Description: Tick to confirm you agree to the CIRA Registration Agreement shown below<br /><blockquote style='word-break: keep-all;'><a href='https://cira.ca/sites/default/files/attachment/policies/registrantagreement_-_en.pdf'rel="nofollow" target='_blank' title="Registrant Agreement">English version</a></blockquote><blockquote style='word-break: keep-all;'><a href='https://acei.ca/sites/default/files/attachment/policies/registrantagreement-fr.pdf' rel="nofollow" title="Convention https://plus.google.com/104430898324979608625enregistrement" target='_blank'>Version française</a></blockquote>
    - Required: True

* Field Name: "WHOIS Opt-out"
    - Type: Boolean
    - Valid Values: '1', ''
    - Description: Tick to hide your contact information in CIRA WHOIS (only available to individuals)

== .quebec ==

* Field Name: "Intended use"
    - Type: Text
    - Required: True

* Field Name: "Variants"
    - Type: Text
    - Required: False

== .es ==

* Field Name: "ID Form Type"
    - Type: Choice
    - Valid Values: "0", "1", "3"
    - Value Descriptions: "Generic ID", "VAT ID", "Resident alien ID"
    - Required: False

* Field Name: "ID Form Number"
    - Type: Text
    - Required: True

* Field Name: "Legal Form"
    - Type: Choice
    - Valid Values: "1", "39", "47", "59", "68", "124", "150", "152", "164", "181", "197", "203", "229", "269", "286", "365", "434", "436", "439", "476", "510", "524", "525", "554", "560", "562", "566", "608", "612", "713", "717", "744", "745", "746", "747", "877", "878", "879"
    - Value Descriptions: "Individual", "Economic Interest Group", "Association", "Sports Association", "Professional Association", "Savings Bank", "Community Property", "Community of Owners", "Order or Religious Institution", "Consulate", "Public Law Association", "Embassy", "Local Authority", "Sports Federation", "Foundation", "Mutual Insurance Company", "Regional Government Body", "Central Government Body", "Political Party", "Trade Union", "Farm Partnership", "Public Limited Company", "Sports Association", "Civil Society", "General Partnership", "General and Limited Partnership", "Cooperative", "Worker-owned Company", "Limited Company", "Spanish Office", "Temporary Alliance of Enterprises", "Worker-owned Limited Company", "Regional Public Entity", "National Public Entity", "Local Public Entity", "Others", "Designation of Origin Supervisory Council", "Entity Managing Natural Areas"
    - Required: True

* Field Name: "Admin Id"
    - Type: Text
    - Required: True

* Field Name: "Admin Id Type"
    - Type: Choice
    - Valid Values: "0", "1", "3"
    - Value Descriptions: "Generic ID", "National Identity", "Resident alien ID"
    - Required: True

* Field Name: "Terms and Conditions"
    - Type: Choice
    - Valid Values: "", "1"
    - Value Descriptions: "Please Select", "I agree to the terms and conditions"
    - Required: True

== .sg ==

* Field Name: "RCB Singapore ID"
    - Type: Text
    - Description: RCB/Singapore ID
    - Required: True

* Field Name: "Registrant Type"
    - Type: Choice
    - Valid Values: "Individual", "Organisation"
    - Required: False

== .com.sg ==

* Field Name: "RCB Singapore ID"
    - Type: Text
    - Description: RCB/Singapore ID
    - Required: True

* Field Name: "Registrant Type"
    - Type: Choice
    - Valid Values: "Individual", "Organisation"
    - Required: False

== .edu.sg ==

* Field Name: "RCB Singapore ID"
    - Type: Text
    - Description: RCB/Singapore ID
    - Required: True

* Field Name: "Registrant Type"
    - Type: Choice
    - Valid Values: "Individual", "Organisation"
    - Required: False

== .net.sg ==

* Field Name: "RCB Singapore ID"
    - Type: Text
    - Description: RCB/Singapore ID
    - Required: True
* Field Name: "Registrant Type"
    - Type: Choice
    - Valid Values: "Individual", "Organisation"
    - Required: False

== .org.sg ==

* Field Name: "RCB Singapore ID"
    - Type: Text
    - Description: RCB/Singapore ID
    - Required: True

* Field Name: "Registrant Type"
    - Type: Choice
    - Valid Values: "Individual", "Organisation"
    - Required: False

== .per.sg ==

* Field Name: "RCB Singapore ID"
    - Type: Text
    - Description: RCB/Singapore ID
    - Required: True

* Field Name: "Registrant Type"
    - Type: Choice
    - Valid Values: "Individual", "Organisation"
    - Required: False

== .tel ==

* Field Name: "Legal Type"
    - Type: Choice
    - Valid Values: "Natural Person", "Legal Person"
    - Required: False

* Field Name: "WHOIS Opt-out"
    - Type: Boolean
    - Valid Values: '1', ''

== .it ==

* Field Name: "Type of Registrant Entity"
    - Type: Choice
    - Valid Values: "1", "2", "3", "4", "5", "6", "7"
    - Value Descriptions: "Italian and foreign natural persons", "Companies/one man companies", "Freelance workers/professionals", "non-profit organizations", "public organizations", "other subjects", "non natural foreigners"
    - Description: Legal type of registrant
    - Required: False

* Field Name: "Tax ID"
    - Type: Text
    - Required: True

* Field Name: "Publish Personal Data"
    - Type: Boolean
    - Valid Values: '1', ''

* Field Name: "Accept Section 3 of .IT registrar contract"
    - Type: Boolean
    - Valid Values: '1', ''

* Field Name: "Consent for Processing of Information"
    - Type: Boolean
    - Valid Values: '1', ''

* Field Name: "Consent for Dissemination and Accessibility via the Internet"
    - Type: Boolean
    - Valid Values: '1', ''

* Field Name: "Explicit Acceptance of Registry Terms"
    - Type: Boolean
    - Valid Values: '1', ''

== .de ==

* Field Name: "Tax ID"
    - Type: Text
    - Required: True

* Field Name: "Address Confirmation"
    - Type: Boolean
    - Valid Values: '1', ''
    - Description: Please tick to confirm you have a valid German address

== .com.au ==

* Field Name: "Registrant Name"
    - Type: Text
    - Required: True

* Field Name: "Registrant ID"
    - Type: Text
    - Required: True

* Field Name: "Registrant ID Type"
    - Type: Choice
    - Valid Values: "ABN", "ACN", "Business Registration Number"
    - Required: False

* Field Name: "Eligibility Name"
    - Type: Text
    - Required: False

* Field Name: "Eligibility ID"
    - Type: Text
    - Required: False

* Field Name: "Eligibility ID Type"
    - Type: Choice
    - Valid Values: "Australian Company Number (ACN)", "ACT Business Number", "NSW Business Number", "NT Business Number", "QLD Business Number", "SA Business Number", "TAS Business Number", "VIC Business Number", "WA Business Number", "Trademark (TM)", "Other - Used to record an Incorporated Association number", "Australian Business Number (ABN)"
    - Required: False

* Field Name: "Eligibility Type"
    - Type: Choice
    - Valid Values: "Charity", "Citizen/Resident", "Club", "Commercial Statutory Body", "Company", "Incorporated Association", "Industry Body", "Non-profit Organisation", "Other", "Partnership", "Pending TM Owner  ", "Political Party", "Registered Business", "Religious/Church Group", "Sole Trader", "Trade Union", "Trademark Owner", "Child Care Centre", "Government School", "Higher Education Institution", "National Body", "Non-Government School", "Pre-school", "Research Organisation", "Training Organisation"
    - Required: False

* Field Name: "Eligibility Reason"
    - Type: Choice
    - Valid Values: "Domain name is an Exact Match Abbreviation or Acronym of your Entity or Trading Name.", "Close and substantial connection between the domain name and the operations of your Entity."

== .net.au ==

* Field Name: "Registrant Name"
    - Type: Text
    - Required: True

* Field Name: "Registrant ID"
    - Type: Text
    - Required: True

* Field Name: "Registrant ID Type"
    - Type: Choice
    - Valid Values: "ABN", "ACN", "Business Registration Number"
    - Required: False

* Field Name: "Eligibility Name"
    - Type: Text
    - Required: False

* Field Name: "Eligibility ID"
    - Type: Text
    - Required: False

* Field Name: "Eligibility ID Type"
    - Type: Choice
    - Valid Values: "Australian Company Number (ACN)", "ACT Business Number", "NSW Business Number", "NT Business Number", "QLD Business Number", "SA Business Number", "TAS Business Number", "VIC Business Number", "WA Business Number", "Trademark (TM)", "Other - Used to record an Incorporated Association number", "Australian Business Number (ABN)"
    - Required: False

* Field Name: "Eligibility Type"
    - Type: Choice
    - Valid Values: "Charity", "Citizen/Resident", "Club", "Commercial Statutory Body", "Company", "Incorporated Association", "Industry Body", "Non-profit Organisation", "Other", "Partnership", "Pending TM Owner  ", "Political Party", "Registered Business", "Religious/Church Group", "Sole Trader", "Trade Union", "Trademark Owner", "Child Care Centre", "Government School", "Higher Education Institution", "National Body", "Non-Government School", "Pre-school", "Research Organisation", "Training Organisation"
    - Required: False

* Field Name: "Eligibility Reason"
    - Type: Choice
    - Valid Values: "Domain name is an Exact Match Abbreviation or Acronym of your Entity or Trading Name.", "Close and substantial connection between the domain name and the operations of your Entity."

== .org.au ==

* Field Name: "Registrant Name"
    - Type: Text
    - Required: True

* Field Name: "Registrant ID"
    - Type: Text
    - Required: True

* Field Name: "Registrant ID Type"
    - Type: Choice
    - Valid Values: "ABN", "ACN", "Business Registration Number"
    - Required: False

* Field Name: "Eligibility Name"
    - Type: Text
    - Required: False

* Field Name: "Eligibility ID"
    - Type: Text
    - Required: False

* Field Name: "Eligibility ID Type"
    - Type: Choice
    - Valid Values: "Australian Company Number (ACN)", "ACT Business Number", "NSW Business Number", "NT Business Number", "QLD Business Number", "SA Business Number", "TAS Business Number", "VIC Business Number", "WA Business Number", "Trademark (TM)", "Other - Used to record an Incorporated Association number", "Australian Business Number (ABN)"
    - Required: False

* Field Name: "Eligibility Type"
    - Type: Choice
    - Valid Values: "Charity", "Citizen/Resident", "Club", "Commercial Statutory Body", "Company", "Incorporated Association", "Industry Body", "Non-profit Organisation", "Other", "Partnership", "Pending TM Owner  ", "Political Party", "Registered Business", "Religious/Church Group", "Sole Trader", "Trade Union", "Trademark Owner", "Child Care Centre", "Government School", "Higher Education Institution", "National Body", "Non-Government School", "Pre-school", "Research Organisation", "Training Organisation"
    - Required: False

* Field Name: "Eligibility Reason"
    - Type: Choice
    - Valid Values: "Domain name is an Exact Match Abbreviation or Acronym of your Entity or Trading Name.", "Close and substantial connection between the domain name and the operations of your Entity."

== .asn.au ==

* Field Name: "Registrant Name"
    - Type: Text
    - Required: True

* Field Name: "Registrant ID"
    - Type: Text
    - Required: True

* Field Name: "Registrant ID Type"
    - Type: Choice
    - Valid Values: "ABN", "ACN", "Business Registration Number"
    - Required: False

* Field Name: "Eligibility Name"
    - Type: Text
    - Required: False

* Field Name: "Eligibility ID"
    - Type: Text
    - Required: False

* Field Name: "Eligibility ID Type"
    - Type: Choice
    - Valid Values: "Australian Company Number (ACN)", "ACT Business Number", "NSW Business Number", "NT Business Number", "QLD Business Number", "SA Business Number", "TAS Business Number", "VIC Business Number", "WA Business Number", "Trademark (TM)", "Other - Used to record an Incorporated Association number", "Australian Business Number (ABN)"
    - Required: False

* Field Name: "Eligibility Type"
    - Type: Choice
    - Valid Values: "Charity", "Citizen/Resident", "Club", "Commercial Statutory Body", "Company", "Incorporated Association", "Industry Body", "Non-profit Organisation", "Other", "Partnership", "Pending TM Owner  ", "Political Party", "Registered Business", "Religious/Church Group", "Sole Trader", "Trade Union", "Trademark Owner", "Child Care Centre", "Government School", "Higher Education Institution", "National Body", "Non-Government School", "Pre-school", "Research Organisation", "Training Organisation"
    - Required: False

* Field Name: "Eligibility Reason"
    - Type: Choice
    - Valid Values: "Domain name is an Exact Match Abbreviation or Acronym of your Entity or Trading Name.", "Close and substantial connection between the domain name and the operations of your Entity."

== .id.au ==

* Field Name: "Registrant Name"
    - Type: Text
    - Required: True

* Field Name: "Registrant ID"
    - Type: Text
    - Required: True

* Field Name: "Registrant ID Type"
    - Type: Choice
    - Valid Values: "ABN", "ACN", "Business Registration Number"
    - Required: False

* Field Name: "Eligibility Name"
    - Type: Text
    - Required: False

* Field Name: "Eligibility ID"
    - Type: Text
    - Required: False

* Field Name: "Eligibility ID Type"
    - Type: Choice
    - Valid Values: "Australian Company Number (ACN)", "ACT Business Number", "NSW Business Number", "NT Business Number", "QLD Business Number", "SA Business Number", "TAS Business Number", "VIC Business Number", "WA Business Number", "Trademark (TM)", "Other - Used to record an Incorporated Association number", "Australian Business Number (ABN)"
    - Required: False

* Field Name: "Eligibility Type"
    - Type: Choice
    - Valid Values: "Charity", "Citizen/Resident", "Club", "Commercial Statutory Body", "Company", "Incorporated Association", "Industry Body", "Non-profit Organisation", "Other", "Partnership", "Pending TM Owner  ", "Political Party", "Registered Business", "Religious/Church Group", "Sole Trader", "Trade Union", "Trademark Owner", "Child Care Centre", "Government School", "Higher Education Institution", "National Body", "Non-Government School", "Pre-school", "Research Organisation", "Training Organisation"
    - Required: False

* Field Name: "Eligibility Reason"
    - Type: Choice
    - Valid Values: "Domain name is an Exact Match Abbreviation or Acronym of your Entity or Trading Name.", "Close and substantial connection between the domain name and the operations of your Entity."

== .asia ==

* Field Name: "Legal Type"
    - Type: Choice
    - Valid Values: "naturalPerson", "corporation", "cooperative", "partnership", "government", "politicalParty", "society", "institution"
    - Required: False

* Field Name: "Identity Form"
    - Type: Choice
    - Valid Values: "passport", "certificate", "legislation", "societyRegistry", "politicalPartyRegistry"
    - Required: False

* Field Name: "Identity Number"
    - Type: Text
    - Required: True

== .pro ==

* Field Name: "Profession"
    - Type: Text
    - Description: Indicated professional association recognized by government body
    - Required: True

== .coop ==

* Field Name: "Contact Name"
    - Type: Text
    - Description: A sponsor is required to register .coop domains. Please enter the information here
    - Required: True

* Field Name: "Contact Company"
    - Type: Text
    - Required: True

* Field Name: "Contact Email"
    - Type: Text
    - Required: True

* Field Name: "Address 1"
    - Type: Text
    - Required: True

* Field Name: "Address 2"
    - Type: Text
    - Required: False

* Field Name: "City"
    - Type: Text
    - Required: True

* Field Name: "State"
    - Type: Text
    - Required: False

* Field Name: "ZIP Code"
    - Type: Text
    - Required: True

* Field Name: "Country"
    - Type: Text
    - Description: 2 Letter Country Code
    - Required: True

* Field Name: "Phone CC"
    - Type: Text
    - Description: Phone Country Code eg 1 for US & Canada, 44 for UK
    - Required: True

* Field Name: "Phone"
    - Type: Text
    - Required: True

== .be ==

* Field Name: "VATNO"
    - Type: Text
    - Description: VAT number
    - Required: False

== .fr ==

* Field Name: "Siren"
    - Type: Text
    - Required: False
    - Must Match Regular Expression: \d{3} \d{3} \d{3}

== .re ==

* Field Name: "Siren"
    - Type: Text
    - Required: False
    - Must Match Regular Expression: \d{3} \d{3} \d{3}

== .pm ==

* Field Name: "Siren"
    - Type: Text
    - Required: False
    - Must Match Regular Expression: \d{3} \d{3} \d{3}

== .tf ==

* Field Name: "Siren"
    - Type: Text
    - Required: False
    - Must Match Regular Expression: \d{3} \d{3} \d{3}

== .wf ==

* Field Name: "Siren"
    - Type: Text
    - Required: False
    - Must Match Regular Expression: \d{3} \d{3} \d{3}

== .yt ==

* Field Name: "Siren"
    - Type: Text
    - Required: False
    - Must Match Regular Expression: \d{3} \d{3} \d{3}</pre>

                                                <div id="api_error_codes" class="api_doc tab-pane">
                                                    <h2 class="page-header">List of numeric error codes</h2>

                                                    <p>In addition to the JSON error code, errors come with a message (<i>error</i> parameter) and a numeric code (<i>error_code</i> parameter). The error message is meant to be human-readable, while the numeric codes should be used by your application.</p>
                            <table class="table table-striped">
                                <tbody>
                                    <tr>
                                        <th>5000</th>
                                        <td>General error</td>
                                    </tr>
                                    <tr>
                                        <th>5001</th>
                                        <td>Network issues</td>
                                    </tr>
                                    <tr>
                                        <th>5002</th>
                                        <td>Internal error occured</td>
                                    </tr>
                                    <tr>
                                        <th>5003</th>
                                        <td>Error authenticating to our API</td>
                                    </tr>
                                    <tr>
                                        <th>5004</th>
                                        <td>Not authorized to access our API, or just this API method.</td>
                                    </tr>
                                    <tr>
                                        <th>5005</th>
                                        <td>Domain is unavailable for registration or transfer.</td>
                                    </tr>
                                    <tr>
                                        <th>5006</th>
                                        <td>Domain doesn't exist in our database.</td>
                                    </tr>
                                    <tr>
                                        <th>5007</th>
                                        <td>PlanetHoster doesn't sell this TLD.</td>
                                    </tr>
                                    <tr>
                                        <th>5008</th>
                                        <td>Domain is cancelled in PlanetHoster's system.</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    Retrouvez <a href="https://plus.google.com/104430898324979608625" rel="publisher" title="Notre Google Plus">PlanetHoster sur Google+</a> et <a href="https://twitter.com/planethoster" title="Twitter nous directement sur @PlanetHoster" rel="me">@PlanetHoster</a> et trouvez de la lecture <a href="https://blog.planethoster.net/" title="Blog PlanetHoster">ici</a> et ici <a href="https://my.planethoster.net/icann-domains-tos" title="icann-tos">TOS</a>
                </div>

                <script type="application/ld+json">
                    { "@context": "http://schema.org", "@type": "Product", "aggregateRating": { "@type": "AggregateRating", "bestRating": "5", "ratingCount": "162", "ratingValue": "4.9" }, "image": "api_PH_domain.jpg", "name": "Domain reseller web service/API", "offers": { "@type": "AggregateOffer", "priceCurrency": "EUR", "highPrice": "120", "lowPrice": "2.99", "offerCount": "324" } }
                </script>
                <script type="text/javascript">
                    //$('.dropdown-toggle').dropdown();
                    (function(i, s, o, g, r, a, m) {
                        i['GoogleAnalyticsObject'] = r;
                        i[r] = i[r] || function() {
                            (i[r].q = i[r].q || []).push(arguments)
                        }, i[r].l = 1 * new Date();
                        a = s.createElement(o),
                            m = s.getElementsByTagName(o)[0];
                        a.async = 1;
                        a.src = g;
                        m.parentNode.insertBefore(a, m)
                    })(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');
                    ga('create', 'UA-60624843-1', 'auto');
                    ga('send', 'pageview');
                </script>
            </div>
            <div id="world-api">
            <h2 class="page-header">API methods</h2>
                <p>The Base URL of the Rest API is:</p>
                <pre>https://api.planethoster.net/world-api/</pre>
                <hr>
                <h3>Account/Informations</h3>
            <div class="planetapi_row planetapi_operation planetapi_operation_GET">
                    <div class="planetapi_row planetapi_operation_signature">
                      <h4 class=""><span>GET</span> /test-connection</h4>
                      <div class="pull-right planetapi_operation_summary">
                        Test API connection
                      </div>
                    </div>
                    <div style="display: none;" class="planetapi_row planetapi_operation_full">
                      <div class="planetapi_block">
                          <p class="lead">Tests the connection to the reseller API, along with the API Key and API User.</p>
                      </div>
                      <pre>
curl -X GET \
  -H "X-API-KEY: XXXXX" \
  -H "X-API-USER: XXXXX" \
  'https://api.planethoster.net/world-api/test-connection'</pre>
                      <div class="planetapi_block">
                        <h5>Return value:</h5>
                        <p class="planetapi_return_value">
                        <pre>
{
 "message": "Connection successful",
 "successful_connection": true
}</pre>
                        </p>
                        <div class="planetapi_schema_placeholder"></div>
                      </div>
                      <div class="planetapi_block">
                        <h5>Possible JSON error codes:</h5>
                        <div class="planetapi_http_errors">
                          <table class="table table-striped">
                            <thead>
                              <tr>
                                <th class="span2">error_code</th>
                                <th>Reason</th>
                              </tr>
                            </thead>
                            <tbody>
                              <tr>
                                <td>5000</td>
                                <td>No reseller found</td>
                              </tr>
                              <tr>
                                <td>5004</td>
                                <td>World account not found</td>
                              </tr>
                            </tbody>
                          </table>
                        </div>
                      </div>
                    </div>
                  </div>
                <div class="planetapi_resource">
                    <!-- Show TLD Prices  -->
                  <div class="planetapi_row planetapi_operation planetapi_operation_GET">
                    <div class="planetapi_row planetapi_operation_signature">
                      <h4 class=""><span>GET</span> /get-accounts</h4>
                      <div class="pull-right planetapi_operation_summary">
                      Retrieve accounts information
                      </div>
                    </div>
                    <div style="display: none;" class="planetapi_row planetapi_operation_full">
                      <div class="planetapi_block">
                          <p class="lead">Displays The World account and all World sub accounts information</p>
                      </div>
                      <pre>
curl -X GET \
  -H "X-API-KEY: XXXXX" \
  -H "X-API-USER: XXXXX" \
  'https://api.planethoster.net/world-api/get-accounts'
</pre>
                      <div class="planetapi_block">
                        <h5>Return value:</h5>
                        <p class="planetapi_return_value">
                          <pre>
{
  {
    "nb_active_or_suspended_accounts": 1,
    "reseller_id": "XXXXX",
    "total_available_ressources": {
      "cpu": 7,
      "io": 15,
      "mem": 15
    },
    "world_accounts": [
      {
        "domain": "test-domain.com",
        "hostname": "world-server.test.planethoster.net",
        "id": 1234,
        "location": "ca",
        "ressources": {
          "cpu": 1,
          "io": 1,
          "mem": 1
        },
        "status": "Active"
      }
    ]
}</pre>
                          </p>
                          <div class="planetapi_block">
                            <h5>Possible JSON error codes:</h5>
                            <div class="planetapi_http_errors">
                              <table class="table table-striped">
                                <thead>
                                  <tr>
                                    <th class="span2">error_code</th>
                                    <th>Reason</th>
                                  </tr>
                                </thead>
                                <tbody>
                                  <tr>
                                    <td>5000</td>
                                    <td>Active or suspended accounts not found</td>
                                  </tr>
                                </tbody>
                              </table>
                            </div>
                          </div>
                          <div class="planetapi_schema_placeholder"></div>
                        </div>
                      </div>
                    </div>
                  </div>
                            <h3>World Hostings actions</h3>
                            <div class="planetapi_resource">
                                <!-- Save information contact  -->
                                <div class="planetapi_row planetapi_operation planetapi_operation_POST">
                                    <div class="planetapi_row planetapi_operation_signature">
                                        <h4 class=""><span>POST</span> /create-account</h4>
                                        <div class="pull-right planetapi_operation_summary">
                                            Create a world account
                                        </div>
                                    </div>

                                    <div style="display: none;" class="planetapi_row planetapi_operation_full">
                                        <div class="planetapi_block">
                                            <p class="lead">Creates a world hosting, assigns the requested resources</p>
                                        </div>
                                        <pre>
curl -X POST \
  -H "X-API-KEY: XXXXX" \
  -H "X-API-USER: XXXXX" \
  -H "Content-Type: application/json" \
  -d '{"domain": "test-domain.com", "country": "ca", "cpu": 1, "mem": 1, "io": 1, "ls": true, "with_cpanel": 'false'}' \
  'https://api.planethoster.net/world-api/create-account'
</pre>
                                        <div class="planetapi_block">
                                            <h5>Parameters:</h5>

                                            <div class="planetapi_parameters">
                                                <table class="table table-striped">
                                                    <thead>
                                                        <tr>
                                                            <th class="span2">&nbsp;</th>
                                                            <th class="span2">Name</th>
                                                            <th class="span2">Type</th>
                                                            <th>Description</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <tr>
                                                            <td class="planetapi_parameter_POST">POST</td>
                                                            <td class="planetapi_parameter_required required">domain</td>
                                                            <td>string</td>
                                                            <td>The complete domain name</td>
                                                        </tr>
                                                        <tr>
                                                            <td class="planetapi_parameter_POST">POST</td>
                                                            <td class="planetapi_parameter_required required">country</td>
                                                            <td>string</td>
                                                            <td>The localisation of the server Possibility: ("fr" ou "ca")</td>
                                                        </tr>
                                                        <tr>
                                                            <td class="planetapi_parameter_POST">POST</td>
                                                            <td class="planetapi_parameter_required required">cpu</td>
                                                            <td>integer</td>
                                                            <td>The amount of CPUs allocate to the account</td>
                                                        </tr>
                                                        <tr>
                                                            <td class="planetapi_parameter_POST">POST</td>
                                                            <td class="planetapi_parameter_required required">mem</td>
                                                            <td>integer</td>
                                                            <td>The amount of Memory allocate to the account (GB)</td>
                                                        </tr>
                                                        <tr>
                                                            <td class="planetapi_parameter_POST">POST</td>
                                                            <td class="planetapi_parameter_required required">io</td>
                                                            <td>integer</td>
                                                            <td>The amount of I/O allocate to the account (MB/s)</td>
                                                        </tr>
                                                        <tr>
                                                            <td class="planetapi_parameter_POST">POST</td>
                                                            <td class="planetapi_parameter_required required">ls</td>
                                                            <td>string</td>
                                                            <td>Select litespeed server (VIP client only)</td>
                                                        </tr>
                                                        <tr>
                                                            <td class="planetapi_parameter_POST">POST</td>
                                                            <td class="planetapi_parameter_required required">with_cpanel</td>
                                                            <td>string</td>
                                                            <td>Selecting the control panel with N0C or cPanel</td>
                                                        </tr>
                                                    </tbody>
                                                </table>

                                            </div>
                                        </div>

                                        <div class="planetapi_block">
                                            <h5>Return value:</h5>
                                            <p class="planetapi_return_value">
                                                <pre>
{
  "account_created": true,
  "server_hostname": "world-server.planethoster.com",
  "server_ip": "199.16.XX.XXX",
  "id": "1234",
  "username": "username",
  "password": "XXXXXXXXX",
}
</pre>
                                            </p>

                                            <div class="planetapi_block">
                                                <h5>Possible JSON error codes:</h5>
                                                <div class="planetapi_http_errors">
                                                    <table class="table table-striped">
                                                        <thead>
                                                            <tr>
                                                                <th class="span2">error_code</th>
                                                                <th>Reason</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr>
                                                                <td>5000</td>
                                                                <td>Failed to create account or invalid domain name</td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="planetapi_resource">
                                <!-- Save NameServers -->
                                <div class="planetapi_row planetapi_operation planetapi_operation_POST">
                                    <div class="planetapi_row planetapi_operation_signature">
                                        <h4 class=""><span>POST</span> /suspend-account</h4>
                                        <div class="pull-right planetapi_operation_summary">
                                            Suspension of a world account
                                        </div>
                                    </div>

                                    <div style="display: none;" class="planetapi_row planetapi_operation_full">
                                        <div class="planetapi_block">
                                            <p class="lead">Proceed to the suspension of a World account</p>
                                        </div>
                                        <pre>
curl -X POST \
  -H "X-API-KEY: XXXXX" \
  -H "X-API-USER: XXXXX" \
  -H "Content-Type: application/json" \
  -d '{"id": 123, "reason": "Suspension reason"}' \
  'https://api.planethoster.net/world-api/suspend-account'
</pre>
                                        <div class="planetapi_block">
                                            <h5>Parameters:</h5>

                                            <div class="planetapi_parameters">
                                                <table class="table table-striped">
                                                    <thead>
                                                        <tr>
                                                            <th class="span2">&nbsp;</th>
                                                            <th class="span2">Name</th>
                                                            <th class="span2">Type</th>
                                                            <th>Description</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <tr>
                                                            <td class="planetapi_parameter_POST">POST</td>
                                                            <td class="planetapi_parameter_required required">id</td>
                                                            <td>string</td>
                                                            <td>The World account ID (Can be found with /get-accounts)</td>
                                                        </tr>
                                                        <tr>
                                                            <td class="planetapi_parameter_POST">POST</td>
                                                            <td class="planetapi_parameter_required required">reason</td>
                                                            <td>string</td>
                                                            <td>The reason for the suspension</td>
                                                        </tr>
                                                    </tbody>
                                                </table>

                                            </div>
                                        </div>

                                        <div class="planetapi_block">
                                            <h5>Return value:</h5>
                                            <p class="planetapi_return_value">
                                                <pre>
{
  "account_suspended": true,
  "message": "Successfully suspend account",
  "suspension_reason": "Suspension reason",
}
</pre>
                                            </p>

                                            <div class="planetapi_block">
                                                <h5>Possible JSON error codes:</h5>
                                                <div class="planetapi_http_errors">
                                                    <table class="table table-striped">
                                                        <thead>
                                                            <tr>
                                                                <th class="span2">error_code</th>
                                                                <th>Reason</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr>
                                                                <td>5000</td>
                                                                <td>No world account found, missing parameters or account already suspend</td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="planetapi_resource">
                                <!-- Save DNS Zone Records  -->
                                <div class="planetapi_row planetapi_operation planetapi_operation_POST">
                                    <div class="planetapi_row planetapi_operation_signature">
                                        <h4 class=""><span>POST</span> /unsuspend-account</h4>
                                        <div class="pull-right planetapi_operation_summary">
                                            Reactivating a World Account
                                        </div>
                                    </div>

                                    <div style="display: none;" class="planetapi_row planetapi_operation_full">
                                        <div class="planetapi_block">
                                            <p class="lead">Reactivate suspended world account</p>
                                        </div>
                                        <pre>
curl -X POST \
  -H "X-API-KEY: XXXXX" \
  -H "X-API-USER: XXXXX" \
  -H "Content-Type: application/json" \
  -d '{"id": 123}' \
  'https://api.planethoster.net/world-api/unsuspend-account'
</pre>
                                        <div class="planetapi_block">
                                            <h5>Parameters:</h5>

                                            <div class="planetapi_parameters">
                                                <table class="table table-striped">
                                                    <thead>
                                                        <tr>
                                                            <th class="span2">&nbsp;</th>
                                                            <th class="span2">Name</th>
                                                            <th class="span2">Type</th>
                                                            <th>Description</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <tr>
                                                            <td class="planetapi_parameter_POST">POST</td>
                                                            <td class="planetapi_parameter_required required">id</td>
                                                            <td>string</td>
                                                            <td>The World account ID (Can be found with /get-accounts)</td>
                                                        </tr>
                                                    </tbody>
                                                </table>

                                            </div>
                                        </div>

                                        <div class="planetapi_block">
                                            <h5>Return value:</h5>
                                            <p class="planetapi_return_value">
                                                <pre>
{
  "account_unsuspended": true,
  "message": "Successfully unsuspend account",
}
</pre>
                                            </p>

                                            <div class="planetapi_block">
                                                <h5>Possible JSON error codes:</h5>
                                                <div class="planetapi_http_errors">
                                                    <table class="table table-striped">
                                                        <thead>
                                                            <tr>
                                                                <th class="span2">error_code</th>
                                                                <th>Reason</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr>
                                                                <td>5000</td>
                                                                <td>World account is not suspended</td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="planetapi_resource">
                                <!-- Save Registrar Lock  -->
                                <div class="planetapi_row planetapi_operation planetapi_operation_POST">
                                    <div class="planetapi_row planetapi_operation_signature">
                                        <h4 class=""><span>POST</span> /modify-ressources</h4>
                                        <div class="pull-right planetapi_operation_summary">
                                            Edit the resources of a World account
                                        </div>
                                    </div>

                                    <div style="display: none;" class="planetapi_row planetapi_operation_full">
                                        <div class="planetapi_block"><p class="lead">Modify the resources associated with a World account</p>
                                        </div>
                                        <pre>
curl -X POST \
  -H "X-API-KEY: XXXXX" \
  -H "X-API-USER: XXXXX" \
  -H "Content-Type: application/json" \
  -d '{"id": 123, "cpu": 1, "mem": 1, "io": 1}' \
  'https://api.planethoster.net/world-api/modify-ressources'
</pre>
                                        <div class="planetapi_block">
                                            <h5>Parameters:</h5>

                                            <div class="planetapi_parameters">
                                                <table class="table table-striped">
                                                    <thead>
                                                        <tr>
                                                            <th class="span2">&nbsp;</th>
                                                            <th class="span2">Name</th>
                                                            <th class="span2">Type</th>
                                                            <th>Description</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <tr>
                                                            <td class="planetapi_parameter_POST">POST</td>
                                                            <td class="planetapi_parameter_required required">id</td>
                                                            <td>string</td>
                                                            <td>The World account ID (Can be found with /get-accounts)</td>
                                                        </tr>
                                                        <tr>
                                                            <td class="planetapi_parameter_POST">POST</td>
                                                            <td class="planetapi_parameter_required required">cpu</td>
                                                            <td>integer</td>
                                                            <td>The amount of CPUs assigned to the account</td>
                                                        </tr>
                                                        <tr>
                                                            <td class="planetapi_parameter_POST">POST</td>
                                                            <td class="planetapi_parameter_required required">mem</td>
                                                            <td>integer</td>
                                                            <td>The amount of memory assigned to the account (GB)</td>
                                                        </tr>
                                                        <tr>
                                                            <td class="planetapi_parameter_POST">POST</td>
                                                            <td class="planetapi_parameter_required required">io</td>
                                                            <td>integer</td>
                                                            <td>The amount of I/O assigned to the account (MB/s)</td>
                                                        </tr>
                                                    </tbody>
                                                </table>

                                            </div>
                                        </div>

                                        <div class="planetapi_block">
                                            <h5>Return value:</h5>
                                            <p class="planetapi_return_value">
                                                <pre>
{
  "cpu_updated": true,
  "errors": [],
  "io_updated": false,
  "mem_updated": true,
}
</pre>
                                            </p>

                                            <div class="planetapi_block">
                                                <h5>Possible JSON error codes:</h5>
                                                <div class="planetapi_http_errors">
                                                    <table class="table table-striped">
                                                        <thead>
                                                            <tr>
                                                                <th class="span2">error_code</th>
                                                                <th>Reason</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr>
                                                                <td>5000</td>
                                                                <td>Invalid ressources values or not enough available ressources</td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="planetapi_resource">
                                <!-- Install CMS  -->
                                <div class="planetapi_row planetapi_operation planetapi_operation_POST">
                                    <div class="planetapi_row planetapi_operation_signature">
                                        <h4 class=""><span>POST</span> /install-cms</h4>
                                        <div class="pull-right planetapi_operation_summary">
                                            Install CMS on a World account
                                        </div>
                                    </div>

                                    <div style="display: none;" class="planetapi_row planetapi_operation_full">
                                        <div class="planetapi_block"><p class="lead">Install CMS on a World account</p>
                                        </div>
                                        <pre>
curl -X POST \
  -H "X-API-KEY: XXXXX" \
  -H "X-API-USER: XXXXX" \
  -H "Content-Type: application/json" \
  -d '{"id": 123, "cms": "wp"}' \
  'https://api.planethoster.net/world-api/install-cms'
</pre>
                                        <div class="planetapi_block">
                                            <h5>Parameters:</h5>

                                            <div class="planetapi_parameters">
                                                <table class="table table-striped">
                                                    <thead>
                                                        <tr>
                                                            <th class="span2">&nbsp;</th>
                                                            <th class="span2">Name</th>
                                                            <th class="span2">Type</th>
                                                            <th>Description</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <tr>
                                                            <td class="planetapi_parameter_POST">POST</td>
                                                            <td class="planetapi_parameter_required required">id</td>
                                                            <td>string</td>
                                                            <td>The World account ID (Can be found with /get-accounts)</td>
                                                        </tr>
                                                        <tr>
                                                            <td class="planetapi_parameter_POST">POST</td>
                                                            <td class="planetapi_parameter_required required">cms</td>
                                                            <td>string</td>
                                                            <td>The name of the CMS to install ("wp","joomla","drupal","presta")</td>
                                                        </tr>
                                                    </tbody>
                                                </table>

                                            </div>
                                        </div>

                                        <div class="planetapi_block">
                                            <h5>Return value:</h5>
                                            <p class="planetapi_return_value">
                                                <pre>
{
  "errors": [],
  "admin_username": "username",
  "admin_pass": "XXXXXXXXX"
}
</pre>
                                            </p>

                                            <div class="planetapi_block">
                                                <h5>Possible JSON error codes:</h5>
                                                <div class="planetapi_http_errors">
                                                    <table class="table table-striped">
                                                        <thead>
                                                            <tr>
                                                                <th class="span2">error_code</th>
                                                                <th>Reason</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr>
                                                                <td>5000</td>
                                                                <td>Invalid CMS</td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <h3>The World Hosting actions (Parent Account)</h3>
                            <div class="planetapi_resource">
                                <!-- Get Email Autinfo  -->
                                <div class="planetapi_row planetapi_operation planetapi_operation_POST">
                                    <div class="planetapi_row planetapi_operation_signature">
                                        <h4 class=""><span>POST</span>/upgrade-plan</h4>
                                        <div class="pull-right planetapi_operation_summary">
                                        Increase resources
                                        </div>
                                    </div>

                                    <div style="display: none;" class="planetapi_row planetapi_operation_full">
                                        <div class="planetapi_block"><p class="lead">Increases resources associated with The World account</p></div>
                                        <pre>
curl -X POST \
  -H "X-API-KEY: XXXXX" \
  -H "X-API-USER: XXXXX" \
  -H "Content-Type: application/json" \
  -d '{"cpu": 1, "mem": 1, "io": 1}' \
  'https://api.planethoster.net/world-api/upgrade-plan'
</pre>
                                        <div class="planetapi_block">
                                            <h5>Parameters:</h5>

                                            <div class="planetapi_parameters">
                                                <table class="table table-striped">
                                                    <thead>
                                                        <tr>
                                                            <th class="span2">&nbsp;</th>
                                                            <th class="span2">Name</th>
                                                            <th class="span2">Type</th>
                                                            <th>Description</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <tr>
                                                            <td class="planetapi_parameter_POST">POST</td>
                                                            <td class="planetapi_parameter_required required">cpu</td>
                                                            <td>integer</td>
                                                            <td>The amount of CPUs assigned to the account</td>
                                                        </tr>
                                                        <tr>
                                                            <td class="planetapi_parameter_POST">POST</td>
                                                            <td class="planetapi_parameter_required required">mem</td>
                                                            <td>integer</td>
                                                            <td>The amount of memory assigned to the account (GB)</td>
                                                        </tr>
                                                        <tr>
                                                            <td class="planetapi_parameter_POST">POST</td>
                                                            <td class="planetapi_parameter_required required">io</td>
                                                            <td>integer</td>
                                                            <td>The amount of I/O assigned to the account (MB/s)</td>
                                                        </tr>
                                                    </tbody>
                                                </table>

                                            </div>
                                        </div>

                                        <div class="planetapi_block">
                                            <h5>Return value:</h5>
                                            <p class="planetapi_return_value">
                                                <pre>
{
    "message": "Successfully upgrade your plan",
    "price_of_upgrades": "56.55",
    "credit_remaining": "8375.43",
    "total_ressources": {
        "cpu": 24,
        "mem": 24,
        "io": 24
    },
    "available_ressources": {
        "cpu": 18,
        "mem": 18,
        "io": 18
    },
}
</pre>
                                            </p>

                                            <div class="planetapi_block">
                                                <h5>Possible JSON error codes:</h5>
                                                <div class="planetapi_http_errors">
                                                    <table class="table table-striped">
                                                        <thead>
                                                            <tr>
                                                                <th class="span2">error_code</th>
                                                                <th>Reason</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr>
                                                                <td>5000</td>
                                                                <td>Error creating order, not enough credit or invalid ressources values</td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div><br>
                            <div id="api_authentication" class="tab-pane">
                        <div class="api_doc">
                            <h2 class="page-header">PlanetHoster API Basics</h2>

                            <p>Our web API is organized so that integrating with it is as straightforward as possible. Every HTTP request is either a GET or a POST, every request requires an `api_key` and an `api_user`, which are provided to you upon signup, and the HTTP response is always formatted as JSON. Errors can occur, and when they do we return the keys: </p>

                            <pre>error_code: (integer), an error code</pre>

                            <p>and:</p>

                            <pre>error: (string), an error message</pre>

                            <p>For each API command that is documented here, we'll let you know about each possible error or success condition.</p>

                            <p class="alert alert-warning"><strong>Notice:</strong> If those fields aren't present in the returned JSON, the API command was successful. Success of course means different things for different commands: for domain registration it means the domain has successfully been registered, for domain transfer it means that the transfer request has been sent to the correct registry and for domain renewal, it means the domain has been renewed for the number of years specified in the command. A call to `get-nameservers` will simply return the nameservers associated with the domain, etc.</p>
                        </div>

                        <div class="api_doc">
                            <h2 class="page-header">API Conventions</h2>

                            <p>Requests to the API consist of fields (parameter names) and their values that are sent in either the URL's query parameters or the request's POST body (for GET and POST requests respectively). Each field for each API command is documented as having a 'type', either as a string, an integer, a boolean, a date, or a hashmap (associative array). </p>

                            <pre>For string fields, these are simply the strings themselves.
Example: "https://api.planethoster.net/domain-reseller/register-domain?sld=mydomain&tld=com"
--
For integer fields, these are simply the string representation of the integer.
Example: "https://api.planethoster.net/domain-reseller/register-domain?period=1"
---
For boolean fields, '1' is always treated as true, and "" (empty string) is treated as false.
Example: "https://api.planethoster.net/domain-reseller/register-domain?id_protection="
--
For dates fields, these are represented in the following format: "YYYY-MM-DD".
Example: "https://api.planethoster.net/domain-reseller/register-domain?somedatefield=2017-01-01"
---
For hashmaps, these are represented in the following way:
"https://api.planethoster.net/domain-reseller/register-domain?fieldname[key1]=val1&fieldname[key2]=val2"</pre>
                            <p>Note that all field names and their values must be URL-encoded. For example, in PHP, use the `urlencode` or `http_build_query` functions. Spaces in the field names and values can be encoded to `+` or `%20`. Either of these is acceptable. </p>

                            <p>For responses, which are in JSON, all dates are returned in the same format ("YYYY-MM-DD"), as strings. Booleans are returned as JSON `true` and `false`, and currency amounts are returned as strings formatted in the following way: "9.99". </p>
                        </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </body>
</html>
```