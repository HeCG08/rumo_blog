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
<title>时间轴 - 濡沫杂记</title>
<meta name="keywords" content="濡沫杂记">
<meta name="description" content="濡沫杂记">
<link rel="shortcut icon" href="${base}\res\pic\rumoss__48X48.ico">
<link rel="apple-touch-icon" href="${base}\res\pic\rumoss__48X48.ico">
<link rel="stylesheet" href="${base}\usr\themes\lpisme\assets\prism.css">
<link rel="stylesheet" href="${base}\usr\themes\lpisme\assets\style.css">
<link rel="stylesheet" href="${base}\usr\themes\lpisme\style.css">
<link rel="stylesheet" href="${base}\timeline\css\timeline.css">
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


    <!-- 引入footer部分开始 -->
    <#include "footer.ftl" encoding="UTF-8" parse=true>
    <!-- 引入footer部分结束 -->

    <script type="text/javascript" src="http://apps.bdimg.com/libs/jquery/2.1.1/jquery.min.js"></script>
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

	</body>
</html>