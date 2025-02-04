```<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en-us">
<head>
   <meta http-equiv="content-type" content="text/html; charset=utf-8" />
   <title>Alex Feinberg</title>
   <meta name="author" content="Alex Feinberg" />
   
   <!-- syntax highlighting CSS -->
   <link rel="stylesheet" href="/css/syntax.css" type="text/css" />

   <!-- Homepage CSS -->
   <link rel="stylesheet" href="/css/screen.css" type="text/css" media="screen, projection" />

   <!-- Typekit -->
   <script type="text/javascript" src="http://use.typekit.com/jpd0pfm.js"></script>
   <script type="text/javascript">try{Typekit.load();}catch(e){}</script>
</head>
<body>

<div class="site">
  <div class="title">
    <a href="/">Alex Feinberg</a>
    <a class="extra" href="/">home</a>
  </div>
  
  <div id="home">
  <h1>Blog Posts</h1>
  <ul class="posts">
    
      <li><span>25 Jun 2011</span> &raquo; <a href="/2011/06/25/reliability-availability-scale-interlude.html">Reliability, availability and scale - an interlude</a></li>
    
      <li><span>17 Jun 2011</span> &raquo; <a href="/2011/06/17/replication-atomicity-and-order-in-distributed-systems.html">Replication, atomicity and order in distributed systems</a></li>
    
  </ul>

</div>
  
  <div class="footer">
    <div class="contact">
      <p>
        Alex Feinberg<br />
        alex@strlen.net
      </p>
    </div>
    <div class="contact">
      <p>
        <a href="http://github.com/afeinberg/">github.com/afeinberg</a><br />
        <a href="http://twitter.com/strlen/">twitter.com/strlen</a><br />
        <a href="http://linkedin.com/in/alexfeinberg/">linkedin.com/in/alexfeinberg</a>
      </p>
    </div>
    <div class="rss">
      <a href="http://feeds.feedburner.com/AlexFeinberg">
        <img src="/images/rss.png" alt="Subscribe to RSS Feed" />
      </a>
    </div>
  </div>
</div>

<a href="http://github.com/afeinberg"><img style="position: absolute; top: 0; right: 0; border: 0;" src="http://s3.amazonaws.com/github/ribbons/forkme_right_red_aa0000.png" alt="Fork me on GitHub" /></a>

<!-- Analytics -->
<script type="text/javascript">

  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-24600582-1']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();

</script>
<!-- Analytics end -->

</body>
</html>
```