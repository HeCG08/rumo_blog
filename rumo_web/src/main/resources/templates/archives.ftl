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
<script type="text/javascript">
(function () {
    var event = document.addEventListener ? {
        add: 'addEventListener',
        focus: 'focus',
        load: 'DOMContentLoaded'
    } : {
        add: 'attachEvent',
        focus: 'onfocus',
        load: 'onload'
    };

    document[event.add](event.load, function () {
        var r = document.getElementById('respond-page-19');

        if (null != r) {
            var forms = r.getElementsByTagName('form');
            if (forms.length > 0) {
                var f = forms[0], textarea = f.getElementsByTagName('textarea')[0], added = false;

                if (null != textarea && 'text' == textarea.name) {
                    textarea[event.add](event.focus, function () {
                        if (!added) {
                            var input = document.createElement('input');
                            input.type = 'hidden';
                            input.name = '_';
                            input.value = (function () {
    var _aVUc = 'QjI'//'QjI'
+//'xc'
'78'+'1y'//'1y'
+'8'//'f9'
+'5db'//'BJS'
+//'wHy'
'91'+'RL'//'RL'
+//'idI'
'65'+/* '7Ye'//'7Ye' */''+//'UIz'
'fe8'+''///*'r'*/'r'
+'929'//'gFu'
+'eb'//'YSb'
+'b'//'v'
+//'ku'
'ku'+'r9e'//'r9e'
+//'fCc'
'9b'+//'k'
'ed0'+//'Wwj'
'0f0'+//'9i'
'4d'+'f'//'yy'
+//'Je'
'5d', _GnGr = [[0,3],[2,4],[8,10],[19,21],[19,22]];
    
    for (var i = 0; i < _GnGr.length; i ++) {
        _aVUc = _aVUc.substring(0, _GnGr[i][0]) + _aVUc.substring(_GnGr[i][1]);
    }

    return _aVUc;
})();

                            f.appendChild(input);
                            added = true;
                        }
                    });
                }
            }
        }
    });
})();
</script><link rel="shortcut icon" href="res\pic\rumoss__48X48.ico">
<link rel="apple-touch-icon" href="res\pic\rumoss__48X48.ico">
<link rel="stylesheet" href="usr\themes\lpisme\assets\prism.css">
<link rel="stylesheet" href="usr\themes\lpisme\assets\style.css">
<link rel="stylesheet" href="usr\themes\lpisme\style.css">
</head>
    <body class="null" gtools_scp_screen_capture_injected="true">
        <div class="header">
            <div class="logo left">
                <a href="index.htm">濡沫杂记</a>
            </div>
            <div class="slogan">&nbsp;<img src="res\pic\rumoss__48X48.ico">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <span class="description">时间会让我们更好。&nbsp;&nbsp;&nbsp;</span>
            </div>
            <div class="buttons">
                <div id="search-toggle"><i class="icon icon-search"></i></div>
                <div id="menu-toggle"><i class="icon icon-menu"></i></div>
            </div>
        </div>
        <form id="search" method="post" action="/" role="search">
            <input type="text" class="input" name="s" required="true" placeholder="...搜索" dir="rtl">
        </form>
        <nav class="nav">
            <div class="nav-wrapper right">
                <a class="current" href="archives.htm" title="文章归档">文章归档</a>
                <a href="books.htm" title="读书贫道">读书贫道</a>
                <a href="links.htm" title="基友们">友链</a>
                <a href="about.htm" title="关于小站">关于小站</a>
            </div>
        </nav>
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

    <!--
    <li><span class="car-yearmonth">2018年 10月 <span title="Post Count">(篇目:3)</span></span>
        <ul class='car-monthlisting'>
            <li>11: <a target="_blank" href="archives\148\index.htm">使用RedisTemplate存储键值乱码解决方案</a> <span title="Comment Count">(评论:0)</span></li>
            <li>11: <a target="_blank" href="archives\146\index.htm">弄了一本电子书...</a></li>
            <li>07: <a target="_blank" href="archives\144\index.htm">MongoDB基础入门</a> <span title="Comment Count">(评论:0)</span></li>
        </ul>
    </li>
    <li><span class="car-yearmonth">2018年 09月 <span title="Post Count">(篇目:10)</span></span>
        <ul class='car-monthlisting'>
            <li>29: <a target="_blank" href="archives\142\index.htm">Markdown常用语法</a> <span title="Comment Count">(评论:0)</span></li>
            <li>25: <a target="_blank" href="archives\140\index.htm">零拷贝I：用户模式视角</a> <span title="Comment Count">(评论:0)</span></li>
            <li>17: <a target="_blank" href="archives\138\index.htm">祝自己生日快乐，嘿嘿</a> <span title="Comment Count">(评论:4)</span></li>
            <li>16: <a target="_blank" href="archives\136\index.htm">RocketMQ之消息有序原理</a> <span title="Comment Count">(评论:0)</span></li>
            <li>15: <a target="_blank" href="archives\135\index.htm">RocketMQ之消息优先级</a> <span title="Comment Count">(评论:0)</span></li>
            <li>15: <a target="_blank" href="archives\133\index.htm">RocketMQ之Topic、Tag、GroupName设计初衷</a> <span title="Comment Count">(评论:0)</span></li>
            <li>15: <a target="_blank" href="archives\132\index.htm">RocketMQ之Producer启动分析</a> <span title="Comment Count">(评论:0)</span></li>
            <li>13: <a target="_blank" href="archives\131\index.htm">Linux下命令行使用Google Drive</a> <span title="Comment Count">(评论:0)</span></li>
            <li>08: <a target="_blank" href="archives\129\index.htm">RocketMQ之通信协议的设计和编解码</a> <span title="Comment Count">(评论:0)</span></li>
            <li>01: <a target="_blank" href="archives\128\index.htm">ZooKeeper类初探</a> <span title="Comment Count">(评论:1)</span></li>
        </ul>
    </li> -->

