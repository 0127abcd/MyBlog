<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!doctype html>
<html>
<head>
<meta charset="gb2312">
<title>碎言碎语 - 一个站在web前端设计之路的技术员个人博客网站</title>
<meta name="keywords" content="个人博客,个人网站,个人博客模板,个人网站模板" />
<meta name="description"
	content="杨青个人博客网站,一个站在web前段设计之路的技术员个人博客网站" />
<link href="./css/base.css" rel="stylesheet">
<link href="./css/mood.css" rel="stylesheet">
<!--[if lt IE 9]>
<script src="/skin/2014/js/modernizr.js"></script>
<![endif]-->
<!-- 返回顶部调用 begin -->
<link href="./css/lrtk.css" rel="stylesheet" />
<script type="text/javascript" src="./js/jquery-3.1.1.min.js"></script>
<script type="text/javascript" src="./js.js"></script>
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
		</nav>
	</header>
	<div class="moodlist">
		<h1 class="t_nav">
			<span>删删写写，回回忆忆，虽无法行云流水，却也可碎言碎语。</span><a href="blog-list" class="n1">网站首页</a><a
				href="talk-list" class="n2">碎言碎语</a>
		</h1>
		<div class="bloglist">
			<s:iterator value="#request.talks">
				<ul class="arrow_box">
					<div class="sy">
						<p>
							<s:if test="%{HasImage == 1}">
								<img
									src="${image }"
									alt="${title }" />
							</s:if>
								${content }
						</p>
					</div>
					<span class="dateview"><s:date name="%{date }" format="yyyy-MM-dd"/></span>
				</ul>
			</s:iterator>
		</div>
		<!-- <div class="page">
			<a title="Total record"><b>168</b> </a><b>1</b><a
				href="/newstalk/index_2.html">2</a><a href="/newstalk/index_3.html">3</a><a
				href="/newstalk/index_4.html">4</a><a href="/newstalk/index_5.html">5</a><a
				href="/newstalk/index_6.html">6</a><a href="/newstalk/index_7.html">7</a><a
				href="/newstalk/index_2.html">></a><a href="/newstalk/index_7.html">>></a>
		</div> -->
	</div>
	<div id="tbox">
		<a id="gotop"
			href="javascript:void(0)"></a>
	</div>
	<footer>
		<p>
			Design by FengChe <a href="http://www.miitbeian.gov.cn/"
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
