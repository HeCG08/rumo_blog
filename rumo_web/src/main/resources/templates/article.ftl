<#assign base = request.contextPath />
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
    <link rel="shortcut icon" href="${base}\res\pic\rumoss__48X48.ico">
    <link rel="apple-touch-icon" href="${base}\res\pic\rumoss__48X48.ico">
    <link rel="stylesheet" href="${base}\usr\themes\lpisme\assets\prism.css">
    <link rel="stylesheet" href="${base}\usr\themes\lpisme\assets\style.css">
    <link rel="stylesheet" href="${base}\usr\themes\lpisme\style.css">
</head>
<body class="null" gtools_scp_screen_capture_injected="true">

<!-- 引入header部分开始 -->
        <#include "header.ftl" encoding="UTF-8" parse=true>
<!-- 引入header部分结束 -->

<!-- 引入nav部分开始 -->
        <#include "nav.ftl" encoding="UTF-8" parse=true>
<!-- 引入nav部分结束 -->

<div class="container">
    <div class="wrapper main" role="main">

        <article class="post" itemscope="" itemtype="http://schema.org/BlogPosting">
            <h1 class="post-title" itemprop="name headline"><a href="index.htm" itemtype="url">${article.title}</a></h1>
            <div class="post-meta">
                <span datetime="${article.datePublished}" itemprop="datePublished">${article.datePublished}</span>
            </div>
            <div class="post-content cf" itemprop="articleBody">
				${article.articleBody}
                <div class="post-copyright">
                    <div class="alert" role="alert">最后编辑时间为: ${article.dateModified}<br>本文由 <a href="..\..\author\1\index.htm">Jacktanger</a> 创作，采用 <a target="_blank" href="https://creativecommons.org/licenses/by/4.0/" rel="external nofollow">知识共享署名 4.0</a> 国际许可协议进行许可<br>可自由转载、引用，但需署名作者且注明文章出处</div>
                </div>
                <div class="post-tags"><a href="..\..\tag\NoSQL\index.htm">${article.category}</a></div>
            </div>
        </article>

        <!-- 引入comments部分开始 -->
    <#include "comments.ftl" encoding="UTF-8" parse=true>
        <!-- 引入comments部分结束 -->

    </div>
</div>

	<!-- 引入footer部分开始 -->
    <#include "footer.ftl" encoding="UTF-8" parse=true>
	<!-- 引入footer部分结束 -->

	<script src="${base}\usr\themes\lpisme\js\functions.js"></script>
	<script src="${base}\usr\themes\lpisme\js\fastclick.js"></script>
	<script src="${base}\usr\themes\lpisme\js\prism.js"></script>

	</body>
</html>