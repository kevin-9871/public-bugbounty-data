```<!DOCTYPE html>
<html lang="en-us"><head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <title>Yahoo</title>
    <meta name="viewport" content="width=device-width,initial-scale=1,minimal-ui">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <style>
html {
    height: 100%;
}
body {
    background: #fafafc url(https://s.yimg.com/nn/img/sad-panda-201402200631.png) 50% 50%;
    background-size: cover;
    height: 100%;
    text-align: center;
    font: 300 18px "helvetica neue", helvetica, verdana, tahoma, arial, sans-serif;
}
table {
    height: 100%;
    width: 100%;
    table-layout: fixed;
    border-collapse: collapse;
    border-spacing: 0;
    border: none;
}
h1 {
    font-size: 42px;
    font-weight: 400;
    color: #400090;
}
p {
    color: #1A1A1A;
}
#message-1 {
    font-weight: bold;
    margin: 0;
}
#message-2 {
    display: inline-block;
    *display: inline;
    zoom: 1;
    max-width: 17em;
    _width: 17em;
}
#spanishContent {
    display: none;
}
    </style>
<script>
  document.write('<img src="//geo.yahoo.com/b?s=1197757129&t='+new Date().getTime()+'&err_url='+encodeURIComponent(document.URL)+'&err=502&test='+encodeURIComponent('-')+'" width="0px" height="0px"/>');var beacon = new Image();beacon.src="//bcn.fp.yahoo.com/p?s=1197757129&t="+new Date().getTime()+"&err_url="+encodeURIComponent(document.URL)+"&err=502&test="+encodeURIComponent('-');
</script>
</head>
<body>
<!-- status code : 502 -->
<!-- Unknown Host -->
<!-- host machine: media-router-omega105.prod.media.bf1.yahoo.com -->
<!-- timestamp: 1611743504.172 -->
<!-- url: https://aud-gca.production.omega.bf1.yahoo.com/-->
<table>
<tbody><tr>
    <td>
    <div id="englishContent">
        <script type="text/javascript">
        if (window.location.hostname=='att.yahoo.com'){
            document.write('<img src="https://s1.yimg.com/rz/d/att_en-US_f_p_bestfit_2x.png" alt="AT&T">');
        }else{
            document.write('<img src="https://s.yimg.com/nn/img/yahoo-logo-201402200629.png" alt="Yahoo Logo">');
        }    
        </script> 
        <h1 style="margin-top:20px;">Will be right back...</h1>
        <p id="message-1">Thank you for your patience.</p>
        <p id="message-2">Our engineers are working quickly to resolve the issue.</p>
    </div>
    <div id="spanishContent"> 
        <img src="https://s1.yimg.com/rz/d/att_es-US_f_p_bestfit_2x.png" alt="AT&T En Vivo" style="max-width:310px">
        <h1 style="margin-top:20px;">Volvemos enseguidaâ¦</h1>
        <p id="message-1">Gracias por tu paciencia.</p>
        <p id="message-2">Nuestros ingenieros estÃ¡n trabajando rÃ¡pidamente para resolver el problema.</p>
    </div>
    <script type="text/javascript">
    if (window.location.hostname=='espanol.att.yahoo.com'){
        document.getElementById('englishContent').style.display = 'none';
        document.getElementById('spanishContent').style.display = 'block';
    }   
    </script>
    </td>
</tr>
</tbody></table>


</body></html>
```