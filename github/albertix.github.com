```
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <title>Hello World!</title>
    
    <meta name="author" content="Albertix">

    <!-- Enable responsive viewport -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- Bootstrap styles -->
    <link href="/assets/themes/bootstrap-3/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!-- Optional theme -->
    <link href="/assets/themes/bootstrap-3/bootstrap/css/bootstrap-theme.min.css" rel="stylesheet">
    <!-- Sticky Footer -->
    <link href="/assets/themes/bootstrap-3/bootstrap/css/bs-sticky-footer.css" rel="stylesheet">
    
    <!-- Custom styles -->
    <link href="/assets/themes/bootstrap-3/css/style.css?body=1" rel="stylesheet" type="text/css" media="all">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->

    <!-- Fav and touch icons -->
    <!-- Update these with your own images
      <link rel="shortcut icon" href="images/favicon.ico">
      <link rel="apple-touch-icon" href="images/apple-touch-icon.png">
      <link rel="apple-touch-icon" sizes="72x72" href="images/apple-touch-icon-72x72.png">
      <link rel="apple-touch-icon" sizes="114x114" href="images/apple-touch-icon-114x114.png">
    -->

    <!-- atom & rss feed -->
    <link href="/atom.xml" type="application/atom+xml" rel="alternate" title="Sitewide ATOM Feed">
    <link href="/rss.xml" type="application/rss+xml" rel="alternate" title="Sitewide RSS Feed">
    <script type="text/javascript" src="http://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML"></script>
  </head>

  <body>
    <div id="wrap">
      <nav class="navbar navbar-default" role="navigation">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#jb-navbar-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="/">Albertix</a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="jb-navbar-collapse">
          <ul class="nav navbar-nav">
            
            
            


  
    
      
      	
      	<li><a href="/archive.html">Archive</a></li>
      	
      
    
  
    
      
    
  
    
      
      	
      	<li><a href="/categories.html">Categories</a></li>
      	
      
    
  
    
      
    
  
    
      
      	
      	<li><a href="/pages.html">Pages</a></li>
      	
      
    
  
    
      
    
  
    
      
    
  
    
      
      	
      	<li><a href="/tags.html">Tags</a></li>
      	
      
    
  



          </ul>
          <form class="navbar-form navbar-right" role="search">
            <div class="form-group">
              <input type="text" class="form-control" placeholder="Search">
            </div>
            <button type="submit" class="btn btn-default">Submit</button>
          </form>
        </div><!-- /.navbar-collapse -->
      </nav>

      <div class="container">
        
<div class="page-header">
  <h1>Hello World! </h1>
</div>

<div class="row">
  <div class="col-xs-12">
    
<p>各位看官，这里就这些啦。</p>

<ul>
  <li>
    <p><a href="/2015/09/20/add-pub_raspub-to-remote-authorized_keys">ssh基本设置，及authorized_keys</a> 2015-09-20 </p>
  </li>
  <li>
    <p><a href="/2015/09/14/tftp-install-and-test">在ubuntu下安装tftp服务</a> 2015-09-14 </p>
  </li>
  <li>
    <p><a href="/2015/09/14/config-dhcp-for-pxe">为PXE设置dhcp服务</a> 2015-09-14 </p>
  </li>
  <li>
    <p><a href="/2014/11/16/daily">2014-11-16日记</a> 2014-11-16 </p>
  </li>
  <li>
    <p><a href="/2014/09/27/sicp-learn-1">SICP学习 第一章</a> 2014-09-27 </p>
  </li>
  <li>
    <p><a href="/2014/08/16/lol">LOL</a> 2014-08-16 </p>
  </li>
  <li>
    <p><a href="/2014/08/16/change-date-format">改变jekyll日期格式</a> 2014-08-16 </p>
  </li>
  <li>
    <p><a href="/2014/07/03/added-math-support-through-mathjax">使用MathJax为jekyll添加Latex支持</a> 2014-07-03 </p>
  </li>
  <li>
    <p><a href="/2014/06/30/test">test</a> 2014-06-30 </p>
  </li>
  <li>
    <p><a href="/2012/11/18/hello-jekyll">Jekyll折腾记</a> 2012-11-18 </p>
  </li>
  <li>
    <p><a href="/2012/11/18/hello-blog">博客折腾记</a> 2012-11-18 </p>
  </li>
</ul>


  </div>
</div>


      </div>

    </div>

    <div id="footer">
      <div class="container">
        <p>&copy; 2015 Albertix
          with help from <a href="http://jekyllbootstrap.com" target="_blank" title="The Definitive Jekyll Blogging Framework">Jekyll Bootstrap</a>
          and <a href="http://twitter.github.com/bootstrap/" target="_blank">Twitter Bootstrap</a>
        </p>
      </div>
    </div id="footer">

    


    <!-- Latest compiled and minified JavaScript, requires jQuery 1.x (2.x not supported in IE8) -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.10.2.min.js"></script>
    <script src="/assets/themes/bootstrap-3/bootstrap/js/bootstrap.min.js"></script>
  </body>
</html>

```