<#assign base = request.contextPath />
<#assign pageTitle = "时间线 - 濡沫杂记" />
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:th="http://www.thymeleaf.org"
      xmlns:sec="http://www.thymeleaf.org/thymeleaf-extras-springsecurity3">
<head>
    <!-- 引入meta部分开始 -->
    <#include "meta.ftl" encoding="UTF-8" parse=true>
    <!-- 引入meta部分结束 -->
    <link rel="stylesheet" href="${base}\timeline\css\timeline.css">
</head>
    <body class="null" gtools_scp_screen_capture_injected="true">

        <!-- 引入header部分开始 -->
        <#include "header.ftl" encoding="UTF-8" parse=true>
        <!-- 引入header部分结束 -->

        <div class="container">

            <div class="wrapper main" role="main">
                <article class="post" itemscope="" itemtype="http://schema.org/BlogPosting">
                    <div class="post-title no-meta" itemprop="name headline">时间线</div>

                    <div class="content">

                        <div class="wrapper2">
                            <div class="main">
                                <div class="year">

                                    <div class="list">
                                        <ul>
                                            <#list timelines as timeline>
                                                <li class="cls">
                                                    <p class="date">${timeline.date}</p>
                                                    <p class="intro">${timeline.intro}</p>
                                                    <p class="version">v0.1</p>
                                                    <div class="more">
                                                        <p>${timeline.more}</p>
                                                    </div>
                                                </li>
                                            </#list>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>

                </article>



        </div>
    <script type="text/javascript" src="${base}\usr\plugins\JustArchives\js\jquery-1.4.3.min.js"></script>
    <script type="text/javascript">
        $(".main .year .list").each(function(e, target){
            var $target=$(target),
                    $ul = $target.find("ul");
            $target.height($ul.outerHeight()), $ul.css("position", "absolute");
        });
        $(".main .year>h2>a").click(function(e){
            e.preventDefault();
            $(this).parents(".year").toggleClass("close");
        });
    </script>

    <!-- 引入footer部分开始 -->
    <#include "footer.ftl" encoding="UTF-8" parse=true>
    <!-- 引入footer部分结束 -->

	</body>
</html>