```
<!DOCTYPE html>
<html lang="en">
    <head>
    <meta charset="utf-8">
    <title>Berker Peksag</title>
    
    
    <link href="/static/style/reset.css" rel="stylesheet" type="text/css" media="screen">
    <link href="/static/style/screen.css" rel="stylesheet" type="text/css" media="screen">
    <link href="/static/style/pygments.css" rel="stylesheet" type="text/css" media="screen">
    <link href="/static/style/markdown.css" rel="stylesheet" type="text/css" media="screen">
    <link rel="shortcut icon" href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAYAAABzenr0AAAAp0lEQVR4nO3XIQ4CMRCF4b/siEkICQmch0tgsZxiL4LHcAQsd0GQYFYgKiYU0S7bC+zWTM0kr+J9bVWDfS3RaHWhC6tW5eNygAMc4AAHOMABDnCAAxwgwyc2K99t1sjldm8G6M9Hwv5wSojmxBa4jarr/bgGGZ6vHC5RXiNKn6AKus2BxWlzzglg1AAtQdmce4pCHG8AptNbSWadCsT/E4SUmv3OAfgBvBZQo9Pdx/gAAAAASUVORK5CYII=">
    <script>
        var _gaq = _gaq || [];
        _gaq.push(['_setAccount', 'UA-3531951-1']);
        _gaq.push(['_trackPageview']);

        (function() {
            var ga = document.createElement('script'),
                protocol = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www');
            ga.type = 'text/javascript';
            ga.async = true;
            ga.src = protocol + '.google-analytics.com/ga.js';
            var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
        })();
    </script>
</head>
<body>
    <header id="main">
        <div class="container">
            <a href="/" title="Home"><img alt="Home" src="data:image/png;base64,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"></a>
        </div>
    </header>

    <div class="container">
        <section id="title">
            <p>Welcome to my blog! See the <a href="/archive.html">archive</a> page for all posts.</p>
        </section>
    </div>

    <div class="container content">
        


    
<article>
    <header>
        
        <h2><a href="/posts/formula-1e-alternatif-seriler.html" title="Formula 1'e alternatif seriler">Formula 1'e alternatif seriler</a></h2>
        
        <time datetime="Sun Apr  5 10:58:29 2015" pubdate>Posted 5 years ago</time>
    </header>

    <div class="body">
        <p>Formula 1'i yaklaşık 18 yıldır takip eden bir motorsporları sever olarak özellikle
son yıllardaki saçma sapan kurallar, politik oyunlar ve pist üzeri mücadeleyi
kısıtlayan hakemler nedeniyle yavaş yavaş spordan uzaklaşmaya başlamıştım. 2006 ve
2007'deki Sebastien Bourdais'nin ChampCar'daki dominasyonu ve Le Mans 24 saat
haricinde Formula 1 haricinde düzenli bir seriyi takip etmedim. Özellikle son 5
yıldaki sıkıcı RedBull ve Mercedes dominasyonlarından sonra alternatif seriler
aramaya başladım. Aşağıda bu yıl takip etmeyi planladığım serilerin bir listesini
ve kısaca görüşlerimi listeleyeceğim.</p>

<h3>FIA WEC</h3>

<p>Dört kategoride birden fabrika destekli önemli markalar ve çoğu Formula 1 kariyeri
olan pilotlar var. LMP1'de Hybrid kategorisinde Audi, Toyota ve Porsche'ye ek olarak
Le Mans'da Nissan da katılacak. LMP2'de tüm sezonu kovalayan sadece 3 takım var:
G-Drive, SMP, KCMG. LMGTE Pro ve LMGTE Am kategorileri acayip çekişmeli geçiyor.
İki kategori arasındaki fark, LMGTE Am'de bir yıl eski otomobilleri kullanıyorlar
ve pilot kadrolarında amatör pilotlar yarışabiliyor. Rails'in yazarı DHH geçen sezon
Aston Martin ile yarışıyordu bu kategoride :) LMGTE Pro'da Le Mans ve COTA ayaklarında
Corvetteler de yarışıyor.</p>

<p>İşin en güzel yanlarından biri Formula 1 gibi sosyal medya ve canlı yayın konusunda
tutucu olmamaları. Yıllık yaklaşık 50 liraya Le Mans haricinde tüm sezonu internette
HD kalitesinde takip edebiliyorsunuz. Her yarışın 50 dakikalık özetini yarış
sonrasındaki haftada YouTube kanallarında yayınlıyorlar.</p>

<p>Sezon önümüzdeki hafta Silverstone'da başlıyor.</p>

<h3>Tudor United Sportscar Championship</h3>

<p>Malesef Daytona 24 saati kaçırdım ama Sebring 12 saati yine internetten HD kalitesinde
izledim. GT Le Mans kategorisinde 911 ve Corvettelerin kapışmaları çok eğlenceliydi.
Sebring'de Porsche son 50 dakikaya ilk sırada önde girerken teknik problemlerle
kaybettiler. DHH burada da Prototype kategorisinde Acura AXR 038 ile yarışıyor.
Sebring'de de epey tutarlı turlar atıyordu.</p>

<p>IMSA çoğu yarışın ya tamamını ya da büyük bölümünü internetten canlı olarak yayınlayacak.</p>

<h3>Blancpain GT series</h3>

<p>Geçen sezonun son yarışını izledim. Yine yukarıda bahsettiğim seriler gibi neredeyse
her şeyi internetten takip edebiliyor ve ücretsiz olarak izleyebiliyorsunuz. Sezonun
ilk ayağı bu haftasonu yapılıyor. Az önce sıralama turlarını serinin
<a href="http://www.blancpain-gt-series.com/gt-tv">web sitesinden</a> canlı olarak izledim. Bir
McLaren taraftarı olarak yeni 650S GT3'yi pist üzerinde izlemek de büyük keyif. Ne
yazık ki henüz Audi, Bentley, Mercedes-Benz seviyesinde değiller.</p>

<p>Tüm sezon serinin web sitesinden canlı olarak yayınlanacak. Ayrıca yarış özetlerini
de YouTube kanalından izleyebiliyorsunuz.</p>

<h3>Super GT</h3>

<p>Sezonun ilk yarışı bugün yapıldı. Yine internetten NISMO TV aracılığıyla ilk yarışı
izledim. Yağmurlu ve liderin sürekli el değiştirdiği güzel bir yarıştı. Seri DTM'in
Japon versiyonu gibi, Ana üreticiler Honda, Lexus ve Nissan. Ek olarak DTM ve GT
specli (Audi R8, Porsche 911 vs.) araçlar da yarışabiliyor.</p>

<p>Bugün canlı yayında NISMO TV <em>"eğer ilgi böyle devam ederse Nissan'dan tüm sezonu
yayınlamak için destek alabiliriz"</em> diyordu. Büyük ihtimalle tüm sezon NISMO TV
üzerinden canlı yayınlanacak.</p>

<!-- meta: archive(0) active(1) -->
    </div>
</article>


    
<article>
    <header>
        
        <h2><a href="/posts/2014.html" title="2014">2014</a></h2>
        
        <time datetime="Fri Dec 27 17:23:58 2013" pubdate>Posted 7 years ago</time>
    </header>

    <div class="body">
        <p>Birkaç yıldır bloga sadece yıllık değerlendirme yazıları yazıyorum. Bu yıl da
gelenek bozulmadı. Önümüzdeki yıl umarım daha çok yazı yazacağım(<em>yazamadı</em>).</p>

<p>2012'nin son günü 2013 için <em>"ana hedefim biraz daha istikrarlı ve çalışkan olmak"</em>
<a href="http://berkerpeksag.com/2013/">demiştim</a>. Bu yıl geçmiş senelere göre kısa süreli
de olsa istikrarlı bir şekilde çalışabildim. 2014'de de yine çok fazla farklı
konulara dağılmadan biraz daha gelişebilmeyi hedefliyorum.</p>

<p>Bakalım bu yıl neler yapmışım:</p>

<h3>Programlama</h3>

<p><img alt="GSoC" src="https://dl.dropboxusercontent.com/u/166024/gsoc.jpg" /></p>

<ul>
<li><a href="https://developers.google.com/open-source/soc/">Google Summer of Code</a> programına
  Mozilla bünyesinde kabul edildim ve süreci başarıyla tamamladım.</li>
<li>Mozilla Summit'e davet edildim.</li>
<li><a href="http://hylang.org">Hy</a>'ın çekirdek ekibine kabul edildim.</li>
<li>Hy'da kullandığımız <a href="https://github.com/berkerpeksag/astor">astor</a>'ın
  geliştirmesini devraldım.</li>
<li>Python 3.4'e tarfile modülü için <a href="http://docs.python.org/3.4/library/tarfile.html#command-line-interface">CLI ekledim</a>.
  Django 1.7'ye de <code>TEMPLATE_DIRS</code> ile alakalı küçük bir özellik
  <a href="https://github.com/django/django/commit/2f0566fa61e13277364e3aef338fa5c143f5a704">ekledim</a>.</li>
<li><a href="https://github.com/jbalogh/jingo">Jingo</a>'yu ve <a href="http://emreyilmaz.me">Emre</a>'nin
  <a href="https://github.com/emre/kaptan/">Kaptan</a>'ını Python 3'e port ettim.</li>
<li><a href="http://jspyconf.org/">JsPyConf</a>'u başarıyla gerçekleştirdik. Tabii aslan payı
  <a href="http://yuxel.net">Osman</a>, <a href="http://cihann.io">Cihan</a> ve <a href="http://fatihak.in/">FKA</a>'ya
  gidiyor.</li>
<li><a href="https://github.com/BYK">BYK</a> ile <a href="http://githubbadge.appspot.com/">GitHub Badge</a>
  projesinde kullandığımız <a href="https://github.com/rcarmo/pngcanvas">pngcanvas</a>'ın
  geliştirilmesini devraldık.</li>
<li>Blog'un temasını değiştirdim, eskisine göre biraz daha temiz oldu.</li>
<li><a href="https://github.com/bekirkarul">Bekir Karul</a> yeni temayı <a href="http://getpelican.com/">Pelican</a>'a
  <a href="https://github.com/bekirkarul/pelican-bowman">uyarladı</a>. Eski temayı da BYK Pelican'a
  <a href="https://github.com/BYK/pelican-neat">uyarlamıştı</a>.</li>
</ul>

<h3>Kişisel</h3>

<ul>
<li>Bu yıl en çok dinlediğim grup <a href="http://www.last.fm/user/brucemclaren">Savatage olmuş</a>.</li>
<li>18 kitap bitirmişim. Geçen yıl 16 kitabı okumaya başlayıp 12 tanesini bitirebilmiştim.</li>
<li>İstanbul'a geldiğimden beri(6 yıl!) bir türlü gidemediğim kitap fuarına <a href="http://cihann.io">Cihan</a>
  ve <a href="http://sepeth.org">Doğan</a> ile gittik.</li>
</ul>

<!-- meta: archive(0) active(1) -->
    </div>
</article>


    
<article>
    <header>
        
        <h2><a href="/posts/2013.html" title="2013">2013</a></h2>
        
        <time datetime="Mon Dec 31 20:36:08 2012" pubdate>Posted 8 years ago</time>
    </header>

    <div class="body">
        <p>2012, bir öncekine oranla kafamın daha rahat ve daha az karışık olduğu bir yıldı.
<a href="http://berkerpeksag.com/istanbul/">İstanbul'a taşındığımdan beri</a> ilk defa çok fazla
düşünmeden kafamı dinleyebildim. <a href="http://www.dailymotion.com/video/xix6r1_erol-buyukburc-bir-bayka-sevgiliyi-sevemem-akustikhane_music#.UOHVANH9qzc">Erol Büyükburç berraklığına</a>
ulaşmama daha zaman var tabii :)</p>

<p>Python ve Mozilla özelinde çok düzenli olmasa da çalışma imkanım oldu. Mozilla
tarafından <a href="https://wiki.mozilla.org/MozCampEU2012">MozCamp EU 2012</a>'ye ve Mozilla
Londra ofislerine davet edildim.</p>

<p>2013'te ana hedefim biraz daha istikrarlı ve çalışkan olmak.</p>

<p>Tabii kafa dinlemenin etkisiyle, yazılım geliştirme haricindeki diğer aktivitelerimde
epey bir düşüş oldu. 2011'de 34 kitap okurken, 2012'de sadece 12 kitap bitirebilmişim.
2 tane de henüz tamamlayamadığım kitapla seneyi kapatıyorum. Teknik kitaplarda durum
daha da kötü: Sadece bir kitap bitirebilmişim ama okumaya başladığım yaklaşık 10 kitap
var. Sanırım 2013'te daha önce uyguladığım <a href="http://berkerpeksag.com/nihayet-yeni-blog/">odaklanma diyetini</a>
kitaplara da uyarlamam gerekecek.</p>

<p>Bu yılın benim için en büyük getirilerinden birisi, <a href="http://jstanbul.org">Jstanbul</a>
ile beraber topluluğun hareketlenmesi ve çeşitli etkinlikler düzenlemeye başlaması oldu.
Jstanbul'un haricinde <a href="http://www.cihanokyay.com">Cihan Okyay</a>'ın çabalarıyla
İstanbul'daki Python topluluğu da canlandı. Yıl içerisinde 2 kere katılımcı rekorumuzu
kırdık, <a href="http://julython.org">Julython</a> gibi dünya çapında düzenlenen etkinlikler için
arada aksilikler olsa da toplanıp bir şeyler üretmeye çalıştık. 2013'te bunu bir adım 
daha ileri götürüp, Jstanbul ve <a href="http://github.com/pyistanbul">PyIstanbul</a> olarak
yurtdışından konuşmacıların da katılacağı Python, JavaScript ve Ruby odaklı bir konferans
düzenliyor olacağız: <a href="http://jspyconf.org/">JsPyConf</a>.</p>

<!-- meta: archive(0) active(1) -->
    </div>
</article>


    
<article>
    <header>
        
        <h2><a href="/posts/pyist-mayis-bulusmasi.html" title="PyIst Mayıs Buluşması">PyIst Mayıs Buluşması</a></h2>
        
        <time datetime="Mon May 28 10:51:02 2012" pubdate>Posted 8 years ago</time>
    </header>

    <div class="body">
        <p>Nisan ayında katıldığım ilk buluşmadan <a href="https://twitter.com/berkerpeksag/status/192719846889361408">aldığım gazla</a>
Mayıs ayı için <a href="http://pypy.org/">PyPy</a> hakkında bir sunum hazırlamaya
karar verdim.</p>

<blockquote class="twitter-tweet tw-align-center"><p>Bu akşam ilk kez bir
@<a href="https://twitter.com/pyist">pyist</a> buluşmasına katıldım. Sunum
ve muhabbet çok güzeldi. Daha öncekilere gitmediğim için pişman oldum :)</p>
&mdash; Berker Peksag (@berkerpeksag) <a href="https://twitter.com/berkerpeksag/status/192719846889361408" data-datetime="2012-04-18T21:02:46+00:00">April 18, 2012</a>
</blockquote>

<script src="//platform.twitter.com/widgets.js" charset="utf-8"></script>

<p>PyPy kendi içinde tamamen farklı ilgi ve uzmanlık alanlarına hitap eden
projelerden oluştuğundan giriş tadında bir sunum yapmak biraz zor oldu. Yine
de biraz heyecanlansam da ilk sunumumun içeriğinden memnun sayılırım.</p>

<p>İlgilenenler için sunumu <a href="https://github.com/berkerpeksag/slides">GitHub üzerinde</a>
yayımlıyorum: <a href="http://berkerpeksag.github.com/slides/pypy-101-pyist/">http://berkerpeksag.github.com/slides/pypy-101-pyist/</a></p>

<p>Son iki aydır bize ofislerini açan <a href="http://hipo.biz/">Hipo</a> ekibine ve katılan
herkese bir kez daha teşekkürler.</p>

<p>Eğer siz de benim gibi Python ile hobi olarak uğraşıyor ve benzer kafadaki
insanlarla tanışıp eğlenceli bir gün geçirmek istiyorsanız önümüzdeki ayki
PyIst](http://pyist.net)'e bekleriz :)</p>

<p><strong> İlgili bağlantılar</strong></p>

<ul>
<li><a href="http://pyist.net/">PyIst web sitesi</a></li>
<li>@<a href="http://twitter.com/pyist">pyist</a></li>
<li><a href="https://groups.google.com/forum/?fromgroups#!forum/python-istanbul">E-posta listesi</a></li>
</ul>

<!-- meta: archive(0) active(1) -->
    </div>
</article>


    
<article>
    <header>
        
        <h2><a href="/posts/github-badge-projesinden-neler-ogrendik.html" title="GitHub Badge projesinden neler öğrendik">GitHub Badge projesinden neler öğrendik</a></h2>
        
        <time datetime="Sun May  6 12:52:30 2012" pubdate>Posted 8 years ago</time>
    </header>

    <div class="body">
        <p><a href="http://githubbadge.appspot.com/">GitHub Badge</a> başlangıçta kullanıcıların
<a href="https://github.com/">GitHub </a> <a href="https://github.com/berkerpeksag">profilleri</a> ile
ilgili birkaç istatistiki bilginin gösterileceği ve geliştiricilerin özgeçmişlerine
veya bloglarına koyabilecekleri basit bir bilgi alanından ibaretti. Aslında hala
öyle ancak "birkaç istatistiki bilgi" kısmını biraz genişlettik.</p>

<p>İlk sürümü yayınlandıktan sonra,</p>

<ul>
<li><a href="http://appengine.google.com/">Google App Engine</a>'in
  <a href="http://googleappengine.blogspot.com/2011/08/50-credit-for-new-billing-signups-and.html">ücret politikasının değişmesi</a></li>
<li>Kullanıcı sayısının hızla artması</li>
<li>Yeni eklenen özelliklerle uygulamanın kullandığı kaynağın artması</li>
</ul>

<p>gibi nedenlerle mevcut yapı App Engine'in ücretsiz kullanım limitlerini zorlamaya
başladı.</p>

<h3>Ölçeklenebilirlik</h3>

<h4>Memcache</h4>

<p>İlk yaptığımız şey üretilen HTML sayfasının belirsiz süreyle <a href="http://en.wikipedia.org/wiki/Memcache">Memcache</a>
üzerinde önbelleğe alınmasıydı ki bu oldukça etkili bir çözüm oldu. Her ne kadar
sunduğumuz bilgiler her zaman en güncel bilgiler olmasa da iletilen bir şikayet olmadı.
Kaldı ki çoğu durumda GitHub'ın agresif önbellekleme stratejisinden dolayı GitHub
arayüzünden daha güncel veriler sunmamız rastlanmayan bir durum değil(eğer bir
projeyi veya kullanıcı takip etmediyseniz ya da bir gönderi yapmadıysanız profilinize
ait bilgiler GitHub Badge'e göre daha eski olabilir). Ancak gönderi yoğunluğunu
gösteren <a href="http://en.wikipedia.org/wiki/Sparkline">sparkline</a> özelliği yayına girdiğinde
her öğenin yaşam süresini 24 saatle kısıtlamamız gerektiğine karar verdik.</p>

<p>Bu durumun üzerine "bizi destekleyin" ve "Google Analytics'i kapat" gibi HTML çıktısını
değiştiren özelliklerin eklenmesiyle sadece üretilen HTML sayfasının önbelleğe alınması
yetmemeye başladı. Bu durumu çözmek için hesaplanan kullanıcı bilgilerinin bulunduğu
sözlük nesnesini de JSON biçiminde önbellekte
<a href="https://github.com/berkerpeksag/github-badge/commit/8ac138464207a192687729e8e9af7db6448ac31f">saklamaya </a>
<a href="https://github.com/berkerpeksag/github-badge/commit/3e6526459901f56734b72d54984c7621166f4c6a">başladık</a>.</p>

<p>Google App Engine, Memcache kullanımını ücretlendirmediği için alabildiğimiz tüm bilgileri
Memcache ile önbelleğe aldık ya da önbelleğe aldığımız veri miktarını arttırmaya çalıştık.
Bu durum, artan günlük ziyaretçi sayımıza ve kullanıcılarımıza rağmen hala ücretsiz kullanım
sınırları içerisinde kalabilmemizin iki temel sebebinden bir tanesi.</p>

<h4>Ön yüz</h4>

<p>Ön yüzde neredeyse ilk sürümden beri HTML ve CSS sıkıştırma kullanıyoruz, Google App Engine
de gzip kısmını kendisi hallediyor. Buna ek olarak
<a href="https://github.com/berkerpeksag/github-badge/commit/08983f8d60e53a1798e07b2d772252eb1b65919a">tüm sayfanın yarım günlüğüne tarayıcı önbelleğine alınması</a>
ve kişilerin GitHub'da görünen resimlerinin de sunucu tarafında yeniden boyutlandırılıp
<a href="https://github.com/berkerpeksag/github-badge/issues/48">sayfaya gömülmesi</a> gibi optimizasyonlar
ile bant genişliğimizi oldukça etkin kullanmayı başardık.</p>

<h3>API kullanımı ve Pyresto</h3>

<p>GitHub Badge'in ilk sürümünde, GitHub API'ı ilgili işleri yapmak, takipçi sayısı gibi
bilgileri hesaplamak için <a href="https://github.com/berkerpeksag/github-badge/blob/v1/app.py#L23">bir nesne ve buna bağlı birkaç yöntem</a>
yeterliydi. Gönderi grafiği, kişinin kendisi dışındaki toplam proje takipçi sayısı gibi veri
işleme gerektiren, daha ayrıntılı bilgileri göstermek istediğimizdeyse bu basit sınıfın
işimizi görmeyeceğini anlayıp farklı çözümler aramaya karar verdik. Yaptığımız küçük araştırmada
GitHub için halihazırda yazılmış olan Python istemcilerinin ya eski ya da istediğimiz gibi
olmadığını gördük ve "<a href="http://en.wikipedia.org/wiki/One_Ring">hepsine hükmedecek tek bir yüzük olmalı</a>"
diyerek "adam gibi yazılmış" <a href="http://en.wikipedia.org/wiki/REST">REST</a> tabanlı her türlü
uygulama arayüzü ile çalışacak bir <a href="http://en.wikipedia.org/wiki/Object-relational_mapping">ORM</a>
projesi yazmaya karar verdik. İlk kurbanımız elbette ki GitHub olacaktı.</p>

<p>Bu noktada GitHub'ın sunduğu uygulama geliştirme arayüzünün <a href="http://developer.github.com/v3/">üçüncü sürümünün</a>
gerçekten mükemmele çok yakın olduğunu, mükemmel olmayan kısımlarında da GitHub ekibinin
yaptığımız hata bildirimleri ve özellik isteklerine olumlu ve hızlı yanıt verdiğini belirtmekte
fayda var ki bu da geliştirme sürecinde işimizi oldukça kolaylaştırdı. Pyresto'nun asıl yaptığı
şey veri ile uğraşmak isteyen programcıyı arkaplanda dönen karmaşık işlemlere bulaştırmamak,
basitçe onun önünden çekilmek ve veriyle rahatça uğraşmasına izin vermek, bunu yaparken de
farklı platformların geliştirme arayüzü tanımlamalarını olabildiğince basite indirgemek.
Örneğin şu an kullanmakta olduğumuz GitHub modülü sadece
<a href="https://github.com/BYK/pyresto/blob/e51003d47ab747650d627f134861c151b6af0e30/pyresto/apis/GitHub.py">70 satırlık bir dosya</a>dan
ibaret. Bu kod elbette tam değil ve her şeyi kapsamıyor ancak yaptığımız ve sıradan olmaktan
uzak GitHub uygulaması için fazlasıyla yeterli. İşin güzel yanı bu 70 satırın çoğu aslında
veri modelini tanımlıyor, yani gerçek kod değil.</p>

<p>Sözün özü GitHub Badge projesinin kalbinde aslında Pyresto yatıyor ve bir sonraki hedefimiz
bu kütüphaneyi hem belgelemesi hem de testleri ile herkesin rahatça kullanabileceği bir hale
getirip yaygınlaşmasını sağlamak. Şu anki hali de <a href="http://pypi.python.org/pypi/pyresto/">PyPI üzerinden indirilebilir durumda</a>.</p>

<h3>Arayüz</h3>

<p>Eklenen yeni özelliklerle beraber, bu özelliklerin son kullanıcıya nasıl sunulacağı da önemli
bir soru haline geldi. Bu nedenle arayüz toplamda üç kez değişti. Bu süreç, ürünün özelliklerini
kısıtlı bir alanda, kullanıcının kafasını karıştırmadan, mümkün olan en sade ve güzel tasarımla,
olabilecek en fazla bilgiyi sunmaya çalışmak gibi hedefler nedeniyle epey öğretici ancak bize
göre sunum konusunda hala olması gerekenden uzakta olan bir tasarım deneyimi oldu. Yani bu
konuda <a href="https://github.com/berkerpeksag/github-badge/issues/new">tavsiyelere açığız</a>.</p>

<h3>Açık kaynak topluluğu ile iletişim</h3>

<p>GitHub Badge öncesinde başta <a href="http://www.mozilla.org/contribute">Mozilla</a> ve <a href="http://www.python.org/">Python</a>
olmak üzere açık kaynak projelere katkıda bulunuyorduk ancak <a href="https://github.com/berkerpeksag/jGrow">jGrow</a>
haricinde sıfırdan yazdığımız ve topluluktan geribildirim aldığımız bir proje geliştirmemiştik.
GitHub Badge ilk katkılarını yayına girdikten birkaç saat sonra aldı. Test sürecinde farketmediğimiz
hataları da yine bu sayede düzelttik.</p>

<p>Bir açık kaynak projeye katkıda bulunmanın tek yolu kod yazmak değil. Başlangıçta çok basit olarak
düşündüğümüz proje, <a href="https://github.com/emres">Emre Sevinç</a>'in <a href="https://github.com/berkerpeksag/github-badge/issues/8">katkılarıyla</a>
çok daha fazla bilgi sunar hale geldi. Her ne kadar yeni sürümlerde eklediğimiz JSONP ve CORS
tabanlı API'lar için beklediğimiz geri bildirimi alamamış olsak da sağlıklı bir açık kaynak proje
nasıl olur ve nasıl gelişir konularında bir miktar tecrübe kazandık.</p>

<blockquote>
<p>Bu yazı projenin diğer geliştiricisi olan <a href="http://twitter.com/madBYK">Burak Yiğit Kaya</a> ile
birlikte hazırlanmış olup, kendisinin <a href="http://blog.byk.im/">blogunda</a> da <a href="http://blog.byk.im/2012/05/github-badge-projesinden-neler-ogrendik.html">yayınlanmıştır</a>.</p>
</blockquote>

<!-- meta: archive(0) active(1) -->
    </div>
</article>


    
<article>
    <header>
        
        <h2><a href="/posts/yeni-bilgisayar-firefox-metro-fm-2012.html" title="Yeni bilgisayar, Firefox Metro, FM 2012">Yeni bilgisayar, Firefox Metro, FM 2012</a></h2>
        
        <time datetime="Wed May  2 20:31:31 2012" pubdate>Posted 8 years ago</time>
    </header>

    <div class="body">
        <p>Üzerinden birkaç ay geçti ama yine de not düşmek gerek. 2008'de aldığım ve
pişman olduğum Asus laptop'ımın parçalarının teker teker elimde kalmaya
başlamasıyla uzun zamandır ertelediğim yeni bilgisayar alma/toplama işlemini
daha da hızlandırdım.</p>

<p><a href="http://blog.byk.im">BYK</a>'nın süper önerileriyle aşağıdaki sistemi topladım:</p>

<ul>
<li>THERMALTAKE   CONTAC21 LGA775/1155/1156/1366 &amp; AM2/AM2+/AM3/AM3+/FM1 İŞLEMCİ SOĞUTUCU 1</li>
<li>OCZ   120GB Agility 3 Serisi Sata 3.0 SSD (525MB Okuma/ 500MB Yazma)</li>
<li>AMD   A8 X4 3870K Soket FM1 3.0GHz 4MB Cache 32nm İşlemci</li>
<li>ASUS  F1A75-V AMD A75 Soket FM1 DDR3 2250MHz (O.C.) DVI&amp;HDMI Anakart</li>
<li>GSKILL    8GB(2x4GB) RipjawsX DDR3 1866MHz CL9 1.5V Dual Kit Ram x 2</li>
</ul>

<p>Gelelim yeni bilgisayarım ile ilgili ilk izlenimlerime.</p>

<p>Windows 7 üzerinde <a href="https://developer.mozilla.org/en/pymake">pymake</a> ile Firefox'u
sıfırdan derlemek <strong>30 dakikanın altında</strong> sürüyor. Daha önce Ubuntu'da aynı işlem
<strong>yaklaşık 4 saati</strong> buluyordu. İkinci SSD'ye kuracağım Ubuntu ile bu değerleri
diğer geliştiricilerin Windows ve GNU/Linux build süreleri ile karşılaştırdığımda
yarı yarıya düşeceğini de hesap edince aradaki farkın büyüklüğünü ve geliştirme
ürecini ne kadar kısalttığını daha iyi anlaşılacaktır. Tabii bu değerler
<a href="https://developer.mozilla.org/en/Incremental_Build">incremental build</a> yapabildiğim
sürece pek önemli değil ama bazen <code>debug</code> veya <code>release</code> build almak zorunda
kalabiliyorsunuz ve bu eğer iyi bir donanımınız yoksa saatler demek.</p>

<p>Bir oyun ve özellikle Football Manager hastası olarak yeni bir bilgisayar alma
sebeplerimden birisi de dizüstümdeki Ubuntu'da FM 2012'yi çalıştıramamamdı. Bu
vesileyle 6 yıl sonra yeni bir Windows lisansı satın aldım ve şimdilik Windows
7'den gayet memnunum.</p>

<p>Gelelim bir diğer sebebime: <strong>Firefox Metro</strong>. Microsoft, Windows 8 ile tabletleri
de destekleyecek bildiğiniz gibi. Böyle bir platformda Firefox'un kaliteli bir
tarayıcı ile yer alması epey kritik ve henüz geliştirme aşamasının çok başında
olduğu için bir geliştiricinin yapabileceklerinin etkisi diğer pek çok Mozilla
projesine göre çok daha fazla. Henüz sadece sanal makinada Windows 8 kurup,
geliştirme ortamını hazırladım ve Fennec'i derledim<em>(teşekkürler 16GB ram!)</em>.</p>

<!-- meta: archive(0) active(1) -->
    </div>
</article>


    
<article>
    <header>
        
        <h2><a href="/posts/turkiye-de-bilgisayarin-50-yili.html" title="Türkiye'de Bilgisayarın 50 Yılı">Türkiye'de Bilgisayarın 50 Yılı</a></h2>
        
        <time datetime="Mon Apr 23 19:35:36 2012" pubdate>Posted 8 years ago</time>
    </header>

    <div class="body">
        <p>Çocukluğum bilgisayar ve internetin aynı cümle içinde kullanılmaya başlandığı
<a href="http://www.eksisozluk.com/show.asp?t=90'larda+çocuk+olmak">90'lı yıllara denk geldiğinden</a>
benim için bilgisayarın Türkiye'ye geliş tarihi hep 90'ların başı olarak kalmıştır.
<a href="http://byk.im">BYK</a>'dan <a href="http://www.nationalgeographic.com.tr/">National Geographic Türkiye</a>'nin
Mart sayısında <strong>Türkiye'de Bilgisayarın 50 Yılı</strong> başlıklı bir yazı olduğunu öğrendiğimde
merak edip aldım. Türkiye'de yaşayan insanların düşüncelerinin geride kalan 50 yılda
aslında hiç değişmediğini ve Türkiye'deki internet ile tanışıp bu sayede para kazanan
ilk nesillerden biri olarak nereden <em>nereye</em> geldiğimizi görmeme yardımcı olduğu için
<strong>Akdoğan Özkan</strong>'a teşekkürler.</p>

<blockquote>
<p>Karayolları Genel Müdürlüğü ABD'den elektronik beyin almış. Bu beyin bilmem kaç memurun,
bilmem kaç ayda yaptığını, birkaç dakikada yapıyormuş... Yanlız insanın içine bir şüphe
düşüyor; biz Allah'ın verdiği beyni kullanamazken ABD'nin verdiğini nasıl kullanacağız
bakalım. – Çetin Altan, 5 Şubat 1961</p>
</blockquote>

<p>Türkiye'nin ilk bilgisayarı olan <strong><a href="http://en.wikipedia.org/wiki/IBM_650">IBM 650 Model I</a></strong>,
1960 yılının Eylül ayında ülkemize gelmiş ve o zamanki adıyla Karayolları Umum Müdürlüğü'ne
kurulmuş. Hatta sadece Türkiye'nin değil Balkanlar ve Ortadoğu'nun da ilk bilgisayarıymış.
Bilgisayarın satın alınmasının sebebi ise, o zamanlar insan gücüyle 3 ay süren yol
hesaplamalarını hızlandırmakmış ve bilgisayar ilk kez <strong>63 km uzunluğundaki Polatlı-Sivrihisar
yolunun</strong> yapımında kullanılmış. IBM 650 ile bu hesaplamaların süresi 1 saate kadar düşmüş.</p>

<p>Tabii işleri bir anda bu kadar hızlandırıp, zaman kazandıran bir makine ortaya çıkınca
insanlar homurdanmaya başlamış:</p>

<blockquote>
<p>Hangi işe el attıysak bir direniş oldu. Yol mühendisliği hesaplarında olsun, birtakım
istatistiksel çalışmalarda olsun, muhasebe işlerinde olsun hep bir tedirginlik yaşandı.
İnsanlar işlerinin ellerinden gideceği endişesine kapılmışlardı. Ya işlerine son
verileceğini ya da tayin edileceklerini zannettiler.</p>
</blockquote>

<p>Bana en ilginç, komik ama bir o kadar da üzücü gelen anı ise, Karayolları Umum Müdürlüğünün
o zamanki bilgisayarcılarından <strong>Kaya Kılan</strong>'a ait:</p>

<blockquote>
<p>1962 yılında bir gün Karayolları'na elektronik beyni görmek üzere 80 yaşlarında bir adam
geldi. "Evladım buraya ABD'den bir beyin gelmiş, merak ettim, görmeye geldim" dedi. Adamı
aldık, 650'nin yanına götürüp sistemin özelliklerini izah ettik. Fakat bu bilgilere ve
gördüklerine itibar etmeyip, "tamam ben şimdi beyni göreyim" diye ısrar ediyor. Baktım
ısrarı geçecek gibi değil, teknisyenlere rica edip sistemin içinde devre yapısını temsil
eden, lambalardan oluşan işlem biriminin kapağını açtırdım. Ve "işte işlemlerin yapıldığı
beyin burası" dedim. Bir bana, bir de merkezi işlem birimine baktı ve, "bu beyin filan
değil, beni kandırıyorsunuz" dedi. Sabırlı davrandım: "Amca bakın işlemlerin yapıldığı
beyin kısmını sordunuz, işte burası orası" dedim. İkna olmaya niyetli olmayan adam sonunda
verdi bize hükmünü: "Tabii Amerikalılar izin vermiyor beyni göstermenize, di mi?" Arkasını,
ön kapağını açtıysak da, "demek göstermemeye kararlısınız" diyen yaşlı adam beyni gördüğüne
ikna olamadan ayrıldı binadan.</p>
</blockquote>

<p>Bu arada, Akdoğan Özkan'ın <strong>Anı ve Fotoğraflarla Bilişim Tarihimiz</strong> adlı kitabının
genişletilmiş baskısı bu yıl içerisinde yayımlanacakmış.</p>

<!-- meta: archive(0) active(1) -->
    </div>
</article>


    
<article>
    <header>
        
        <h2><a href="/posts/2012.html" title="2012">2012</a></h2>
        
        <time datetime="Sat Dec 31 16:34:50 2011" pubdate>Posted 9 years ago</time>
    </header>

    <div class="body">
        <p>Geçen yılın son günü 2011'e dair şu cümleyi <a href="http://berkerpeksag.com/2011/">yazmıştım</a>:</p>

<blockquote>
<p>2011 sadece hedefler koymadığım, hedeflerim için düzenli çalışmaya da başlayacağım
bir yıl olacak.</p>
</blockquote>

<p>2011 yılı pek çok açıdan istediğim gibi geçmese de o gün kafamda belirlediğim ama
yazıda bahsetmediğim hedeflerime ulaşmak için ilk adımlarımı attım:</p>

<ul>
<li>Pek çok açık kaynak projeye katkıda bulundum veya bulunmaya başladım - benim gibi
  sabırsız biri için haftalarca gözden geçirme bekleyen <em>(hala gözden geçirme yapılmamış
  patchlerimin olduğu birkaç proje de var)</em> patchler epey eğitici oldu:
  <a href="http://www.python.org/">Python</a>, <a href="https://developer.mozilla.org/en/SpiderMonkey/">Mozilla SpiderMonkey</a>,
  <a href="http://blog.mozilla.com/devtools/">Mozilla Firefox DevTools</a>,
  <a href="http://developer.mozilla.org/">Mozilla Developer Network</a>,
  <a href="http://suppert.mozilla.com/">Mozilla Firefox Support</a>, <a href="http://jquery.com/">jQuery</a>,
  <a href="http://docs.jquery.com/QUnit/">QUnit</a>.</li>
<li>Beylikdüzü'nden 3 yılın sonunda <em>nihayet</em> Ortaköy'e taşındım.</li>
<li>Ne yapmak ve nerede yaşamak istediğime karar verdim.</li>
</ul>

<p>2012'de en önemli hedefim, bu yıl başladıklarımın devamını getirmek olacak.</p>

<!-- meta: archive(0) active(1) -->
    </div>
</article>


    
<article>
    <header>
        
        <h2><a href="/posts/nihayet-yeni-blog.html" title="Nihayet yeni blog!">Nihayet yeni blog!</a></h2>
        
        <time datetime="Fri Nov 11 00:24:28 2011" pubdate>Posted 9 years ago</time>
    </header>

    <div class="body">
        <p>Yeni blog üzerinde düşünmeye neredeyse iki yıl önce başladım. Zamanla öyle karmaşık
ve dallı budaklı hale geldi ki boş zamanlarımda geliştirilerek bitmesi pek mümkün
gibi görünmemeye başladı: Blog ile beraber, adres kısaltma uygulaması, detaylı
yazılar için ayrı bir bölüm, kod parçalarını arşivleme ile gün içinde okuduğum
linkleri ve aldığım notları saklamak için ayrı uygulamalar ilk etapta hatırladıklarım.
İki yıl zarfında düşünce şeklimle beraber değiştirdiklerimin ucu blogun yeni haline
de dokundu.</p>

<p>İki yıl önce, ilgili ilgisiz bulduğum her şeye atlayıp biraz kurcaladıktan sonra
hevesi geçen ve sonunda elinde harcanan zamandan ve temel bilgiden başka bir şey
olmayan bir ben vardı. Böyle olmanın avantajları var ama benim örneğimde daha çok
dezavantajlarıyla karşılaştım. İş görüşmelerinde, odaklanmam ya da bilmem gereken
noktaları sırf bu yüzden atlamaya başladım. Daha da kötüsü, Türkiye'deki adına
<em>iş hayatı</em> denilen ama daha çok insanın hayatını elinden alan çalışma şekliyle
birleşince, kişisel gelişimime de darbe vurmaya başladı. Özellikle yurtdışındaki
firmalarla yaptığım görüşmelerde bunun epey acısını çektim.</p>

<p>İnsan hatalarından ders çıkardığı varsayılan bir canlı olduğu için, üstüste alınan
yenilgilerden sonra benim için de ders çıkarma zamanı geldi. Maymun iştahlılığımın
ve istikrarsızlığımın çözümü olarak, aslında alanlarında başarılı olmuş insanların
kariyerlerini incelemek yeterli: Odağını korumak. Şimdiye kadar nelerle ilgilendiğimi,
bunlar arasında yapmak istediklerimin neler olduğunu ve fırsat bulamayıp denemek
istediğim neler olduğunu bir kağıda yazıp, tek tek <em>"bunu gerçekten yapmak istiyor
muyum?"</em> sorusunun cevabını net olarak verdiğimde kendime gayet sade ve ulaşılabilir
bir kariyer çizgisi çıkarabilmeyi başardım.</p>

<p>Bu <em>odaklanma hareketinden</em> nasibini pek tabii ki yeni blog için yaptığım planlar
da aldı. Şu an gördüğünüz yapıda, tasarım ve kullanmayı planladığım programlama dili
haricinde neredeyse hiçbir benzerlik yok. Basit bir tasarım, olabildiğince okunaklı
bir yazı tipi ve boyut seçimleri, hakkımda kısa bir bilgi veren bölüm ve gerektiğinde
rahatça geliştirip, kafama göre güncelleyebileceğim ve kendi yazdığım
<a href="https://github.com/berkerpeksag/blog/">bu uygulama</a> ortaya çıktı.</p>

<p>Eski yapıdan <em>işe yarayan</em> yazıları <a href="/archive">arşive taşıdım</a>. Bu yazılara eski
adres biçimi <code>/blog/[a-z0-9-]</code> kullanarak ulaşabilirsiniz. Yani bu yazılardan birinin
bağlantısını herhangi bir yerde paylaştıysanız, değiştirmenize gerek yok. Ancak
varsayılan bağlantı formatında artık <code>/blog</code> yok.</p>

<p>Zaten çok fazla okuyucu olmadığından yorum sistemi çok fazla kullanılmıyordu. Bu
nedenle bir yorum sistemi geliştirme gereği duymadım. Doğal olarak, eski yapıdan
aktarılan yazılara yapılan yorumlar da artık görünmüyor. Muhtemelen düzenli olarak
İngilizce yazmaya başladıktan sonra, yorum sistemiyle beraber eski yazılara yapılan
yorumlar da geri gelecek.</p>

<p>Uygulamanın kodlarını <a href="https://github.com/berkerpeksag">GitHub</a> üzerinde 
yayımlıyorum](https://github.com/berkerpeksag/blog). Muhtemelen blog yazmak için çok
daha <a href="https://tumblr.com/">iyi</a> <a href="http://www.wordpress.com/">çözümler</a>
<a href="http://www.blogger.com/">bulacaksınız</a>. Ancak <em>"ben bunu kullanmak istiyorum"</em>
diyorsanız istediğiniz gibi alıp, değiştirip kullanabilirsiniz. Tek ricam, kullanmadan
önce bir <a href="mailto:berker.peksag@gmail.com">e-posta atıp</a> haber vermeniz yeterli. Eğer
tasarımı da kullanmak istiyorsanız, sayfanın altında bir yerlerde adımı ve orijinal
tasarım bağlantısını vermeniz hoş olur.</p>

<p>Uygulamayla ilgili planladığım değişiklikleri ve yeni özellikleri
<a href="https://github.com/berkerpeksag/berkerpeksag/blob/master/TODO.md"><code>TODO.md</code></a> dosyasında
paylaşıyorum. Gerek bu dosyadaki maddelerle gerek başka konularla ilgili her türlü
yardıma, öneriye, eleştiriye açığım.</p>

<blockquote>
<p>Yazının taslağını okuyup, verdiği öneriler için <a href="https://twitter.com/madbyk/">Burak Yiğit Kaya</a>'ya
teşekkürler.</p>
</blockquote>

<!-- meta: archive(0) active(1) -->
    </div>
</article>




    </div>

    <div class="container bottom">
        <div class="github-badge">
            <iframe src="https://githubbadge.appspot.com/badge/berkerpeksag?s=1"
                    style="border: 0; height: 150px; width: 200px; overflow: hidden;"></iframe>
        </div>
        <div class="about">
            <h3>About me</h3>
            <p>
                I'm a software developer and Python core developer currently
                living in Helsinki, Finland.
            </p>
            <p>
                <a href="https://github.com/berkerpeksag"
                   rel="me"
                   title="@berkerpeksag on GitHub">GitHub</a>
                &centerdot;
                <a href="https://twitter.com/berkerpeksag/"
                   rel="me"
                   title="@berkerpeksag on Twitter">Twitter</a>
            </p>
        </div>
    </div>

    <div class="container footer">
        <nav>
            <ul>
                <li><a href="/" title="Home">Home</a></li>
                <li><a href="/archive.html" title="Archive">Archive</a></li>
            </ul>
        </nav>
    </div>

    
</body>
</html>```