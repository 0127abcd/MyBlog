<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!doctype html>
<html>
<head>
	<title>一个站在web前端设计之路的技术员个人博客网站</title>
	<meta name="keywords" content="个人博客" />
	<meta name="description" content="#request.detail.title" />
	<link href="css/new.css" rel="stylesheet">
	<link href="css/base.css" rel="stylesheet">
	
	<link href="css/lrtk.css" rel="stylesheet" />
	
	<script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
	<script type="text/javascript" src="js/js.js"></script>
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
		</nav>
		</nav>
	</header>
	<article class="blogs">
		<h1 class="t_nav">
			<span>您当前的位置：<a href="blog-list">首页</a>&nbsp;>&nbsp;
				<a href="#">${ request.detail.getCategory().getCategoryName()}</a>
			</span>
				<a href="blog-list" class="n1">网站首页</a>
				<a href="#" class="n2">${ request.detail.getCategory().getCategoryName()}</a>
		</h1>
		<div class="index_about">
			<h2 class="c_titile">${ request.detail.title}</h2>
			<p class="box_c">
				<span class="d_time">发布时间：<s:date name="#request.detail.time" format="yyyy-MM-dd"/></span><span>编辑：<a
					href='mailto:850547820@qq.com'>${ request.detail.editor}</a></span><span>阅读（${ request.detail.reader}）
				</span>
			</p>
			<ul class="infos">
				${ request.detail.content}
			</ul>
			<div class="keybq">
				<p>
					<span>关键字词</span>：${ request.detail.keyword}
				</p>
			</div>

			<div class="nextinfo">
				<s:if test="%{#request.detail.id > #request.minArt }">
					<p>
						上一篇：<a href="blog-detail?id=${ request.previewId}">${request.previewTitle }</a>
					</p>
				</s:if>
				<s:if test="%{#request.detail.id < #request.maxArt }">
					<p>
						下一篇：<a href="blog-detail?id=${ request.nextviewId}">${request.nextviewTitle }</a>
					</p>
				</s:if>
			</div>
			<div class="otherlink">
				<h2>相关文章</h2>
				<ul>
					<li><a href="#"
						title=" 2014年度优秀个人博客排名公布"> 2017年度优秀个人博客排名公布</a></li>
					<li><a href="#"
						title="2014年度优秀个人博客评选活动">2017年度优秀个人博客评选活动</a></li>
					<li><a href="#"
						title="分享我的个人博客访问量如何做到IP从10到600的(图文)">分享我的个人博客访问量如何做到IP从10到600的(图文)</a></li>
					<li><a href="#"
						title="个人博客模板《世界杯来袭》">个人博客模板《世界杯来袭》</a></li>
					<li><a href="#"
						title="黑色Html5个人博客模板主题《如影随形》">黑色Html5个人博客模板主题《如影随形》</a></li>
					<li><a href="#"
						title=" 个人博客模板（2014草根寻梦）"> 个人博客模板（2017草根寻梦）</a></li>
					<li><a href="#"
						title="响应式个人博客模板（蓝色清新）">响应式个人博客模板（蓝色清新）</a></li>
					<li><a href="#"
						title="我的个人博客之——阿里云空间选择">我的个人博客之——阿里云空间选择</a></li>
					<li><a href="#" title="个人博客从简不繁">个人博客从简不繁</a></li>
					<li><a href="#"
						title="仿新浪博客风格·梅——古典个人博客模板">仿新浪博客风格·梅——古典个人博客模板</a></li>
				</ul>
			</div>
			<div class="blank"></div>
		</div>
		<aside class="right">

			<div class="rnav">
				<h2>栏目导航</h2>
				<ul>

					<li><a href="#">心得笔记</a></li>

					<li><a href="http://www.ip3q.com/">IP查询</a></li>

					<li><a href="。/css">CSS3|Html5</a></li>

					<li><a href="#">网站建设</a></li>

					<li><a href="#">JS经典实例</a></li>

					<li><a href="#">推荐工具</a></li>
				</ul>
			</div>
			<div class="rnavs">
				<h2>栏目导航</h2>
				<ul>

					<li><a href="#">心得笔记</a></li>

					<li><a href="http://www.ip3q.com/">IP查询</a></li>

					<li><a href="#">CSS3|Html5</a></li>

					<li><a href="#">网站建设</a></li>

					<li><a href="#">JS经典实例</a></li>

					<li><a href="#">推荐工具</a></li>
				</ul>
			</div>
			<div class="blank"></div>
			<div class="news">
				<h3>
					<p>
						栏目<span>最新</span>
					</p>
				</h3>
				<ul class="rank">
					<li><a href="#"
						title="【郑重申明】本站只提供静态模板下载！" target="_blank">【郑重申明】本站只提供静态模板下载！</a></li>
					<li><a href="#"
						title="【匆匆那些年】总结个人博客经历的这四年…" target="_blank">【匆匆那些年】总结个人博客经历的这四年…</a></li>
					<li><a href="#"
						title="分享我的个人博客访问量如何做到IP从10到600的(图文)" target="_blank">分享我的个人博客访问量如何做到IP从10到600的(图文)</a></li>
					<li><a href="#"
						title="帝国cms常用标签调用方法总结（不得不收藏哦）" target="_blank">帝国cms常用标签调用方法总结（不得不收藏哦）</a></li>
					<li><a href="#"
						title="使用ASPCMS建站网站被黑" target="_blank">使用ASPCMS建站网站被黑</a></li>
					<li><a href="#"
						title="IE6到底哪里不好？你还继续用IE6吗？" target="_blank">IE6到底哪里不好？你还继续用IE6吗？</a></li>
					<li><a href="#" title="css技巧以及经验总结"
						target="_blank">css技巧以及经验总结</a></li>
					<li><a href="#"
						title="IE常见bugs以及解决方案列表" target="_blank">IE常见bugs以及解决方案列表</a></li>
				</ul>
				<h3 class="ph">
					<p>
						点击<span>排行</span>
					</p>
				</h3>
				<ul class="paih">
					<li><a href="#"
						title="如果要学习web前端开发，需要学习什么？" target="_blank">如果要学习web前端开发，需要学习什么？</a></li>
					<li><a href="#"
						title="【匆匆那些年】总结个人博客经历的这四年…" target="_blank">【匆匆那些年】总结个人博客经历的这四年…</a></li>
					<li><a href="#"
						title="分享我的个人博客访问量如何做到IP从10到600的(图文)" target="_blank">分享我的个人博客访问量如何做到IP从10到600的(图文)</a></li>
					<li><a href="#"
						title="帝国cms常用标签调用方法总结（不得不收藏哦）" target="_blank">帝国cms常用标签调用方法总结（不得不收藏哦）</a></li>
					<li><a href="#"
						title="【郑重申明】本站只提供静态模板下载！" target="_blank">【郑重申明】本站只提供静态模板下载！</a></li>
				</ul>
			</div>
			<div class="bdsharebuttonbox">
				<a href="#" class="bds_more" data-cmd="more"></a><a href="#"
					class="bds_qzone" data-cmd="qzone" title="分享到QQ空间"></a><a href="#"
					class="bds_tsina" data-cmd="tsina" title="分享到新浪微博"></a><a href="#"
					class="bds_tqq" data-cmd="tqq" title="分享到腾讯微博"></a><a href="#"
					class="bds_renren" data-cmd="renren" title="分享到人人网"></a><a href="#"
					class="bds_weixin" data-cmd="weixin" title="分享到微信"></a>
			</div>
			<script>
				window._bd_share_config = {
					"common" : {
						"bdSnsKey" : {},
						"bdText" : "",
						"bdMini" : "2",
						"bdMiniList" : false,
						"bdPic" : "",
						"bdStyle" : "1",
						"bdSize" : "32"
					},
					"share" : {}
				};
				with (document)
					0[(getElementsByTagName('head')[0] || body)
							.appendChild(createElement('script')).src = 'http://bdimg.share.baidu.com/static/api/js/share.js?v=89860593.js?cdnversion='
							+ ~(-new Date() / 36e5)];
			</script>
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
			</script>
			<script src="http://cpro.baidustatic.com/cpro/ui/c.js"
				type="text/javascript"></script>

			<div class="blank"></div>

		</aside>
	</article>
	<div id="tbox">
		<a id="gotop"
			href="javascript:void(0)" style="display: block;"></a>
	</div>
	<footer>
		<p>
			Design by Fengche <a href="http://www.miitbeian.gov.cn/"
				target="_blank">赣ICP备11002373号-1</a>
			<script type="text/javascript">
				var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://"
						: " http://");
				document
						.write(unescape("%3Cscript src='"
								+ _bdhmProtocol
								+ "hm.baidu.com/h.js%3Ff655f558c510211e38805f6b586e6b15' type='text/javascript'%3E%3C/script%3E"));
			</script>
		</p>
	</footer>
	<script type="text/javascript">
    /*Yangqq图+创建*/
    var cpro_id = "u2896052";
</script>
	<script type="text/javascript"
		src="http://cpro.baidustatic.com/cpro/ui/i.js"></script>

</body>
</html>
<script src="/e/public/onclick/?enews=donews&classid=8&id=740"></script>