<!-- 顶部Header部分 -->
<div class="header">
    <div class="logo left">
        <a href="${logo_url}">${logo_title}</a>
    </div>
    <div class="slogan">&nbsp;<img src="${base}\res\pic\rumoss__48X48.ico">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <span class="description">${motto_desc}&nbsp;&nbsp;&nbsp;</span>
    </div>
    <div class="buttons">
        <div id="search-toggle"><i class="icon icon-search"></i></div>
        <div id="menu-toggle"><i class="icon icon-menu"></i></div>
    </div>
</div>
<!-- 导航栏部分 -->
<form id="search" method="post" action="/" role="search">
    <input type="text" class="input" name="s" required="true" placeholder="...搜索" dir="rtl">
</form>
<nav class="nav">
    <div class="nav-wrapper right">
        <a href="${base}\archives" title="文章归档">文章归档</a>
        <a href="${base}\timeline" title="时间线">时间线</a>
        <!-- <a href="books.htm" title="读书贫道">读书贫道</a>
        <a href="links.htm" title="友链">友链</a>-->
        <a href="${base}\about" title="关于小站">关于小站</a>
    </div>
</nav>