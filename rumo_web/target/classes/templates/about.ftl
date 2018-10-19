<#assign base = request.contextPath />
<#assign pageTitle = "关于小站 - 濡沫杂记" />
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
                    <div class="post-title no-meta" itemprop="name headline">关于小站</div>
                    <div class="post-content" itemprop="articleBody">
                        <h2>关于Me</h2>
                        <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;昵称&nbsp;->>&nbsp;Jacktang，毕业One年的屌丝一枚，性别男，爱好看(买)书&nbsp;...<br>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;毕业于&nbsp;HNU&nbsp;。性格有点孤僻，一只特立独行的渚，有时傻逼，想成为逗比&nbsp;OvO<br>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;半吊子音乐发烧友，看看网易云音乐评论
                        </p>
                        <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;学习方向: Java,&nbsp;&nbsp;&nbsp;Spring,&nbsp;&nbsp;&nbsp;微服务,&nbsp;&nbsp;&nbsp;Spring Cloud,&nbsp;&nbsp;&nbsp;Docker,&nbsp;&nbsp;&nbsp;RocketMQ,&nbsp;&nbsp;&nbsp;Dubbo&nbsp;&nbsp;&nbsp;...&nbsp;&nbsp;&nbsp;(革命尚未成功,同志仍需努力)<br>
                        <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;爱生活，爱Coding~ 目前在小厂搬砖，想去大厂!<br><br>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Mail：<a href="mailto:i@9f0.net">i(at)9f0.net</a><br>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;OsChina：<a target="_blank" href="https://my.oschina.net/javamaster">Jacktanger</a><br>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Gitee： <a target="_blank" href="https://gitee.com/tangijia/">Jacktange</a><br>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Github： <a target="_blank" href="https://github.com/Jacktange">Jacktange</a><br>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dockerhub： <a target="_blank" href="https://hub.docker.com/u/tangijia/">tangijia</a> or <a href="#">'docker search tangijia'</a>
                        <div style="display:none;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;云栖社区专家认证：<a target="_blank" href="https://yq.aliyun.com/u/javamaster">jacktanger</a></div>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<div style="display:none;">交流群：<a target="_blank" href="//shang.qq.com/wpa/qunwpa?idkey=6b24db2f08d2de9f90f6ebd4670fed93ecc436667fc6d8bb292893130b72d09e">604356524</a>(菜鸟成长)</div>
                        <small style="display:none;"><blockquote><a href="http://www.rumoss.cn/index.php/links.html" target="_blank">欢迎友链!</a>&nbsp;&nbsp;&nbsp;博客：濡沫杂记
                            &nbsp;&nbsp;&nbsp;简介：相濡以沫，不如相忘于江湖。
                            &nbsp;&nbsp;&nbsp;网址：http://www.rumoss.cn
                        </blockquote></small>
                        <p>
                        <h2>关于Blog</h2>
                        <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;第一篇博客写于<a target="_blank" href="http://blog.csdn.net/u013696827/article/details/46240507">&nbsp;CSDN&nbsp;</a>&nbsp;2015-05-29 20:47，正值大二，可能当时沉迷于学习，无法自拔，不了了之&nbsp;...<br><p>
                        <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;两年之后，通过校招进入&nbsp;ZTEsoft&nbsp;，实习的第一个月内，在开发的过程中遇到一些问题，以前或多或少遇到过，但却没有记录下来，重复着之前的劳动解决问题，于是下定决心开始写博客。因为喜欢开源中国的风格，便迁移到开源中国博客上&nbsp;-&nbsp;<a target="_blank" href="https://my.oschina.net/javamaster">&nbsp;Jacktanger&nbsp;</a>，可能是人品好的缘故，有 8 篇(含 2 篇翻译)被开源中国官方推荐。到实习快1年之时，要开始准备毕设和答辩事宜，于是再一次中断了一个月&nbsp;...&nbsp&nbsp两年来，不知不觉，已经码了5oooo来字。<br><p>
                        <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;目前，已经告别学生时代，开始全心投入工作，希望能够坚持下去，记录，为成为更好的自己！<p>
                        <h2>关于Site</h2>
                        <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;本站名：<a href="index.htm">&nbsp;rumoss&nbsp;</a>，是由一个非常好的妹纸的网名+真实名组成，她热爱音乐、读书、运动，她说过，为成为更好的自己。<p>
                        <br>
                        <h2>关于Copyright</h2>
                        <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;博客内的所有原创内容（包括但不限于文章、图像等）除特别声明外均采用<a target="_blank" rel="license" href="http://creativecommons.org/licenses/by-nc-sa/4.0/">知识共享署名-非商业性使用-相同方式共享 4.0 国际许可协议</a>，任何人都可以自由传播，但不得用于商用且必须署名并以相同方式分享。<br>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;本站可能有部分内容转载于网络，有出处的已在文后署名作者并附加原文链接，出处已不可寻的皆已标注来源于网络，若您认为本博客有部分内容侵犯了您的版权，请<a href="mailto:i@9f0.net">&nbsp;邮件&nbsp;</a>告知，我将认真处理。</p>
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