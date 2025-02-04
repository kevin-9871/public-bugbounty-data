```<!DOCTYPE html>
<html lang="en">
<head>
<title>Crypto.com - The Best Place to Buy, Sell and Pay with Crypto</title>
<link href="https://crypto.com/" rel="canonical" />
<meta charset="utf-8" />
<meta content="IE=Edge,chrome=1" http-equiv="X-UA-Compatible" />
<meta content="width=device-width, initial-scale=1.0, maximum-scale=5.0, user-scalable=yes" name="viewport" />
<meta content="o3xtA6wqQGeCh357BgWQPLqFilP6t_vBWhEJPOF3ILw" name="google-site-verification" />
<meta content="_EYA-GzFVS4-ElfG_o-VQFhKBALKau3VT--Hiuf3s6U" name="google-site-verification" />
<meta content="e4zRG3nY0vgSClp7d4bAMZ3D0wfSqQFLjk-rXQNN00M" name="google-site-verification" />
<meta content="ZsldpD3RCgz2ntLBhPvWKAsL5uFtgUcxNuP5U0HDNe8" name="google-site-verification" />
<meta content="0eff7d54d56a2a23b89e71e136e7837b6926c9cc" name="naver-site-verification" />
<meta content="49b8ab40abd47d4c" name="yandex-verification" />
<meta content="0a98bc7058ecaa15f2e6a2e01e61a09e" name="p:domain_verify" />
<meta content="Crypto.com is the pioneering payment and cryptocurrency platform. Through Crypto.com, you can buy crypto at true cost and buy 55+ cryptocurrency such as bitcoin (BTC), ethereum (ETH), Ripple (XRP) and Litecoin (LTC) with credit card through our mobile app. The Crypto.com VISA Card allows you to spend anywhere at perfect interbank exchange rates with crypto cashback." name="description" />
<meta content="Crypto.com - The Best Place to Buy, Sell and Pay with Crypto" property="og:title" />
<meta content="website" property="og:type" />
<meta content="Crypto.com is the pioneering payment and cryptocurrency platform. Through Crypto.com, you can buy crypto at true cost and buy 55+ cryptocurrency such as bitcoin (BTC), ethereum (ETH), Ripple (XRP) and Litecoin (LTC) with credit card through our mobile app. The Crypto.com VISA Card allows you to spend anywhere at perfect interbank exchange rates with crypto cashback." property="og:description" />
<meta content="https://crypto.com/en/" property="og:url" />
<meta content="https://crypto.com/images/presskit/crypto_com_logo.png" property="og:image" />
<meta content="Crypto.com" property="og:site_name" />
<meta content="summary_large_image" name="twitter:card" />
<meta content="@cryptocom" name="twitter:site" />
<meta content="@cryptocom" name="twitter:creator" />
<meta content="Crypto.com - The Best Place to Buy, Sell and Pay with Crypto" property="twitter:title" />
<meta content="Crypto.com is the pioneering payment and cryptocurrency platform. Through Crypto.com, you can buy crypto at true cost and buy 55+ cryptocurrency such as bitcoin (BTC), ethereum (ETH), Ripple (XRP) and Litecoin (LTC) with credit card through our mobile app. The Crypto.com VISA Card allows you to spend anywhere at perfect interbank exchange rates with crypto cashback." name="twitter:description" />
<meta content="https://crypto.com/images/crypto_logo_blue_twitter-6c2557d3.png" name="twitter:image" /><script>
      window.dataLayer = window.dataLayer || []
      window.dataLayer.push({});
    </script>
<script>
      (function (w, d, s, l, i) {
          w[l] = w[l] || [];
          w[l].push({
              'gtm.start': new Date().getTime(),
              event: 'gtm.js'
          });
          var f = d.getElementsByTagName(s)[0],
              j = d.createElement(s),
              dl = l != 'dataLayer' ? '&l=' + l : '';
          j.async = true;
          j.src =
              'https://www.googletagmanager.com/gtm.js?id=' + i + dl;
          f.parentNode.insertBefore(j, f);
      })(window, document, 'script', 'dataLayer', 'GTM-WG9FXPH');
    </script><script>
      window.NREUM || (NREUM = {});
      NREUM.info = {
          "beacon": "bam.nr-data.net",
          "errorBeacon": "bam.nr-data.net",
          "licenseKey": "63fb496417",
          "applicationID": "70640426",
          "transactionName": "dw4PQEZdVVhVRh0OWVkETl1aVlxM",
          "queueTime": 0,
          "applicationTime": 8,
          "agent": ""
      }
    </script>
<script>
      window.NREUM || (NREUM = {}), __nr_require = function (e, t, n) {
          function r(n) {
              if (!t[n]) {
                  var o = t[n] = {
                      exports: {}
                  };
                  e[n][0].call(o.exports, function (t) {
                      var o = e[n][1][t];
                      return r(o || t)
                  }, o, o.exports)
              }
              return t[n].exports
          }
          if ("function" == typeof __nr_require) return __nr_require;
          for (var o = 0; o < n.length; o++) r(n[o]);
          return r
      }({
          1: [function (e, t, n) {
              function r() {}
      
              function o(e, t, n) {
                  return function () {
                      return i(e, [f.now()].concat(u(arguments)), t ? null : this, n), t ? void 0 :
                          this
                  }
              }
              var i = e("handle"),
                  a = e(2),
                  u = e(3),
                  c = e("ee").get("tracer"),
                  f = e("loader"),
                  s = NREUM;
              "undefined" == typeof window.newrelic && (newrelic = s);
              var p = ["setPageViewName", "setCustomAttribute", "setErrorHandler", "finished",
                      "addToTrace", "inlineHit", "addRelease"
                  ],
                  d = "api-",
                  l = d + "ixn-";
              a(p, function (e, t) {
                  s[t] = o(d + t, !0, "api")
              }), s.addPageAction = o(d + "addPageAction", !0), s.setCurrentRouteName = o(d +
                  "routeName", !0), t.exports = newrelic, s.interaction = function () {
                  return (new r).get()
              };
              var m = r.prototype = {
                  createTracer: function (e, t) {
                      var n = {},
                          r = this,
                          o = "function" == typeof t;
                      return i(l + "tracer", [f.now(), e, n], r),
                          function () {
                              if (c.emit((o ? "" : "no-") + "fn-start", [f.now(), r, o], n),
                                  o) try {
                                  return t.apply(this, arguments)
                              } catch (e) {
                                  throw c.emit("fn-err", [arguments, this, e], n), e
                              } finally {
                                  c.emit("fn-end", [f.now()], n)
                              }
                          }
                  }
              };
              a("setName,setAttribute,save,ignore,onEnd,getContext,end,get".split(","), function (e,
                  t) {
                  m[t] = o(l + t)
              }), newrelic.noticeError = function (e) {
                  "string" == typeof e && (e = new Error(e)), i("err", [e, f.now()])
              }
          }, {}],
          2: [function (e, t, n) {
              function r(e, t) {
                  var n = [],
                      r = "",
                      i = 0;
                  for (r in e) o.call(e, r) && (n[i] = t(r, e[r]), i += 1);
                  return n
              }
              var o = Object.prototype.hasOwnProperty;
              t.exports = r
          }, {}],
          3: [function (e, t, n) {
              function r(e, t, n) {
                  t || (t = 0), "undefined" == typeof n && (n = e ? e.length : 0);
                  for (var r = -1, o = n - t || 0, i = Array(o < 0 ? 0 : o); ++r < o;) i[r] = e[t + r];
                  return i
              }
              t.exports = r
          }, {}],
          4: [function (e, t, n) {
              t.exports = {
                  exists: "undefined" != typeof window.performance && window.performance.timing &&
                      "undefined" != typeof window.performance.timing.navigationStart
              }
          }, {}],
          ee: [function (e, t, n) {
              function r() {}
      
              function o(e) {
                  function t(e) {
                      return e && e instanceof r ? e : e ? c(e, u, i) : i()
                  }
      
                  function n(n, r, o, i) {
                      if (!d.aborted || i) {
                          e && e(n, r, o);
                          for (var a = t(o), u = m(n), c = u.length, f = 0; f < c; f++) u[f].apply(a,
                              r);
                          var p = s[y[n]];
                          return p && p.push([b, n, r, a]), a
                      }
                  }
      
                  function l(e, t) {
                      v[e] = m(e).concat(t)
                  }
      
                  function m(e) {
                      return v[e] || []
                  }
      
                  function w(e) {
                      return p[e] = p[e] || o(n)
                  }
      
                  function g(e, t) {
                      f(e, function (e, n) {
                          t = t || "feature", y[n] = t, t in s || (s[t] = [])
                      })
                  }
                  var v = {},
                      y = {},
                      b = {
                          on: l,
                          emit: n,
                          get: w,
                          listeners: m,
                          context: t,
                          buffer: g,
                          abort: a,
                          aborted: !1
                      };
                  return b
              }
      
              function i() {
                  return new r
              }
      
              function a() {
                  (s.api || s.feature) && (d.aborted = !0, s = d.backlog = {})
              }
              var u = "nr@context",
                  c = e("gos"),
                  f = e(2),
                  s = {},
                  p = {},
                  d = t.exports = o();
              d.backlog = s
          }, {}],
          gos: [function (e, t, n) {
              function r(e, t, n) {
                  if (o.call(e, t)) return e[t];
                  var r = n();
                  if (Object.defineProperty && Object.keys) try {
                      return Object.defineProperty(e, t, {
                          value: r,
                          writable: !0,
                          enumerable: !1
                      }), r
                  } catch (i) {}
                  return e[t] = r, r
              }
              var o = Object.prototype.hasOwnProperty;
              t.exports = r
          }, {}],
          handle: [function (e, t, n) {
              function r(e, t, n, r) {
                  o.buffer([e], r), o.emit(e, t, n)
              }
              var o = e("ee").get("handle");
              t.exports = r, r.ee = o
          }, {}],
          id: [function (e, t, n) {
              function r(e) {
                  var t = typeof e;
                  return !e || "object" !== t && "function" !== t ? -1 : e === window ? 0 : a(e, i,
                      function () {
                          return o++
                      })
              }
              var o = 1,
                  i = "nr@id",
                  a = e("gos");
              t.exports = r
          }, {}],
          loader: [function (e, t, n) {
              function r() {
                  if (!x++) {
                      var e = h.info = NREUM.info,
                          t = d.getElementsByTagName("script")[0];
                      if (setTimeout(s.abort, 3e4), !(e && e.licenseKey && e.applicationID && t))
                          return s.abort();
                      f(y, function (t, n) {
                          e[t] || (e[t] = n)
                      }), c("mark", ["onload", a() + h.offset], null, "api");
                      var n = d.createElement("script");
                      n.src = "https://" + e.agent, t.parentNode.insertBefore(n, t)
                  }
              }
      
              function o() {
                  "complete" === d.readyState && i()
              }
      
              function i() {
                  c("mark", ["domContent", a() + h.offset], null, "api")
              }
      
              function a() {
                  return E.exists && performance.now ? Math.round(performance.now()) : (u = Math.max(
                      (new Date).getTime(), u)) - h.offset
              }
              var u = (new Date).getTime(),
                  c = e("handle"),
                  f = e(2),
                  s = e("ee"),
                  p = window,
                  d = p.document,
                  l = "addEventListener",
                  m = "attachEvent",
                  w = p.XMLHttpRequest,
                  g = w && w.prototype;
              NREUM.o = {
                  ST: setTimeout,
                  SI: p.setImmediate,
                  CT: clearTimeout,
                  XHR: w,
                  REQ: p.Request,
                  EV: p.Event,
                  PR: p.Promise,
                  MO: p.MutationObserver
              };
              var v = "" + location,
                  y = {
                      beacon: "bam.nr-data.net",
                      errorBeacon: "bam.nr-data.net",
                      agent: "js-agent.newrelic.com/nr-1071.min.js"
                  },
                  b = w && g && g[l] && !/CriOS/.test(navigator.userAgent),
                  h = t.exports = {
                      offset: u,
                      now: a,
                      origin: v,
                      features: {},
                      xhrWrappable: b
                  };
              e(1), d[l] ? (d[l]("DOMContentLoaded", i, !1), p[l]("load", r, !1)) : (d[m](
                  "onreadystatechange", o), p[m]("onload", r)), c("mark", ["firstbyte", u], null,
                  "api");
              var x = 0,
                  E = e(4)
          }, {}]
      }, {}, ["loader"]);
    </script><link href="/images/favicon-af251bb2.png" rel="icon" type="image/png" /><link href="/stylesheets/application-85d02eec.css" rel="stylesheet" /><!--[if lt IE 9] <script type='text/javascript' src='//cdnjs.cloudflare.com/ajax/libs/html5shiv/3.6.1/html5shiv.js'></script> --><script src="https://use.typekit.net/hsd5gjn.js" data-turbolinks-track="reload"></script><meta content="30000" name="smartbanner:hide-ttl" />
<meta content="Crypto.com App - Buy Bitcoin Now" name="smartbanner:title" />
<meta content="CRYPTO Technology Holdings Limited" name="smartbanner:author" />
<meta content="Free" name="smartbanner:price" />
<meta content=" - Open the app" name="smartbanner:price-suffix-apple" />
<meta content=" - Open the app" name="smartbanner:price-suffix-google" />
<meta content="/images/app-icon-a2e5760a.jpg" name="smartbanner:icon-apple" />
<meta content="/images/app-icon-a2e5760a.jpg" name="smartbanner:icon-google" />
<meta content="VIEW" name="smartbanner:button" />
<meta content="https://crypto.onelink.me/PSQc/smartbanner" name="smartbanner:button-url-apple" />
<meta content="https://crypto.onelink.me/PSQc/smartbanner" name="smartbanner:button-url-google" />
<meta content="android,ios" name="smartbanner:enabled-platforms" />
<script src="/javascripts/smartbanner.min-55879fd7.js"></script>
<script>
      var onLoadHandlerForConflictTesting = function () {};
      window.onload = onLoadHandlerForConflictTesting;
      
      try {
        Typekit.load({ async: true });
      } catch (e) {
        // pass
      }
    </script><script src="/javascripts/application-ef64ace1.js" data-turbolinks-track="reload"></script><link href="/stylesheets/swiper.min-5b3de36f.css" rel="stylesheet" /><script src="/javascripts/swiper.min-cfcfeacb.js"></script><script src="/javascripts/appsflyer_tracking_crypto_com-fcf8bf9c.js"></script><script charset="UTF-8" data-domain-script="a87e5ccf-a1f4-4df6-b2b7-85fbed88d766" src="https://cdn.cookielaw.org/scripttemplates/otSDKStub.js" type="text/javascript"></script>
<script>
      function OptanonWrapper() { }
      $(document).ready(function () {
        $(document).on('click', 'a.optanon-toggle-display', function () {
          $('#optanon-popup-bottom-logo').hide();
        });
      
        setTimeout(function(){
          $(window).trigger("otloadbanner");
        }, 3000);
      });
    </script>
</head>
<body>
<noscript><iframe height="0" src="https://www.googletagmanager.com/ns.html?id=GTM-WG9FXPH" style="display:none;visibility:hidden" width="0"></iframe></noscript><nav class="navbar navbar-white fixed-top">
<div class="container nav-menu">
<div class="d-block d-xl-none">
<a class="hamburger hamburger--slider" href="/en/index.html#"><span class="hamburger-box"><span class="hamburger-inner"></span></span></a>
</div><a href="/en/" class="navbar-brand" lang="en">
<img src="/images/crypto_logo_blue-1a354060.png" alt="mco logo" class="d-block navbar-brand-blue" /><img src="/images/crypto_logo_white-80cfc43b.png" alt="mco logo" class="d-none navbar-brand-white" /></a>
<div class="navbar-menu navbar-expand-xl ml-auto d-none d-xl-block">
<div class="d-block d-xl-none" style="overflow: auto">
<div class="nav-body">
<div class="row p-5 new-nav">
<div class="col-6">
<div class="row">
<div class="col-12">
<a href="/exchange" class="nav-link" lang="en" alt="Crypto.com Exchange">Exchange</a>
</div>
<div class="col-12">
<a href="/en/wallet.html" class="nav-link" lang="en" alt="Crypto.com App">App</a>
</div>
<div class="col-12">
<a href="/en/cards.html" class="nav-link" lang="en" alt="MCO Visa Card">Cards</a>
</div>
<div class="col-12">
<a href="/en/earn.html" class="nav-link" lang="en" alt="Crypto Earn">Earn</a>
</div>
<div class="col-12">
<a href="/en/credit.html" class="nav-link" lang="en" alt="Crypto Credit">Credit</a>
</div>
</div>
</div>
<div class="col-6">
<div class="row">
<div class="col-12">
<a href="/en/pay.html" class="nav-link float-left" lang="en" alt="Pay">Pay</a>
</div>
<div class="col-12">
<a href="/en/defi" class="nav-link" lang="en" alt="Crypto.com DeFi">DeFi</a>
</div>
<div class="col-12 nav-new-item-mobile">
<a href="/price" class="nav-link" lang="en" alt="Crypto Price">Prices</a>
</div>
<div class="col-12">
<a href="http://www.crypto.com/help" rel="noopener noreferrer" class="nav-link " onclick="window.dataLayer.push({&quot;event&quot;:&quot;faq&quot;});">Support</a>
</div>
</div>
</div>
</div>
</div>
<ul class="list-inline rounded d-inline-block mb-5 text-center mr-auto">
<li class="list-inline-item"><a href="https://crypto.onelink.me/RSfq" target="_blank" class="appsflyer-btn" rel="noopener noreferrer" onclick="window.dataLayer.push({&quot;platform&quot;:&quot;iOS&quot;,&quot;page&quot;:&quot;en/index.html&quot;,&quot;event&quot;:&quot;download&quot;});">
<img src="/images/app-store-badge-20e4b31e.svg" alt="App store badge" /></a>
</li>
<li class="list-inline-item"><a href="https://crypto.onelink.me/veNW" target="_blank" class="appsflyer-btn" rel="noopener noreferrer" onclick="window.dataLayer.push({&quot;platform&quot;:&quot;Android&quot;,&quot;page&quot;:&quot;en/index.html&quot;,&quot;event&quot;:&quot;download&quot;});">
<img src="/images/play-store-badge-a1723ea8.svg" alt="Play store badge" /></a>
</li>
</ul>
<ul class="list-inline text-center mb-5">
<li class="list-inline-item px-3 py-1 mb-4"><a href="https://twitter.com/cryptocom" rel="noopener noreferrer" target="_blank" class="social" onclick="window.dataLayer.push({&quot;socialAction&quot;:&quot;Click&quot;,&quot;socialNetwork&quot;:&quot;Twitter&quot;,&quot;event&quot;:&quot;socialClick&quot;});">
<img src="/images/social/Twitter-icon-daaf084d.svg" alt="Twitter" /></a>
</li>
<li class="list-inline-item px-3 py-1 mb-4"><a href="https://www.facebook.com/CryptoComOfficial" target="_blank" rel="noopener noreferrer" class="social" onclick="window.dataLayer.push({&quot;socialAction&quot;:&quot;Click&quot;,&quot;socialNetwork&quot;:&quot;Facebook&quot;,&quot;event&quot;:&quot;socialClick&quot;});">
<img src="/images/social/Facebook-icon-5033525c.svg" alt="Facebook" /></a>
</li>
<li class="list-inline-item px-3 py-1 mb-4"><a href="https://www.instagram.com/cryptocomofficial/" rel="noopener noreferrer" target="_blank" class="social" onclick="window.dataLayer.push({&quot;socialAction&quot;:&quot;Click&quot;,&quot;socialNetwork&quot;:&quot;Instagram&quot;,&quot;event&quot;:&quot;socialClick&quot;});">
<img src="/images/social/Instagram-icon-72299511.svg" alt="Instagram" /></a>
</li>
<li class="list-inline-item px-3 py-1 mb-4"><a href="https://hk.linkedin.com/company/cryptocom" rel="noopener noreferrer" target="_blank" class="social" onclick="window.dataLayer.push({&quot;socialAction&quot;:&quot;Click&quot;,&quot;socialNetwork&quot;:&quot;Linkedin&quot;,&quot;event&quot;:&quot;socialClick&quot;});">
<img src="/images/social/Linkedin-icon-e7e6a454.svg" alt="Linkedin" /></a>
</li>
<li class="d-block d-xl-none"></li>
<li class="list-inline-item px-3 py-1 mb-4"><a href="https://www.youtube.com/channel/UCOMprzxakZOqmY23LYIawmg" rel="noopener noreferrer" target="_blank" class="social" onclick="window.dataLayer.push({&quot;socialAction&quot;:&quot;Click&quot;,&quot;socialNetwork&quot;:&quot;Youtube&quot;,&quot;event&quot;:&quot;socialClick&quot;});">
<img src="/images/social/Youtube-icon-06f61556.svg" alt="Youtube" /></a>
</li>
<li class="list-inline-item px-3 py-1"><a href="https://www.reddit.com/r/Crypto_com/" rel="noopener noreferrer" target="_blank" class="social" onclick="window.dataLayer.push({&quot;socialAction&quot;:&quot;Click&quot;,&quot;socialNetwork&quot;:&quot;Reddit&quot;,&quot;event&quot;:&quot;socialClick&quot;});">
<img src="/images/social/Reddit-icon-c44469e7.svg" alt="Reddit" /></a>
</li>
<li class="list-inline-item px-3 py-1"><a href="https://discord.gg/nsp9JTC" target="_blank" rel="noopener noreferrer" class="social" onclick="window.dataLayer.push({&quot;socialAction&quot;:&quot;Click&quot;,&quot;socialNetwork&quot;:&quot;Discord&quot;,&quot;event&quot;:&quot;socialClick&quot;});">
<img src="/images/social/Slack-icon-61e8a900.svg" alt="Discord" /></a>
</li>
<li class="list-inline-item px-3 py-1"><a href="https://blog.crypto.com/official-crypto-com-telegram-communities/" target="_blank" rel="noopener noreferrer" class="social" onclick="window.dataLayer.push({&quot;socialAction&quot;:&quot;Click&quot;,&quot;socialNetwork&quot;:&quot;Telegram&quot;,&quot;event&quot;:&quot;socialClick&quot;});">
<img src="/images/social/Telegram-icon-ce74d1e5.svg" alt="Telegram" /></a>
</li>
<li class="list-inline-item px-3 py-1"><a href="https://open.kakao.com/o/gGH1WQM" target="_blank" rel="noopener noreferrer" class="social" onclick="window.dataLayer.push({&quot;socialAction&quot;:&quot;Click&quot;,&quot;socialNetwork&quot;:&quot;Kakao&quot;,&quot;event&quot;:&quot;socialClick&quot;});">
<img src="/images/social/kakaotalk-icon-632c60de.svg" alt="Kakao" /></a>
</li>
</ul>
<a href="/kr/" class="d-block w-100 px-4 py-3 text-center bg-white text-blue  btn-lang" lang="kr" onclick="window.dataLayer.push({&quot;language&quot;:&quot;kr&quot;,&quot;event&quot;:&quot;languageChange&quot;});">íêµ­ì´</a>
<a href="/cn/" class="d-block w-100 px-4 py-3 text-center bg-white text-blue  btn-lang" lang="cn" onclick="window.dataLayer.push({&quot;language&quot;:&quot;cn&quot;,&quot;event&quot;:&quot;languageChange&quot;});">ä¸­æ</a>
</div>
<ul class="navbar-nav d-none d-md-none d-xl-flex">
<li class="nav-item">
<a href="/exchange" class="nav-link " lang="en" alt="Crypto.com Exchange">Exchange</a>
</li>
<li class="nav-item">
<a href="/en/wallet.html" class="nav-link " lang="en" alt="Crypto.com App">App</a>
</li>
<li class="nav-item">
<a href="/en/cards.html" class="nav-link " lang="en" alt="MCO Visa Card">Cards</a>
</li>
<li class="nav-item">
<a href="/en/earn.html" class="nav-link " lang="en" alt="Crypto Earn">Earn</a>
</li>
<li class="nav-item">
<a href="/en/credit.html" class="nav-link " lang="en" alt="Crypto Credit">Credit</a>
</li>
<li class="nav-item">
<a href="/en/pay.html" class="nav-link float-left " lang="en" alt="Pay">Pay</a>
</li>
<li class="nav-item">
<a href="/en/defi" class="nav-link " lang="en" alt="Crypto.com DeFi Wallet">DeFi</a>
</li>
<li class="nav-item nav-new-item-desktop">
<a href="/price" class="nav-link " lang="en" alt="Crypto Price">Prices</a>
</li>
<li class="nav-item">
<a href="http://www.crypto.com/help" rel="noopener noreferrer" class="nav-link " onclick="window.dataLayer.push({&quot;event&quot;:&quot;faq&quot;});">Support</a>
</li>
<li class="dropdown nav-item">
<a class="nav-link dropdown small" data-toggle="dropdown" href="#"><span>EN</span><img src="/images/flag_icon_up_down-f9634f03.svg" style="width: 14px; height: 14px; margin-top: -2px;" /><span class="caret"></span></a>
<ul class="dropdown-menu" style="margin-top:10px;z-index:9999">
<li><a href="/kr/" rel="noopener noreferrer" class="nav-link small" lang="kr">
<span>íêµ­ì´</span></a>
</li>
<li><a href="/cn/" rel="noopener noreferrer" class="nav-link small" lang="cn">
<span>ä¸­æ</span></a>
</li>
</ul>
</li>
</ul>
</div>
<div class="navbar-expand" id="download-app-icons-on-top-nav">
<ul class="navbar-nav">
<li class="nav-item"><a href="https://crypto.onelink.me/RSfq" class="btn btn-blue-300 nav-button mr-2 mr-lg-1 appsflyer-btn" rel="noopener noreferrer" target="_blank" onclick="window.dataLayer.push({&quot;platform&quot;:&quot;iOS&quot;,&quot;page&quot;:&quot;en/index.html&quot;,&quot;event&quot;:&quot;downloadLinkedinPixel331514&quot;});">
<img src="/images/app-store-icon-45ba396c.svg" alt="App store icon" /></a>
</li>
<li class="nav-item"><a href="https://crypto.onelink.me/veNW" class="btn btn-blue-300 nav-button mr-1 appsflyer-btn" rel="noopener noreferrer" target="_blank" onclick="window.dataLayer.push({&quot;platform&quot;:&quot;Android&quot;,&quot;page&quot;:&quot;en/index.html&quot;,&quot;event&quot;:&quot;downloadLinkedinPixel331522&quot;});">
<img src="/images/play-store-icon-ab04d32a.svg" alt="Play store icon" /></a>
</li>
</ul>
</div>
</div>
</nav>
<div id="main" style="overflow: hidden">
<div id="page-landing">
<div class="header px-3">
<div class="mt-5 mt-md-0"></div>
<h5 class="text-center mt-5 text-gray-600" data-i18n="ONE_SIMPLE_APP">
THE BEST PLACE TO
</h5>
<h1 class="my-3 mb-5 text-center" data-i18n="BUY_SELL_AND_PAY_WITH_CRYPTO">
Buy, Sell and Pay with Crypto
</h1>
</div>
<div class="text-center d-block d-md-none">
<ul class="list-inline p-3 d-inline-block mb-0" id="download-app-icons">
<li class="list-inline-item"><a href="https://crypto.onelink.me/RSfq" target="_blank" class="appsflyer-btn" rel="noopener noreferrer" onclick="window.dataLayer.push({&quot;platform&quot;:&quot;iOS&quot;,&quot;page&quot;:&quot;en/index.html&quot;,&quot;event&quot;:&quot;download&quot;});">
<img src="/images/app-store-badge-20e4b31e.svg" alt="App store badge" /></a>
</li>
<li class="list-inline-item"><a href="https://crypto.onelink.me/veNW" target="_blank" class="appsflyer-btn" rel="noopener noreferrer" onclick="window.dataLayer.push({&quot;platform&quot;:&quot;Android&quot;,&quot;page&quot;:&quot;en/index.html&quot;,&quot;event&quot;:&quot;download&quot;});">
<img src="/images/play-store-badge-a1723ea8.svg" alt="Play store badge" /></a>
</li>
</ul>
</div>
<div class="text-center d-none d-md-block pb-5">
<div class="container">
<div class="row justify-content-center">
<div class="col-3">
<div style="height: 50px; padding: 5px 0;"><a href="https://crypto.onelink.me/RSfq" target="_blank" class="appsflyer-btn float-right" rel="noopener noreferrer" onclick="window.dataLayer.push({&quot;platform&quot;:&quot;iOS&quot;,&quot;page&quot;:&quot;en/index.html&quot;,&quot;event&quot;:&quot;download&quot;});">
<img src="/images/app-store-badge-20e4b31e.svg" alt="App store badge" /></a>
</div>
<div style="height: 50px; padding: 5px 0;"><a href="https://crypto.onelink.me/veNW" target="_blank" class="appsflyer-btn float-right" rel="noopener noreferrer" onclick="window.dataLayer.push({&quot;platform&quot;:&quot;Android&quot;,&quot;page&quot;:&quot;en/index.html&quot;,&quot;event&quot;:&quot;download&quot;});">
<img src="/images/play-store-badge-a1723ea8.svg" alt="Play store badge" /></a>
</div>
</div>
<div class="col-3">
<img src="/images/app-qr-code-f7f47ab5.png" alt="Exchange tool screen" class="img-fluid float-left" height="100" width="100" />
</div>
</div>
</div>
</div>
</div>
<div class="py-5 exchange_section">
<div class="container">
<div class="row">
<div class="col-12 col-md-6 text-white text-center banner-left">
<h1 class="mb-4" data-i18n="INDEX_EXCHANGE">
Exchange
</h1>
<h4 class="d-none d-md-block my-4 pb-3 text-center" data-i18n="POWER_BY_CRO_WITH_DEEP_LIQUIDITY">
Powered by CRO, with Deep Liquidity, Low Fees and Best Execution Prices
</h4>
<h5 class="d-block d-md-none my-4 text-center" data-i18n="POWER_BY_CRO_WITH_DEEP_LIQUIDITY">
Powered by CRO, with Deep Liquidity, Low Fees and Best Execution Prices
</h5>
<a alt="Crypto.com Exchange" href="https://auth.crypto.com/exchange/signup">
<h5 class="mt-4 mb-5 mb-md-0 text-center font-blue index_explore" data-i18n="INDEX_SIGN_UP">
Sign Up
</h5>
</a>
</div>
<div class="col-12 col-md-6">
<img src="/images/exchange/exchange-630a5df1.png" class="img-fluid" alt="" />
</div>
</div>
</div>
</div>
<div class="bg-light py-5 py-lg-4">
<div class="container">
<div class="row">
<div class="d-none d-md-block col-6">
<img src="/images/index/index_wallet_iphonex-52a60db3.png" style="width: 100%;" alt="" />
</div>
<div class="col-12 col-md-6 wallet_section">
<h1 class="my-4 text-center" data-i18n="APP">
App
</h1>
<h4 class="d-none d-md-block my-4 pb-3 text-center" data-i18n="THE_ONLY_PLACE_TO_BUY_CRYPTO_AT_TRUE_COST">
Buy 80+ Coins at True Cost<br>No fees, No markups
</h4>
<h5 class="d-block d-md-none my-4 text-center" data-i18n="THE_ONLY_PLACE_TO_BUY_CRYPTO_AT_TRUE_COST">
Buy 80+ Coins at True Cost<br>No fees, No markups
</h5>
<a alt="Crypto.com Wallet App" href="/en/wallet.html">
<h5 class="mt-4 text-center font-blue index_explore" data-i18n="LEARN_MORE">
Learn More
</h5>
</a>
<div class="mx-3 pt-5 d-block d-md-none text-center">
<img src="/images/index/index_wallet_iphonex-52a60db3.png" style="width: 310px; margin: 0 auto;" alt="" />
</div>
</div>
</div>
</div>
</div>
<div class="bg-white py-5 py-lg-4">
<div class="container index_background_card">
<div class="row justify-content-center" style="height: 100%;">
<div class="col-12 col-md-6 mt-md-5">
<h1 class="my-4 text-center" data-i18n="CARDS">
Cards
</h1>
<h4 class="d-none d-md-block px-5 px-lg-0 my-4 pb-3 text-center" data-i18n="METAL_VISA_CARD_WITH_UP_TO_8_PERCENT" style="width: 400px; margin: 0 auto">
Metal Visa Card with<br>up to 8% back on spending
</h4>
<h5 class="d-block d-md-none my-4 text-center" data-i18n="METAL_VISA_CARD_WITH_UP_TO_8_PERCENT">
Metal Visa Card with<br>up to 8% back on spending
</h5>
<div class="card-launch-video-section text-center mb-4">
<a alt="MCO Visa Card now available in the UK, USA & SG" href="https://www.youtube.com/watch?v=BRYEaIGpbkc">
<div class="play-button play-button-desktop">
<svg height="40" width="40"><polygon points="15,13 15,27 28,20" style="fill:white;stroke:white;stroke-width:1"></polygon></svg>
</div>
<h4 class="font-blue d-none d-md-block" data-i18n="NOW_AVAILABLE_IN_THE_UK_US_AND_SG">
Now available in Canada, Europe, UK, USA and Singapore
</h4>
<p class="font-blue d-block d-md-none" data-i18n="NOW_AVAILABLE_IN_THE_UK_US_AND_SG">
Now available in Canada, Europe, UK, USA and Singapore
</p>
</a>
</div>
<a alt="MCO Visa Card" href="/en/cards.html">
<h5 class="mt-5 text-center font-blue index_explore" data-i18n="LEARN_MORE">
Learn More
</h5>
</a>
</div>
<div class="col-12 px-5 pt-5 d-block d-md-none text-center">
<img src="/images/index/index_card-1a3966f9.png" style="width: 250px;" alt="" />
</div>
<div class="col-12 pt-5 pt-md-0" style="display: flex; justify-content: center; align-items: flex-end;">
<span class="text-center font-12 d-block order-1" data-i18n="CARDHOLDERS_CANNOT_LOAD_CRYPTOCURRENCY_ONTO" style="color: #626973; max-width: 800px">Cardholders cannot load cryptocurrency onto their Crypto.com Visa Card. All cryptocurrency will be converted to US Dollars and the US Dollars can be loaded onto the Crypto.com Visa Card for use in purchase and ATM withdrawals.</span>
</div>
</div>
</div>
</div>
<div class="pt-5 pt-md-0 pb-md-0 pb-0 index_background_earn">
<div class="container" style="overflow: hidden;">
<div class="row justify-content-end" style="height: 800px;">
<div class="col-6 text-center d-none d-md-block">
<img src="/images/index/index_earn_iphonex-311bdf2e.png" style="width: 280px;" alt="" />
</div>
<div class="col-12 col-md-6 earn_section" style="height: 500px;">
<h1 class="my-4 text-center text-white" data-i18n="EARN">
Earn
</h1>
<h4 class="d-none d-md-block my-4 pb-3 text-center text-white" data-i18n="EARN_UP_TO_8_PERCENT">
Deposit crypto, earn interest paid weekly in crypto
</h4>
<h5 class="d-block d-md-none text-center my-4 text-white" data-i18n="EARN_UP_TO_8_PERCENT">
Deposit crypto, earn interest paid weekly in crypto
</h5>
<a alt="Crypto Earn" href="/en/earn.html">
<h5 class="mt-4 text-center font-blue index_explore" data-i18n="LEARN_MORE">
Learn More
</h5>
</a>
<div class="col-12 text-center pt-5 d-block d-md-none">
<img src="/images/index/index_earn_iphonex-311bdf2e.png" style="width: 220px;" alt="" />
</div>
</div>
</div>
</div>
</div>
<div class="pt-5 pb-md-0 pb-0 index_background_credit">
<div class="container" style="overflow: hidden;">
<div class="row justify-content-start">
<div class="col-12 col-md-6 credit_section">
<h1 class="my-4 text-center text-white" data-i18n="CREDIT">
Credit
</h1>
<h4 class="d-none d-md-block mx-3 my-4 pb-3 text-center text-white" data-i18n="SPEND_CRYPTO_WITHOUT_SELLING">
Deposit crypto, get an instant loan
</h4>
<h5 class="d-block d-md-none my-4 text-center text-white" data-i18n="SPEND_CRYPTO_WITHOUT_SELLING">
Deposit crypto, get an instant loan
</h5>
<a alt="Crypto Credit" href="/en/credit.html">
<h5 class="my-3 text-center font-blue index_explore" data-i18n="LEARN_MORE">
Learn More
</h5>
</a>
</div>
<div class="col-6 text-center d-none d-md-block">
<img src="/images/index/index_credit_iphonex-6b80aab8.png" style="width: 280px; transform: scale(1.5) translateY(90px)" alt="" />
</div>
<div class="col-12 text-center pt-5 d-block d-md-none">
<img src="/images/index/index_credit_iphonex_mobile-d4b0cda6.png" style="width: 300px" alt="" />
</div>
</div>
</div>
</div>
<div class="bg-white py-5">
<div class="container index_background_pay">
<div class="row justify-content-end">
<div class="col-12 col-md-4 pay_section">
<h1 class="my-4 text-center" data-i18n="PAY">
Pay
</h1>
<h4 class="d-none d-md-block my-4 pb-3 text-center" data-i18n="PAY_AND_BE_PAID_IN_CRYPTO">
Pay and be paid in crypto, anywhere, for free
</h4>
<h5 class="d-block d-md-none text-center my-4" data-i18n="PAY_AND_BE_PAID_IN_CRYPTO">
Pay and be paid in crypto, anywhere, for free
</h5>
<a alt="Crypto Pay" href="/en/pay.html">
<h5 class="my-4 text-center font-blue index_explore" data-i18n="LEARN_MORE">
Learn More
</h5>
</a>
</div>
<div class="col-12 d-block d-md-none pt-5">
<img src="/images/index/index_pay-15621a08.png" style="width: 100%" alt="" />
</div>
</div>
</div>
</div>
<div class="bg-light py-5 py-lg-4">
<div class="container">
<div class="row">
<div class="col-12 col-md-5 wallet_section">
<h1 class="my-4 text-center" data-i18n="DEFI_LONG">
DeFi
</h1>
<h4 class="d-none d-md-block mt-4 text-center" data-i18n="DEFI_SWAP">
DeFi Swap - Swap & Farm Coins
</h4>
<h4 class="d-none d-md-block mb-4 pb-3 text-center" data-i18n="DEFI_WALLET">
DeFi Wallet - Your Keys, Your Crypto
</h4>
<h5 class="d-block d-md-none mt-4 text-center" data-i18n="DEFI_SWAP">
DeFi Swap - Swap & Farm Coins
</h5>
<h5 class="d-block d-md-none mb-4 text-center" data-i18n="DEFI_WALLET">
DeFi Wallet - Your Keys, Your Crypto
</h5>
<a alt="Crypto.com DeFi Wallet" href="/en/defi/wallet">
<h5 class="mt-4 text-center font-blue index_explore" data-i18n="LEARN_MORE">
Learn More
</h5>
</a>
</div>
<div class="col-12 col-md-7">
<div class="mx-3 pt-5 text-center">
<img src="/images/index/index_defi_iphonex-539a1054.png" style="width: 100%;" alt="" />
</div>
</div>
</div>
</div>
</div>
</div><div class="footer bg-dark-800 py-3">
<div class="container">
<div class="row justify-content-center text-white">
<div class="col-12 col-md-8 px-0">
<div class="container">
<div class="row">
<div class="col-12 col-md-2 px-3 font-12" style="line-height: 2">
<div>
<h5 class="footer-title" data-i18n="PRODUCT">
Product
</h5>
<ul class="d-md-block footer-list">
<li>
<a href="/exchange" class="text-white font-weight-light" lang="en" alt="Crypto.com Exchange">Exchange</a>
</li>
<li>
<a href="/en/wallet.html" class="text-white font-weight-light" lang="en" alt="Crypto.com App">App</a>
</li>
<li>
<a href="/en/cards.html" class="text-white font-weight-light" lang="en" alt="MCO Visa Card">Cards</a>
</li>
<li>
<a href="/en/earn.html" class="text-white font-weight-light" lang="en" alt="Crypto Earn">Earn</a>
</li>
<li>
<a href="/en/credit.html" class="text-white font-weight-light" lang="en" alt="Crypto Credit">Credit</a>
</li>
<li>
<a href="/en/pay.html" class="text-white font-weight-light" lang="en" alt="Crypto.com Pay">Pay</a>
</li>
<li>
<a href="/en/defi/wallet" class="text-white font-weight-light" lang="en" alt="Crypto.com DeFi Wallet">DeFi</a>
</li>
<li class="nav-new-item">
<a href="/price" class="text-white font-weight-light" lang="en" alt="Crypto Price">Prices</a>
</li>
</ul>
</div>
</div>
<div class="col-12 col-md-2 px-3 px-md-2 font-12" style="line-height: 2">
<div>
<h5 class="footer-title" data-i18n="CHAIN">
Chain
</h5>
<ul class="d-md-block footer-list">
<li>
<a href="https://chain.crypto.com/" class="text-white font-weight-light" lang="en" alt="Crypto.com Chain">Chain</a>
</li>
<li>
<a href="/en/pay.html" class="text-white font-weight-light" lang="en" alt="Crypto.com Pay">Pay</a>
</li>
<li class="nav-new-item">
<a href="https://chain.crypto.com/explorer" class="text-white font-weight-light" lang="en" alt="Crypto.com Chain Explorer">Explorer</a>
</li>
</ul>
</div>
</div>
<div class="col-12 col-md-2 px-3 font-12" style="line-height: 2">
<div>
<h5 class="footer-title" data-i18n="TOKENS">
Token
</h5>
<ul class="d-md-block footer-list">
<li>
<a href="/en/token.html" class="text-white font-weight-light" lang="en" alt="CRO">CRO</a>
</li>
<li>
<a href="/en/listing.html" class="text-white font-weight-light" lang="en" alt="Listing">Listing</a>
</li>
</ul>
</div>
</div>
<div class="col-12 col-md-2 px-3 font-12" style="line-height: 2">
<div>
<h5 class="footer-title" data-i18n="ABOUT">
About
</h5>
<ul class="d-md-block footer-list">
<li>
<a href="/en/about.html#vision" rel="noopener noreferrer" class="text-white font-weight-light">Vision</a>
</li>
<li>
<a href="/en/about.html#team" rel="noopener noreferrer" class="text-white font-weight-light">Team</a>
</li>
<li>
<a href="/en/about.html#advisors" rel="noopener noreferrer" class="text-white font-weight-light">Advisors</a>
</li>
<li>
<a href="/en/security.html" rel="noopener noreferrer" class="text-white font-weight-light">Security</a>
</li>
<li>
<a href="https://blog.crypto.com/join-the-crypto-com-ambassador-program/" target="_blank" rel="noopener noreferrer" class="text-white font-weight-light">Ambassador</a>
</li>
<li>
<a href="http://www.crypto.com/help" rel="noopener noreferrer" class="text-white font-weight-light" onclick="window.dataLayer.push({&quot;event&quot;:&quot;faq&quot;});">Support</a>
</li>
<li>
<a href="/en/about.html#page-contact" rel="noopener noreferrer" class="text-white font-weight-light">Contact</a>
</li>
</ul>
</div>
</div>
<div class="col-12 col-md-2 px-3 font-12" style="line-height: 2">
<div>
<h5 class="footer-title" data-i18n="NEWS">
News
</h5>
<ul class="d-md-block footer-list">
<li>
<a href="https://blog.crypto.com" target="_blank" rel="noopener noreferrer" class="text-white font-weight-light">Blog</a>
</li>
<li>
<a href="/en/university" class="text-white font-weight-light " lang="en" alt="University">University</a>
</li>
<li>
<a href="/en/research" class="text-white font-weight-light " lang="en" alt="Research">Research</a>
</li>
<li>
<a href="/en/about.html#careers" rel="noopener noreferrer" class="text-white font-weight-light">We're Hiring</a>
</li>
</ul>
</div>
</div>
</div>
</div>
</div>
<div class="col-12 col-md-4 px-3">
<div>
<ul class="list-inline text-center text-md-left mb-3 mt-5 mt-md-0">
<li class="list-inline-item mx-0 my-2"><a href="https://crypto.onelink.me/RSfq" target="_blank" class="appsflyer-btn" rel="noopener noreferrer" onclick="window.dataLayer.push({&quot;platform&quot;:&quot;iOS&quot;,&quot;page&quot;:&quot;en/index.html&quot;,&quot;event&quot;:&quot;download&quot;});">
<img src="/images/app-store-badge-20e4b31e.svg" alt="App store badge" /></a>
</li>
<li class="list-inline-item mx-0 my-2"><a href="https://crypto.onelink.me/veNW" target="_blank" class="appsflyer-btn" rel="noopener noreferrer" onclick="window.dataLayer.push({&quot;platform&quot;:&quot;Android&quot;,&quot;page&quot;:&quot;en/index.html&quot;,&quot;event&quot;:&quot;download&quot;});">
<img src="/images/play-store-badge-a1723ea8.svg" alt="Play store badge" /></a>
</li>
</ul>
<ul class="list-inline text-center text-md-left">
<li class="list-inline-item px-3 pr-md-3 pl-md-0 py-1 mb-2 ml-0 mr-0 mr-md-2 mr-lg-3"><a href="https://twitter.com/cryptocom" rel="noopener noreferrer" target="_blank" class="social" onclick="window.dataLayer.push({&quot;socialAction&quot;:&quot;Click&quot;,&quot;socialNetwork&quot;:&quot;Twitter&quot;,&quot;event&quot;:&quot;socialClick&quot;});">
<img src="/images/social/Twitter-icon-daaf084d.svg" alt="Twitter" /></a>
</li>
<li class="list-inline-item px-3 pr-md-3 pl-md-0 py-1 mb-2 ml-0 mr-0 mr-md-2 mr-lg-3"><a href="https://www.facebook.com/CryptoComOfficial" target="_blank" rel="noopener noreferrer" class="social" onclick="window.dataLayer.push({&quot;socialAction&quot;:&quot;Click&quot;,&quot;socialNetwork&quot;:&quot;Facebook&quot;,&quot;event&quot;:&quot;socialClick&quot;});">
<img src="/images/social/Facebook-icon-5033525c.svg" alt="Facebook" /></a>
</li>
<li class="list-inline-item px-3 pr-md-3 pl-md-0 py-1 mb-2 ml-0 mr-0 mr-md-2 mr-lg-3"><a href="https://www.instagram.com/cryptocomofficial/" rel="noopener noreferrer" target="_blank" class="social" onclick="window.dataLayer.push({&quot;socialAction&quot;:&quot;Click&quot;,&quot;socialNetwork&quot;:&quot;Instagram&quot;,&quot;event&quot;:&quot;socialClick&quot;});">
<img src="/images/social/Instagram-icon-72299511.svg" alt="Instagram" /></a>
</li>
<li class="list-inline-item px-3 pr-md-3 pl-md-0 py-1 mb-2 ml-0 mr-0 mr-md-2 mr-lg-3"><a href="https://hk.linkedin.com/company/cryptocom" rel="noopener noreferrer" target="_blank" class="social" onclick="window.dataLayer.push({&quot;socialAction&quot;:&quot;Click&quot;,&quot;socialNetwork&quot;:&quot;Linkedin&quot;,&quot;event&quot;:&quot;socialClick&quot;});">
<img src="/images/social/Linkedin-icon-e7e6a454.svg" alt="Linkedin" /></a>
</li>
<li class="list-inline-item px-3 pr-md-3 pl-md-0 py-1 mb-2 ml-0 mr-0 mr-md-2 mr-lg-3"><a href="https://www.youtube.com/channel/UCOMprzxakZOqmY23LYIawmg" target="_blank" rel="noopener noreferrer" class="social social--larger" onclick="window.dataLayer.push({&quot;socialAction&quot;:&quot;Click&quot;,&quot;socialNetwork&quot;:&quot;Youtube&quot;,&quot;event&quot;:&quot;socialClick&quot;});">
<img src="/images/social/Youtube-icon-06f61556.svg" alt="Youtube" /></a>
</li>
<li class="list-inline-item px-3 pr-md-3 pl-md-0 py-1 mb-2 ml-0 mr-0 mr-md-2 mr-lg-3"><a href="https://www.reddit.com/r/Crypto_com/" rel="noopener noreferrer" target="_blank" class="social" onclick="window.dataLayer.push({&quot;socialAction&quot;:&quot;Click&quot;,&quot;socialNetwork&quot;:&quot;Reddit&quot;,&quot;event&quot;:&quot;socialClick&quot;});">
<img src="/images/social/Reddit-icon-c44469e7.svg" alt="Reddit" /></a>
</li>
<li class="list-inline-item px-3 pr-md-3 pl-md-0 py-1 mb-2 ml-0 mr-0 mr-md-2 mr-lg-3"><a href="https://discord.gg/nsp9JTC" target="_blank" rel="noopener noreferrer" class="social social" onclick="window.dataLayer.push({&quot;socialAction&quot;:&quot;Click&quot;,&quot;socialNetwork&quot;:&quot;Discord&quot;,&quot;event&quot;:&quot;socialClick&quot;});">
<img src="/images/social/Discord-icon-340ae729.svg" alt="Discord" /></a>
</li>
<li class="list-inline-item px-3 pr-md-3 pl-md-0 py-1 mb-2 ml-0 mr-0 mr-md-2 mr-lg-3"><a href="https://blog.crypto.com/official-crypto-com-telegram-communities/" target="_blank" rel="noopener noreferrer" class="social" onclick="window.dataLayer.push({&quot;socialAction&quot;:&quot;Click&quot;,&quot;socialNetwork&quot;:&quot;Telegram&quot;,&quot;event&quot;:&quot;socialClick&quot;});">
<img src="/images/social/Telegram-icon-ce74d1e5.svg" alt="Telegram" /></a>
</li>
<li class="list-inline-item px-3 pr-md-3 pl-md-0 py-1 mb-2 ml-0 mr-0 mr-md-2 mr-lg-3"><a href="https://open.kakao.com/o/gGH1WQM" target="_blank" rel="noopener noreferrer" class="social" onclick="window.dataLayer.push({&quot;socialAction&quot;:&quot;Click&quot;,&quot;socialNetwork&quot;:&quot;Kakao&quot;,&quot;event&quot;:&quot;socialClick&quot;});">
<img src="/images/social/kakaotalk-icon-632c60de.svg" alt="Kakao" /></a>
</li>
</ul>
<ul class="list-inline text-center text-md-left mb-3">
<li class="list-inline-item mx-3 ml-md-0 my-2 cert">
<img src="/images/CCSS-dd0d6f76.png" alt="CCSS" style="height: 60px" />
</li>
<li class="list-inline-item mx-3 ml-md-0 my-2 cert">
<img src="/images/Kudelski-e043c467.png" alt="Kudelski" style="height: 45px" />
</li>
<li class="list-inline-item mx-3 ml-md-0 my-2 cert">
<img src="/images/PCI-86840ff6.png" alt="PCI:DSS 3.2.1, Level 1 compliance" />
</li>
<li class="list-inline-item mx-3 ml-md-0 my-2 cert">
<img src="/images/ISO27001-48beba54.png" alt="ISO27001:2013" />
</li>
</ul>
</div>
</div>
</div>
<div class="row justify-content-center py-2 text-gray-600">
<div class="col-12 col-md-8 text-center text-md-left font-12 px-3" data-i18n="COPYRIGHT">
Copyright&copy; <span class='copyright-year'>2018</span> Crypto.com. All rights reserved.
</div>
<div class="col-12 col-md-4 text-center text-md-left px-3">
<ul class="list-inline">
<li class="list-inline-item font-12 mr-4 pr-2">
<a href="/en/privacy/global.html" rel="noopener noreferrer" class="text-gray-600 font-weight-light" onclick="window.dataLayer.push({&quot;event&quot;:&quot;privacyPolicy&quot;});">Privacy Notice</a>
</li>
<li class="list-inline-item font-12 mr-4 pr-2">
<a href="https://status.crypto.com" target="_blank" rel="noopener noreferrer" class="text-gray-600 font-weight-light" onclick="window.dataLayer.push({&quot;event&quot;:&quot;status&quot;});">Status</a>
</li>
<li class="list-inline-item font-12">
<a href="#" rel="noopener noreferrer" class="text-gray-600 font-weight-light ot-sdk-show-settings" onclick="window.dataLayer.push({&quot;event&quot;:&quot;cookieSettings&quot;});">Cookie Settings</a>
</li>
</ul>
</div>
</div>
</div>
</div><script>
      window.intercomSettings = {
          app_id: "ruozuwky"
      };
    </script>
<script>
      (function () {
          var w = window;
          var ic = w.Intercom;
          if (typeof ic === "function") {
              ic('reattach_activator');
              ic('update', intercomSettings);
          } else {
              var d = document;
              var i = function () {
                  i.c(arguments)
              };
              i.q = [];
              i.c = function (args) {
                  i.q.push(args)
              };
              w.Intercom = i;
      
              function l() {
                  var s = d.createElement('script');
                  s.type = 'text/javascript';
                  s.async = true;
                  s.src = 'https://widget.intercom.io/widget/ruozuwky';
                  var x = d.getElementsByTagName('script')[0];
                  x.parentNode.insertBefore(s, x);
              }
              if (w.attachEvent) {
                  w.attachEvent('onload', l);
              } else {
                  w.addEventListener('load', l, false);
              }
          }
      })()
    </script><script type="application/ld+json">
      {
      "@context": "http://schema.org",
      "@type": "Organization",
      "name": "Crypto.com",
      "logo": "https://crypto.com/images/icon-logo-blue-60d992f2.png",
      "url": "https://crypto.com",
      "sameAs": ["https://twitter.com/MCO_Crypto",
                  "https://twitter.com/cryptocom",
                  "https://www.facebook.com/CryptoComOfficial",
                  "https://www.instagram.com/cryptocomofficial/",
                  "https://hk.linkedin.com/company/cryptocom",
                  "https://www.reddit.com/r/Crypto_com/",
                  "https://discord.gg/nsp9JTC",
                  "https://t.me/CryptoComOfficial"
      ]
      }
    </script><script type="application/ld+json">
      {
      "@context": "http://schema.org",
      "@type": "BreadcrumbList",
      "itemListElement": [{
          "@type": "ListItem",
          "position": 1,
          "name": "Crypto.com",
          "item": "https://crypto.com"
      },{
          "@type": "ListItem",
          "position": 2,
          "name": "Home",
          "item": "https://crypto.com/en/"
      }]
      }
    </script><script>
      // hamburger menu on, app icons on top nav off
      (function () {
          var nav = $('nav');
          var dlAppIconsOnTopNav = $('#download-app-icons-on-top-nav');
          $('.hamburger').click(function (evt) {
              // evt.preventDefault();
              // console.log('sfffds', $(this).hasClass('is-active') );
              // dlAppIconsOnTopNav.not(':animated')
              //     .animate({
              //         'width': 'toggle'
              //     }, 'fast');
              dlAppIconsOnTopNav.add(nav).toggleClass('mobile-menu-on');
          });
      })();
    </script>
<script>
      // toggle app icons on top nav by page scroll position
      (function () {
          var dlAppIconsOnPage = $('#download-app-icons');
          if (!dlAppIconsOnPage.length) {
              return;
          } // do nothing when no app icons on page
          var dlAppIconsOnTopNav = $('#download-app-icons-on-top-nav');
          var toggleAppIconsOnTopNav = function (opt) {
              // if ( $(window).scrollTop() > dlAppIconsOnPage.offset().top ) {
              //     // icons on page out of sight, show icons on top nav
              //     dlAppIconsOnTopNav.filter(':hidden')
              //         .not(':animated')
              //         .animate({'width':'toggle'}, ( opt.speed || 'fast' ));
              // } else {
              //     // icons on page in sight, hide icons on top nav
              //     dlAppIconsOnTopNav.not(':hidden')
              //         .not(':animated')
              //         .animate({'width':'toggle'}, ( opt.speed || 'fast' ));
              // }
              var condition = $(window).scrollTop() < dlAppIconsOnPage.offset().top;
              dlAppIconsOnTopNav.toggleClass('scrolled-up', condition);
          };
          $(window).scroll(toggleAppIconsOnTopNav);
          toggleAppIconsOnTopNav(); // very fast but not 0
          // toggleAppIconsOnTopNav({speed: 0.01});  // very fast but not 0
      })();
    </script><script>
      $(document).ready(function(){
          $('.popup_banner').show();
      })
      
      $('.popup_banner--close_btn').click(function(){
        $('.popup_banner').hide();
      });
    </script>
</body>
</html>```