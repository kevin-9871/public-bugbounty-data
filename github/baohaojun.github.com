```
<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html lang="en" xml:lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta content="text/html;charset=utf-8" http-equiv="Content-Type"/>
<meta content="width=device-width, initial-scale=1" name="viewport"/>
<title> 关于跑步和心流的一点心得</title>
<meta content="Org mode" name="generator"/>
<meta content="Bao Haojun" name="author"/>


<link href="/poison.png" rel="shortcut icon" type="image/png"/>
<script src="/js/jquery-1.7.1.min.js" type="text/javascript"></script>
<script type="text/javascript">
        var BYB = {};
    </script>
<script type="text/javascript">
        BYB.includeScript = function(file,callback){
            var _doc = document.getElementsByTagName('head')[0];
            var js = document.createElement('script');
            js.setAttribute('type', 'text/javascript');
            js.setAttribute('src', file);
            _doc.appendChild(js);

            if (!/*@cc_on!@*/0) { //if not IE
                //Firefox2、Firefox3、Safari3.1+、Opera9.6+ support js.onload
                js.onload = function () {
                    callback();
                }
            } else {
                //IE6、IE7 support js.onreadystatechange
                js.onreadystatechange = function () {
                    if (js.readyState == 'loaded' || js.readyState == 'complete') {
                        callback();
                    }
                }
            }
            return false;
        }
    </script>
<script type="text/javascript">
/*
@licstart  The following is the entire license notice for the
JavaScript code in this tag.

Copyright (C) 2012-2020 Free Software Foundation, Inc.

The JavaScript code in this tag is free software: you can
redistribute it and/or modify it under the terms of the GNU
General Public License (GNU GPL) as published by the Free Software
Foundation, either version 3 of the License, or (at your option)
any later version.  The code is distributed WITHOUT ANY WARRANTY;
without even the implied warranty of MERCHANTABILITY or FITNESS
FOR A PARTICULAR PURPOSE.  See the GNU GPL for more details.

As additional permission under GNU GPL version 3 section 7, you
may distribute non-source (e.g., minimized or compacted) forms of
that code without the copy of the GNU GPL normally required by
section 4, provided you include this license notice and a URL
through which recipients can access the Corresponding Source.


@licend  The above is the entire license notice
for the JavaScript code in this tag.
*/
<!--/*--><![CDATA[/*><!--*/
 function CodeHighlightOn(elem, id)
 {
   var target = document.getElementById(id);
   if(null != target) {
     elem.cacheClassElem = elem.className;
     elem.cacheClassTarget = target.className;
     target.className = "code-highlighted";
     elem.className   = "code-highlighted";
   }
 }
 function CodeHighlightOff(elem, id)
 {
   var target = document.getElementById(id);
   if(elem.cacheClassElem)
     elem.className = elem.cacheClassElem;
   if(elem.cacheClassTarget)
     target.className = elem.cacheClassTarget;
 }
/*]]>*///-->
</script>
</head>
<body style='line-height: 1.6em; font-family: "Arial", Arial, Helvetica, sans-serif; margin: 0; padding: 40px 20px; font: x-small Georgia, Serif; text-align: center; font-size: small; color: #2E3436; background-color: #EDEDED'><style>@media all { #header { width: 660px; margin: 0 auto 10px; border: 1px solid #ccc } #bhj_article { width: 920px; margin: 0 auto; padding: 0; text-align: left } #bhj_leftpane, #content { width: 640px; float: left } #sidebar { width: 240px; float: right } img.emoji { width: 1.3em; vertical-align: -0.35em } }
@media only screen and (-webkit-min-device-pixel-ratio: 2) /* Webkit-based browsers */, only screen and (min--moz-device-pixel-ratio: 2) /* Older Firefox browsers (prior to Firefox 16) */, only screen and (min-resolution: 2dppx) /* The standard way */, only screen and (min-resolution: 192dpi) { /* dppx fallback */ #header { width: 85%; margin: 0 auto 5px; border: 1px solid #ccc } #bhj_article { width: 90% } #bhj_leftpane, #content { width: 100%; float: none } #sidebar { width: 100%; float: none; display: none } #description { font: 60%/1.2em "Trebuchet MS", Trebuchet, Arial, Verdana, Sans-serif; text-transform: uppercase } }
@media all { .date-header { margin: 1.5em 0 0.5em } .post { margin: 0.5em 0 1.5em; border-bottom: 1px dotted #ccc; padding-bottom: 1.5em } }
@media handheld { .date-header { padding: 0 1.5em 0 1.5em } .post { padding: 0 1.5em 0 1.5em } }</style>
<div class="status" id="preamble">
<div id="header">
<h1 id="blog-title" style="border-bottom: 1px solid #ddd; margin: 5px 5px 0; padding: 20px 20px 0.25em; border: 1px solid #eee; border-width: 1px 1px 0; font-size: 160%; line-height: 1.2em; font-weight: normal; letter-spacing: 0.2em; text-decoration: none">
<a href="http://baohaojun.github.io/blog/2011/12/23/index.html" style="color: #06C; text-decoration: underline">包昊军的博客</a>
</h1>
<p id="description" style='margin-top: 10px; margin-bottom: 10px; margin: 0 5px 5px; padding: 0 20px 20px; border: 1px solid #eee; border-width: 0 1px 1px; font: 78%/1.4em "Trebuchet MS", Trebuchet, Arial, Verdana, Sans-serif; text-transform: uppercase; letter-spacing: 0.2em'>What you don't know, won't hurt you.</p>
</div>
</div>
<div id="bhj_article">
<div id="bhj_leftpane">
<div id="content" style="font-size: 11pt; line-height: 1.6em">
<h1 class="title" style="margin: 1.3em 0 1em; padding: 0; border-bottom: 1px solid #ddd; text-align: center; font-size: 160%; color: #191970; font-weight: bold"> 关于跑步和心流的一点心得</h1>
<p style="margin-top: 10px; margin-bottom: 10px; margin: 0 0 1.2em 0">
疫情期间，一直苦于无法锻炼，体重彪升<img class="emoji" src="emojis/wx-WuLian.PNG" style="max-width: 60%; max-height: 600px; font-size: 1em; width: 1.3em; vertical-align: -0.35em;"/>。
</p>
<p style="margin-top: 10px; margin-bottom: 10px; margin: 0 0 1.2em 0">
所以最近重新学习了一下跑步。什么，你可能会问，只要是个人都会奔跑，这个还用学吗？是的，我以前也跑过，但没法长期坚持跑步，这次通过阅读一本教跑步的书，我已经学会天天坚持跑步的秘决了。
</p>
<p style="margin-top: 10px; margin-bottom: 10px; margin: 0 0 1.2em 0">
这本书的名字叫「跑步之前读的书，最快出结果的科学锻炼方法：前脚掌着地＋慢跑」，是一个日本人写的，非常棒的一本书，强烈推荐！目前国内好像还没有翻译出版，我给整理出一些关键的要点，供大家参考。
</p>
<div class="outline-2" id="outline-container-orgf66a9b4">
<h2 id="orgf66a9b4" style='font-family: "Trebuchet MS", Trebuchet, Arial, Verdana, Sans-serif; letter-spacing: 0.2em; margin: 1.3em 0 1em; padding: 0; font-size: 1.4em; border-bottom: 1px solid #eee; color: #00578E; font-weight: bold'><span class="section-number-2">1</span> 慢跑</h2>
<div class="outline-text-2" id="text-1">
<p style="margin-top: 10px; margin-bottom: 10px; margin: 0 0 1.2em 0">
首先，想要长期坚持跑步锻炼的话，一定要「慢跑」。这里的慢跑有一个标准，并不是越慢越好（最后变成走的话，就不是跑步锻炼了<img class="emoji" src="emojis/SMILING_FACE_WITH_OPEN_MOUTH_AND_COLD_SWEAT.png" style="max-width: 60%; max-height: 600px; font-size: 1em; width: 1.3em; vertical-align: -0.35em;"/>）。
</p>
<p style="margin-top: 10px; margin-bottom: 10px; margin: 0 0 1.2em 0">
这个标准就是，你在慢跑的时候，能不能保持微笑。
</p>
<p style="margin-top: 10px; margin-bottom: 10px; margin: 0 0 1.2em 0">
注意，这不是心灵鸡汤成功学的那一套心理暗示，通过保持微笑，打造积极、乐观的人生态度。
</p>
<p style="margin-top: 10px; margin-bottom: 10px; margin: 0 0 1.2em 0">
而是说，运动量是不是适中，不至于太剧烈，让你连微笑都笑不出来了。
</p>
<p style="margin-top: 10px; margin-bottom: 10px; margin: 0 0 1.2em 0">
当然，如果能起到一点心理暗示的作用，一不小心跑出一个积极、乐观的人生态度，那也是极好的嘛<img class="emoji" src="emojis/wx-Ye.PNG" style="max-width: 60%; max-height: 600px; font-size: 1em; width: 1.3em; vertical-align: -0.35em;"/>。
</p>
</div>
<div class="outline-3" id="outline-container-org1ee2a69">
<h3 id="org1ee2a69" style="margin: 1.3em 0 1em; padding: 0; font-size: 1.3em; color: #0084C8; font-weight: bold"><span class="section-number-3">1.1</span> 心流</h3>
<div class="outline-text-3" id="text-1-1">
<p style="margin-top: 10px; margin-bottom: 10px; margin: 0 0 1.2em 0">
我在写这篇文章的时候，突然想到，这个慢跑的时候保持微笑，不就是最容易达到心流（Flow）的状态吗？
</p>
<p style="margin-top: 10px; margin-bottom: 10px; margin: 0 0 1.2em 0">
一般来说，技能等级和挑战等级相匹配，才最容易进入心流状态（<a href="https://en.wikipedia.org/wiki/Flow_(psychology)" style="color: #06C; text-decoration: underline">https://en.wikipedia.org/wiki/Flow_(psychology)</a>）：
</p>
<div class="figure" style="padding: 0.5em">
<p style="margin-top: 10px; margin-bottom: 10px; margin: 0 0 1.2em 0; text-align: center"><img alt="450px-Challenge_vs_skill.svg.png" src="https://upload.wikimedia.org/wikipedia/commons/thumb/f/f6/Challenge_vs_skill.svg/450px-Challenge_vs_skill.svg.png" style="max-width: 60%; max-height: 600px"/>
</p>
</div>
<p style="margin-top: 10px; margin-bottom: 10px; margin: 0 0 1.2em 0">
跑步的时候也是一样，速度适中，才比较容易跑出心流来。
</p>
<ul class="org-ul" style="margin: 1.2em 0; padding-left: 2em">
<li style="margin: 0.5em 0">太慢的话，就会觉得无聊没劲，没有挑战<img class="emoji" src="emojis/FACE_WITH_ROLLING_EYES.png" style="max-width: 60%; max-height: 600px; font-size: 1em; width: 1.3em; vertical-align: -0.35em;"/></li>
<li style="margin: 0.5em 0">太快的话，就会觉得太苦太累，只想放弃<img class="emoji" src="emojis/smiley_36.png" style="max-width: 60%; max-height: 600px; font-size: 1em; width: 1.3em; vertical-align: -0.35em;"/></li>
</ul>
</div>
</div>
<div class="outline-3" id="outline-container-orgf080377">
<h3 id="orgf080377" style="margin: 1.3em 0 1em; padding: 0; font-size: 1.3em; color: #0084C8; font-weight: bold"><span class="section-number-3">1.2</span> 运动手表手环</h3>
<div class="outline-text-3" id="text-1-2">
<p style="margin-top: 10px; margin-bottom: 10px; margin: 0 0 1.2em 0">
除了微笑之外，也可以用一些科技产品更精确地观测自己的速度是不是合适。
</p>
<p style="margin-top: 10px; margin-bottom: 10px; margin: 0 0 1.2em 0">
如果你有运动手环、手表之类设备的话，可以观察自己的心率，在 128 ~ 148 - 年龄 / 2 左右，就是比较合适的运动强度。比如，
</p>
<ul class="org-ul" style="margin: 1.2em 0; padding-left: 2em">
<li style="margin: 0.5em 0">假设个人运动水平较高，则可以选心跳上限 148</li>
<li style="margin: 0.5em 0">年龄 40 岁，则合适的心率是 <code style="background: transparent; font-size: 0.85em; font-family: Consolas, Inconsolata, Courier, monospace; margin: 0 0.15em; padding: 0 0.3em; white-space: pre-wrap; border: 1px solid #EAEAEA; background-color: #F8F8F8; border-radius: 3px; display: inline; color: #7f7f7f">148 - 40 / 2 = 128</code>，即每分钟心跳 128 次。</li>
</ul>
<p style="margin-top: 10px; margin-bottom: 10px; margin: 0 0 1.2em 0">
一般来说，这个心率是减脂最有效的区间。
</p>
</div>
</div>
</div>
<div class="outline-2" id="outline-container-org581f6bc">
<h2 id="org581f6bc" style='font-family: "Trebuchet MS", Trebuchet, Arial, Verdana, Sans-serif; letter-spacing: 0.2em; margin: 1.3em 0 1em; padding: 0; font-size: 1.4em; border-bottom: 1px solid #eee; color: #00578E; font-weight: bold'><span class="section-number-2">2</span> 跑姿</h2>
<div class="outline-text-2" id="text-2">
<p style="margin-top: 10px; margin-bottom: 10px; margin: 0 0 1.2em 0">
从跑步强度和锻炼效果「性价比」的角度，我们可以推理一下，比较好的跑步姿势应该是什么样的。
</p>
</div>
<div class="outline-3" id="outline-container-orgec51ceb">
<h3 id="orgec51ceb" style="margin: 1.3em 0 1em; padding: 0; font-size: 1.3em; color: #0084C8; font-weight: bold"><span class="section-number-3">2.1</span> 上身稍微前倾</h3>
<div class="outline-text-3" id="text-2-1">
<p style="margin-top: 10px; margin-bottom: 10px; margin: 0 0 1.2em 0">
在快要失去平衡的时候，前脚刚好着地，保证了持续向前，这种跑姿，据说可以利用人体自身的重力，带动身体向前运动，让慢跑变得更轻松。
</p>
<p style="margin-top: 10px; margin-bottom: 10px; margin: 0 0 1.2em 0">
另外，上身稍微前倾，前脚着地的点，基本是在身体重心的正下方，这可以减少「剪切应力」，更好地保护膝关节。
</p>
<p style="margin-top: 10px; margin-bottom: 10px; margin: 0 0 1.2em 0">
（所谓剪切应力，就是从 90 度的方向上施加的分力，比如把筷子从中间折断的力，这个比较伤膝关节；与之对应的是把筷子从两端挤压断的力，这个要难得多，不容易伤到膝关节）
</p>
</div>
</div>
<div class="outline-3" id="outline-container-org88cb8ce">
<h3 id="org88cb8ce" style="margin: 1.3em 0 1em; padding: 0; font-size: 1.3em; color: #0084C8; font-weight: bold"><span class="section-number-3">2.2</span> 前脚掌先着地</h3>
<div class="outline-text-3" id="text-2-2">
<p style="margin-top: 10px; margin-bottom: 10px; margin: 0 0 1.2em 0">
跑步和走路的区别就是，跑步会有两脚同时腾空的瞬间。
</p>
<p style="margin-top: 10px; margin-bottom: 10px; margin: 0 0 1.2em 0">
还有一种会两脚同时腾空的运动，就是跳跃。
</p>
<p style="margin-top: 10px; margin-bottom: 10px; margin: 0 0 1.2em 0">
而我们做跳跃运动的时候，总是前脚掌先着地。脚后跟先着地的跳跃运动是无法想像的，会严重伤害身体各个关节，搞不好可能还会脑震荡吧<img class="emoji" src="emojis/SMILING_FACE_WITH_OPEN_MOUTH_AND_COLD_SWEAT.png" style="max-width: 60%; max-height: 600px; font-size: 1em; width: 1.3em; vertical-align: -0.35em;"/>。
</p>
</div>
</div>
<div class="outline-3" id="outline-container-orgd8e396d">
<h3 id="orgd8e396d" style="margin: 1.3em 0 1em; padding: 0; font-size: 1.3em; color: #0084C8; font-weight: bold"><span class="section-number-3">2.3</span> 高步频，小步幅</h3>
<div class="outline-text-3" id="text-2-3">
<p style="margin-top: 10px; margin-bottom: 10px; margin: 0 0 1.2em 0">
想提升跑步运动水平的话，应该尽量把关注点放在提高步频上，步频上去了，肌肉微稍增加一点力量，腾空的时间会增加，步幅自然也会变大，从而也能跑得更快。
</p>
<p style="margin-top: 10px; margin-bottom: 10px; margin: 0 0 1.2em 0">
相反，如果抓错重点，不强调步频，而强调步幅的话，就会每一步都蹬得特别用力，相当于提升了运动强度，并且也会违反上一条跑姿标准，无法继续用前脚掌先着地了，因为这个力量不够大，很容易变成用脚后跟蹬地。
</p>
</div>
</div>
<div class="outline-3" id="outline-container-org6b6c425">
<h3 id="org6b6c425" style="margin: 1.3em 0 1em; padding: 0; font-size: 1.3em; color: #0084C8; font-weight: bold"><span class="section-number-3">2.4</span> 抬头，不要低头</h3>
<div class="outline-text-3" id="text-2-4">
<p style="margin-top: 10px; margin-bottom: 10px; margin: 0 0 1.2em 0">
抬头更有利于呼吸和微笑。
</p>
<p style="margin-top: 10px; margin-bottom: 10px; margin: 0 0 1.2em 0">
另外在慢跑的过程中，可以试一下腹式呼吸。
</p>
</div>
</div>
</div>
<div class="outline-2" id="outline-container-orgdae203c">
<h2 id="orgdae203c" style='font-family: "Trebuchet MS", Trebuchet, Arial, Verdana, Sans-serif; letter-spacing: 0.2em; margin: 1.3em 0 1em; padding: 0; font-size: 1.4em; border-bottom: 1px solid #eee; color: #00578E; font-weight: bold'><span class="section-number-2">3</span> 时间</h2>
<div class="outline-text-2" id="text-3">
<p style="margin-top: 10px; margin-bottom: 10px; margin: 0 0 1.2em 0">
早上起床以后，空腹去跑步，是最好的，尤其对以减脂为锻炼目标的人来说，更是如此。
</p>
<p style="margin-top: 10px; margin-bottom: 10px; margin: 0 0 1.2em 0">
首先，空腹的时候，身体负担最小，跑起来比较轻松，更容易进入状态。
</p>
<p style="margin-top: 10px; margin-bottom: 10px; margin: 0 0 1.2em 0">
其次，经过一晚上的时间，身体血液中的糖分含量比较低，这种情况下运动，更容易开始燃烧脂肪。
</p>
<p style="margin-top: 10px; margin-bottom: 10px; margin: 0 0 1.2em 0">
我用手表定了个闹钟，每天早上 6 点钟准时出去跑步<img class="emoji" src="emojis/GRINNING_FACE_WITH_SMILING_EYES.png" style="max-width: 60%; max-height: 600px; font-size: 1em; width: 1.3em; vertical-align: -0.35em;"/>。
</p>
</div>
</div>
<div class="outline-2" id="outline-container-org6228b53">
<h2 id="org6228b53" style='font-family: "Trebuchet MS", Trebuchet, Arial, Verdana, Sans-serif; letter-spacing: 0.2em; margin: 1.3em 0 1em; padding: 0; font-size: 1.4em; border-bottom: 1px solid #eee; color: #00578E; font-weight: bold'><span class="section-number-2">4</span> 饮食</h2>
<div class="outline-text-2" id="text-4">
<p style="margin-top: 10px; margin-bottom: 10px; margin: 0 0 1.2em 0">
与我们中国人的饮食信仰「早饭要吃好，午饭要吃饱，晚饭要吃少」恰好相反，书中推荐的饮食方法是：<b>早饭、中饭都可以少吃点，晚饭可以吃饱一点</b>。
</p>
<p style="margin-top: 10px; margin-bottom: 10px; margin: 0 0 1.2em 0">
稍微思考了一下，就觉得这很合理：
</p>
<ol class="org-ol" style="margin: 1.2em 0; padding-left: 2em">
<li style="margin: 0.5em 0">要减脂的话，摄入要少于支出，这是减重的铁律，所以剩下的问题就是三餐的量的分配问题。</li>
<li style="margin: 0.5em 0">晚上吃饱（但不是吃到撑）有助于睡眠，不至于饿醒，另外，第二天的晨跑也需要足够的能量</li>
<li style="margin: 0.5em 0">既然晚上要吃饱一点，那为了保证摄入总量不超标，早饭和中饭就只能少吃一点了。</li>
</ol>
</div>
</div>
<div class="outline-2" id="outline-container-orgfa57701">
<h2 id="orgfa57701" style='font-family: "Trebuchet MS", Trebuchet, Arial, Verdana, Sans-serif; letter-spacing: 0.2em; margin: 1.3em 0 1em; padding: 0; font-size: 1.4em; border-bottom: 1px solid #eee; color: #00578E; font-weight: bold'><span class="section-number-2">5</span> 热身</h2>
<div class="outline-text-2" id="text-5">
<p style="margin-top: 10px; margin-bottom: 10px; margin: 0 0 1.2em 0">
因为是慢跑，所以完全没必要热身！
</p>
<p style="margin-top: 10px; margin-bottom: 10px; margin: 0 0 1.2em 0">
村上春树也在他的「当我谈跑步时我谈些什么」里说过，他每天早上出去跑步，从来不热身拉伸，就是前 20 分钟身体比较僵跑不快而已，像个老妇人一样，跑着跑着就热完身拉伸开了。
</p>
<p style="margin-top: 10px; margin-bottom: 10px; margin: 0 0 1.2em 0">
仔细想想，这个其实是我以前没法坚持跑步的一大原因，不热身么害怕受伤，热身么又特别麻烦，有时候热完身就已经累了，不想跑了<img class="emoji" src="emojis/SMILING_FACE_WITH_OPEN_MOUTH_AND_COLD_SWEAT.png" style="max-width: 60%; max-height: 600px; font-size: 1em; width: 1.3em; vertical-align: -0.35em;"/>。
</p>
<p style="margin-top: 10px; margin-bottom: 10px; margin: 0 0 1.2em 0">
通过这本书是介绍的跑步方法，我已经坚持了 3 个月，减掉了 6 公斤<img class="emoji" src="emojis/FLEXED_BICEPS.0.png" style="max-width: 60%; max-height: 600px; font-size: 1em; width: 1.3em; vertical-align: -0.35em;"/>。
</p>
<nav>
<ul id="prev_next_posts" style="margin: 1.2em 0; padding-left: 2em; list-style: none; padding: 0">
<li class="prev_post" style="margin: 0.5em 0; float: left; width: 50%">
<a href="blog/2020/07/14/cold-bath.html" style="color: #06C; text-decoration: underline"> <!-- prev-url -->
<i class="icon-chevron-left">《</i>
        #+title: 洗冷水澡记 <!-- prev-title -->
</a>
</li>
<li class="next_post" style="margin: 0.5em 0; float: right; width: 50%; text-align: right;">
<a href="meta/Archive.html" style="color: #06C; text-decoration: underline"> <!-- next-url -->
        Archive <!-- next-title -->
<i class="icon-chevron-right">》</i>
</a>
</li>
</ul>
</nav>
</div>
</div>
</div>
<!-- {%html-mode%} -->
<div id="disqus_container">
<script style="margin-top: 20px; margin-bottom: 20px" type="text/javascript">
    /* * * CONFIGURATION VARIABLES: THIS CODE IS ONLY AN EXAMPLE * * */
    var disqus_shortname = 'baohaojun'; // Required - Replace example with your forum shortname
    var disqus_url = 'http://baohaojun.github.io/blog/2020/10/12/running.html';

    /* * * DON'T EDIT BELOW THIS LINE * * */
    (function() {
        var dsq = document.createElement('script'); dsq.type = 'text/javascript'; dsq.async = true;
        dsq.src = '//' + disqus_shortname + '.disqus.com/embed.js';
        (document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[0]).appendChild(dsq);
    })();
</script>
<div id="disqus_thread" style="margin-top: 20px; margin-bottom: 20px"></div>
</div>
</div> <!-- bhj_leftpane -->
<div id="sidebar"><div id="sidebar2">
<!-- Begin #profile-container -->
<div id="profile-container" style="margin: 0 0 1.5em; border-bottom: 1px dotted #ccc; padding-bottom: 1.5em"><h2 class="sidebar-title" style='font-family: "Trebuchet MS", Trebuchet, Arial, Verdana, Sans-serif; letter-spacing: 0.2em; margin: 1.3em 0 1em; padding: 0; font-size: 1.4em; border-bottom: 1px solid #eee; color: #00578E; font-weight: bold'>About Me</h2>
<dl class="profile-datablock" style="padding: 0; margin: 0.5em 0 0.5em"><dt class="profile-img" style="font-size: 1em; font-weight: bold; font-style: italic; display: inline"><a "="" href="/images/bhj.png" style="color: #06C; text-decoration: underline"><img alt="My Photo" height="58" src="/images/bhj-thumb.png" style="max-width: 60%; max-height: 600px; border-width: 0; float: left; padding: 4px; border: 1px solid #ddd; margin: 0 8px 3px 0" width="80"/></a></dt>
<dd class="profile-data" style='padding: 0 1em; margin: 0; font: bold 78%/1.6em "Trebuchet MS", Trebuchet, Arial, Verdana, Sans-serif; text-transform: uppercase; letter-spacing: 0.1em'><strong style="display: none">Name:</strong> <a href="https://www.github.com/baohaojun" rel="author" style="color: #06C; text-decoration: underline"> Bao Haojun </a></dd>
<dd class="profile-data" style='padding: 0 1em; margin: 0; font: bold 78%/1.6em "Trebuchet MS", Trebuchet, Arial, Verdana, Sans-serif; text-transform: uppercase; letter-spacing: 0.1em'><strong style="display: none">Location:</strong>  Beijing, China </dd></dl>
<p class="profile-link" style='margin-top: 10px; margin-bottom: 10px; margin: 0; font: 78%/1.4em "Trebuchet MS", Trebuchet, Arial, Verdana, Sans-serif; text-transform: uppercase; letter-spacing: 0.1em; line-height: 1.5em'><a href="/blog/2011/12/23/index.html" rel="author" style="color: #06C; text-decoration: underline">View my complete profile</a></p></div>
<h2 class="sidebar-title" style='font-family: "Trebuchet MS", Trebuchet, Arial, Verdana, Sans-serif; letter-spacing: 0.2em; margin: 1.3em 0 1em; padding: 0; font-size: 1.4em; border-bottom: 1px solid #eee; color: #00578E; font-weight: bold'>Like my blog?</h2>
<a href="https://pledgie.com/campaigns/33066" style="color: #06C; text-decoration: underline"><img alt="Click here to lend your support to: Well done, Mr. Bao Haojun. and make a donation at pledgie.com !" border="0" src="https://pledgie.com/campaigns/33066.png?skin_name=chrome" style="max-width: 60%; max-height: 600px; border-width: 0"/></a>
<!-- End #profile -->
<h2 class="sidebar-title" style='font-family: "Trebuchet MS", Trebuchet, Arial, Verdana, Sans-serif; letter-spacing: 0.2em; margin: 1.3em 0 1em; padding: 0; font-size: 1.4em; border-bottom: 1px solid #eee; color: #00578E; font-weight: bold'>Feeds</h2>
<ul style="padding-left: 2em; margin: 0 0 1.5em; padding: 0 0 1.5em; border-bottom: 1px dotted #ccc; list-style: none">
<li style="margin: 0; padding: 0 0 0.25em 15px; text-indent: -15px; line-height: 1.5em"><a href="/atom.xml" style="color: #06C; text-decoration: underline">Atom</a></li>
</ul>
<h2 class="sidebar-title" style='font-family: "Trebuchet MS", Trebuchet, Arial, Verdana, Sans-serif; letter-spacing: 0.2em; margin: 1.3em 0 1em; padding: 0; font-size: 1.4em; border-bottom: 1px solid #eee; color: #00578E; font-weight: bold'>Projects</h2>
<dl style="margin: 1.2em 0; padding: 0">
<dt style="font-size: 1em; font-weight: bold; font-style: italic"><a href="/blog/2011/12/23/beagrep.html" style="color: #06C; text-decoration: underline"> Beagrep </a></dt>
<dd style="margin: 0 0 1em; padding: 0 1em"> Grep 2G source code in 0.23 second </dd>
<dt style="font-size: 1em; font-weight: bold; font-style: italic"><a href="/blog/2013/04/13/skeleton-complete.html" style="color: #06C; text-decoration: underline"> Skeletom-complete.el </a></dt>
<dd style="margin: 0 0 1em; padding: 0 1em"> Type a bare skeleton, complete to a symbol/partial line/sexp/paragraph </dd>
<dt style="font-size: 1em; font-weight: bold; font-style: italic"><a href="/blog/2011/12/28/org-jira.html" style="color: #06C; text-decoration: underline"> Org-jira.el </a></dt>
<dd style="margin: 0 0 1em; padding: 0 1em"> Use JIRA with org-mode </dd>
</dl>
<h2 style='font-family: "Trebuchet MS", Trebuchet, Arial, Verdana, Sans-serif; letter-spacing: 0.2em; margin: 1.3em 0 1em; padding: 0; font-size: 1.4em; border-bottom: 1px solid #eee; color: #00578E; font-weight: bold'>Tags</h2>
<ul style="padding-left: 2em; margin: 0 0 1.5em; padding: 0 0 1.5em; border-bottom: 1px dotted #ccc; list-style: none">
</ul>
<h2 class="sidebar-title" style='font-family: "Trebuchet MS", Trebuchet, Arial, Verdana, Sans-serif; letter-spacing: 0.2em; margin: 1.3em 0 1em; padding: 0; font-size: 1.4em; border-bottom: 1px solid #eee; color: #00578E; font-weight: bold'>Previous Posts</h2>
<ul id="recently" style="padding-left: 2em; margin: 0 0 1.5em; padding: 0 0 1.5em; border-bottom: 1px dotted #ccc; list-style: none">
<li style="margin: 0; padding: 0 0 0.25em 15px; text-indent: -15px; line-height: 1.5em"><a href="blog/2020/07/14/cold-bath.html" style="color: #06C; text-decoration: underline"> </a></li>
<li style="margin: 0; padding: 0 0 0.25em 15px; text-indent: -15px; line-height: 1.5em"><a href="blog/2020/06/16/0-Android-App-development-under-FreeBSD.html" style="color: #06C; text-decoration: underline"> Android App development under FreeBSD </a></li>
<li style="margin: 0; padding: 0 0 0.25em 15px; text-indent: -15px; line-height: 1.5em"><a href="blog/2020/03/21/lost-sleep.html" style="color: #06C; text-decoration: underline"> lost-sleep </a></li>
<li style="margin: 0; padding: 0 0 0.25em 15px; text-indent: -15px; line-height: 1.5em"><a href="blog/2020/03/02/0-Using-Emacs-as-the-Clipboard-Manager.html" style="color: #06C; text-decoration: underline"> Using Emacs as the Clipboard Manager </a></li>
<li style="margin: 0; padding: 0 0 0.25em 15px; text-indent: -15px; line-height: 1.5em"><a href="blog/2020/01/02/2019.html" style="color: #06C; text-decoration: underline"> 2019 年个人总结 </a></li>
<li style="margin: 0; padding: 0 0 0.25em 15px; text-indent: -15px; line-height: 1.5em"><a href="blog/2019/12/20/7-habits-3.html" style="color: #06C; text-decoration: underline"> 七个习惯感悟（三）「双赢思维，知彼解己，统合综效」 </a></li>
<li style="margin: 0; padding: 0 0 0.25em 15px; text-indent: -15px; line-height: 1.5em"><a href="blog/2019/09/07/n-7-habit-extra.html" style="color: #06C; text-decoration: underline"> 高七番外篇：坏习惯和好习惯 </a></li>
<li style="margin: 0; padding: 0 0 0.25em 15px; text-indent: -15px; line-height: 1.5em"><a href="blog/2019/08/27/0-7-habits-2.html" style="color: #06C; text-decoration: underline"> 七个习惯感悟（二）「以终为始、要事第一」 </a></li>
<li style="margin: 0; padding: 0 0 0.25em 15px; text-indent: -15px; line-height: 1.5em"><a href="blog/2019/08/04/0-traps-of-binding-desktop-keys.html" style="color: #06C; text-decoration: underline"> 修改桌面键绑定的那些坑 </a></li>
<li style="margin: 0; padding: 0 0 0.25em 15px; text-indent: -15px; line-height: 1.5em"><a href="blog/2019/06/16/0-7-habits-1.html" style="color: #06C; text-decoration: underline"> 参加「高效能人士的七个习惯」培训感悟（第一个习惯） </a></li>
</ul>
<h2 class="sidebar-title" style='font-family: "Trebuchet MS", Trebuchet, Arial, Verdana, Sans-serif; letter-spacing: 0.2em; margin: 1.3em 0 1em; padding: 0; font-size: 1.4em; border-bottom: 1px solid #eee; color: #00578E; font-weight: bold'>Archive</h2>
<ul id="archives" style="padding-left: 2em; margin: 0 0 1.5em; padding: 0 0 1.5em; border-bottom: 1px dotted #ccc; list-style: none">
<li style="margin: 0; padding: 0 0 0.25em 15px; text-indent: -15px; line-height: 1.5em"><a href="/meta/Archive.html" style="color: #06C; text-decoration: underline"> The complete archive </a></li>
</ul>
<!--
  <p>This is a paragraph of text that could go in the sidebar.</p>
  -->
</div></div>
<!-- End #sidebar -->
</div> <!-- End #bhj_article -->
<!-- {%/html-mode%} -->
<div class="status" id="postamble">
<!-- {%html-mode%} -->
<!-- {%/html-mode%} -->
</div>
</body>
</html>

```