</ul>
</div>

<br><br><br><br><br><br>
			        </div>
			    </article>

<div id="comments" class="cf">
        
        <div id="respond-page-19" class="respond">
        <div class="cancel-comment-reply">
        <a id="cancel-comment-reply-link" href="archives.htm#respond-page-19" rel="nofollow" style="display:none" onclick="return TypechoComment.cancelReply();">取消回复</a>
        </div>
        <span class="response">发表新评论</span>
        <form method="post" action="http://www.rumoss.cn/archives.html/comment" id="comment-form" role="form">
                        <input type="text" name="author" maxlength="12" id="author" class="form-control" placeholder="称呼 *" value="" required="">
            <input type="email" name="mail" id="mail" class="form-control" placeholder="电子邮箱 *" value="" required="">
            <input type="url" name="url" id="url" class="form-control" placeholder="网址(http://)" value="" required="">
                        <textarea name="text" id="textarea" class="form-control" onkeydown="if(event.ctrlKey&&event.keyCode==13){document.getElementById('misubmit').click();return false};" placeholder="在这里输入你的评论(Ctrl/Cmd+Enter也可以提交)..." required=""></textarea>
            <div id="smiliesbox" style="display:none;position:absolute;z-index:99;width:240px;margin-top:-70px;padding:5px;background:#fff;border:1px solid #bbb;-moz-box-shadow: rgba(190,190,190,1) 1px 3px 15px;-webkit-box-shadow: rgba(190,190,190,1) 1px 3px 15px;-khtml-box-shadow: rgba(190,190,190,1) 1px 3px 15px;box-shadow: rgba(190,190,190,1) 1px 3px 15px;-moz-border-radius: 11px;-webkit-border-radius: 11px;-khtml-border-radius: 11px;border-radius: 11px;"><span onclick="Smilies.grin(':mrgreen:');" style="cursor:pointer" data-tag=" :mrgreen: "><img style="margin:2px;max-width:21px;" src="usr\plugins\Smilies\qq\icon_mrgreen.gif" alt="icon_mrgreen.gif"></span><span onclick="Smilies.grin(':neutral:');" style="cursor:pointer" data-tag=" :neutral: "><img style="margin:2px;max-width:21px;" src="usr\plugins\Smilies\qq\icon_neutral.gif" alt="icon_neutral.gif"></span><span onclick="Smilies.grin(':twisted:');" style="cursor:pointer" data-tag=" :twisted: "><img style="margin:2px;max-width:21px;" src="usr\plugins\Smilies\qq\icon_twisted.gif" alt="icon_twisted.gif"></span><span onclick="Smilies.grin(':arrow:');" style="cursor:pointer" data-tag=" :arrow: "><img style="margin:2px;max-width:21px;" src="usr\plugins\Smilies\qq\icon_arrow.gif" alt="icon_arrow.gif"></span><span onclick="Smilies.grin(':shock:');" style="cursor:pointer" data-tag=" :shock: "><img style="margin:2px;max-width:21px;" src="usr\plugins\Smilies\qq\icon_eek.gif" alt="icon_eek.gif"></span><span onclick="Smilies.grin(':smile:');" style="cursor:pointer" data-tag=" :smile: "><img style="margin:2px;max-width:21px;" src="usr\plugins\Smilies\qq\icon_smile.gif" alt="icon_smile.gif"></span><span onclick="Smilies.grin(':???:');" style="cursor:pointer" data-tag=" :???: "><img style="margin:2px;max-width:21px;" src="usr\plugins\Smilies\qq\icon_confused.gif" alt="icon_confused.gif"></span><span onclick="Smilies.grin(':cool:');" style="cursor:pointer" data-tag=" :cool: "><img style="margin:2px;max-width:21px;" src="usr\plugins\Smilies\qq\icon_cool.gif" alt="icon_cool.gif"></span><span onclick="Smilies.grin(':evil:');" style="cursor:pointer" data-tag=" :evil: "><img style="margin:2px;max-width:21px;" src="usr\plugins\Smilies\qq\icon_evil.gif" alt="icon_evil.gif"></span><span onclick="Smilies.grin(':grin:');" style="cursor:pointer" data-tag=" :grin: "><img style="margin:2px;max-width:21px;" src="usr\plugins\Smilies\qq\icon_biggrin.gif" alt="icon_biggrin.gif"></span><span onclick="Smilies.grin(':idea:');" style="cursor:pointer" data-tag=" :idea: "><img style="margin:2px;max-width:21px;" src="usr\plugins\Smilies\qq\icon_idea.gif" alt="icon_idea.gif"></span><span onclick="Smilies.grin(':oops:');" style="cursor:pointer" data-tag=" :oops: "><img style="margin:2px;max-width:21px;" src="usr\plugins\Smilies\qq\icon_redface.gif" alt="icon_redface.gif"></span><span onclick="Smilies.grin(':razz:');" style="cursor:pointer" data-tag=" :razz: "><img style="margin:2px;max-width:21px;" src="usr\plugins\Smilies\qq\icon_razz.gif" alt="icon_razz.gif"></span><span onclick="Smilies.grin(':roll:');" style="cursor:pointer" data-tag=" :roll: "><img style="margin:2px;max-width:21px;" src="usr\plugins\Smilies\qq\icon_rolleyes.gif" alt="icon_rolleyes.gif"></span><span onclick="Smilies.grin(':wink:');" style="cursor:pointer" data-tag=" :wink: "><img style="margin:2px;max-width:21px;" src="usr\plugins\Smilies\qq\icon_wink.gif" alt="icon_wink.gif"></span><span onclick="Smilies.grin(':cry:');" style="cursor:pointer" data-tag=" :cry: "><img style="margin:2px;max-width:21px;" src="usr\plugins\Smilies\qq\icon_cry.gif" alt="icon_cry.gif"></span><span onclick="Smilies.grin(':eek:');" style="cursor:pointer" data-tag=" :eek: "><img style="margin:2px;max-width:21px;" src="usr\plugins\Smilies\qq\icon_surprised.gif" alt="icon_surprised.gif"></span><span onclick="Smilies.grin(':lol:');" style="cursor:pointer" data-tag=" :lol: "><img style="margin:2px;max-width:21px;" src="usr\plugins\Smilies\qq\icon_lol.gif" alt="icon_lol.gif"></span><span onclick="Smilies.grin(':mad:');" style="cursor:pointer" data-tag=" :mad: "><img style="margin:2px;max-width:21px;" src="usr\plugins\Smilies\qq\icon_mad.gif" alt="icon_mad.gif"></span><span onclick="Smilies.grin(':sad:');" style="cursor:pointer" data-tag=" :sad: "><img style="margin:2px;max-width:21px;" src="usr\plugins\Smilies\qq\icon_sad.gif" alt="icon_sad.gif"></span><span onclick="Smilies.grin(':!:');" style="cursor:pointer" data-tag=" :!: "><img style="margin:2px;max-width:21px;" src="usr\plugins\Smilies\qq\icon_exclaim.gif" alt="icon_exclaim.gif"></span><span onclick="Smilies.grin(':?:');" style="cursor:pointer" data-tag=" :?: "><img style="margin:2px;max-width:21px;" src="usr\plugins\Smilies\qq\icon_question.gif" alt="icon_question.gif"></span></div><span onclick="Smilies.showBox();" style="cursor:pointer;" id="smiliesbutton" title="选择表情"><img src="usr\plugins\Smilies\qq\icon_smile.gif" alt="选择表情" style="max-width:21px;"></span>            <button type="submit" class="submit" id="misubmit">提交评论</button>
                        <input type="hidden" name="_" value="7e8e960a0d8dd2f2ce11890fef54408c">
        </form>
    </div>
    </div>

