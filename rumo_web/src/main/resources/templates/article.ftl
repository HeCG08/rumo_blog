<#assign base = request.contextPath />
<#assign pageTitle = "文章xxx - 濡沫杂记" />
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:th="http://www.thymeleaf.org"
      xmlns:sec="http://www.thymeleaf.org/thymeleaf-extras-springsecurity3">
<head>
    <!-- 引入meta部分开始 -->
    <#include "meta.ftl" encoding="UTF-8" parse=true>
    <!-- 引入meta部分结束 -->
</head>
    <body class="null" gtools_scp_screen_capture_injected="true">

        <!-- 引入header部分开始 -->
        <#include "header.ftl" encoding="UTF-8" parse=true>
        <!-- 引入header部分结束 -->

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

	</body>
</html>