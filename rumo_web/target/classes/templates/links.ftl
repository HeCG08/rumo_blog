<#assign base = request.contextPath />
<#assign pageTitle = "基友们 - 濡沫杂记" />
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
                    <div class="post-title no-meta" itemprop="name headline">基友们</div>
                    <div class="post-content" itemprop="articleBody">
                        <p><br></p>
                        <ul id="friend-link-main" style="list-style:none;">
							<#list links as link>
								<li><a href="${link.url}/?from=http://www.rumoss.cn" title="${link.desc}" target="_blank">${link.siteName}</a></li>
							</#list>
                        </ul>
                        <br><br>
                        <blockquote>申请友链请在下面评论&nbsp;or&nbsp;发邮件至我的邮箱&nbsp;<a href="mailto:${siteMail}">${siteMailDisplay}</a></blockquote>
                        <br>
                        <br>
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