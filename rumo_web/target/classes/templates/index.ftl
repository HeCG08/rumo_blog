<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:th="http://www.thymeleaf.org"
      xmlns:sec="http://www.thymeleaf.org/thymeleaf-extras-springsecurity3">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1">
<meta name="renderer" content="webkit">
<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
<meta http-equiv="Cache-Control" content="no-transform">
<meta http-equiv="Cache-Control" content="no-siteapp">
<title>濡沫杂记</title>
<meta name="keywords" content="濡沫杂记">
<meta name="description" content="濡沫杂记">
<link rel="shortcut icon" href="res\pic\rumoss__48X48.ico">
<link rel="apple-touch-icon" href="res\pic\rumoss__48X48.ico">
<link rel="stylesheet" href="usr\themes\lpisme\assets\prism.css">
<link rel="stylesheet" href="usr\themes\lpisme\assets\style.css">
<link rel="stylesheet" href="usr\themes\lpisme\style.css">
</head>
    <body class="null" gtools_scp_screen_capture_injected="true">

        <!-- 引入header部分开始 -->
        <#include "header.ftl" encoding="UTF-8" parse=true>
        <!-- 引入header部分结束 -->

        <!-- 引入nav部分开始 -->
        <#include "nav.ftl" encoding="UTF-8" parse=true>
        <!-- 引入nav部分结束 -->

        <div class="container">
            <div class="index-wrapper">
                <div class="index-posts  cf">

                 <#list articles as item>
                    <article class="index-post  cf" itemscope="" itemtype="http://schema.org/BlogPosting">
                        <div class="index-post-inner">
                            <div class="index-post-header cf">
                                <div class="index-post-date" itemprop="datePublished">
                                    ${item.datePublished}
                                </div>
                                <div class="index-post-title" itemprop="name headline">
                                    <a href="archives\144\index.htm" title="${item.title}" itemtype="url">${item.title}</a>
                                </div>
                            </div>
                            <div class="index-post-content" itemprop="articleBody">
                                ${item.articleBody}
                            </div>
                            <div class="index-post-thumb">
                                <a class="index-post-cover" href="archives\144\index.htm">
                                    <img class="thumb" src="usr\uploads\2018\10\3994839060.jpg?imageView2/4/w/600/h/100%">
                                </a>
                            </div>
                            <div class="index-post-meta cf">
                                <div class="index-post-button"><a href="archives\144\index.htm"> Read more </a>
                                </div>
                                <div class="index-post-button index-post-comments">
                                    <a href="archives\144\index.htm#comments"> No comment </a>
                                </div>
                                <div class="index-post-category">
                                    <a href="category\NoSQL\index.htm">${item.category}</a>
                                </div>
                            </div>
                        </div>
                    </article>
                 </#list>

                </div>
                <div class="index-pagenav  cf">
                    <div class="page-nav">
                        <div class="page-prev left" title="上一页"></div>
                        <div class="page-next right" title="下一页"><a class="next" title="" href="page\2\index.htm">Next <i class="icon icon-right"></i></a></div>
                    </div>
                </div>
            </div>
        </div>


    <!-- 引入footer部分开始 -->
    <#include "footer.ftl" encoding="UTF-8" parse=true>
    <!-- 引入footer部分结束 -->
		
	<script src="usr\themes\lpisme\js\functions.js"></script>
	<script src="usr\themes\lpisme\js\fastclick.js"></script>
	<script src="usr\themes\lpisme\js\prism.js"></script>

	</body>
</html>