```<!doctype html>
<html prefix="og: http://ogp.me/ns#">

<head>
  <meta charset="utf-8">

  <title>Welcome &mdash; Apiary Blog</title>

  <meta name="viewport" content="width=device-width, minimum-scale=1.0">
  <meta name="author" content="Apiary">
  <link rel="alternate" type="application/rss+xml" title="The Apiary Blog Feed" href="https://blog.apiary.io/feed.xml" />

  <meta name="application-name" content="Apiary">
  <meta name="twitter:card" content="summary">
  <meta property="og:type" content="article">
  <meta name="twitter:site" content="@apiaryio">
  <meta name="twitter:creator" content="@apiaryio">

  <meta name="twitter:title" content="Welcome &mdash; Apiary Blog">
  <meta name="twitter:image" content="https://blog.apiary.io/images/apiary-logotype-3D-only.png">

  <meta property="og:title" content="Welcome &mdash; Apiary Blog">
  <meta property="og:image" content="https://blog.apiary.io/images/apiary-logotype-3D-only.png">
  <meta property="og:image:width" content="1200">
  <meta property="og:image:height" content="630">

  
  <meta property="og:url" content="https://blog.apiary.io">
  <meta name="description"
    content="The Apiary Blog &mdash; Build beautiful APIs and read a few lines of text too. The life in Apiary and people around.">
  <meta name="twitter:description"
    content="The Apiary Blog &mdash; Build beautiful APIs and read a few lines of text too. The life in Apiary and people around.">
  <meta property="og:description"
    content="The Apiary Blog &mdash; Build beautiful APIs and read a few lines of text too. The life in Apiary and people around.">
  

  <link rel="shortcut icon" href="/favicon.ico">
  <link rel="canonical" href="https://blog.apiary.io/">

  <!-- Styles -->
  <link rel="stylesheet" href="https://static.apiary.io/assets/styles/modules/footer/footer.css">
  <link rel="stylesheet" href="https://static.apiary.io/assets/styles/modules/website.css">
  <link rel="stylesheet" href="/syntax.css">
  <!-- /Styles -->

</head>

<body class="website">

  <!-- website-header -->
  <header id="websiteHeader">
    <div class="positioning">
      <a class="headerLogotypeLink" href="https://apiary.io">
        <h1 class="visuallyhidden" title="Apiary Ltd.">Apiary</h1>
        <div class="headerLogotype"></div>
      </a>
      <a class="to_nav" href="#navigation"><span class="visuallyhidden">Go to Navigation</span></a>
    </div>
  </header>
  <!-- /website-header -->

  <!-- website-navigation -->
  <div id="navigation">
    <nav class="websiteNav positioning">
      <ul class="clearAfter websiteNavMenu">
        
        <li class="websiteNavItem"><a class="websiteNavLink" href="https://apiary.io/how-it-works">How It Works</a></li>
        
        <li class="websiteNavItem"><a class="websiteNavLink" href="https://apiary.io/plans">Plans</a></li>
        
        <li class="websiteNavItem"><a class="websiteNavLink" href="https://apiary.io/products">Product</a></li>
        
        <li class="websiteNavItem"><a class="websiteNavLink" href="https://help.apiary.io/">Help</a></li>
        
        <li class="websiteNavItem"><a class="websiteNavLink" href="https://apiary.io/company">Company</a></li>
        
        <li class="websiteNavItem"><a class="websiteNavLink" href="https://login.apiary.io/login">Sign In</a></li>
        
        <li class="websiteNavItem"><a class="websiteNavLink websiteNavLinkHighlighted signIn"
            href="https://login.apiary.io/register">Sign Up</a></li>
      </ul>
      <a class="websiteNavLink backToTop" href="javascript:;"><span class="visuallyhidden">Back to top</span></a>
    </nav>
  </div>
  <!-- /website-navigation -->

  <div>
    <div class="blog">
  <div class="blogArticles">
    
        <div class="blogPost"><a href="/OAS-3">
          <h1>Welcoming OpenAPI 3.0 to Apiary</h1>
          <p>Try out OpenAPI 3.0 in Apiary!</p>
          <p class="authorDate inline">Kyle Fuller — 06 Feb 2019</p>
        </a></div>
    
        <div class="blogPost"><a href="/What-you-need-from-your-CI">
          <h1>What you need from your CI</h1>
          <p>The main things to focus on regarding a CI. This is our experience with CIEs in the last 7 years.</p>
          <p class="authorDate inline">Ladislav Prskavec — 30 Jan 2019</p>
        </a></div>
    
        <div class="blogPost"><a href="/ApiaryUI">
          <h1>ApiaryUI</h1>
          <p>Introduction of new version of Apiary Interactive Documentation</p>
          <p class="authorDate inline">Vladimír Gorej — 17 Jan 2019</p>
        </a></div>
    
        <div class="blogPost"><a href="/Hive-Talks-Ladies">
          <h1>Hive Talks - Ladies' Edition</h1>
          <p>Join the meetup we're organizing at Apiary's Prague office on 20th of August</p>
          <p class="authorDate inline">Daria Grudzien — 16 Aug 2018</p>
        </a></div>
    
        <div class="blogPost"><a href="/Constitutions">
          <h1>Announcing Apiary Constitutions</h1>
          <p>How to write API Style Guide rules collaboratively</p>
          <p class="authorDate inline">Jakub Mikulas — 25 Apr 2018</p>
        </a></div>
    
        <div class="blogPost"><a href="/Evolving-Embed">
          <h1>Evolving Embed</h1>
          <p>What's new with our Embed feature</p>
          <p class="authorDate inline">Vladimír Gorej — 25 Apr 2018</p>
        </a></div>
    
        <div class="blogPost"><a href="/Hive-Talks-Security">
          <h1>Hive Talks - Security</h1>
          <p>Join the meetup we're organizing at Apiary's Prague office on 6th of March</p>
          <p class="authorDate inline">Daria Grudzien — 19 Feb 2018</p>
        </a></div>
    
        <div class="blogPost"><a href="/Reusable-features-in-React-Redux">
          <h1>Creating reusable features in React + Redux</h1>
          <p>How to create standard and reusable features in React + Redux</p>
          <p class="authorDate inline">Vladimír Gorej — 12 Feb 2018</p>
        </a></div>
    
        <div class="blogPost"><a href="/markdown">
          <h1>The next chapter for Markdown</h1>
          <p>Apiary is embracing the CommonMark Markdown syntax for API description.</p>
          <p class="authorDate inline">Zdenek Nemec — 28 Sep 2016</p>
        </a></div>
    
        <div class="blogPost"><a href="/Test-Your-Swagger-API">
          <h1>Test Your Swagger API</h1>
          <p>Introducing support for Swagger in Dredd and more.</p>
          <p class="authorDate inline">Honza Javorek — 25 Aug 2016</p>
        </a></div>
    
        <div class="blogPost"><a href="/Scaling-Your-API-Design-Workflow">
          <h1>Scaling Your API Design Workflow</h1>
          <p><p>These days, software development is faster paced than ever before, and it’s laser focused on rapid iteration, continuous delivery pipelines, and automating away the boring parts.</p>

</p>
          <p class="authorDate inline">Jakub Nesetril — 10 Jul 2016</p>
        </a></div>
    
        <div class="blogPost"><a href="/Securing-APIs">
          <h1>Securing APIs</h1>
          <p>It’s a Big, Scary World out There.</p>
          <p class="authorDate inline">Jakub Mikulas — 21 Jun 2016</p>
        </a></div>
    
        <div class="blogPost"><a href="/API-Design-Hackaton">
          <h1>World’s First API Design Hackathon</h1>
          <p>We were at the World's first API Design Hackathon.</p>
          <p class="authorDate inline">Zdenek Nemec — 21 Apr 2016</p>
        </a></div>
    
        <div class="blogPost"><a href="/Making-of-Peacock">
          <h1>Making of Peacock</h1>
          <p>Behind the scenes of adding Swagger support.</p>
          <p class="authorDate inline">Zdenek Nemec — 24 Jan 2016</p>
        </a></div>
    
        <div class="blogPost"><a href="/We-ve-got-Swagger">
          <h1>We’ve got Swagger</h1>
          <p>Introducing the support for Swagger in Apiary</p>
          <p class="authorDate inline">Jakub Nesetril — 18 Jan 2016</p>
        </a></div>
    
        <div class="blogPost"><a href="/Get-Inspired-on-GitHub">
          <h1>API Design Inspiration on GitHub</h1>
          <p>Learn how to search for API design patterns on GitHub.</p>
          <p class="authorDate inline">Zdenek Nemec — 12 Jan 2016</p>
        </a></div>
    
        <div class="blogPost"><a href="/API-Blueprint-Future">
          <h1>This Is Going to Be Awesome</h1>
          <p>On the future of API Blueprint</p>
          <p class="authorDate inline">Zdenek Nemec — 17 Dec 2015</p>
        </a></div>
    
        <div class="blogPost"><a href="/Client-First">
          <h1>Client First</h1>
          <p>Think about your clients—both humans and machines—before starting to design your constraints</p>
          <p class="authorDate inline">Lukas Linhart — 03 Dec 2015</p>
        </a></div>
    
        <div class="blogPost"><a href="/Think-Before-you-Code">
          <h1>Think Before you Code</h1>
          <p>Quick look at the core principles of a good API design.</p>
          <p class="authorDate inline">Zdenek Nemec — 20 Oct 2015</p>
        </a></div>
    
        <div class="blogPost"><a href="/Proud-to-Announce-our-Series-A">
          <h1>Announcing our $6.8M Series A</h1>
          <p>Double-down on the awesome.</p>
          <p class="authorDate inline">Jakub Nesetril — 18 Aug 2015</p>
        </a></div>
    
        <div class="blogPost"><a href="/Test-Tab-Now-Available-in-Apiary">
          <h1>Continuously Integrate Your API Design</h1>
          <p>Apiary is now the only API design platform with tools for every stage of the API lifecycle</p>
          <p class="authorDate inline">Davita Strong — 18 Aug 2015</p>
        </a></div>
    
        <div class="blogPost"><a href="/Decoupling-the-Mind-of-the-API-Designer">
          <h1>Decoupling the Mind of the API Designer</h1>
          <p>Fostering creativity by changing how we think about APIs</p>
          <p class="authorDate inline">Stephen Mizell — 09 Jun 2015</p>
        </a></div>
    
        <div class="blogPost"><a href="/Hyperdrive">
          <h1>Hyperdrive</h1>
          <p>A generic API Blueprint client in Swift</p>
          <p class="authorDate inline">Kyle Fuller — 04 Jun 2015</p>
        </a></div>
    
        <div class="blogPost"><a href="/API-Blueprint-GitHub">
          <h1>API Blueprint on GitHub</h1>
          <p>API Blueprint language as a first-class citizen on GitHub</p>
          <p class="authorDate inline">Zdenek Nemec — 03 Jun 2015</p>
        </a></div>
    
        <div class="blogPost"><a href="/The-Role-of-the-API-Designer">
          <h1>The Role of the API Designer</h1>
          <p>Our guest, Dave Goldberg, Director of API products for Capital One, on the importance of an API Designer and the significant impact the role has on business today.</p>
          <p class="authorDate inline">Dave Goldberg — 03 May 2015</p>
        </a></div>
    
        <div class="blogPost"><a href="/Polls-API-Blueprint-Tutorial-Examples">
          <h1>New API Blueprint Tutorial</h1>
          <p>Learning API Blueprint has never been easier.</p>
          <p class="authorDate inline">Zdenek Nemec — 01 Apr 2015</p>
        </a></div>
    
        <div class="blogPost"><a href="/ApiBlueprint-button">
          <h1>Sharing Is Caring - Socialize Your Public API Blueprints</h1>
          <p>Learn the art of API Blueprint through socialization and collaboration.</p>
          <p class="authorDate inline">Vincenzo Chianese — 26 Mar 2015</p>
        </a></div>
    
        <div class="blogPost"><a href="/Utilising-API-Blueprint-in-API-Clients">
          <h1>Utilising API Blueprint in API Clients</h1>
          <p>Imagine an API client that can use the already-defined information from an API Blueprint to build a request</p>
          <p class="authorDate inline">Kyle Fuller — 17 Feb 2015</p>
        </a></div>
    
        <div class="blogPost"><a href="/Next-Version-of-API-Documentation">
          <h1>Next Version of API Documentation</h1>
          <p>Starting today, we are setting the new documentation as the default documentation for all new APIs.</p>
          <p class="authorDate inline">František Hába — 04 Dec 2014</p>
        </a></div>
    
        <div class="blogPost"><a href="/Paw-Integration">
          <h1>Paw Integration</h1>
          <p>Using Paw, a fully-featured HTTP API client for Mac with API Blueprint integration.</p>
          <p class="authorDate inline">Kyle Fuller — 02 Dec 2014</p>
        </a></div>
    
        <div class="blogPost"><a href="/Meetup-In-Prague">
          <h1>Meetup in Prague</h1>
          <p>Highlights from a full-house meetup in Prague by Apiary team</p>
          <p class="authorDate inline">Neha Sondhi — 21 Nov 2014</p>
        </a></div>
    
        <div class="blogPost"><a href="/Interact-with-Apiary-from-the-Command-Line">
          <h1>Interact with Apiary from the Command Line</h1>
          <p>Use our CLI tool to preview, fetch, and publish your API Blueprints</p>
          <p class="authorDate inline">Stephen Mizell — 05 Nov 2014</p>
        </a></div>
    
        <div class="blogPost featured"><a href="/Enterprise-Release">
          <h1>Make it so — Apiary enters the Enterprise</h1>
          <p>A game-changer for large, distributed API teams</p>
          <p class="authorDate inline">Andrew Brown — 22 Oct 2014</p>
        </a></div>
    
        <div class="blogPost"><a href="/New-Code-Samples-for-Go-and-Swift">
          <h1>New Code Samples for Go and Swift</h1>
          <p>Apiary now has code samples for both Go and Swift</p>
          <p class="authorDate inline">Stephen Mizell — 16 Oct 2014</p>
        </a></div>
    
        <div class="blogPost"><a href="/Crafting-MSON">
          <h1>Crafting MSON</h1>
          <p>The journey of data structure design-needs</p>
          <p class="authorDate inline">Zdenek Nemec — 10 Oct 2014</p>
        </a></div>
    
        <div class="blogPost featured"><a href="/OneNote-Guest-Blog">
          <h1>Working with Apiary</h1>
          <p>Our first guest blog from Nick Barnwell working at Microsoft OneNote team. Read about their experience with Apiary</p>
          <p class="authorDate inline">Nick Barnwell — 09 Oct 2014</p>
        </a></div>
    
        <div class="blogPost"><a href="/Shell-Shock-Security">
          <h1>Shellshock Bash Security</h1>
          <p>Securing customer data at Apiary</p>
          <p class="authorDate inline">Neha Sondhi — 07 Oct 2014</p>
        </a></div>
    
        <div class="blogPost"><a href="/RESTfest">
          <h1>Apiary @RESTfest</h1>
          <p>Musings from RESTfest 2014</p>
          <p class="authorDate inline">Mark W. Foster — 01 Oct 2014</p>
        </a></div>
    
        <div class="blogPost"><a href="/Apiary-Meetup">
          <h1>Apiary's First Meetup</h1>
          <p>A successful first meetup by Apiary team at Heavybit Industries</p>
          <p class="authorDate inline">Neha Sondhi — 19 Sep 2014</p>
        </a></div>
    
        <div class="blogPost"><a href="/Improving-Security">
          <h1>Improving Security of Mock and Proxy Servers and Deprecating Old Subdomains</h1>
          <p>Apiary has delivered important new features to increase the security of recorded traffic from Mock and Proxy Servers. We’re deprecating the unsafe Public Traffic option and making some backward-breaking changes, while leaving your API documentation more accessible than ever.</p>
          <p class="authorDate inline">Lukas Linhart — 16 Sep 2014</p>
        </a></div>
    
        <div class="blogPost"><a href="/Apiary-Cool-Vendor">
          <h1>Apiary selected as Gartner&nbsp;Cool&nbsp;Vendor in 2014</h1>
          <p>Alongside massive growth of Apiary users, more and more large companies use Apiary. Gartner has reflected this in their new selected of Cool Vendors for 2014</p>
          <p class="authorDate inline">Jakub Nesetril — 01 May 2014</p>
        </a></div>
    
        <div class="blogPost"><a href="/Re-API-Design-for-Humans">
          <h1>Our Next Generation of API Documentation</h1>
          <p>We reimagined the Apiary documentations. Learn more about what's new and what drove our design decisions.</p>
          <p class="authorDate inline">Jan Moravec — 21 Mar 2014</p>
        </a></div>
    
        <div class="blogPost"><a href="/Surfing-API">
          <h1>API Design: Mind Maps & Surfing</h1>
          <p>How to design and build API using mind maps, API Blueprint and Apiary.</p>
          <p class="authorDate inline">Zdenek Nemec — 06 Mar 2014</p>
        </a></div>
    
        <div class="blogPost"><a href="/Inspirational-Resources">
          <h1>Inspirational Resources</h1>
          <p>A brief list of open sourced API blueprints to help you craft a better API</p>
          <p class="authorDate inline">Zdenek Nemec — 09 Jan 2014</p>
        </a></div>
    
        <div class="blogPost"><a href="/How-to-test-api-with-api-blueprint-and-dredd">
          <h1>How To Test REST API with API Blueprint and Dredd</h1>
          <p>Glue together your API Documentation and the backend</p>
          <p class="authorDate inline">Adam Kliment — 17 Oct 2013</p>
        </a></div>
    
        <div class="blogPost"><a href="/No-more-outdated-API-documentation">
          <h1>No more outdated API documentation!</h1>
          <p>Write blueprints and let Dredd do his job</p>
          <p class="authorDate inline">Adam Kliment — 10 Oct 2013</p>
        </a></div>
    
        <div class="blogPost"><a href="/Apiary-Powers-Akamai">
          <h1>Apiary Powers Akamai's Developer Portal</h1>
          <p>The world's largest infrastructure company uses Apiary to help them reach developers</p>
          <p class="authorDate inline">Jakub Nesetril — 09 Oct 2013</p>
        </a></div>
    
        <div class="blogPost"><a href="/New-API-Blueprint-available">
          <h1>New API Blueprint available at Apiary</h1>
          <p>A great leap forward for your API design</p>
          <p class="authorDate inline">Zdenek Nemec — 02 Oct 2013</p>
        </a></div>
    
        <div class="blogPost"><a href="/Apiary-Is-Growing">
          <h1>Apiary Is Growing</h1>
          <p>We've raised seed funding; are excited about what comes next</p>
          <p class="authorDate inline">Jakub Nesetril — 17 Sep 2013</p>
        </a></div>
    
        <div class="blogPost"><a href="/Bam-this-is-Gavel">
          <h1>Bam! This is Gavel.</h1>
          <p>We are introducing our brand new HTTP validation package.</p>
          <p class="authorDate inline">Adam Kliment — 24 Jul 2013</p>
        </a></div>
    
        <div class="blogPost"><a href="/Back-to-the-roots">
          <h1>Back to the roots. Meet HTTP.</h1>
          <p>When was the last time you actually saw HTTP?</p>
          <p class="authorDate inline">Adam Kliment — 22 Jul 2013</p>
        </a></div>
    
        <div class="blogPost"><a href="/HTTP-Morning-Coffee-Episode-1">
          <h1>HTTP Morning Coffee Episode 1</h1>
          <p>Forget the URI Space</p>
          <p class="authorDate inline">Zdenek Nemec — 21 Jul 2013</p>
        </a></div>
    
        <div class="blogPost"><a href="/New-API-Blueprint-Format-Roll-Out">
          <h1>Blueprint Format Roll Out</h1>
          <p>New API Blueprint Format specification has been closed as we are getting ready for its roll out.</p>
          <p class="authorDate inline">Zdenek Nemec — 28 Mar 2013</p>
        </a></div>
    
        <div class="blogPost"><a href="/New-API-Blueprint-Format-Basics">
          <h1>New API Blueprint Format Basics</h1>
          <p>Discussing basic features of the New API Blueprint Format – Markdown, API endpoints, multiple requests and responses and commenting on parameters.</p>
          <p class="authorDate inline">Zdenek Nemec — 20 Feb 2013</p>
        </a></div>
    
        <div class="blogPost"><a href="/New-and-improved-PEG-parser">
          <h1>New and improved PEG parser</h1>
          <p>We are happy to announce that we have completed migration to a rewrite of our blueprint parser. The parser is now open-source and will serve as a base for further improvements of our format.</p>
          <p class="authorDate inline">Lukas Linhart — 05 Feb 2013</p>
        </a></div>
    
        <div class="blogPost"><a href="/New-API-Blueprint-Format">
          <h1>Evolving the API Blueprint Format</h1>
          <p>As we are growing so are our users needs. To reflect this, address arising needs as well as simplifying the process of designing your API we are improving Apiary.io API Blueprint Format.</p>
          <p class="authorDate inline">Zdenek Nemec — 27 Jan 2013</p>
        </a></div>
    
        <div class="blogPost"><a href="/apiary-speaking-events">
          <h1>Apiary at Events in Nov-Dec 2012</h1>
          <p>As Apiary matures, we're coming out of our stealth mode to talk publicly about the “apiary doctrine”—why we build things the way we do, why so many people love them, and how it all comes together into a larger vision.</p>
          <p class="authorDate inline">Jakub Nesetril — 26 Oct 2012</p>
        </a></div>
    
        <div class="blogPost"><a href="/collaborating-through-github">
          <h1>Collaborating Through GitHub</h1>
          <p>One of our most popular feature requests is collaboration among multiple users. Here's how you can use our GitHub integration to do that</p>
          <p class="authorDate inline">Jakub Nesetril — 08 Oct 2012</p>
        </a></div>
    
        <div class="blogPost"><a href="/to-our-wonderful-beta-testers">
          <h1>To Our Wonderful Beta-Testers</h1>
          <p>We've made it this far thanks to you. Here's a quick round-up of what we've changed based on your feedback.</p>
          <p class="authorDate inline">Jakub Nesetril — 21 May 2012</p>
        </a></div>
    
  </div>
</div>

  </div>

  <!-- website-footer -->
  <hr>

  <footer class="applicationFooter">

    <div class="applicationFooterRow">
      <div class="applicationFooterColumns">
        <div class="applicationFooterColumn">
        </div>
        <div class="applicationFooterColumn">
          <h3 class="applicationFooterTitle">Platform</h3>
          <ul class="applicationFooterList">
            <li><a class="applicationFooterListLink" href="https://apiary.io/how-it-works">How It Works</a></li>
            <li><a class="applicationFooterListLink" href="https://apiary.io/products">Product</a></li>
            <li><a class="applicationFooterListLink" href="https://apiary.io/plans">Plans</a></li>
            <li><a class="applicationFooterListLink" href="https://help.apiary.io">Help</a></li>
          </ul>
        </div>
        <div class="applicationFooterColumn">
          <h3 class="applicationFooterTitle">Company</h3>
          <ul class="applicationFooterList">
            <li><a class="applicationFooterListLink" href="https://blog.apiary.io/">Blog</a></li>
            <li><a class="applicationFooterListLink" href="https://apiary.io/company">Team</a></li>
            <li><a class="applicationFooterListLink" href="https://apiary.io/jobs">Jobs</a></li>
            <li><a class="applicationFooterListLink" href="https://www.oracle.com/index.html">Oracle</a></li>
          </ul>
        </div>
        <div class="applicationFooterColumn">
          <h3 class="applicationFooterTitle">Open Source</h3>
          <ul class="applicationFooterList">
            <li><a class="applicationFooterListLink" href="https://apiblueprint.org">API Blueprint</a></li>
            <li><a class="applicationFooterListLink" href="https://github.com/apiaryio/gavel">Gavel</a></li>
            <li><a class="applicationFooterListLink" href="https://github.com/apiaryio/dredd">Dredd</a></li>
            <li><a class="applicationFooterListLink" href="https://help.apiary.io/tools/apiary-cli/">Apiary CLI</a></li>
          </ul>
        </div>
        <div class="applicationFooterColumn">
          <h3 class="applicationFooterTitle">Social</h3>
          <ul class="applicationFooterList">
            <li><a class="applicationFooterListLink" href="https://github.com/apiaryio">GitHub</a></li>
            <li><a class="applicationFooterListLink" href="https://twitter.com/apiaryio">Twitter</a></li>
          </ul>
        </div>
      </div>
    </div>

    <div class="applicationFooterRow">
      <p class="applicationFooterCopyright">Copyright &copy; 2021, Oracle and/or its affiliates.
        All rights reserved. Oracle and Java are registered trademarks of Oracle and/or its affiliates. Other names may
        be trademarks of their respective owners.
        <span class="applicationFooterCopyrightLinks"><a href="https://apiary.io/tos"
            class="applicationFooterCopyrightLink">Terms</a> • <a href="https://apiary.io/privacy"
            class="applicationFooterCopyrightLink">Privacy</a> • <span id="teconsent"></span></span>
      </p>
    </div>
  </footer>
  <!-- /website-footer -->

  <script src="https://static.apiary.io/assets/js/website-scroll.js"></script>
  <script>
    websiteScroll();
    document.documentElement.className += ' js';
  </script>
  <script
    src="https://consent.trustarc.com/notice?domain=apiary.io&amp;c=teconsent&amp;text=true&amp;js=nj&amp;noticeType=bb"
    async="async" crossorigin=""></script>

</body>

</html>
```