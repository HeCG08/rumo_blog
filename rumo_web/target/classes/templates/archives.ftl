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
<title>文章归档 - 濡沫杂记</title>
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
			<div class="wrapper main" role="main">
			    <article class="post" itemscope="" itemtype="http://schema.org/BlogPosting">
			        <div class="post-title no-meta" itemprop="name headline">文章归档</div>
			        <div class="post-content" itemprop="articleBody">
			            <h4>文章归档：</h4><br>
                    <div class="car-container car-collapse">
                        <a href="#" class="car-toggler">展开所有月份</a>
                        <ul class="car-list">
                            <#list months as month>
                                <li><span class="car-yearmonth">${month.desc}<span title="Post Count">(篇目:${month.count})</span></span>
                                    <ul class='car-monthlisting'>
                                        <#list month.articles as article>
                                            <li>${article.day}: <a target="_blank" href="${article.href}">${article.title}</a> <span title="Comment Count">(评论:${article.count})</span></li>
                                        </#list>
                                    </ul>
                                </li>
                            </#list>
                        </ul>
                    </div>

<br><br><br><br><br><br>

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

	<style type="text/css">.car-collapse .car-yearmonth { cursor: s-resize; } </style>
	<script type='text/javascript' src='usr\plugins\JustArchives\js\jquery-1.4.3.min.js'></script>
	<script type="text/javascript">
		/* <![CDATA[ */
			jQuery(document).ready(function() {
				jQuery('.car-collapse').find('.car-monthlisting').hide();
				jQuery('.car-collapse').find('.car-monthlisting:first').show();
				jQuery('.car-collapse').find('.car-yearmonth').click(function() {
					jQuery(this).next('ul').slideToggle('fast');
				});
				jQuery('.car-collapse').find('.car-toggler').click(function() {
					if ( '展开所有月份' == jQuery(this).text() ) {
						jQuery(this).parent('.car-container').find('.car-monthlisting').show();
						jQuery(this).text('折叠所有月份');
					}
					else {
						jQuery(this).parent('.car-container').find('.car-monthlisting').hide();
						jQuery(this).text('展开所有月份');
					}
					return false;
				});
			});
		/* ]]> */
	</script>

<script type="text/javascript">
</script>
		
	<script src="usr\themes\lpisme\js\functions.js"></script>
	
	<script src="usr\themes\lpisme\js\fastclick.js"></script>
	<script src="usr\themes\lpisme\js\prism.js"></script>
	
	</body>
</html>