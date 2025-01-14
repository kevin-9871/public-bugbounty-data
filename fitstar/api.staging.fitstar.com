```
<!DOCTYPE HTML>
<html lang="en-US">
    <head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>

    <title>404</title>
    <meta name="language" content="en"/>
    <meta name="country" content="US"/>
    
    
    <meta name="template" content="blank-page"/>

    
    
    
    
    
    <meta name="inventory-messages" content="/global/content/fitbit/na/en_us/inventory-messages.model.json"/>
    
    <meta name="drJsToken" content="pk_07bfc2cdaaa04882b088e0192a6d46da"/>
    <meta name="ldcheck" content="false"/>
    <meta name="locale" content="en_us"/>
    <meta name="dr-locale" content="en_US"/>
    <meta name="non-cart" content="false"/>
    <meta name="currency" content="USD"/>
    <meta name="og:title" content="404"/>
    
    <meta name="og:url" content="https://www.fitbit.com/global/us/404"/>
    <meta name="og:image" content="/global/content/dam/fitbit/global/product-logos/logosoctober2020/OG-image-fitbit-generic.jpg"/>
    

    <meta name="page-name" content="Generic Template"/>


    <script type="text/javascript">
    window.NREUM||(NREUM={}),__nr_require=function(t,n,e){function r(e){if(!n[e]){var o=n[e]={exports:{}};t[e][0].call(o.exports,function(n){var o=t[e][1][n];return r(o||n)},o,o.exports)}return n[e].exports}if("function"==typeof __nr_require)return __nr_require;for(var o=0;o<e.length;o++)r(e[o]);return r}({1:[function(t,n,e){function r(t){try{s.console&&console.log(t)}catch(n){}}var o,i=t("ee"),a=t(20),s={};try{o=localStorage.getItem("__nr_flags").split(","),console&&"function"==typeof console.log&&(s.console=!0,o.indexOf("dev")!==-1&&(s.dev=!0),o.indexOf("nr_dev")!==-1&&(s.nrDev=!0))}catch(c){}s.nrDev&&i.on("internal-error",function(t){r(t.stack)}),s.dev&&i.on("fn-err",function(t,n,e){r(e.stack)}),s.dev&&(r("NR AGENT IN DEVELOPMENT MODE"),r("flags: "+a(s,function(t,n){return t}).join(", ")))},{}],2:[function(t,n,e){function r(t,n,e,r,s){try{p?p-=1:o(s||new UncaughtException(t,n,e),!0)}catch(f){try{i("ierr",[f,c.now(),!0])}catch(d){}}return"function"==typeof u&&u.apply(this,a(arguments))}function UncaughtException(t,n,e){this.message=t||"Uncaught error with no additional information",this.sourceURL=n,this.line=e}function o(t,n){var e=n?null:c.now();i("err",[t,e])}var i=t("handle"),a=t(21),s=t("ee"),c=t("loader"),f=t("gos"),u=window.onerror,d=!1,l="nr@seenError",p=0;c.features.err=!0,t(1),window.onerror=r;try{throw new Error}catch(h){"stack"in h&&(t(9),t(8),"addEventListener"in window&&t(5),c.xhrWrappable&&t(10),d=!0)}s.on("fn-start",function(t,n,e){d&&(p+=1)}),s.on("fn-err",function(t,n,e){d&&!e[l]&&(f(e,l,function(){return!0}),this.thrown=!0,o(e))}),s.on("fn-end",function(){d&&!this.thrown&&p>0&&(p-=1)}),s.on("internal-error",function(t){i("ierr",[t,c.now(),!0])})},{}],3:[function(t,n,e){t("loader").features.ins=!0},{}],4:[function(t,n,e){function r(t){}if(window.performance&&window.performance.timing&&window.performance.getEntriesByType){var o=t("ee"),i=t("handle"),a=t(9),s=t(8),c="learResourceTimings",f="addEventListener",u="resourcetimingbufferfull",d="bstResource",l="resource",p="-start",h="-end",m="fn"+p,w="fn"+h,v="bstTimer",g="pushState",y=t("loader");y.features.stn=!0,t(7),"addEventListener"in window&&t(5);var x=NREUM.o.EV;o.on(m,function(t,n){var e=t[0];e instanceof x&&(this.bstStart=y.now())}),o.on(w,function(t,n){var e=t[0];e instanceof x&&i("bst",[e,n,this.bstStart,y.now()])}),a.on(m,function(t,n,e){this.bstStart=y.now(),this.bstType=e}),a.on(w,function(t,n){i(v,[n,this.bstStart,y.now(),this.bstType])}),s.on(m,function(){this.bstStart=y.now()}),s.on(w,function(t,n){i(v,[n,this.bstStart,y.now(),"requestAnimationFrame"])}),o.on(g+p,function(t){this.time=y.now(),this.startPath=location.pathname+location.hash}),o.on(g+h,function(t){i("bstHist",[location.pathname+location.hash,this.startPath,this.time])}),f in window.performance&&(window.performance["c"+c]?window.performance[f](u,function(t){i(d,[window.performance.getEntriesByType(l)]),window.performance["c"+c]()},!1):window.performance[f]("webkit"+u,function(t){i(d,[window.performance.getEntriesByType(l)]),window.performance["webkitC"+c]()},!1)),document[f]("scroll",r,{passive:!0}),document[f]("keypress",r,!1),document[f]("click",r,!1)}},{}],5:[function(t,n,e){function r(t){for(var n=t;n&&!n.hasOwnProperty(u);)n=Object.getPrototypeOf(n);n&&o(n)}function o(t){s.inPlace(t,[u,d],"-",i)}function i(t,n){return t[1]}var a=t("ee").get("events"),s=t("wrap-function")(a,!0),c=t("gos"),f=XMLHttpRequest,u="addEventListener",d="removeEventListener";n.exports=a,"getPrototypeOf"in Object?(r(document),r(window),r(f.prototype)):f.prototype.hasOwnProperty(u)&&(o(window),o(f.prototype)),a.on(u+"-start",function(t,n){var e=t[1],r=c(e,"nr@wrapped",function(){function t(){if("function"==typeof e.handleEvent)return e.handleEvent.apply(e,arguments)}var n={object:t,"function":e}[typeof e];return n?s(n,"fn-",null,n.name||"anonymous"):e});this.wrapped=t[1]=r}),a.on(d+"-start",function(t){t[1]=this.wrapped||t[1]})},{}],6:[function(t,n,e){function r(t,n,e){var r=t[n];"function"==typeof r&&(t[n]=function(){var t=i(arguments),n={};o.emit(e+"before-start",[t],n);var a;n[m]&&n[m].dt&&(a=n[m].dt);var s=r.apply(this,t);return o.emit(e+"start",[t,a],s),s.then(function(t){return o.emit(e+"end",[null,t],s),t},function(t){throw o.emit(e+"end",[t],s),t})})}var o=t("ee").get("fetch"),i=t(21),a=t(20);n.exports=o;var s=window,c="fetch-",f=c+"body-",u=["arrayBuffer","blob","json","text","formData"],d=s.Request,l=s.Response,p=s.fetch,h="prototype",m="nr@context";d&&l&&p&&(a(u,function(t,n){r(d[h],n,f),r(l[h],n,f)}),r(s,"fetch",c),o.on(c+"end",function(t,n){var e=this;if(n){var r=n.headers.get("content-length");null!==r&&(e.rxSize=r),o.emit(c+"done",[null,n],e)}else o.emit(c+"done",[t],e)}))},{}],7:[function(t,n,e){var r=t("ee").get("history"),o=t("wrap-function")(r);n.exports=r;var i=window.history&&window.history.constructor&&window.history.constructor.prototype,a=window.history;i&&i.pushState&&i.replaceState&&(a=i),o.inPlace(a,["pushState","replaceState"],"-")},{}],8:[function(t,n,e){var r=t("ee").get("raf"),o=t("wrap-function")(r),i="equestAnimationFrame";n.exports=r,o.inPlace(window,["r"+i,"mozR"+i,"webkitR"+i,"msR"+i],"raf-"),r.on("raf-start",function(t){t[0]=o(t[0],"fn-")})},{}],9:[function(t,n,e){function r(t,n,e){t[0]=a(t[0],"fn-",null,e)}function o(t,n,e){this.method=e,this.timerDuration=isNaN(t[1])?0:+t[1],t[0]=a(t[0],"fn-",this,e)}var i=t("ee").get("timer"),a=t("wrap-function")(i),s="setTimeout",c="setInterval",f="clearTimeout",u="-start",d="-";n.exports=i,a.inPlace(window,[s,"setImmediate"],s+d),a.inPlace(window,[c],c+d),a.inPlace(window,[f,"clearImmediate"],f+d),i.on(c+u,r),i.on(s+u,o)},{}],10:[function(t,n,e){function r(t,n){d.inPlace(n,["onreadystatechange"],"fn-",s)}function o(){var t=this,n=u.context(t);t.readyState>3&&!n.resolved&&(n.resolved=!0,u.emit("xhr-resolved",[],t)),d.inPlace(t,g,"fn-",s)}function i(t){y.push(t),h&&(b?b.then(a):w?w(a):(E=-E,O.data=E))}function a(){for(var t=0;t<y.length;t++)r([],y[t]);y.length&&(y=[])}function s(t,n){return n}function c(t,n){for(var e in t)n[e]=t[e];return n}t(5);var f=t("ee"),u=f.get("xhr"),d=t("wrap-function")(u),l=NREUM.o,p=l.XHR,h=l.MO,m=l.PR,w=l.SI,v="readystatechange",g=["onload","onerror","onabort","onloadstart","onloadend","onprogress","ontimeout"],y=[];n.exports=u;var x=window.XMLHttpRequest=function(t){var n=new p(t);try{u.emit("new-xhr",[n],n),n.addEventListener(v,o,!1)}catch(e){try{u.emit("internal-error",[e])}catch(r){}}return n};if(c(p,x),x.prototype=p.prototype,d.inPlace(x.prototype,["open","send"],"-xhr-",s),u.on("send-xhr-start",function(t,n){r(t,n),i(n)}),u.on("open-xhr-start",r),h){var b=m&&m.resolve();if(!w&&!m){var E=1,O=document.createTextNode(E);new h(a).observe(O,{characterData:!0})}}else f.on("fn-end",function(t){t[0]&&t[0].type===v||a()})},{}],11:[function(t,n,e){function r(t){if(!i(t))return null;var n=window.NREUM;if(!n.loader_config)return null;var e=(n.loader_config.accountID||"").toString()||null,r=(n.loader_config.agentID||"").toString()||null,s=(n.loader_config.trustKey||"").toString()||null;if(!e||!r)return null;var c=a.generateCatId(),f=a.generateCatId(),u=Date.now(),d=o(c,f,u,e,r,s);return{header:d,guid:c,traceId:f,timestamp:u}}function o(t,n,e,r,o,i){var a="btoa"in window&&"function"==typeof window.btoa;if(!a)return null;var s={v:[0,1],d:{ty:"Browser",ac:r,ap:o,id:t,tr:n,ti:e}};return i&&r!==i&&(s.d.tk=i),btoa(JSON.stringify(s))}function i(t){var n=!1,e=!1,r={};if("init"in NREUM&&"distributed_tracing"in NREUM.init&&(r=NREUM.init.distributed_tracing,e=!!r.enabled),e)if(t.sameOrigin)n=!0;else if(r.allowed_origins instanceof Array)for(var o=0;o<r.allowed_origins.length;o++){var i=s(r.allowed_origins[o]);if(t.hostname===i.hostname&&t.protocol===i.protocol&&t.port===i.port){n=!0;break}}return e&&n}var a=t(18),s=t(13);n.exports={generateTracePayload:r,shouldGenerateTrace:i}},{}],12:[function(t,n,e){function r(t){var n=this.params,e=this.metrics;if(!this.ended){this.ended=!0;for(var r=0;r<p;r++)t.removeEventListener(l[r],this.listener,!1);n.aborted||(e.duration=s.now()-this.startTime,this.loadCaptureCalled||4!==t.readyState?null==n.status&&(n.status=0):a(this,t),e.cbTime=this.cbTime,d.emit("xhr-done",[t],t),c("xhr",[n,e,this.startTime]))}}function o(t,n){var e=t.responseType;if("json"===e&&null!==n)return n;var r="arraybuffer"===e||"blob"===e||"json"===e?t.response:t.responseText;return w(r)}function i(t,n){var e=f(n),r=t.params;r.host=e.hostname+":"+e.port,r.pathname=e.pathname,t.parsedOrigin=f(n),t.sameOrigin=t.parsedOrigin.sameOrigin}function a(t,n){t.params.status=n.status;var e=o(n,t.lastSize);if(e&&(t.metrics.rxSize=e),t.sameOrigin){var r=n.getResponseHeader("X-NewRelic-App-Data");r&&(t.params.cat=r.split(", ").pop())}t.loadCaptureCalled=!0}var s=t("loader");if(s.xhrWrappable){var c=t("handle"),f=t(13),u=t(11).generateTracePayload,d=t("ee"),l=["load","error","abort","timeout"],p=l.length,h=t("id"),m=t(16),w=t(15),v=window.XMLHttpRequest;s.features.xhr=!0,t(10),t(6),d.on("new-xhr",function(t){var n=this;n.totalCbs=0,n.called=0,n.cbTime=0,n.end=r,n.ended=!1,n.xhrGuids={},n.lastSize=null,n.loadCaptureCalled=!1,t.addEventListener("load",function(e){a(n,t)},!1),m&&(m>34||m<10)||window.opera||t.addEventListener("progress",function(t){n.lastSize=t.loaded},!1)}),d.on("open-xhr-start",function(t){this.params={method:t[0]},i(this,t[1]),this.metrics={}}),d.on("open-xhr-end",function(t,n){"loader_config"in NREUM&&"xpid"in NREUM.loader_config&&this.sameOrigin&&n.setRequestHeader("X-NewRelic-ID",NREUM.loader_config.xpid);var e=u(this.parsedOrigin);e&&e.header&&(n.setRequestHeader("newrelic",e.header),this.dt=e)}),d.on("send-xhr-start",function(t,n){var e=this.metrics,r=t[0],o=this;if(e&&r){var i=w(r);i&&(e.txSize=i)}this.startTime=s.now(),this.listener=function(t){try{"abort"!==t.type||o.loadCaptureCalled||(o.params.aborted=!0),("load"!==t.type||o.called===o.totalCbs&&(o.onloadCalled||"function"!=typeof n.onload))&&o.end(n)}catch(e){try{d.emit("internal-error",[e])}catch(r){}}};for(var a=0;a<p;a++)n.addEventListener(l[a],this.listener,!1)}),d.on("xhr-cb-time",function(t,n,e){this.cbTime+=t,n?this.onloadCalled=!0:this.called+=1,this.called!==this.totalCbs||!this.onloadCalled&&"function"==typeof e.onload||this.end(e)}),d.on("xhr-load-added",function(t,n){var e=""+h(t)+!!n;this.xhrGuids&&!this.xhrGuids[e]&&(this.xhrGuids[e]=!0,this.totalCbs+=1)}),d.on("xhr-load-removed",function(t,n){var e=""+h(t)+!!n;this.xhrGuids&&this.xhrGuids[e]&&(delete this.xhrGuids[e],this.totalCbs-=1)}),d.on("addEventListener-end",function(t,n){n instanceof v&&"load"===t[0]&&d.emit("xhr-load-added",[t[1],t[2]],n)}),d.on("removeEventListener-end",function(t,n){n instanceof v&&"load"===t[0]&&d.emit("xhr-load-removed",[t[1],t[2]],n)}),d.on("fn-start",function(t,n,e){n instanceof v&&("onload"===e&&(this.onload=!0),("load"===(t[0]&&t[0].type)||this.onload)&&(this.xhrCbStart=s.now()))}),d.on("fn-end",function(t,n){this.xhrCbStart&&d.emit("xhr-cb-time",[s.now()-this.xhrCbStart,this.onload,n],n)}),d.on("fetch-before-start",function(t){var n,e=t[1]||{};"string"==typeof t[0]?n=t[0]:t[0]&&t[0].url&&(n=t[0].url),n&&(this.parsedOrigin=f(n),this.sameOrigin=this.parsedOrigin.sameOrigin);var r=u(this.parsedOrigin);if(r&&r.header){var o=r.header;if("string"==typeof t[0]){var i={};for(var a in e)i[a]=e[a];i.headers=new Headers(e.headers||{}),i.headers.set("newrelic",o),this.dt=r,t.length>1?t[1]=i:t.push(i)}else t[0]&&t[0].headers&&(t[0].headers.append("newrelic",o),this.dt=r)}})}},{}],13:[function(t,n,e){var r={};n.exports=function(t){if(t in r)return r[t];var n=document.createElement("a"),e=window.location,o={};n.href=t,o.port=n.port;var i=n.href.split("://");!o.port&&i[1]&&(o.port=i[1].split("/")[0].split("@").pop().split(":")[1]),o.port&&"0"!==o.port||(o.port="https"===i[0]?"443":"80"),o.hostname=n.hostname||e.hostname,o.pathname=n.pathname,o.protocol=i[0],"/"!==o.pathname.charAt(0)&&(o.pathname="/"+o.pathname);var a=!n.protocol||":"===n.protocol||n.protocol===e.protocol,s=n.hostname===document.domain&&n.port===e.port;return o.sameOrigin=a&&(!n.hostname||s),"/"===o.pathname&&(r[t]=o),o}},{}],14:[function(t,n,e){function r(){}function o(t,n,e){return function(){return i(t,[f.now()].concat(s(arguments)),n?null:this,e),n?void 0:this}}var i=t("handle"),a=t(20),s=t(21),c=t("ee").get("tracer"),f=t("loader"),u=NREUM;"undefined"==typeof window.newrelic&&(newrelic=u);var d=["setPageViewName","setCustomAttribute","setErrorHandler","finished","addToTrace","inlineHit","addRelease"],l="api-",p=l+"ixn-";a(d,function(t,n){u[n]=o(l+n,!0,"api")}),u.addPageAction=o(l+"addPageAction",!0),u.setCurrentRouteName=o(l+"routeName",!0),n.exports=newrelic,u.interaction=function(){return(new r).get()};var h=r.prototype={createTracer:function(t,n){var e={},r=this,o="function"==typeof n;return i(p+"tracer",[f.now(),t,e],r),function(){if(c.emit((o?"":"no-")+"fn-start",[f.now(),r,o],e),o)try{return n.apply(this,arguments)}catch(t){throw c.emit("fn-err",[arguments,this,t],e),t}finally{c.emit("fn-end",[f.now()],e)}}}};a("actionText,setName,setAttribute,save,ignore,onEnd,getContext,end,get".split(","),function(t,n){h[n]=o(p+n)}),newrelic.noticeError=function(t,n){"string"==typeof t&&(t=new Error(t)),i("err",[t,f.now(),!1,n])}},{}],15:[function(t,n,e){n.exports=function(t){if("string"==typeof t&&t.length)return t.length;if("object"==typeof t){if("undefined"!=typeof ArrayBuffer&&t instanceof ArrayBuffer&&t.byteLength)return t.byteLength;if("undefined"!=typeof Blob&&t instanceof Blob&&t.size)return t.size;if(!("undefined"!=typeof FormData&&t instanceof FormData))try{return JSON.stringify(t).length}catch(n){return}}}},{}],16:[function(t,n,e){var r=0,o=navigator.userAgent.match(/Firefox[\/\s](\d+\.\d+)/);o&&(r=+o[1]),n.exports=r},{}],17:[function(t,n,e){function r(t,n){var e=t.getEntries();e.forEach(function(t){"first-paint"===t.name?a("timing",["fp",Math.floor(t.startTime)]):"first-contentful-paint"===t.name&&a("timing",["fcp",Math.floor(t.startTime)])})}function o(t){if(t instanceof c&&!u){var n,e=Math.round(t.timeStamp);n=e>1e12?Date.now()-e:s.now()-e,u=!0,a("timing",["fi",e,{type:t.type,fid:n}])}}if(!("init"in NREUM&&"page_view_timing"in NREUM.init&&"enabled"in NREUM.init.page_view_timing&&NREUM.init.page_view_timing.enabled===!1)){var i,a=t("handle"),s=t("loader"),c=NREUM.o.EV;if("PerformanceObserver"in window&&"function"==typeof window.PerformanceObserver){i=new PerformanceObserver(r);try{i.observe({entryTypes:["paint"]})}catch(f){}}if("addEventListener"in document){var u=!1,d=["click","keydown","mousedown","pointerdown","touchstart"];d.forEach(function(t){document.addEventListener(t,o,!1)})}}},{}],18:[function(t,n,e){function r(){function t(){return n?15&n[e++]:16*Math.random()|0}var n=null,e=0,r=window.crypto||window.msCrypto;r&&r.getRandomValues&&(n=r.getRandomValues(new Uint8Array(31)));for(var o,i="xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx",a="",s=0;s<i.length;s++)o=i[s],"x"===o?a+=t().toString(16):"y"===o?(o=3&t()|8,a+=o.toString(16)):a+=o;return a}function o(){function t(){return n?15&n[e++]:16*Math.random()|0}var n=null,e=0,r=window.crypto||window.msCrypto;r&&r.getRandomValues&&Uint8Array&&(n=r.getRandomValues(new Uint8Array(31)));for(var o=[],i=0;i<16;i++)o.push(t().toString(16));return o.join("")}n.exports={generateUuid:r,generateCatId:o}},{}],19:[function(t,n,e){function r(t,n){if(!o)return!1;if(t!==o)return!1;if(!n)return!0;if(!i)return!1;for(var e=i.split("."),r=n.split("."),a=0;a<r.length;a++)if(r[a]!==e[a])return!1;return!0}var o=null,i=null,a=/Version\/(\S+)\s+Safari/;if(navigator.userAgent){var s=navigator.userAgent,c=s.match(a);c&&s.indexOf("Chrome")===-1&&s.indexOf("Chromium")===-1&&(o="Safari",i=c[1])}n.exports={agent:o,version:i,match:r}},{}],20:[function(t,n,e){function r(t,n){var e=[],r="",i=0;for(r in t)o.call(t,r)&&(e[i]=n(r,t[r]),i+=1);return e}var o=Object.prototype.hasOwnProperty;n.exports=r},{}],21:[function(t,n,e){function r(t,n,e){n||(n=0),"undefined"==typeof e&&(e=t?t.length:0);for(var r=-1,o=e-n||0,i=Array(o<0?0:o);++r<o;)i[r]=t[n+r];return i}n.exports=r},{}],22:[function(t,n,e){n.exports={exists:"undefined"!=typeof window.performance&&window.performance.timing&&"undefined"!=typeof window.performance.timing.navigationStart}},{}],ee:[function(t,n,e){function r(){}function o(t){function n(t){return t&&t instanceof r?t:t?c(t,s,i):i()}function e(e,r,o,i){if(!l.aborted||i){t&&t(e,r,o);for(var a=n(o),s=m(e),c=s.length,f=0;f<c;f++)s[f].apply(a,r);var d=u[y[e]];return d&&d.push([x,e,r,a]),a}}function p(t,n){g[t]=m(t).concat(n)}function h(t,n){var e=g[t];if(e)for(var r=0;r<e.length;r++)e[r]===n&&e.splice(r,1)}function m(t){return g[t]||[]}function w(t){return d[t]=d[t]||o(e)}function v(t,n){f(t,function(t,e){n=n||"feature",y[e]=n,n in u||(u[n]=[])})}var g={},y={},x={on:p,addEventListener:p,removeEventListener:h,emit:e,get:w,listeners:m,context:n,buffer:v,abort:a,aborted:!1};return x}function i(){return new r}function a(){(u.api||u.feature)&&(l.aborted=!0,u=l.backlog={})}var s="nr@context",c=t("gos"),f=t(20),u={},d={},l=n.exports=o();l.backlog=u},{}],gos:[function(t,n,e){function r(t,n,e){if(o.call(t,n))return t[n];var r=e();if(Object.defineProperty&&Object.keys)try{return Object.defineProperty(t,n,{value:r,writable:!0,enumerable:!1}),r}catch(i){}return t[n]=r,r}var o=Object.prototype.hasOwnProperty;n.exports=r},{}],handle:[function(t,n,e){function r(t,n,e,r){o.buffer([t],r),o.emit(t,n,e)}var o=t("ee").get("handle");n.exports=r,r.ee=o},{}],id:[function(t,n,e){function r(t){var n=typeof t;return!t||"object"!==n&&"function"!==n?-1:t===window?0:a(t,i,function(){return o++})}var o=1,i="nr@id",a=t("gos");n.exports=r},{}],loader:[function(t,n,e){function r(){if(!E++){var t=b.info=NREUM.info,n=p.getElementsByTagName("script")[0];if(setTimeout(u.abort,3e4),!(t&&t.licenseKey&&t.applicationID&&n))return u.abort();f(y,function(n,e){t[n]||(t[n]=e)}),c("mark",["onload",a()+b.offset],null,"api");var e=p.createElement("script");e.src="https://"+t.agent,n.parentNode.insertBefore(e,n)}}function o(){"complete"===p.readyState&&i()}function i(){c("mark",["domContent",a()+b.offset],null,"api")}function a(){return O.exists&&performance.now?Math.round(performance.now()):(s=Math.max((new Date).getTime(),s))-b.offset}var s=(new Date).getTime(),c=t("handle"),f=t(20),u=t("ee"),d=t(19),l=window,p=l.document,h="addEventListener",m="attachEvent",w=l.XMLHttpRequest,v=w&&w.prototype;NREUM.o={ST:setTimeout,SI:l.setImmediate,CT:clearTimeout,XHR:w,REQ:l.Request,EV:l.Event,PR:l.Promise,MO:l.MutationObserver};var g=""+location,y={beacon:"bam.nr-data.net",errorBeacon:"bam.nr-data.net",agent:"js-agent.newrelic.com/nr-1158.min.js"},x=w&&v&&v[h]&&!/CriOS/.test(navigator.userAgent),b=n.exports={offset:s,now:a,origin:g,features:{},xhrWrappable:x,userAgent:d};t(14),t(17),p[h]?(p[h]("DOMContentLoaded",i,!1),l[h]("load",r,!1)):(p[m]("onreadystatechange",o),l[m]("onload",r)),c("mark",["firstbyte",s],null,"api");var E=0,O=t(22)},{}],"wrap-function":[function(t,n,e){function r(t){return!(t&&t instanceof Function&&t.apply&&!t[a])}var o=t("ee"),i=t(21),a="nr@original",s=Object.prototype.hasOwnProperty,c=!1;n.exports=function(t,n){function e(t,n,e,o){function nrWrapper(){var r,a,s,c;try{a=this,r=i(arguments),s="function"==typeof e?e(r,a):e||{}}catch(f){l([f,"",[r,a,o],s])}u(n+"start",[r,a,o],s);try{return c=t.apply(a,r)}catch(d){throw u(n+"err",[r,a,d],s),d}finally{u(n+"end",[r,a,c],s)}}return r(t)?t:(n||(n=""),nrWrapper[a]=t,d(t,nrWrapper),nrWrapper)}function f(t,n,o,i){o||(o="");var a,s,c,f="-"===o.charAt(0);for(c=0;c<n.length;c++)s=n[c],a=t[s],r(a)||(t[s]=e(a,f?s+o:o,i,s))}function u(e,r,o){if(!c||n){var i=c;c=!0;try{t.emit(e,r,o,n)}catch(a){l([a,e,r,o])}c=i}}function d(t,n){if(Object.defineProperty&&Object.keys)try{var e=Object.keys(t);return e.forEach(function(e){Object.defineProperty(n,e,{get:function(){return t[e]},set:function(n){return t[e]=n,n}})}),n}catch(r){l([r])}for(var o in t)s.call(t,o)&&(n[o]=t[o]);return n}function l(n){try{t.emit("internal-error",n)}catch(e){}}return t||(t=o),e.inPlace=f,e.flag=a,e}},{}]},{},["loader",2,12,4,3]);
    ;NREUM.loader_config={accountID:"2477453",trustKey:"400386",agentID:"504135735",licenseKey:"6fd59be1df",applicationID:"504135735"}
    ;NREUM.info={beacon:"bam.nr-data.net",errorBeacon:"bam.nr-data.net",licenseKey:"6fd59be1df",applicationID:"504135735",sa:1}
    </script>    

    <link rel="alternate" hreflang="" href="https://www.fitbit.com/global/us/404"/>
    <link rel="canonical" href="https://www.fitbit.com/global/us/404"/>


    <link rel="icon" type="image/png" sizes="192x192" href="/global/content/dam/fitbit/global/marketing-pages/activity-index/static/android-icon-192x192.png"/>
    <link rel="icon" type="image/png" sizes="32x32" href="/global/content/dam/fitbit/global/marketing-pages/activity-index/static/favicon-32x32.png"/>
    <link rel="icon" type="image/png" sizes="96x96" href="/global/content/dam/fitbit/global/marketing-pages/activity-index/static/favicon-96x96.png"/>
    <link rel="icon" type="image/png" sizes="16x16" href="/global/content/dam/fitbit/global/marketing-pages/activity-index/static/favicon-16x16.png"/>
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="/global/content/dam/fitbit/images/apple-icon-144x144.png"/>
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="/global/content/dam/fitbit/images/apple-icon-114x114.png"/>
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="/global/content/dam/fitbit/images/apple-icon-72x72.png"/>
    

    

    

    



    
<link rel="stylesheet" href="/global/etc.clientlibs/aem-sites/clientlibs/vendor/fitbit-icons.min.1f0b649d8d763ab430559790c4846dc8.css" type="text/css">




    
<link rel="stylesheet" href="/global/etc.clientlibs/fitbit/clientlibs/clientlib-base.min.aefeb1a218feed1caa696254cbb479ce.css" type="text/css">







    
    
<link rel="stylesheet" href="/global/etc.clientlibs/fitbit/clientlibs/cart-library.min.62288b0f4ae1a4660dc530d3fa339496.css" type="text/css">






    
<script type="text/javascript" src="/global/etc.clientlibs/fitbit/components/structure/basepage/vendorJS.min.a16c363a0453222a00ac7e0684b78c03.js" defer></script>




<script src="https://accounts.fitbit.com/client.js"></script>
<!-- Target script for blink issue 3407 -->
<script>
    //prehiding snippet for Adobe Target with asynchronous Launch deployment
    (function(g, b, d, f) {
        (function(a, c, d) {
            if (a) {
                var e = b.createElement("style");
                e.id = c;
                e.innerHTML = d;
                a.appendChild(e)
            }
        })(b.getElementsByTagName("head")[0], "at-body-style", d);
        setTimeout(function() {
            var a = b.getElementsByTagName("head")[0];
            if (a) {
                var c = b.getElementById("at-body-style");
                c && a.removeChild(c)
            }
        }, f)
    })(window, document, "body {opacity: 0 !important}", 3E3);
</script>
<script src="//assets.adobedtm.com/launch-ENf8c52f790a414711892d83d4b560e344.min.js" defer></script>


    
    
<script type="text/javascript" src="/global/etc.clientlibs/fitbit/clientlibs/cart-library.min.352dbba48c009eaf8806333d358b9923.js" defer></script>


    
    
<script type="text/javascript" src="/global/etc.clientlibs/aem-sites/clientlibs/vendor/threesixty.min.27864eab87082017e068cde36c569516.js" defer></script>


    
    
<script type="text/javascript" src="/global/etc.clientlibs/aem-sites/clientlibs/vendor/hero-banner.min.5917a606e780b4a0a275b28d8aa53ae0.js" defer></script>




<script src="https://www.youtube.com/iframe_api" defer></script>


    
    
<script type="text/javascript" src="/global/etc.clientlibs/fitbit/clientlibs/clientlib-base.min.d7b797784ae53bee47dd6c1d286f8e55.js" defer></script>




<!-- Google Tag Manager -->
<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
})(window,document,'script','dataLayer','GTM-5MRTHHT');</script>
<!-- End Google Tag Manager -->

<meta name="mode" id="commerce-library-mode" data-value="prod" data-sub-url="https://api.fitbit.com"/>
    
    
    

    
    
    
    
<link rel="stylesheet" href="/global/etc.clientlibs/aem-sites/clientlibs/clientlib-dependencies.min.6fe5d4427361a4c0ca5a75457e3e4256.css" type="text/css">
<link rel="stylesheet" href="/global/etc.clientlibs/store/clientlibs/clientlib-all.min.7437cd7f2b883381a55b684c7e50a3bd.css" type="text/css">
<link rel="stylesheet" href="/global/etc.clientlibs/fitbit/clientlibs/fitbit.min.b11d25c3be69d09572fbe1cc5b176316.css" type="text/css">



    

    
</head>
    <body class="basepage page basicpage error-404-page publish-page">
        <!-- Google Tag Manager (noscript) -->
        <noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-5MRTHHT" height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
          <!-- End Google Tag Manager (noscript) -->

        
        
            



            
<div class="header responsivegrid">


<div class="aem-Grid aem-Grid--12 aem-Grid--default--12 ">
    
    <div class="reference-service aem-GridColumn aem-GridColumn--default--12">






    

</div>
<div class="reference-service aem-GridColumn aem-GridColumn--default--12">


</div>
<div class="reference-service aem-GridColumn aem-GridColumn--default--12">




<nav class="fitbit-c__global-header navbar navbar-expand-lg navbar-light">
	<a class="navbar-brand global-header__logo" href="https://www.fitbit.com/global/us/home">
		<img src="/global/content/dam/fitbit/global/product-logos/fitbit-new-logo-header.svg" alt=""/>
	</a>
	<div class="global-header__navigation">
		<ul class="global-header__navigation-primary">
			
			
                 
			<li class="navigation-primary__product">
				<div class="global-header__navigation-wrapper">
				<a class="global-header__navigation-primary-link" href="https://www.fitbit.com/global/us/products">
					PRODUCTS </a>
				<div class="navigation-primary__product-dropdown">
					 
					 
					
					<div class="product-dropdown__list-wrapper">
					<ul class="product-dropdown__list">
					
					
						<li class="header-u-sublist-title">PRODUCTS</li>
						
						
						<li><a href="https://www.fitbit.com/global/us/products/smartwatches">Smartwatches</a></li>
						
						<li><a href="https://www.fitbit.com/global/us/products/trackers">Trackers</a></li>
						
						<li><a href="https://www.fitbit.com/global/us/products/services">Services</a></li>
						
						<li><a href="https://www.fitbit.com/global/us/products/accessories">Accessories</a></li>
						
						<li><a href="https://www.fitbit.com/global/us/products/scales">Scales</a></li>
						
						<li data-show-in-mobile="true"><a href="https://www.fitbit.com/global/us/products/whats-new">What&#39;s New</a></li>
						
						<li data-show-in-mobile="true"><a href="https://www.fitbit.com/global/us/products/designer-collections">Designer Collections</a></li>
						 
						<li class="header-u-list-CTA" data-show-in-mobile="true"><a href="https://www.fitbit.com/global/us/products" class="underline">Shop All Products</a>
						</li>
						
						<!-- <sly data-sly-list.promoItems=""> --> 
						
						<!-- </sly> -->
						
					</ul>
					
					
					
					</div>
					
						
					  
					 
					
					<div class="product-dropdown__list-wrapper">
					<ul class="product-dropdown__list">
					
					
						<li class="header-u-sublist-title">EXPERIENCES</li>
						
						
						<li data-show-in-mobile="true"><a href="https://www.fitbit.com/global/us/setup">Setup Process</a></li>
						 
						<li class="header-u-list-CTA"><a class="underline"></a>
						</li>
						
						<!-- <sly data-sly-list.promoItems=""> --> 
						
						<!-- </sly> -->
						
					</ul>
					
					
					
					
					
					</div>
					
						
					  
					
					<div class="product-dropdown__featured-products">
						<div class="featured-products__wrapper">
							<div class="featured-products--item">
								<a href="https://www.fitbit.com/global/us/products/smartwatches/sense"><img class="lazyload" data-src="/global/content/dam/fitbit/global/global-navigation/jansale-NavTile_Sense.png" alt="jansale-NavTile_Sense.png"/></a>				
							</div>
							<p class="featured-products--label" style="color: #39CCCC">
								Relax and Recenter</p>
							<a href="https://www.fitbit.com/global/us/products/smartwatches/sense"><p class="featured-products--name">Shop Sense</p></a>
						</div>
					</div>
					 
					
						
					  
					
					<div class="product-dropdown__featured-products">
						<div class="featured-products__wrapper">
							<div class="featured-products--item">
								<a href="https://www.fitbit.com/global/us/products/smartwatches/versa3"><img class="lazyload" data-src="/global/content/dam/fitbit/global/global-navigation/jansale-NavTile_Versa3.png" alt="jansale-NavTile_Versa2.png"/></a>				
							</div>
							<p class="featured-products--label" style="color: #39CCCC">
								Motivation on your wrist</p>
							<a href="https://www.fitbit.com/global/us/products/smartwatches/versa3"><p class="featured-products--name">Shop Versa 3</p></a>
						</div>
					</div>
					 
					
						
					  
					
					<div class="product-dropdown__featured-products">
						<div class="featured-products__wrapper">
							<div class="featured-products--item">
								<a href="https://www.fitbit.com/global/us/products/trackers/charge4"><img class="lazyload" data-src="/global/content/dam/fitbit/global/global-navigation/jansale-NavTile_Charge4.png" alt="jansale-NavTile_Charge4.png"/></a>				
							</div>
							<p class="featured-products--label" style="color: #39CCCC">
								Take your goals further</p>
							<a href="https://www.fitbit.com/global/us/products/trackers/charge4"><p class="featured-products--name">Shop Charge 4</p></a>
						</div>
					</div>
					 
					
						
					 
				</div>
				</div>
			</li>
			
		
			
			
                 
			<li class="navigation-primary__technology">
				<div class="global-header__navigation-wrapper">
				<a class="global-header__navigation-primary-link" href="https://www.fitbit.com/global/us/technology">
					TECHNOLOGY </a>
				<div class="navigation-primary__technology-dropdown">
					 
					 
					
					<div class="product-dropdown__list-wrapper">
					<ul class="product-dropdown__list">
					
					
						<li class="header-u-sublist-title">HOW WE INNOVATE</li>
						
						
						<li><a href="https://www.fitbit.com/global/us/technology/health-metrics">Health Metrics &amp; SpO2</a></li>
						
						<li><a href="https://www.fitbit.com/global/us/technology/ecg">ECG</a></li>
						
						<li><a href="https://www.fitbit.com/global/us/technology/stress">Stress Management</a></li>
						
						<li><a href="https://www.fitbit.com/global/us/technology/heart-rate">24/7 Heart Rate</a></li>
						
						<li><a href="https://www.fitbit.com/global/us/technology/sleep">Sleep Tracking</a></li>
						
						<li><a href="https://www.fitbit.com/global/us/technology/active-zone-minutes">Active Zone Minutes</a></li>
						
						<li><a href="https://www.fitbit.com/global/us/technology/voice">Voice Assistants</a></li>
						
						<li><a href="https://www.fitbit.com/global/us/technology/fitbit-pay">Fitbit Pay</a></li>
						 
						<li class="header-u-list-CTA"><a class="underline"></a>
						</li>
						
						<!-- <sly data-sly-list.promoItems=""> --> 
						
						<!-- </sly> -->
						
					</ul>
					
					
					
					</div>
					
						
					  
					 
					
					<div class="product-dropdown__list-wrapper">
					<ul class="product-dropdown__list">
					
					
						<li class="header-u-sublist-title">HOW WE INTEGRATE</li>
						
						
						<li><a href="https://www.fitbit.com/global/us/technology/compatible-devices">Compatible Devices</a></li>
						
						<li><a href="https://www.fitbit.com/global/us/technology/partnership">Works with Fitbit</a></li>
						
						<li><a href="https://gallery.fitbit.com">Smartwatch Apps &amp; Clock Faces</a></li>
						 
						<li class="header-u-list-CTA"><a class="underline"></a>
						</li>
						
						<!-- <sly data-sly-list.promoItems=""> --> 
						
						<!-- </sly> -->
						
					</ul>
					
					
					
					</div>
					
						
					 
				</div>
				</div>
			</li>
			
		
			
			
                 
			<li class="navigation-primary__technology">
				<div class="global-header__navigation-wrapper">
				<a class="global-header__navigation-primary-link">
					MOTIVATION </a>
				<div class="navigation-primary__technology-dropdown">
					 
					 
					
					<div class="product-dropdown__list-wrapper">
					<ul class="product-dropdown__list">
					
					
						<li class="header-u-sublist-title">INSPIRATION</li>
						
						
						<li><a href="https://blog.fitbit.com/">Blog</a></li>
						
						<li><a href="https://stories.fitbit.com/">Success Stories</a></li>
						
						<li><a href="https://community.fitbit.com/t5/Community/ct-p/EN">Community</a></li>
						 
						<li class="header-u-list-CTA"><a class="underline"></a>
						</li>
						
						<!-- <sly data-sly-list.promoItems=""> --> 
						
						<!-- </sly> -->
						
					</ul>
					
					
					
					</div>
					
						
					  
					 
					
					<div class="product-dropdown__list-wrapper">
					<ul class="product-dropdown__list">
					
					
						<li class="header-u-sublist-title">CHALLENGES &amp; EVENTS</li>
						
						
						<li><a href="https://www.fitbit.com/global/us/motivation/challenges">Fitbit Challenges</a></li>
						
						<li><a href="https://www.fitbit.com/global/us/motivation/ambassadors">Ambassadors</a></li>
						 
						<li class="header-u-list-CTA"><a class="underline"></a>
						</li>
						
						<!-- <sly data-sly-list.promoItems=""> --> 
						
						<!-- </sly> -->
						
					</ul>
					
					
					
					</div>
					
						
					 
				</div>
				</div>
			</li>
			
		</ul>
	</div>


	<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapasibleNavbar" aria-controls="collapasibleNavbar" aria-expanded="false" aria-label="Toggle navigation">
		<i class="fi-nav-hamburger hamburgerClosedIcon"></i>
    <i class="fi-nav-close hamburgerOpenIcon"></i>
	</button>


	<div class="collapse navbar-collapse global-header__accordion" id="collapasibleNavbar">
		
		<ul class="global-header__accordion-main-list">
			 
			
			
			
			<li class="global-header__accordion-main-list-item"><a href="https://www.fitbit.com/global/us/products">
					PRODUCTS </a></li>
			
			 
			
			 
			
			
			
			
			<section class="global-header__accordion-wrapper d-md-block d-xl-none">
				
				<div class="global-header__accordion-header d-flex justify-content-between align-items-center" data-toggle="collapse" href="#TECHNOLOGY">
					<span class="global-header__accordion-header-title">
						TECHNOLOGY</span>
					<!-- <i class="fi-plus"></i> -->
					<i class="fi-plus-collapsed accordionPlusIcon"></i>
          <i class="fi-minus-expanded accordionMinusIcon"></i>
				</div>
				<div class="global-header__accordion-content collapse" data-parent=".fitbit-c__global-header" id="TECHNOLOGY">

					<ul class="global-header__accordion-content-sub-list">
						<li class="header-u-sublist-title">
							HOW WE INNOVATE</li>
						
						
						<li><a href="https://www.fitbit.com/global/us/technology/health-metrics">
								Health Metrics &amp; SpO2 </a></li>
						
						<li><a href="https://www.fitbit.com/global/us/technology/ecg">
								ECG </a></li>
						
						<li><a href="https://www.fitbit.com/global/us/technology/stress">
								Stress Management </a></li>
						
						<li><a href="https://www.fitbit.com/global/us/technology/heart-rate">
								24/7 Heart Rate </a></li>
						
						<li><a href="https://www.fitbit.com/global/us/technology/sleep">
								Sleep Tracking </a></li>
						
						<li><a href="https://www.fitbit.com/global/us/technology/active-zone-minutes">
								Active Zone Minutes </a></li>
						
						<li><a href="https://www.fitbit.com/global/us/technology/voice">
								Voice Assistants </a></li>
						
						<li><a href="https://www.fitbit.com/global/us/technology/fitbit-pay">
								Fitbit Pay </a></li>
						 

					
						<li class="header-u-sublist-title">
							HOW WE INTEGRATE</li>
						
						
						<li><a href="https://www.fitbit.com/global/us/technology/compatible-devices">
								Compatible Devices </a></li>
						
						<li><a href="https://www.fitbit.com/global/us/technology/partnership">
								Works with Fitbit </a></li>
						
						<li><a href="https://gallery.fitbit.com">
								Smartwatch Apps &amp; Clock Faces </a></li>
						 

					</ul>

				</div>
			</section>
			 
			
			 
			
			
			
			
			<section class="global-header__accordion-wrapper d-md-block d-xl-none">
				
				<div class="global-header__accordion-header d-flex justify-content-between align-items-center" data-toggle="collapse" href="#MOTIVATION">
					<span class="global-header__accordion-header-title">
						MOTIVATION</span>
					<!-- <i class="fi-plus"></i> -->
					<i class="fi-plus-collapsed accordionPlusIcon"></i>
          <i class="fi-minus-expanded accordionMinusIcon"></i>
				</div>
				<div class="global-header__accordion-content collapse" data-parent=".fitbit-c__global-header" id="MOTIVATION">

					<ul class="global-header__accordion-content-sub-list">
						<li class="header-u-sublist-title">
							INSPIRATION</li>
						
						
						<li><a href="https://blog.fitbit.com/">
								Blog </a></li>
						
						<li><a href="https://stories.fitbit.com/">
								Success Stories </a></li>
						
						<li><a href="https://community.fitbit.com/t5/Community/ct-p/EN">
								Community </a></li>
						 

					
						<li class="header-u-sublist-title">
							CHALLENGES &amp; EVENTS</li>
						
						
						<li><a href="https://www.fitbit.com/global/us/motivation/challenges">
								Fitbit Challenges </a></li>
						
						<li><a href="https://www.fitbit.com/global/us/motivation/ambassadors">
								Ambassadors </a></li>
						 

					</ul>

				</div>
			</section>
			 
			
			




		</ul>
		
		<!-- MOBILE NAV ITEM -->
		<ul class="global-header__mobile-nav-items">
			<li class="actions__login-mobile d-none">Sign in</li>
			<li class="show-cart">My Cart<span class="shopping-basket-count cart-count-mobile">0</span></li>
			
			<li class="user-menu__item dashboard">
				<a href="/login/transferpage"><span class="dashboard-btn">My Dashboard</span></a>
			</li>
			<li class="user-menu__subscription">
				<a href="#"><span>Manage my subscriptions</span></a>
			</li>
			<li class="mobile-logout d-none"><span class="logout-btn">Log Out</span></li>
			<ul class="global-header__mobile-nav-items-products">
			</ul>

			
		</ul>

	</div>
	<div class="global-header__actions">
	
	
		<div class="actions__login cd-btn js-login-panel-trigger" data-panel="main">
			<i class="fi-nav-account loginCloseIcon cd-panel__close"></i>
			<i class="fi-nav-close loginOpenIcon"></i>
		</div>
		<div class="actions__profile d-none">
			<i class="fi-nav-account profileCloseIcon cd-panel__close"></i>
			<i class="fi-nav-close profileOpenIcon"></i>
			<ul class="user-menu">
				
				<li class="user-menu__item dashboard">
					<a href="/login/transferpage"><span class="dashboard-btn">My Dashboard</span></a>
				 </li>
				<li class="user-menu__subscription">
				   <a href="#"><span>Manage my subscriptions</span></a>
				</li>
			    <li class="user-menu__item log-out">
				   <span class="logout-btn">Log Out</span>
				</li>
			</ul>
		</div>      
    
      
		<div class="actions__cart show-cart">
			<i class="fi-nav-cart"></i>
			<span class="shopping-basket-count"></span>
			<div class="cart-indicator d-none"></div>
		</div>
		
	</div>
</nav>

<form class="search__panel">
      <label for="search" class="search__panel-title">Press Enter to submit</label>
      <label for="search" class="search__panel-title search__panel-title-mobile">Tap to search</label>
      <div class="search__panel-wrapper">
				<i class="fi-search-alt search__panel-search-icon"></i>
        <input type="text" name="search" class="search__panel-input"/>
      </div>
    </form>


    


<div class="fitbit-c-modal-container">
	<div id="global-cinematic-video--modal" class="cinematic-video--modal fitbit-c-modal">
		<span class="modal--close"><i class="fi-times" aria-hidden="true"></i></span>
		<div class="cinematic-video--modal--inner">
			<!-- Relevant HTML will be appended through JS-->
		</div>
	</div>
</div>

</div>

    
</div>
</div>
<div class="root responsivegrid">


<div class="aem-Grid aem-Grid--12 aem-Grid--default--12 ">
    
    <div class="responsivegrid aem-GridColumn aem-GridColumn--default--12">


<div class="aem-Grid aem-Grid--12 aem-Grid--default--12 ">
    
    <div class="custom-404 aem-GridColumn aem-GridColumn--default--12">


    <section class="fitbit-c-404-page">
        
        <div class="error-page" data-bg="{&#34;tablet&#34;:{&#34;2x&#34;:&#34;/global/content/dam/fitbit/global/error-page/desktop/404-image.jpg/jcr:content/renditions/404-image-tablet-2x.jpg&#34;,&#34;1x&#34;:&#34;/global/content/dam/fitbit/global/error-page/desktop/404-image.jpg/jcr:content/renditions/404-image-tablet-1x.jpg&#34;},&#34;desktop&#34;:{&#34;2x&#34;:&#34;/global/content/dam/fitbit/global/error-page/desktop/404-image.jpg&#34;,&#34;1x&#34;:&#34;/global/content/dam/fitbit/global/error-page/desktop/404-image.jpg/jcr:content/renditions/404-image-desktop-1x.jpg&#34;},&#34;mobile&#34;:{&#34;2x&#34;:&#34;/global/content/dam/fitbit/global/error-page/desktop/404-image.jpg/jcr:content/renditions/404-image-mobile-2x.jpg&#34;,&#34;1x&#34;:&#34;/global/content/dam/fitbit/global/error-page/desktop/404-image.jpg/jcr:content/renditions/404-image-mobile-1x.jpg&#34;}}">
            <div id="container">
                <div class="content">
                    <h1>Sorry, that page is following a different trail.</h1>
                    <h2>Since it’s unavailable, step over to one of these instead:</h2>
                    <ul>
                        <li><a class="fitbit-c-btn fitbit-c-btn__round fitbit-c-btn__white fitbit-c-btn__hover-white fitbit-c-404-link" href="https://www.fitbit.com/us/home">HOME BASE</a></li>
                    
                        <li><a class="fitbit-c-btn fitbit-c-btn__round fitbit-c-btn__white fitbit-c-btn__hover-white fitbit-c-404-link" href="https://www.fitbit.com/us/whats-new">START ANOTHER JOURNEY </a></li>
                    </ul>
                </div>
                
                    <div class="trail-badge">
                        <div class="trail-badge__mountain" style="background-image: url(/global/content/dam/fitbit/global/error-page/static/404-mountain-image.png);"></div>
                        <div class="trail-badge__bottom">
                            <span>Pacific Crest Trail, CA.</span>
                            <span>Length: 5.3 million steps</span>
                        </div>
                    </div>
                
            </div>
        </div>
    </section>


    
</div>

    
</div>
</div>

    
</div>
</div>
<div class="footer responsivegrid">


<div class="aem-Grid aem-Grid--12 aem-Grid--default--12 ">
    
    <div class="reference-service aem-GridColumn aem-GridColumn--default--12">

<footer class="fitbit-o-footer conatiner-fluid">
    <div class="row footer-container">
        <div class="col-lg-6">
            <div class="newsletterPar email-subscription">

<section class="fitbit-c__newsletter-signup">
   <h2 class="fitbit-c__newsletter-signup-title"> Get the inside scoop on all things Fitbit. </h2>
   <form class="fitbit-c__newsletter-signup-form" method="post" action="/global/services/fitbit/email.json" novalidate>
   	<label class="fitbit-c__newsletter-signup-label" for="email">Enter your email address</label>
      <input type="email" placeholder="" id="email" class="fitbit-c__newsletter-signup-input"/>        
      <button type="submit" class="fitbit-c__newsletter-signup-submit-btn">
      <i class="fi-cta-arrow"></i>
      </button>
   </form>
   <p class="fitbit-c__newsletter-signup-error-message">
      Oops! Please check that the email you’ve entered is correct.
   </p>
   <div class="fitbit-c__newsletter-signup-success">
      <p class="fitbit-c__newsletter-signup-success-message">
         Thanks for signing up! Stay tuned for future updates.
      </p>
      <a href="https://www.fitbit.com/global/us/products" class="slide-cta-label fitbit-c__newsletter-signup-success-link"> Explore products		
      </a>
   </div>
</section>

    
</div>

        </div>
        <div class="col-lg-6 footer-container__social-follow">
            <div class="socialFollowPar social-follow">

<!-- /*<sly data-sly-use.clientlib="/libs/granite/sightly/templates/clientlib.html"
     data-sly-call="" />*/-->


	<section class="fitbit-c__social-follow">
		<h2 class="fitbit-c__social-follow-title"> Follow us </h2>
		<div class="fitbit-c__social-follow-links">
			
				<a href="https://www.facebook.com/fitbit"> <span class="fi-social-fb"></span> </a>
			
			
				<a href="https://instagram.com/fitbit"> <span class="fi-social-insta"></span> </a>
			
			
				<a href="https://www.twitter.com/fitbit"> <span class="fi-social-twitter"></span> </a>
			
			
				<a href="https://www.pinterest.com/fitbit/"> <span class="fi-social-pinterest"></span> </a>
			
			
				<a href="https://www.youtube.com/user/FitbitOfficialSite"> <span class="fi-social-youtube"></span> </a>
			
		</div>
	</section>





    

</div>

        </div>
        <div class="col-lg-12 footer-container__footer-links-wrapper">
            <div class="footerLinksPar footer-links">


<section class="fitbit-c-footer-links">
	<div class="fitbit-c-footer-links-wrapper col-lg-2 d-none d-lg-block">
	    
		
			<p class="fitbit-c-footer-links-title">Support</p>
			<ul class="fitbit-c-footer-links-list">
				<li> <a href="https://help.fitbit.com/"> Product Help </a> </li>			
			
				<li> <a href="https://www.fitbit.com/global/us/product-care"> Wear &amp; Care </a> </li>			
			
				<li> <a href="https://community.fitbit.com/t5/Community/ct-p/EN"> Community </a> </li>			
			</ul>
		
	</div>

	<section class="fitbit-c-footer-links__accordion d-md-block d-lg-none">
	 
    	
		<div class="fitbit-c-footer-links__accordion-header d-flex justify-content-between align-items-center" data-toggle="collapse" href="#Support">
			<span class="fitbit-c-footer-links__accordion-header-title"> Support </span>
			<i class="fi-plus"></i>
		</div>	   
		<div class="fitbit-c-footer-links__accordion-content collapse" data-parent=".fitbit-c-footer-links" id="Support">
			<ul class="fitbit-c-footer-links-list">
				<li> <a href="https://help.fitbit.com/"> Product Help </a> </li>					
			
				<li> <a href="https://www.fitbit.com/global/us/product-care"> Wear &amp; Care </a> </li>					
			
				<li> <a href="https://community.fitbit.com/t5/Community/ct-p/EN"> Community </a> </li>					
			</ul>
		</div>
	 
	</section>

	<div class="fitbit-c-footer-links-wrapper col-lg-2 d-none d-lg-block">
	    
		
			<p class="fitbit-c-footer-links-title">LEGAL</p>
			<ul class="fitbit-c-footer-links-list">
				<li> <a href="https://www.fitbit.com/global/us/legal/terms-of-service"> Terms of Service </a> </li>			
			
				<li> <a href="https://www.fitbit.com/global/us/legal/privacy-policy"> Privacy Policy </a> </li>			
			
				<li> <a href="https://www.fitbit.com/global/us/legal/cookie-policy"> Cookies </a> </li>			
			
				<li> <a href="https://www.fitbit.com/global/us/legal/cookie-policy#your-choices"> Ad Choices </a> </li>			
			</ul>
		
	</div>

	<section class="fitbit-c-footer-links__accordion d-md-block d-lg-none">
	 
    	
		<div class="fitbit-c-footer-links__accordion-header d-flex justify-content-between align-items-center" data-toggle="collapse" href="#LEGAL">
			<span class="fitbit-c-footer-links__accordion-header-title"> LEGAL </span>
			<i class="fi-plus"></i>
		</div>	   
		<div class="fitbit-c-footer-links__accordion-content collapse" data-parent=".fitbit-c-footer-links" id="LEGAL">
			<ul class="fitbit-c-footer-links-list">
				<li> <a href="https://www.fitbit.com/global/us/legal/terms-of-service"> Terms of Service </a> </li>					
			
				<li> <a href="https://www.fitbit.com/global/us/legal/privacy-policy"> Privacy Policy </a> </li>					
			
				<li> <a href="https://www.fitbit.com/global/us/legal/cookie-policy"> Cookies </a> </li>					
			
				<li> <a href="https://www.fitbit.com/global/us/legal/cookie-policy#your-choices"> Ad Choices </a> </li>					
			</ul>
		</div>
	 
	</section>

	<div class="fitbit-c-footer-links-wrapper col-lg-2 d-none d-lg-block">
	    
		
			<p class="fitbit-c-footer-links-title">PARTNERS</p>
			<ul class="fitbit-c-footer-links-list">
				<li> <a href="https://www.fitbit.com/global/us/partners/retailers"> Retailers </a> </li>			
			
				<li> <a href="https://www.fitbit.com/global/us/partners/affiliates"> Affiliates  </a> </li>			
			
				<li> <a href="https://dev.fitbit.com/"> For Developers </a> </li>			
			</ul>
		
	</div>

	<section class="fitbit-c-footer-links__accordion d-md-block d-lg-none">
	 
    	
		<div class="fitbit-c-footer-links__accordion-header d-flex justify-content-between align-items-center" data-toggle="collapse" href="#PARTNERS">
			<span class="fitbit-c-footer-links__accordion-header-title"> PARTNERS </span>
			<i class="fi-plus"></i>
		</div>	   
		<div class="fitbit-c-footer-links__accordion-content collapse" data-parent=".fitbit-c-footer-links" id="PARTNERS">
			<ul class="fitbit-c-footer-links-list">
				<li> <a href="https://www.fitbit.com/global/us/partners/retailers"> Retailers </a> </li>					
			
				<li> <a href="https://www.fitbit.com/global/us/partners/affiliates"> Affiliates  </a> </li>					
			
				<li> <a href="https://dev.fitbit.com/"> For Developers </a> </li>					
			</ul>
		</div>
	 
	</section>

	<div class="fitbit-c-footer-links-wrapper col-lg-2 d-none d-lg-block">
	    
		
			<p class="fitbit-c-footer-links-title">COMPANY</p>
			<ul class="fitbit-c-footer-links-list">
				<li> <a href="https://www.fitbit.com/global/us/about-us"> About Us </a> </li>			
			
				<li> <a href="https://www.fitbit.com/global/us/careers"> Careers   </a> </li>			
			
				<li> <a href="https://www.fitbit.com/global/us/buzz"> Buzz   </a> </li>			
			
				<li> <a href="https://www.fitbit.com/global/us/sustainability"> Sustainability </a> </li>			
			
				<li> <a href="https://www.fitbit.com/global/us/activity-index"> Activity Index </a> </li>			
			
				<li> <a href="https://investor.fitbit.com/overview/default.aspx"> Investor Relations </a> </li>			
			
				<li> <a href="https://investor.fitbit.com/press/press-releases/default.aspx"> Press Releases </a> </li>			
			</ul>
		
	</div>

	<section class="fitbit-c-footer-links__accordion d-md-block d-lg-none">
	 
    	
		<div class="fitbit-c-footer-links__accordion-header d-flex justify-content-between align-items-center" data-toggle="collapse" href="#COMPANY">
			<span class="fitbit-c-footer-links__accordion-header-title"> COMPANY </span>
			<i class="fi-plus"></i>
		</div>	   
		<div class="fitbit-c-footer-links__accordion-content collapse" data-parent=".fitbit-c-footer-links" id="COMPANY">
			<ul class="fitbit-c-footer-links-list">
				<li> <a href="https://www.fitbit.com/global/us/about-us"> About Us </a> </li>					
			
				<li> <a href="https://www.fitbit.com/global/us/careers"> Careers   </a> </li>					
			
				<li> <a href="https://www.fitbit.com/global/us/buzz"> Buzz   </a> </li>					
			
				<li> <a href="https://www.fitbit.com/global/us/sustainability"> Sustainability </a> </li>					
			
				<li> <a href="https://www.fitbit.com/global/us/activity-index"> Activity Index </a> </li>					
			
				<li> <a href="https://investor.fitbit.com/overview/default.aspx"> Investor Relations </a> </li>					
			
				<li> <a href="https://investor.fitbit.com/press/press-releases/default.aspx"> Press Releases </a> </li>					
			</ul>
		</div>
	 
	</section>

	<div class="fitbit-c-footer-links-wrapper col-lg-2 d-none d-lg-block">
	    
		
			<p class="fitbit-c-footer-links-title">HEALTH SOLUTIONS</p>
			<ul class="fitbit-c-footer-links-list">
				<li> <a href="https://healthsolutions.fitbit.com/employers/"> Employers </a> </li>			
			
				<li> <a href="https://healthsolutions.fitbit.com/healthplans/"> Health Plans </a> </li>			
			
				<li> <a href="https://healthsolutions.fitbit.com/"> Workforce Health </a> </li>			
			
				<li> <a href="https://healthsolutions.fitbit.com/healthsystems/"> Health Systems </a> </li>			
			
				<li> <a href="https://healthsolutions.fitbit.com/researchers/"> Researchers </a> </li>			
			
				<li> <a href="https://healthsolutions.fitbit.com/partners/"> Partners </a> </li>			
			</ul>
		
	</div>

	<section class="fitbit-c-footer-links__accordion d-md-block d-lg-none">
	 
    	
		<div class="fitbit-c-footer-links__accordion-header d-flex justify-content-between align-items-center" data-toggle="collapse" href="#HEALTHSOLUTIONS">
			<span class="fitbit-c-footer-links__accordion-header-title"> HEALTH SOLUTIONS </span>
			<i class="fi-plus"></i>
		</div>	   
		<div class="fitbit-c-footer-links__accordion-content collapse" data-parent=".fitbit-c-footer-links" id="HEALTHSOLUTIONS">
			<ul class="fitbit-c-footer-links-list">
				<li> <a href="https://healthsolutions.fitbit.com/employers/"> Employers </a> </li>					
			
				<li> <a href="https://healthsolutions.fitbit.com/healthplans/"> Health Plans </a> </li>					
			
				<li> <a href="https://healthsolutions.fitbit.com/"> Workforce Health </a> </li>					
			
				<li> <a href="https://healthsolutions.fitbit.com/healthsystems/"> Health Systems </a> </li>					
			
				<li> <a href="https://healthsolutions.fitbit.com/researchers/"> Researchers </a> </li>					
			
				<li> <a href="https://healthsolutions.fitbit.com/partners/"> Partners </a> </li>					
			</ul>
		</div>
	 
	</section>
</section>


    
</div>

        </div>
        <div class="row col-md-12 footer-container__footer-richtext-language-selector-wrapper">
            <div class="col-md-6 col-lg-6 footer-container__richtext">
                <div class="copyrightPar richtext text">


    





<div class="cmp-text">
	<p><span class="proxima-nova"></span>©2021 Fitbit, Inc. All rights reserved</p>

</div>




    

</div>
	
            </div>
            <div class="offset-lg-4 col-lg-2 col-md-6 footer-container__language-selector">
                <div class="languageChangePar language-change">


<section class="fitbit-c__language-change">
	<a href="https://www.fitbit.com/global/us/countries">
		<img data-src="/global/content/dam/fitbit/global/marketing-pages/country-flags/USA%20flag.svg" alt="United States" class="lazyload fitbit-c__language-change-flag img-fluid"/>
		<span class="fitbit-c__language-change-title">United States</span>
	</a>
</section>


    
</div>

            </div>
    </div>
    </div>
</footer>


<div id="commerce-container">
    <div class="pcp-filter-overlay"></div>
    <div class="modal-underlay"></div>
    <div class="basket basket--base"><div class="fitbit-mini-cart mini-cart" data-checkout-cta-link="https://www.fitbit.com/global/us/checkout" data-login-cta-link="/login/transferpage" data-redirect-link="https://www.fitbit.com/global/us/products">
    <button type="button" class="exit-mini-cart"></button>
    <div>
        <div class="cart-header"></div>
        <div class="mini-cart-body" data-template="/conf/fitbit/settings/wcm/templates/blank-page">
            <form class="have-promo-code hidden-element">
                <div class="promo-input">
                    <input type="text" placeholder="Have a promo code?" name="couponCode" id="cart-coupon-code"/>
                    <input type="submit" name=""/>
                </div>
                <div class="error-message text-red hidden-element">Sorry, the code is invalid</div>
                <div class="promo-applied">
                    <p>Promo success<span class="promo-amount"></span></p>
                </div>
            </form>
            <div class="car-mid-part without-paypal"></div>
        </div>
        
        <div class="mini-cart-footer"></div>
    </div>
    <div><div class="xfpage page basicpage">


    
    <div class="cmp-container">
        


<div class="aem-Grid aem-Grid--12 aem-Grid--default--12 ">
    
    <div class="shipping-address-forms aem-GridColumn aem-GridColumn--default--12">

<script type="text/javascript">
    var SHIPPING_COUNTRIES = {"shippingCountries":[{"countryCode":"US","countryName":"United States","shippingStandard":"Standard - 5 to 7 business days","shippingExpedited":"Expedited - 2 business days","shippingOvernight":"Overnight - 1 business day","shippingSpec":"<ul>\r\n<li><span class=\"proxima-nova\">Orders ship Mon-Fri, most within one full day</span></li>\r\n<li><span class=\"proxima-nova\">Items in Back Order ship as they become available</span></li>\r\n<li><span class=\"proxima-nova\">All orders are only delivered Mon-Fri</span></li>\r\n<li><span class=\"proxima-nova\">Overnight orders placed by 11 am PST ship the same day</span></li>\r\n<li><span class=\"proxima-nova\">Overnight and Expedited shipping is not available for PO Box, military or some U.S. Territory &amp; Freely Associated State addresses</span></li>\r\n<li><span class=\"proxima-nova\">Some shipping areas may take up to 10 business days.</span></li>\r\n</ul>\r\n","saleTax":"Sales Tax","importTaxDuty":null,"formFields":[{"id":"firstName","label":"First Name","rule":"^.{2,48}$","required":true,"errorMsg":"First Name must be at least 2 characters","valueOptions":null},{"id":"lastName","label":"Last Name","rule":"^.{2,48}$","required":true,"errorMsg":"Last Name must be at least 2 characters","valueOptions":null},{"id":"addressLine1","label":"Address 1","rule":"^.{3,35}$","required":true,"errorMsg":"Address 1 must be at least 3 characters","valueOptions":null},{"id":"addressLine2","label":"Address 2","rule":"^.{0,35}$","required":false,"errorMsg":"Please limit to 35 characters","valueOptions":null},{"id":"zipCode","label":"Zip Code","rule":"^\\d{5}-\\d{4}|\\d{5}$","required":true,"errorMsg":"5 digits or 5-4 required","valueOptions":null},{"id":"city","label":"City","rule":"^.{3,25}$","required":true,"errorMsg":"City must be at least 3 characters","valueOptions":null},{"id":"stateOrProvince","label":"State","rule":"^.{0,2}$","required":true,"errorMsg":"Required","valueOptions":[{"code":"AL","name":"Alabama"},{"code":"AK","name":"Alaska"},{"code":"AS","name":"American Samoa"},{"code":"AZ","name":"Arizona"},{"code":"AR","name":"Arkansas"},{"code":"AF","name":"Armed Forces Africa"},{"code":"AA","name":"Armed Forces Americas"},{"code":"AC","name":"Armed Forces Canada"},{"code":"AE","name":"Armed Forces Europe"},{"code":"AM","name":"Armed Forces Middle East"},{"code":"AP","name":"Armed Forces Pacific"},{"code":"CA","name":"California"},{"code":"CO","name":"Colorado"},{"code":"CT","name":"Connecticut"},{"code":"DE","name":"Delaware"},{"code":"DC","name":"District of Columbia"},{"code":"FM","name":"Federated States Of Micronesia"},{"code":"FL","name":"Florida"},{"code":"GA","name":"Georgia"},{"code":"GU","name":"Guam"},{"code":"HI","name":"Hawaii"},{"code":"ID","name":"Idaho"},{"code":"IL","name":"Illinois"},{"code":"IN","name":"Indiana"},{"code":"IA","name":"Iowa"},{"code":"KS","name":"Kansas"},{"code":"KY","name":"Kentucky"},{"code":"LA","name":"Louisiana"},{"code":"ME","name":"Maine"},{"code":"MH","name":"Marshall Islands"},{"code":"MD","name":"Maryland"},{"code":"MA","name":"Massachusetts"},{"code":"MI","name":"Michigan"},{"code":"MN","name":"Minnesota"},{"code":"MS","name":"Mississippi"},{"code":"MO","name":"Missouri"},{"code":"MT","name":"Montana"},{"code":"NE","name":"Nebraska"},{"code":"NV","name":"Nevada"},{"code":"NH","name":"New Hampshire"},{"code":"NJ","name":"New Jersey"},{"code":"NM","name":"New Mexico"},{"code":"NY","name":"New York"},{"code":"NC","name":"North Carolina"},{"code":"ND","name":"North Dakota"},{"code":"MP","name":"Northern Mariana Islands"},{"code":"OH","name":"Ohio"},{"code":"OK","name":"Oklahoma"},{"code":"OR","name":"Oregon"},{"code":"PW","name":"Palau"},{"code":"PA","name":"Pennsylvania"},{"code":"PR","name":"Puerto Rico"},{"code":"RI","name":"Rhode Island"},{"code":"SC","name":"South Carolina"},{"code":"SD","name":"South Dakota"},{"code":"TN","name":"Tennessee"},{"code":"TX","name":"Texas"},{"code":"UT","name":"Utah"},{"code":"VT","name":"Vermont"},{"code":"VI","name":"Virgin Islands"},{"code":"VA","name":"Virginia"},{"code":"WA","name":"Washington"},{"code":"WV","name":"West Virginia"},{"code":"WI","name":"Wisconsin"},{"code":"WY","name":"Wyoming"}]},{"id":"country","label":"Country","rule":null,"required":true,"errorMsg":"Required","valueOptions":null},{"id":"email","label":"Email","rule":"^[\\w-\\.]+@([\\w-]+\\.)+[\\w-]{2,4}$","required":true,"errorMsg":"Email is invalid","valueOptions":null},{"id":"phone","label":"Phone","rule":"^\\(?([0-9]{3})\\)?[-. ]?([0-9]{3})[-. ]?([0-9]{4})$","required":true,"errorMsg":"Phone Number should include all 10 digits, including area code","valueOptions":null}]}]};
</script>

    
</div>

    
</div>

    </div>

    
</div>
</div>
    
    
    <div>
    <div class="fitbit-mini-cart__modal fitbit-modal hidden-element">
        <div class="fitbit-modal-overlay">
            <div class="fitbit-modal-wrapper">
                <button type="button" class="exit-dialog"></button>
                <div class="fitbit-modal-content remove-modal" hidden>
    <h1>Remove Item</h1>
    <p>Proceed to remove item from shopping cart?</p>
    <div class="fitbit-modal-cta-group">
        <button type="button" class="yes">
            Yes
        </button>
        <button type="button" class="no cancel">
            No
        </button>
    </div>
</div>
                <div class="fitbit-modal-content error-modal" hidden>
    <h1 id="error-headline-default">Error Adding to Cart</h1>
    <h1 id="error-headline-upgrade-in-app" hidden>Upgrade in the Fitbit app</h1>
    <div id="error-multiple-add"><p>You can only purchase one membership at a time. The membership will be linked to your Fitbit account. If you would like to upgrade to another membership, complete your order, navigate back to the cart to add another membership.</p>
</div>
    <div id="error-existing-sub" hidden><p>It looks like the Fitbit account you are currently signed in with already has a membership. Thanks for being a member! If you are trying to purchase a membership for another account, please sign in with that account before making a purchase.</p>
</div>
    <div id="error-max-device" hidden></div>
    <div id="error-upgrade-in-app" hidden><p>Looks like you already have an active Premium membership! Because you subscribed via the Fitbit app, you’ll need to upgrade to Health Coaching within the app, too. <a href="https://help.fitbit.com/articles/en_US/Help_article/2454.htm" target="_blank">Learn more</a> about managing your subscriptions.</p>
</div>
    <div class="fitbit-modal-cta-group">
        <button id="errorDefaultCta" type="button" class="cancel btn-cta btn-primary-cta">
            Proceed
        </button>
        <button id="errorUpgradeInAppCta" type="button" class="cancel btn-cta btn-primary-cta" hidden>
            OK
        </button>
    </div>
</div>
                <div class="fitbit-modal-content consent-modal" hidden></div>
            </div>
        </div>
    </div>

    
    <script id="fitbit-modal-consent" type="text/x-handlebars-template">
        <h1>{{ data.title }}</h1>
        {{#if isPremium }}
<!--            <p class="charge-to">-->
<!--                <strong>{{ data.chargeToLabel }} {{ userName }}</strong>-->
<!--            </p>-->
<!--            <p>{{ data.title }}</p>-->
        {{/if}}
        <p>
            <div class="privacy-scrollable">
                <strong>{{ data.subtitle }}</strong>
                <div class="privacy-scrollable__content">
                    {{{ data.consentBody }}}
                </div>
            </div>
        </p>
        <div class="custom-checkbox">
            <input type="checkbox" id="hc-premium-terms"><span></span>
            <label for="hc-premium-terms">{{{ data.agreementText }}}</label>
        </div>
        {{#if isPremium }}
            <div class="disclaimer">{{{ data.disclaimerText }}}</div>
        {{/if}}
        <div class="fitbit-modal-cta-group">
            <button type="button" class="proceed btn-cta btn-primary-cta" disabled>
                <span>{{ data.agreementLabel }} <i class="fi-cta-arrow"></i></span>
            </button>
        </div>
    </script>
</div>

    <script type="application/javascript">
        window.miniCart = {
            addButtonLabel: "Add",
            cartSummaryLabel: "Cart summary",
            checkoutCtaLabel: "Checkout",
            checkoutCtaLink: "https:\/\/www.fitbit.com\/global\/us\/checkout",
            digitalDeliveryLabel: "Digital delivery after purchase",
            editButtonLabel: "Edit",
            emptyCartText: "The cart is empty",
            guestCheckoutCtaLabel: "Checkout as Guest",
            loginCtaLabel: "Log In \/ Sign Up",
            loginRequiredCtaLabel: "Login Required",
            loginCtaLink: "\/login\/transferpage",
            paymentLabel: "Payment",
            promoAmountLabel: "Promo amount",
            recommendationsLabel: "Top Recommendations",
            removeButtonLabel: "Remove",
            salesTaxLabel: "Sales Tax",
            selectSizeLabel: "Select Size",
            shippingAddressLabel: "Shipping Address",
            totalDueLabel: "Total Due",
            whatsIncludedLabel: "What\x27s Included",
            giftOptionsLabel: "Gift Options",
            giftDeliveryDateLabel: "Gift Delivery Date",
            giftToLabel: "Gift To",
            giftFromLabel: "Gift From",
            giftMessageLabel: "Gift Message",
            seeDetailsLabel: "See Details",
        };
    </script>

    
    <script id="fitbit-minicart-header" type="text/x-handlebars-template">
        <h3> {{ cartSummaryLabel }} <span class="fitbit-mini-cart__total-items">({{ totalItemsInCart }})</span></h3>
        <div class="fitbit-mini-cart__total-due price-total">{{formatPrice pricing.orderTotal }}</div>
    </script>

    
    <script id="fitbit-minicart-footer" type="text/x-handlebars-template">
        <div class="links {{#if needsLogin}}reqauth{{/if}} {{#if authoring.isUserLoggedIn}}auth{{else}}unauth{{/if}}">
            {{#if authoring.isUserLoggedIn}}
                <a href="{{ authoring.checkoutCtaLink}}" class="checkout-btn btn-cta btn-primary-cta with-btn-secondary">
                    <span>{{ authoring.checkoutCtaLabel }}</span>
                </a>
            {{else}}
                <a href="{{ authoring.loginCtaLink }}" class="login-btn btn-cta btn-secondary-cta with-btn-primary">
                    {{#if needsLogin}}
                    <span>{{ authoring.loginRequiredCtaLabel }}<i class="fi-cta-arrow"></i></span>
                    {{else}}
                    <span>{{ authoring.loginCtaLabel }}</span>
                    {{/if}}
                </a>
                {{#unless needsLogin}}
                <a href="{{ authoring.checkoutCtaLink }}" class="checkout-btn btn-cta btn-primary-cta with-btn-secondary">
                    <span>{{ authoring.guestCheckoutCtaLabel }}</span>
                </a>
                {{/unless}}
            {{/if}}
        </div>
    </script>

    
    <script id="fitbit-minicart-recommendations" type="text/x-handlebars-template">
        <h3 role="heading">{{ authoring.recommendationsLabel }}</h3>
        {{#if recommendations }}
        <div>
            <ul class="look__list">
                {{#isCheckoutPage}}
                <div class="slick-slider">
                {{/isCheckoutPage}}

                {{#each_upto recommendations maxRecommendations}}
                <li data-sku="{{ externalReferenceId }}" class="product-recommendation">
                    {{#if this.image}}
                    <figure>
                        <img border="0" src="{{this.image}}" alt="{{{ title }}}">
                    </figure>
                    {{/if}}
                    <div class="look__content">
                        <h4>{{{ title }}}</h4>
                        <div class="product-price">
                            {{> productRecommendationPricing}}
                        </div>
                        {{#if variants}}
                        <div class="size">
                            <select>
                                <option value="">{{ ../authoring.selectSizeLabel }}</option>
                                {{#each variants}}
                                    {{#if sizeVariation}}
                                    <option value="{{externalReferenceId}}" {{#ifCond ../this.externalReferenceId '===' externalReferenceId}}selected{{/ifCond}}>
                                        {{ sizeVariation }}
                                    </option>
                                    {{/if}}
                                {{/each}}
                            </select>
                        </div>
                        {{/if}}
                        <button type="button" class="add-pro">{{ ../authoring.addButtonLabel }}</button>
                    </div>
                </li>
                {{/each_upto}}
                {{#isCheckoutPage}}
                </div>
                {{/isCheckoutPage}}
            </ul>
        </div>
        {{/if}}
    </script>

    
    <script id="fitbit-pricing-partial" type="text/x-handlebars-template">
        {{#isOnSale salePrice listPrice }}
        <div class="offer-price">{{formatPrice salePrice }}</div>
        {{/isOnSale }}
        <div class="main-price{{#isOnSale salePrice listPrice}} in-offer {{/isOnSale}}">
            {{formatPrice listPrice }}
        </div>
    </script>

    
    <script id="fitbit-minicart-ledger-partial" type="text/x-handlebars-template">
        {{#if pricing.discount}}
        {{#ifCond pricing.discount.value '>' 0}}
        <div class="ledger-line" data-context="coupon-total">
            <p>
                <label>Promo amount</label>
                <span>-{{ formatPrice pricing.discount }}</span>
            </p>
        </div>
        {{/ifCond}}
        {{/if}}
        {{#if pricing.shippingAndHandling }}
        <div class="ledger-line" data-context="shipping-total">
            <p>
                <label data-shipping-id="{{shippingMethod.code}}">
                    {{#if isPremiumOnly}}
                        Digital delivery after purchase
                    {{else}}
                        {{ shippingMethod.description }}
                    {{/if}}
                </label>
                <span class="fitbit-mini-cart__shipping">{{formatPrice pricing.shippingAndHandling }}</span>
            </p>
        </div>
        {{/if}}
        {{#isCheckoutPage}}
            {{#ifCond currentStep '>' 0}}
            <div class="ledger-line" data-context="tax-total">
                <p>
                    <label>
                        {{getTaxLabel xfData shippingAddress.country}}
                    </label>
                    <span>
                        {{getTaxPrice pricing shippingAddress.country}}
                    </span>
                </p>
            </div>
            {{/ifCond}}
        {{/isCheckoutPage}}
        {{#if pricing.orderTotal }}
        <div class="ledger-line" data-context="order-total">
            <p>
                <label>Total Due</label>
                <span class="fitbit-mini-cart__total-due">{{formatPrice pricing.orderTotal }}</span>
            </p>
        </div>
        {{/if}}
    </script>

    
    <script id="fitbit-minicart-body" type="text/x-handlebars-template">
        {{#ifCond totalItemsInCart '===' 0}}
        <div class="empty-cart-content">{{ authoring.emptyCartText }}</div>
        {{/ifCond}}

        {{#ifCond totalItemsInCart '>' 0}}
        <div class="fitbit-mini-cart__wrapper">
            <ul class="cart-product-list">
                {{#each lineItems.lineItem}}
                <li class="fitbit-mini-cart__line-item" data-id="{{ id }}" data-sku="{{ product.externalReferenceId }}">
                    <figure><img src="{{ product.thumbnailImage }}"/></figure>
                    <div>
                        <div class="right-part">
                            <div class="info-price-wrapper parent-product">
                                <div class="product-info" data-product-type="{{ this.product.productType }}">
                                    <h4 class="line-item--name">{{{ product.displayName }}}</h4>
                                    {{#ifeq this.product.productType 'OTHER' }}
                                    <div class="price_description">{{formatPrice pricing.listPriceWithQuantity }}{{product.shortDescription}}</div>
                                    {{/ifeq}}
                                    {{#ifnoteq this.product.productType 'OTHER' }}
                                    <div class="stock available">{{formatInventoryMessage ../inventoryMessages product }}</div>
                                    {{/ifnoteq}}
                                    {{#if product.cartBullets }}
                                    <div class="pro-content">
                                        <div class="in-box">{{{ ../authoring.whatsIncludedLabel }}}</div>
                                        <ul class="box-content" hidden>
                                            {{#each product.cartBullets}}
                                            <li>{{this}}</li>
                                            {{/each }}
                                        </ul>
                                    </div>
                                    {{/if}}

                                    {{#if quantity }}
                                        {{#unless ../isOrderConfirmation}}
                                            {{#ifnoteq this.product.productType 'OTHER' }}
                                            <div class="quantity">
                                                <button type="button" class="q-minus" {{ isDisabled quantity 'minus' }}>-</button>
                                                <input type="number" min="1" max="10" readonly="" value="{{ quantity }}"/>
                                                <button type="button" class="q-plus" {{ isDisabled quantity 'plus' }}>+</button>
                                            </div>
                                            {{/ifnoteq}}
                                        {{/unless}}
                                        <div class="quantity preview" {{#unless ../isOrderConfirmation}}hidden{{/unless}}>Quantity: {{ quantity }}</div>
                                    {{/if}}
                                </div>
                                <div class="product-price">
                                    <div class="price-group">
                                        {{#isOnSale pricing.salePriceWithQuantity pricing.listPriceWithQuantity }}
                                        <div class="offer-price">{{formatPrice pricing.salePriceWithQuantity }}</div>
                                        {{/isOnSale }}
                                        <div class="main-price {{#isOnSale pricing.salePrice pricing.listPrice}} in-offer {{/isOnSale}}" data-price="{{pricing.listPriceWithQuantity.value}}">
                                            {{formatPrice pricing.listPriceWithQuantity }}
                                        </div>
                                    </div>
                                    {{#unless ../isOrderConfirmation}}
                                    <button type="button" class="remove">{{ ../authoring.removeButtonLabel }}</button>
                                    {{/unless}}
                                </div>
                            </div>
                            <!--/* Protection Plan */-->
                            {{#if product.associatedProtectionPlan}}
                            <div class="info-price-wrapper associated-product fpp-product{{#if product.associatedProtectionPlan.inCart}} product-in-cart{{/if}}" data-line-type="subordinate" data-fpp-line-id="{{product.associatedProtectionPlan.lineItemId}}" data-sku="{{product.associatedProtectionPlan.sku}}">
                                <div class="product-info content" data-product-type="warranty">
                                    <span class="line-item--name">{{{ product.associatedProtectionPlan.displayName }}}</span>, {{#if product.associatedProtectionPlan.pricing.salePrice}}{{formatPrice product.associatedProtectionPlan.pricing.salePrice}}{{else}}{{formatPrice product.associatedProtectionPlan.pricing.salePriceWithQuantity}}{{/if}}
                                    <div class="pro-content">
                                        {{#if product.associatedProtectionPlan.cartBullets}}
                                        <div class="in-box">{{{ ../authoring.seeDetailsLabel }}}</div>
                                        <ul class="box-content" hidden>
                                            {{#each product.associatedProtectionPlan.cartBullets}}
                                            <li>{{{ this }}}</li>
                                            {{/each}}
                                        </ul>
                                        {{/if}}
                                    </div>
                                </div>
                                <div class="product-price">
                                    <div class="main-price {{handleAssociatedProduct product.associatedProtectionPlan.inCart 'remove'}}">{{formatPrice product.associatedProtectionPlan.pricing.salePriceWithQuantity}}</div>
                                    {{#unless ../isOrderConfirmation}}
                                    <button type="button" class="remove {{handleAssociatedProduct product.associatedProtectionPlan.inCart 'remove'}}" data-id="{{product.associatedProtectionPlan.lineItemId}}">{{ ../authoring.removeButtonLabel }}</button>
                                    <button type="button" class="add {{handleAssociatedProduct product.associatedProtectionPlan.inCart 'add'}}" data-sku="{{product.associatedProtectionPlan.sku}}">{{ ../authoring.addButtonLabel }}</button>
                                    {{/unless}}
                                </div>
                            </div>
                            {{/if}}
                            <!--/* Premium Plan */-->
                            {{#if product.associatedPremium}}
                            <div class="info-price-wrapper associated-product{{#if product.associatedPremium.inCart}} product-in-cart{{/if}}" data-line-type="subordinate" data-sku="{{product.associatedPremium.sku}}">
                                <div class="product-info content" data-product-type="subscription">
                                    <span class="line-item--name">{{{ product.associatedPremium.displayName }}}</span>, {{formatPrice product.associatedPremium.pricing.salePriceWithQuantity}}
                                    <div class="pro-content">
                                        {{#if product.associatedPremium.cartBullets}}
                                        <div class="in-box">{{{ ../authoring.seeDetailsLabel }}}</div>
                                        <ul class="box-content" hidden>
                                            {{#each product.associatedPremium.cartBullets}}
                                            <li>{{{ this }}}</li>
                                            {{/each}}
                                        </ul>
                                        {{/if}}
                                    </div>
                                </div>
                                <div class="product-price">
                                    <div class="main-price {{handleAssociatedProduct product.associatedPremium.inCart 'remove'}}">{{formatPrice product.associatedPremium.pricing.salePriceWithQuantity}}</div>
                                    {{#unless ../isOrderConfirmation}}
                                    <button type="button" class="remove {{handleAssociatedProduct product.associatedPremium.inCart 'remove'}}" data-id="{{product.associatedPremium.lineItemId}}">{{ ../authoring.removeButtonLabel }}</button>
                                    <button type="button" class="add {{handleAssociatedProduct product.associatedPremium.inCart 'add'}}" data-sku="{{product.associatedPremium.sku}}">{{ ../authoring.addButtonLabel }}</button>
                                    {{/unless}}
                                </div>
                            </div>
                            {{/if}}
                        </div>
                    </div>
                </li>
                {{/each }}
            </ul>
            <div class="ledger">
                {{> ledger}}
            </div>
            <div class="look {{#isCheckoutPage}}look--checkout{{/isCheckoutPage}}"></div>
            {{#if showShippingBox }}
                {{#if shippingAddress.line1 }}
                <div class="shipping-address-box">
                    <h3>
                        {{#if isPremiumOnly }}
                            {{ authoring.billingAddressLabel }}
                        {{else}}
                            {{ authoring.shippingAddressLabel }}
                        {{/if}}
                    </h3>
                    <div class="shipping-whitebox">
                        <address>
                            <div><span>{{ shippingAddress.firstName }} {{ shippingAddress.lastName }}</span></div>
                            {{#if shippingAddress.companyName }}
                                <div>{{ shippingAddress.companyName }}</div>
                            {{/if}}
                            <div>{{ shippingAddress.line1 }}</div>
                            {{#if shippingAddress.line2}}
                                <div>{{ shippingAddress.line2 }}</div>
                            {{/if}}
                            {{#if shippingAddress.line3 }}
                                <div>{{ shippingAddress.line3 }}</div>
                            {{/if}}
                            {{#if shippingAddress.countyName }}
                                <div>{{ shippingAddress.countyName }}</div>
                            {{/if}}
                            <div>
                                <span>
                                    {{ shippingAddress.city }}
                                    {{ shippingAddress.countrySubdivision }}
                                    {{ shippingAddress.postalCode }}
                                    {{ shippingAddress.country }}
                                </span>
                            </div>
                            <div>{{ shippingAddress.emailAddress }}</div>
                            <div>{{ shippingAddress.phoneNumber }}</div>
                        </address>
                        {{#unless isOrderConfirmation}}
                        <button class="edit-a" type="button">{{ authoring.editButtonLabel }}</button>
                        {{/unless}}
                    </div>
                </div>
                {{/if}}
            {{/if}}
            {{#if giftData}}
            <div class="shipping-address-box gift-message-box">
                <h3>{{ authoring.giftOptionsLabel }}</h3>
                <div class="shipping-whitebox">
                    {{#if giftData.giftMessageSendDate}}
                    <div>{{ authoring.giftDeliveryDateLabel }}: {{ giftData.giftMessageSendDate }}</div>
                    {{/if}}
                    <div>{{ authoring.giftToLabel }}: {{ giftData.giftRecipientName }}</div>
                    <div>{{ authoring.giftFromLabel }}: {{ giftData.giftSenderName }}</div>
                    {{#if giftData.giftCustomMessage}}
                    <div>{{ authoring.giftMessageLabel }}: {{{giftData.giftCustomMessage}}}</div>
                    {{/if}}
                </div>
            </div>
            {{/if}}
            {{#if paymentMethod}}
            <div class="shipping-address-box payment-box">
                <h3>{{ authoring.paymentLabel }}</h3>
                <div class="shipping-whitebox">
                    <div> {{ billingAddress.firstName }} {{ billingAddress.lastName }} </div>
                    {{#if paymentMethod.creditCard}}
                        <div>
                            {{#if paymentMethod.creditCard.brand}}{{ paymentMethod.creditCard.brand }}:{{/if}} ...{{ paymentMethod.creditCard.lastFourDigits}}
                        </div>
                        <div> {{ paymentMethod.creditCard.expirationMonth }}/{{ paymentMethod.creditCard.expirationYear }}</div>
                    {{else}}
                        <div>{{capitalize paymentMethod.type}}</div>
                    {{/if}}
                </div>
            </div>
            {{/if}}
        </div>
        {{/ifCond}}
    </script>
</div>


    

</div>
</div>
</div>
<div class="responsivegrid aem-GridColumn aem-GridColumn--default--12">


<div class="aem-Grid aem-Grid--12 aem-Grid--default--12 ">
    
    
    
</div>
</div>

    
</div>
</div>


            
    
    
<script type="text/javascript" src="/global/etc.clientlibs/aem-sites/clientlibs/clientlib-dependencies.min.7042aec3c60d483bcaac1061961ab059.js"></script>
<script type="text/javascript" src="/global/etc.clientlibs/clientlibs/granite/jquery/granite/csrf.min.652a558c3774088b61b0530c184710d1.js"></script>
<script type="text/javascript" src="/global/etc.clientlibs/store/clientlibs/clientlib-all.min.48a89cc6cee89ce3f84428270cda35e9.js"></script>
<script type="text/javascript" src="/global/etc.clientlibs/fitbit/clientlibs/fitbit.min.70e36d276cf4b6738ecc1d9685beca91.js"></script>



    

    

    


            

        
    <script type="text/javascript">
      window.addEventListener('load',function() {
        _satellite.pageBottom();
      });
    </script>
    </body>
</html>
```