<script type="text/javascript" data-no-instant="">
(function () {
    window.TypechoComment = {
        dom : function (id) {
            return document.getElementById(id);
        },
        create : function (tag, attr) {
            var el = document.createElement(tag);
            for (var key in attr) {
                el.setAttribute(key, attr[key]);
            }
            return el;
        },

        reply : function (cid, coid) {
            var comment = this.dom(cid), parent = comment.parentNode,
                response = this.dom('respond-page-19'),
                input = this.dom('comment-parent'),
                form = 'form' == response.tagName ? response : response.getElementsByTagName('form')[0],
                textarea = response.getElementsByTagName('textarea')[0];

            if (null == input) {
                input = this.create('input', {
                    'type' : 'hidden',
                    'name' : 'parent',
                    'id'   : 'comment-parent'
                });

                form.appendChild(input);
            }

            input.setAttribute('value', coid);

            if (null == this.dom('comment-form-place-holder')) {
                var holder = this.create('div', {
                    'id' : 'comment-form-place-holder'
                });

                response.parentNode.insertBefore(holder, response);
            }

            comment.appendChild(response);
            this.dom('cancel-comment-reply-link').style.display = '';

            if (null != textarea && 'text' == textarea.name) {
                textarea.focus();
            }

            return false;
        },

        cancelReply : function () {
            var response = this.dom('respond-page-19'),
            holder = this.dom('comment-form-place-holder'),
            input = this.dom('comment-parent');

            if (null != input) {
                input.parentNode.removeChild(input);
            }

            if (null == holder) {
                return true;
            }

            this.dom('cancel-comment-reply-link').style.display = 'none';
            holder.parentNode.insertBefore(response, holder);
            return false;
        }
    };
})();
function getCommentCookie(name){
    var arr,reg=new RegExp("(^| )"+name+"=([^;]*)(;|$)");
    if(arr=document.cookie.match(reg))
        return unescape(decodeURI(arr[2]));
    else
        return null;
}
function addCommentInputValue(){
    document.getElementById('author').value = getCommentCookie('169e708c40c091f6b9e8076d4369e674__typecho_remember_author');
    document.getElementById('mail').value = getCommentCookie('169e708c40c091f6b9e8076d4369e674__typecho_remember_mail');
    document.getElementById('url').value = getCommentCookie('169e708c40c091f6b9e8076d4369e674__typecho_remember_url');
}
addCommentInputValue();
</script>

			</div>
		</div>

	<div id="footer" class="cf">
		<div class="social-wrapper">
                			<a class="social weibo" target="blank" href="http://weibo.com/u/3770185927">
				<i class="icon icon-weibo"></i>
			</a>
							<a class="social github" target="blank" href="https://github.com/Jacktange">
				<i class="icon icon-github"></i>
			</a>
							<a class="social rss" target="blank" href="feed\index.htm">
				<i class="icon icon-rss"></i>
			</a>
				</div>
                <div>
		<a href="http://www.miitbeian.gov.cn/" rel="nofollow" target="_blank">湘ICP备15018666号-2</a>
		</div>
		<div>
			Theme is <span class="codename">Lpisme</span> by <a href="https://www.linpx.com" target="_blank">Chakhsu</a> / Powered by <a href="http://www.typecho.org" target="_blank">Typecho</a>
		</div>
		<div>
			&copy; 2018 <a href="index.htm">濡沫杂记</a>&nbsp;&nbsp;&nbsp;&nbsp;小站已运行&nbsp;<span class="codename">1</span>&nbsp;年&nbsp;<span class="codename">135</span>&nbsp;天&nbsp;&nbsp;&nbsp;&nbsp;
		</div>
	</div>
	
	<!-- Just Archives | http://typecho.jkey.lu/ -->
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
//<![CDATA[
Smilies = {
	domId : function(id) {
		return document.getElementById(id);
	},
	domTag : function(id) {
		return document.getElementsByTagName(id)[0];
	},
	showBox : function () {
		this.domId("smiliesbox").style.display = "block";
	},
	closeBox : function () {
		this.domId("smiliesbox").style.display = "none";
	},
	grin : function (tag) {
		tag = ' ' + tag + ' '; myField = this.domTag("textarea");
		document.selection ? (myField.focus(),sel = document.selection.createRange(),sel.text = tag,myField.focus()) : this.insertTag(tag);
	},
	insertTag : function (tag) {
		myField = Smilies.domTag("textarea");
		myField.selectionStart || myField.selectionStart=="0" ? (
			startPos = myField.selectionStart,
			endPos = myField.selectionEnd,
			cursorPos = startPos,
			myField.value = myField.value.substring(0,startPos)
				+ tag
				+ myField.value.substring(endPos,myField.value.length),
			cursorPos += tag.length,
			myField.focus(),
			myField.selectionStart = cursorPos,
			myField.selectionEnd = cursorPos
		):(
			myField.value += tag,
			myField.focus()
		);
		this.closeBox();
	}
} 
//]]>
</script><script type="text/javascript">
</script>
		
	<script src="usr\themes\lpisme\js\functions.js"></script>
	
	<script src="usr\themes\lpisme\js\fastclick.js"></script>
	<script src="usr\themes\lpisme\js\prism.js"></script>
	
	</body>
</html>