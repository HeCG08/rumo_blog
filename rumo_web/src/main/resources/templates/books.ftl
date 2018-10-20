<#assign base = request.contextPath />
<#assign pageTitle = "读书贫道 - 濡沫杂记" />
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
                    <div class="post-title no-meta" itemprop="name headline">读书贫道</div>
                    <div class="post-content" itemprop="articleBody">
                        <ul style="list-style:none;">
                            <br>
                            <#list readings as reading>
                                <h5>${reading.month}</h5>
                                <#list reading.books as book>
                                <li><a href="${book.doubanUrl}" title="" target="_blank">${book.title}</a></li>
                                <small><blockquote>"${book.quote}"</blockquote></small>
                                </#list>
                                 <br>
                            </#list>
                        </ul>
                        <br><br><br><br>
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