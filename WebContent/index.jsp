<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <link href="./css/base.css" rel="stylesheet">
    <link href="./css/index.css" rel="stylesheet">
    <meta charset="UTF-8">
    <title>MyBlog</title>
    <%
		pageContext.setAttribute("APP_PATH", request.getContextPath());
	%>
</head>
<body>
    <header>
        <div id="logo">
            <a href="#"></a>
        </div>
        <nav class="topnav">
            <a  href="#">
                <span>首页</span>
                <span class="en">Portal</span>
            </a>
            <a  href="blog-life">
                <span>慢生活</span>
                <span class="en">Life</span>
            </a>
            <a  href="talk-list">
                <span>碎言碎语</span>
                <span class="en">Doing</span>
            </a>
            <a  href="#">
                <span>学无止境</span>
                <span class="en">Learn</span>
            </a>
            <a  href="#">
                <span>关于我</span>
                <span class="en">Me</span>
            </a>
        </nav>
    </header>

    <div class="banner">
        <section class="box">
            <ul class="texts">
                <p>我们不停的翻弄着回忆</p>
                <p>却再也找不回那时的自己</p>
                <p>红尘一梦，不再追寻</p>
            </ul>
            <div class="avatar">
                <a href="#">
                    <span>风车</span>
                </a>
            </div>
        </section>
    </div>

    <article>
        <h2 class="title_tj">
            <p>文章<span>推荐</span></p>
        </h2>
        <div class="bloglist left">
			<s:iterator value="#request.articles">
	        	<h3><a href="blog-detail?id=${id }" >${title }</a></h3>
	            <figure><img src="${photo }" alt="${title }"></figure>
	            <ul>
	                <p>${introduce }</p>
	                <a title="${title }" href="blog-detail?id=${id }"  target="_blank" class="readmore">阅读全文>></a>
	            </ul>
	            <p class="dateview">
	            	<span><s:date name="%{time }" format="yyyy-MM-dd"/></span>
	            	<span>作者：${editor }</span>
		            <span>个人博客：[
		            	<a href="#">
		            		<!--<s:if test="%{category.getId() ==1 }">
		            			心得笔记
		            		</s:if>
		            		<s:if test="%{category.getId() ==2 }">
		            			网站建设
		            		</s:if>-->
		            		${category.getCategoryName() }
		            	</a>]
		            </span>
	            </p>
			</s:iterator>
		</div>
        <aside class="right">
            <div class="weather"></div>
            <div class="news">
                <h3>
                    <p>最新<span>文章</span></p>
                </h3>
               <ul class="rank">
                    <li><a href="#" title="IP要突破2000+了" target="_blank">IP要突破2000+了</a></li><li><a href="#" title="帝国cms首页、自定义页面如何实现分页" target="_blank">帝国cms首页、自定义页面如何实现分页</a></li><li><a href="#" title="【已评选】给我模板PSD源文件，我给你设计HTML！" target="_blank">【已评选】给我模板PSD源文件，我给你设计HTML！</a></li><li><a href="#" title="【郑重申明】本站只提供静态模板下载！" target="_blank">【郑重申明】本站只提供静态模板下载！</a></li><li><a href="#" title="【孕期日记】生活本该如此" target="_blank">【孕期日记】生活本该如此</a></li><li><a href="#" title="【匆匆那些年】总结个人博客经历的这四年…" target="_blank">【匆匆那些年】总结个人博客经历的这四年…</a></li><li><a href="#" title=" 2014年度优秀个人博客排名公布" target="_blank"> 2014年度优秀个人博客排名公布</a></li><li><a href="#" title="2014年度优秀个人博客评选活动" target="_blank">2014年度优秀个人博客评选活动</a></li><li><a href="#" title="使用CSS3制作文字、图片倒影" target="_blank">使用CSS3制作文字、图片倒影</a></li><li><a href="#" title="【分享】css3侧边栏导航不同方向划出效果" target="_blank">【分享】css3侧边栏导航不同方向划出效果</a></li><li><a href="#" title="分享我的个人博客访问量如何做到IP从10到600的(图文)" target="_blank">分享我的个人博客访问量如何做到IP从10到600的(图文)</a></li><li><a href="#" title="帝国cms常用标签调用方法总结（不得不收藏哦）" target="_blank">帝国cms常用标签调用方法总结（不得不收藏哦）</a></li>    </ul>
                <h3 class="ph">
                    <p>模板<span>排行</span></p>
                </h3>
                <ul class="paih">
                    <li><a href="#" title="【活动作品】柠檬绿兔小白个人博客模板" target="_blank">【活动作品】柠檬绿兔小白个人博客模板</a></li><li><a href="#" title="情侣博客模板系列之《回忆》Html" target="_blank">情侣博客模板系列之《回忆》Html</a></li><li><a href="#" title="黑色Html5个人博客模板主题《如影随形》" target="_blank">黑色Html5个人博客模板主题《如影随形》</a></li><li><a href="#" title="个人博客《草根寻梦》—手机版模板" target="_blank">个人博客《草根寻梦》—手机版模板</a></li><li><a href="#" title=" 个人博客模板（2014草根寻梦）" target="_blank"> 个人博客模板（2014草根寻梦）</a></li><li><a href="#" title="情侣博客模板系列之《初夏》Html" target="_blank">情侣博客模板系列之《初夏》Html</a></li><li><a href="#" title="响应式个人博客模板（蓝色清新）" target="_blank">响应式个人博客模板（蓝色清新）</a></li><li><a href="#" title="个人博客模板《世界杯来袭》" target="_blank">个人博客模板《世界杯来袭》</a></li><li><a href="#" title="情侣博客模板系列之《回忆》PSD" target="_blank">情侣博客模板系列之《回忆》PSD</a></li>
                </ul>
                <h3 class="links">
                    <p>友情<span>链接</span></p>
                </h3>
                <ul class="website">
                    <li><a href="http://bbs.3dst.com/" target="_blank">三维模型下载</a></li>
                </ul>


                <div class="bdsharebuttonbox"><a href="#" class="bds_more" data-cmd="more"></a><a href="#" class="bds_qzone" data-cmd="qzone" title="分享到QQ空间"></a><a href="#" class="bds_tsina" data-cmd="tsina" title="分享到新浪微博"></a><a href="#" class="bds_tqq" data-cmd="tqq" title="分享到腾讯微博"></a><a href="#" class="bds_renren" data-cmd="renren" title="分享到人人网"></a><a href="#" class="bds_weixin" data-cmd="weixin" title="分享到微信"></a></div>
                <script>
                	window._bd_share_config={"common":{"bdSnsKey":{},"bdText":"","bdMini":"2","bdMiniList":false,"bdPic":"","bdStyle":"1","bdSize":"32"},"share":{}};with(document)0[(getElementsByTagName('head')[0]||body).appendChild(createElement('script')).src='http://bdimg.share.baidu.com/static/api/js/share.js?v=89860593.js?cdnversion='+~(-new Date()/36e5)];
                </script>
                	<div class="guanzhu">扫描二维码关注<span>风车博客</span>官方微信账号</div>
                <a href="/" class="weixin"></a>
            </div>
        </aside>
    </article>
    <footer>
        <p>Design by Fengche <a href="#" target="_blank">赣ICP备11002373号-1</a>
        </script></p>
    </footer>

</body>
</html>