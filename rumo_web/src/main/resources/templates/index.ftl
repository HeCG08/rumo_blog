<#assign base = request.contextPath />
<#assign pageTitle = "濡沫杂记" />
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
                                    <a href="${base}\article\${item.cid}" title="${item.title}" itemtype="url">${item.title}</a>
                                </div>
                            </div>
                            <div class="index-post-content" itemprop="articleBody">
                                ${item.articleBody}
                            </div>
                            <div class="index-post-thumb">
                                <a class="index-post-cover" href="${base}\article\${item.cid}">
                                    <img class="thumb" src="usr\uploads\2018\10\3994839060.jpg?imageView2/4/w/600/h/100%">
                                </a>
                            </div>
                            <div class="index-post-meta cf">
                                <div class="index-post-button"><a href="${base}\article\${item.cid}"> Read more </a>
                                </div>
                                <div class="index-post-button index-post-comments">
                                    <a href="${base}\article\${item.cid}#comments"> ${item.commentsNum} comment </a>
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

	</body>
</html>