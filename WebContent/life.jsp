<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta charset="utf-8">
<title>慢生活 - 一个站在web前端设计之路的技术员个人博客网站</title>
<meta name="keywords" content="慢生活,个人博客,个人网站,个人博客模板,个人网站模板" />
<meta name="description" content="一个站在web前段设计之路的技术员个人博客网站，提供个人博客，个人网站div+css源码分享" />
<link href="./css/base.css" rel="stylesheet">
<link href="./css/style.css" rel="stylesheet">

<!-- 返回顶部调用 begin -->
<link href="./css/lrtk.css" rel="stylesheet" />
<script type="text/javascript" src="./js/jquery-3.1.1.min.js"></script>
<script type="text/javascript" src="./js/js.js"></script>
<!-- 返回顶部调用 end-->
</head>
<body>
	<header>
		<div id="logo">
			<a href="/"></a>
		</div>
		<nav class="topnav" id="topnav"> 
			<a href="blog-list"><span>首页</span><span class="en">Portal</span></a> 
			<a href="blog-life"> <span>慢生活</span> <span class="en">Life</span></a> 
			<a href="talk-list"> <span>碎言碎语</span> <span class="en">Doing</span></a> 
			<a href="#"> <span>学无止境</span> <span class="en">Learn</span></a> 
			<a href="#"> <span>关于我</span> <span class="en">Me</span></a>
			</nav> </nav> 
	</header>
	<article class="blogs">
	<h1 class="t_nav">
		<span>“慢生活”不是懒惰，放慢速度不是拖延时间，而是让我们在生活中寻找到平衡。</span><a href="blog-list"
			class="n1">网站首页</a><a href="#" class="n2">慢生活</a>
	</h1>
	<div class="newblog left">
		<s:iterator value="#request.life_articles">
			<h2>
				<a title="${title }" href="blog-detail?id=${id }">${title }</a>
			</h2>
			<p class="dateview">
				<span>发布时间：<s:date name="%{time }" format="yyyy-MM-dd"/></span>
				<span>作者：${editor }</span><span>[<a
					href="#" />${category.getCategoryName() }</a>]
				</span>
			</p>
			<figure>
				<a title="${title }" href="blog-detail?id=${id }"><img
					src="${photo }"
					alt="${title }"></a>
			</figure>
			<ul class="nlist">
				<p>${introduce }</p>
				<a href="blog-detail?id=${id }" title="${title }"
					target="_blank" class="readmore">阅读全文>></a>
			</ul>
			<div class="line"></div>
		</s:iterator>
		
		<div class="blank"></div>
	
	</div>
	<aside class="right">
	<div class="rnav">
		<ul>
			<li class="rnav1"><a href="/news/s/" target="_blank">日记</a></li>
			<li class="rnav2"><a href="/news/read/" target="_blank">欣赏</a></li>
			<li class="rnav3"><a href="/news/life/" target="_blank">程序人生</a></li>
			<li class="rnav4"><a href="/news/humor/" target="_blank">经典语录</a></li>
		</ul>
	</div>
	<div class="rnavs">
		<ul>
			<li class="rnav1"><a href="/news/s/" target="_blank">日记</a></li>
			<li class="rnav2"><a href="/news/read/" target="_blank">欣赏</a></li>
			<li class="rnav3"><a href="/news/life/" target="_blank">程序人生</a></li>
			<li class="rnav4"><a href="/news/humor/" target="_blank">经典语录</a></li>
		</ul>
	</div>
	<div class="blank"></div>
	<div class="news">
		<h3>
			<p>
				最新<span>文章</span>
			</p>
		</h3>
		<ul class="rank">
			<li><a href="/news/s/2016-05-20/751.html" title="IP要突破2000+了"
				target="_blank">IP要突破2000+了</a></li>
			<li><a href="/news/s/2015-01-23/741.html" title="【孕期日记】生活本该如此"
				target="_blank">【孕期日记】生活本该如此</a></li>
			<li><a href="/news/life/2014-07-31/725.html"
				title="即便是坑，我也想要拉你入伙！" target="_blank">即便是坑，我也想要拉你入伙！</a></li>
			<li><a href="/news/life/2014-07-10/722.html"
				title="女程序员职业生涯该如何发展？" target="_blank">女程序员职业生涯该如何发展？</a></li>
			<li><a href="/news/read/2014-06-30/700.html" title="每人的生命里都有一只碗"
				target="_blank">每人的生命里都有一只碗</a></li>
			<li><a href="/news/s/2014-06-14/690.html" title="伪球迷看世界杯"
				target="_blank">伪球迷看世界杯</a></li>
			<li><a href="/news/s/2014-04-09/660.html" title="犯错了怎么办？"
				target="_blank">犯错了怎么办？</a></li>
			<li><a href="/news/read/2014-03-29/655.html"
				title="两只蜗牛艰难又浪漫的一吻" target="_blank">两只蜗牛艰难又浪漫的一吻</a></li>
		</ul>
		<h3 class="ph">
			<p>
				点击<span>排行</span>
			</p>
		</h3>
		<ul class="paih">
			<li><a href="/news/s/2015-01-23/741.html" title="【孕期日记】生活本该如此"
				target="_blank">【孕期日记】生活本该如此</a></li>
			<li><a href="/news/s/2016-05-20/751.html" title="IP要突破2000+了"
				target="_blank">IP要突破2000+了</a></li>
			<li><a href="/news/life/2014-07-31/725.html"
				title="即便是坑，我也想要拉你入伙！" target="_blank">即便是坑，我也想要拉你入伙！</a></li>
			<li><a href="/news/life/2014-07-10/722.html"
				title="女程序员职业生涯该如何发展？" target="_blank">女程序员职业生涯该如何发展？</a></li>
			<li><a href="/news/life/2013-09-13/610.html"
				title="一个三十而立的男程序员真实讲述：代码搅乱我的生活" target="_blank">一个三十而立的男程序员真实讲述：代码搅乱我的生活</a></li>
			<li><a href="/news/s/2014-01-08/635.html" title="个人博客从简不繁"
				target="_blank">个人博客从简不繁</a></li>
			<li><a href="/news/read/2014-06-30/700.html" title="每人的生命里都有一只碗"
				target="_blank">每人的生命里都有一只碗</a></li>
			<li><a href="/news/s/2014-04-09/660.html" title="犯错了怎么办？"
				target="_blank">犯错了怎么办？</a></li>
			<li><a href="/news/s/2014-01-04/632.html"
				title="云南之行——初到昆明滇池半日游" target="_blank">云南之行——初到昆明滇池半日游</a></li>
		</ul>
	</div>
	<script type="text/javascript">
		var cpro_id = "u2063915";
		(window["cproStyleApi"] = window["cproStyleApi"] || {})[cpro_id] = {
			at : "3",
			rsi0 : "250",
			rsi1 : "250",
			pat : "6",
			tn : "baiduCustNativeAD",
			rss1 : "#FFFFFF",
			conBW : "1",
			adp : "1",
			ptt : "1",
			ptc : "%E7%8C%9C%E4%BD%A0%E6%84%9F%E5%85%B4%E8%B6%A3",
			ptFS : "14",
			ptFC : "#000000",
			ptBC : "#F2F2F2",
			titFF : "%E5%BE%AE%E8%BD%AF%E9%9B%85%E9%BB%91",
			titFS : "14",
			rss2 : "#000000",
			titSU : "0",
			ptbg : "90",
			piw : "0",
			pih : "0",
			ptp : "0"
		}
	</script> <script src="http://cpro.baidustatic.com/cpro/ui/c.js"
		type="text/javascript"></script> </aside> </article>
	<div id="tbox">
		<a id="gotop" href="javascript:void(0)"></a>
	</div>
	<footer>
	<p>
		Design by Fengche <a href="http://www.miitbeian.gov.cn/"
			target="_blank">赣ICP备11002373号-1</a>
		<script type="text/javascript">
var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://" : " http://");
document.write(unescape("%3Cscript src='" + _bdhmProtocol + "hm.baidu.com/h.js%3Ff655f558c510211e38805f6b586e6b15' type='text/javascript'%3E%3C/script%3E"));
</script>
	</p>
	</footer>
	<script type="text/javascript">
    /*Yangqq图+创建于 2017/2/16*/
    var cpro_id = "u2896052";
</script>
	<script type="text/javascript"
		src="http://cpro.baidustatic.com/cpro/ui/i.js"></script>

</body>
</html>
