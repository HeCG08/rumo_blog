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
            var r = document.getElementById('respond-page-${article.cid}');

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
</script>

<div id="comments" class="cf">
    <div id="post-comments">
        <#if comments??><!-- 判空处理 -->
            <span class="comment-${article.cid}">已有 ${comments?size} 条评论</span>
            <ol class="comment-list"><!-- 评论列表 -->
                <#list comments as comment>
                    <div id="comment-${comment.coid}">
                        <#include "avatar.ftl" encoding="UTF-8" parse=true><!-- 加载Avatar头像 -->
                        <div class="comment-main">
                            <p>${comment.text}</p>
                            <div class="comment-meta">
                                <span class="comment-author"><a href="${comment.url}" target="_blank" rel="external nofollow">${comment.author}</a></span>
                                <time class="comment-time"><#include "datetime.ftl" encoding="UTF-8" parse=true><!-- 翻译时间 --></time>
                                <span class="comment-reply">
                                    <a href="books-1.htm?replyTo=${comment.coid}#respond-page-21" rel="nofollow" onclick="return TypechoComment.reply('comment-${comment.coid}', ${comment.coid});">回复</a>
                                </span>
                            </div>
                        </div>
                    </div>
                </#list>
            </ol>
        </#if>
    <div>
    <div id="respond-page-${article.cid}" class="respond">
        <div class="cancel-comment-reply">
            <a id="cancel-comment-reply-link" href="archives.htm#respond-page-${article.cid}" rel="nofollow" style="display:none" onclick="return TypechoComment.cancelReply();">取消回复</a>
        </div>
        <span class="response">发表新评论</span>
        <form method="post" id="comment-form" role="form" onsubmit="return TypechoComment.subComment();">
        <input type="text" name="author" maxlength="12" id="author" class="form-control" placeholder="称呼 *" value="" required="">
            <input type="email" name="mail" id="mail" class="form-control" placeholder="电子邮箱 *" value="" required="">
            <input type="url" name="url" id="url" class="form-control" placeholder="网址(http://)" value="" required="">
            <textarea name="text" id="textarea" class="form-control" onkeydown="if(event.ctrlKey&&event.keyCode==13){document.getElementById('misubmit').click();return false};" placeholder="在这里输入你的评论(Ctrl/Cmd+Enter也可以提交)..." required=""></textarea>
            <div id="smiliesbox" style="display:none;position:absolute;z-index:99;width:240px;margin-top:-70px;padding:5px;background:#fff;border:1px solid #bbb;-moz-box-shadow: rgba(190,190,190,1) 1px 3px 15px;-webkit-box-shadow: rgba(190,190,190,1) 1px 3px 15px;-khtml-box-shadow: rgba(190,190,190,1) 1px 3px 15px;box-shadow: rgba(190,190,190,1) 1px 3px 15px;-moz-border-radius: 11px;-webkit-border-radius: 11px;-khtml-border-radius: 11px;border-radius: 11px;"><span onclick="Smilies.grin(':mrgreen:');" style="cursor:pointer" data-tag=" :mrgreen: "><img style="margin:2px;max-width:21px;" src="${base}\usr\plugins\Smilies\qq\icon_mrgreen.gif" alt="icon_mrgreen.gif"></span><span onclick="Smilies.grin(':neutral:');" style="cursor:pointer" data-tag=" :neutral: "><img style="margin:2px;max-width:21px;" src="${base}\usr\plugins\Smilies\qq\icon_neutral.gif" alt="icon_neutral.gif"></span><span onclick="Smilies.grin(':twisted:');" style="cursor:pointer" data-tag=" :twisted: "><img style="margin:2px;max-width:21px;" src="${base}\usr\plugins\Smilies\qq\icon_twisted.gif" alt="icon_twisted.gif"></span><span onclick="Smilies.grin(':arrow:');" style="cursor:pointer" data-tag=" :arrow: "><img style="margin:2px;max-width:21px;" src="${base}\usr\plugins\Smilies\qq\icon_arrow.gif" alt="icon_arrow.gif"></span><span onclick="Smilies.grin(':shock:');" style="cursor:pointer" data-tag=" :shock: "><img style="margin:2px;max-width:21px;" src="${base}\usr\plugins\Smilies\qq\icon_eek.gif" alt="icon_eek.gif"></span><span onclick="Smilies.grin(':smile:');" style="cursor:pointer" data-tag=" :smile: "><img style="margin:2px;max-width:21px;" src="${base}\usr\plugins\Smilies\qq\icon_smile.gif" alt="icon_smile.gif"></span><span onclick="Smilies.grin(':???:');" style="cursor:pointer" data-tag=" :???: "><img style="margin:2px;max-width:21px;" src="${base}\usr\plugins\Smilies\qq\icon_confused.gif" alt="icon_confused.gif"></span><span onclick="Smilies.grin(':cool:');" style="cursor:pointer" data-tag=" :cool: "><img style="margin:2px;max-width:21px;" src="${base}\usr\plugins\Smilies\qq\icon_cool.gif" alt="icon_cool.gif"></span><span onclick="Smilies.grin(':evil:');" style="cursor:pointer" data-tag=" :evil: "><img style="margin:2px;max-width:21px;" src="${base}\usr\plugins\Smilies\qq\icon_evil.gif" alt="icon_evil.gif"></span><span onclick="Smilies.grin(':grin:');" style="cursor:pointer" data-tag=" :grin: "><img style="margin:2px;max-width:21px;" src="${base}\usr\plugins\Smilies\qq\icon_biggrin.gif" alt="icon_biggrin.gif"></span><span onclick="Smilies.grin(':idea:');" style="cursor:pointer" data-tag=" :idea: "><img style="margin:2px;max-width:21px;" src="${base}\usr\plugins\Smilies\qq\icon_idea.gif" alt="icon_idea.gif"></span><span onclick="Smilies.grin(':oops:');" style="cursor:pointer" data-tag=" :oops: "><img style="margin:2px;max-width:21px;" src="${base}\usr\plugins\Smilies\qq\icon_redface.gif" alt="icon_redface.gif"></span><span onclick="Smilies.grin(':razz:');" style="cursor:pointer" data-tag=" :razz: "><img style="margin:2px;max-width:21px;" src="${base}\usr\plugins\Smilies\qq\icon_razz.gif" alt="icon_razz.gif"></span><span onclick="Smilies.grin(':roll:');" style="cursor:pointer" data-tag=" :roll: "><img style="margin:2px;max-width:21px;" src="${base}\usr\plugins\Smilies\qq\icon_rolleyes.gif" alt="icon_rolleyes.gif"></span><span onclick="Smilies.grin(':wink:');" style="cursor:pointer" data-tag=" :wink: "><img style="margin:2px;max-width:21px;" src="${base}\usr\plugins\Smilies\qq\icon_wink.gif" alt="icon_wink.gif"></span><span onclick="Smilies.grin(':cry:');" style="cursor:pointer" data-tag=" :cry: "><img style="margin:2px;max-width:21px;" src="${base}\usr\plugins\Smilies\qq\icon_cry.gif" alt="icon_cry.gif"></span><span onclick="Smilies.grin(':eek:');" style="cursor:pointer" data-tag=" :eek: "><img style="margin:2px;max-width:21px;" src="${base}\usr\plugins\Smilies\qq\icon_surprised.gif" alt="icon_surprised.gif"></span><span onclick="Smilies.grin(':lol:');" style="cursor:pointer" data-tag=" :lol: "><img style="margin:2px;max-width:21px;" src="${base}\usr\plugins\Smilies\qq\icon_lol.gif" alt="icon_lol.gif"></span><span onclick="Smilies.grin(':mad:');" style="cursor:pointer" data-tag=" :mad: "><img style="margin:2px;max-width:21px;" src="${base}\usr\plugins\Smilies\qq\icon_mad.gif" alt="icon_mad.gif"></span><span onclick="Smilies.grin(':sad:');" style="cursor:pointer" data-tag=" :sad: "><img style="margin:2px;max-width:21px;" src="${base}\usr\plugins\Smilies\qq\icon_sad.gif" alt="icon_sad.gif"></span><span onclick="Smilies.grin(':!:');" style="cursor:pointer" data-tag=" :!: "><img style="margin:2px;max-width:21px;" src="${base}\usr\plugins\Smilies\qq\icon_exclaim.gif" alt="icon_exclaim.gif"></span><span onclick="Smilies.grin(':?:');" style="cursor:pointer" data-tag=" :?: "><img style="margin:2px;max-width:21px;" src="${base}\usr\plugins\Smilies\qq\icon_question.gif" alt="icon_question.gif"></span></div><span onclick="Smilies.showBox();" style="cursor:pointer;" id="smiliesbutton" title="选择表情"><img src="${base}\usr\plugins\Smilies\qq\icon_smile.gif" alt="选择表情" style="max-width:21px;"></span>            <button type="submit" class="submit" id="misubmit">提交评论</button>
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
                        response = this.dom('respond-page-${article.cid}'),
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
                var response = this.dom('respond-page-${article.cid}'),
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
            },

            subComment: function () {
                $.ajax({
                    type: 'post',
                    url: 'http://www.baidu.com',
                    data: $('#comment-form').serialize(),
                    async: false,
                    dataType: 'json',
                    success: function (result) {
                        if (result && result.success) {
                            alert("评论成功!");
                            window.location.reload();
                        } else {
                            if (result.msg) {
                                alert(result.msg);
                            }
                        }
                    }
                });
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
</script>