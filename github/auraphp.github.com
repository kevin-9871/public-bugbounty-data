```<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->

    <head>
        <title>Aura for PHP</title>
        
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <meta name="viewport" content="width=device-width">
        <meta name="msapplication-TileColor" content="#ffffff">
        <meta name="msapplication-TileImage" content="/favicon/ms-icon-144x144.png">
        <meta name="theme-color" content="#ffffff">

        <link rel="alternate" type="application/atom+xml" title="Atom" href="http://auraphp.com/blog/atom.xml" />

        <link rel="apple-touch-icon" sizes="57x57" href="/favicon/apple-icon-57x57.png">
        <link rel="apple-touch-icon" sizes="60x60" href="/favicon/apple-icon-60x60.png">
        <link rel="apple-touch-icon" sizes="72x72" href="/favicon/apple-icon-72x72.png">
        <link rel="apple-touch-icon" sizes="76x76" href="/favicon/apple-icon-76x76.png">
        <link rel="apple-touch-icon" sizes="114x114" href="/favicon/apple-icon-114x114.png">
        <link rel="apple-touch-icon" sizes="120x120" href="/favicon/apple-icon-120x120.png">
        <link rel="apple-touch-icon" sizes="144x144" href="/favicon/apple-icon-144x144.png">
        <link rel="apple-touch-icon" sizes="152x152" href="/favicon/apple-icon-152x152.png">
        <link rel="apple-touch-icon" sizes="180x180" href="/favicon/apple-icon-180x180.png">
        <link rel="icon" type="image/png" sizes="192x192"  href="/favicon/android-icon-192x192.png">
        <link rel="icon" type="image/png" sizes="32x32" href="/favicon/favicon-32x32.png">
        <link rel="icon" type="image/png" sizes="96x96" href="/favicon/favicon-96x96.png">
        <link rel="icon" type="image/png" sizes="16x16" href="/favicon/favicon-16x16.png">
        <link rel="manifest" href="/favicon/manifest.json">

        <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/highlight.js/8.5/styles/magula.min.css">
        <link rel="stylesheet" href="/css/spacelab.css">
        <link rel="stylesheet" href="/css/aura.css">
        <link rel="stylesheet" href="/css/bootstrap-responsive.min.css">

        <script src="/js/vendor/modernizr-2.6.2-respond-1.1.0.min.js"></script>
        <script src="/js/vendor/jquery-1.9.1.min.js"></script>
        <script src="/js/vendor/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/highlight.js/8.5/highlight.min.js"></script>
        <script src="/js/plugins.js"></script>

    </head>

    <body>
        <!--[if lt IE 7]>
            <p class="chromeframe">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> or <a href="http://www.google.com/chromeframe/?redirect=true">activate Google Chrome Frame</a> to improve your experience.</p>
        <![endif]-->

        <!-- This code is taken from http://twitter.github.com/bootstrap/examples/hero.html -->

        <div class="navbar navbar-inverse navbar-fixed-top">
            <div class="navbar-inner">
                <div class="container">
                    <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </a>
                    <a class="brand" href="/">Aura for PHP</a>
                    <div class="nav-collapse collapse">
                        <ul class="nav">
                            <li ><a href="/about">About</a></li>
                            <li ><a href="/packages">Packages</a></li>
                            <li ><a href="/framework">Framework</a></li>
                            <li ><a href="/blog">Blog</a></li>
                            <li ><a href="/community">Community</a></li>
                            <li ><a href="/contributing">Contributing</a></li>
                        </ul>
                    </div><!--/.nav-collapse -->
                </div>
            </div>
        </div>

        <div class="container">

            <div class="hero-unit">
    <div class="hero-logo">
        <img src="img/aura-logo-black.png" width="240" height="240" />
        <h3 id="adjectives"></h3>
        <script src="/js/adjectives.js" type="text/javascript"></script>
        <p><a class="btn btn-primary btn-large" href="/about">Learn more &raquo;</a></p>
    </div>
</div>

<div class="row">
    <div class="span12" id="packages">
        <script src="/js/packages.js" type="text/javascript"></script>
    </div>
</div>


            <hr />

            <footer>
                <p>&copy; 2011-2019, Aura for PHP
                    <script type="text/javascript">
                        var sc_project=9117595;
                        var sc_invisible=0;
                        var sc_security="b58cd28d";
                        var scJsHost = (("https:" == document.location.protocol) ? "https://secure." : "http://www.");
                        document.write("<sc"+"ript type='text/javascript' src='" + scJsHost+ "statcounter.com/counter/counter.js'></"+"script>");
                    </script>
                    <noscript><div class="statcounter"><a
                        title="site stats"
                        href="http://statcounter.com/free-web-stats/"
                        target="_blank"><img class="statcounter"
                        src="http://c.statcounter.com/9117595/0/b58cd28d/0/"
                        alt="site stats"
                    ></a></div></noscript>
                </p>
            </footer>

        </div>

    </body>
</html>
```