<%@ page isELIgnored="false" contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.lang.Math" %>
<html>
<head>
    <%
        Object isDev = request.getParameter("isAppWebDev");
        double cssVersion = 0.003;
        boolean isDevVersion = false;
        if ("true".equals(isDev)){
            cssVersion = Math.random();
            isDevVersion = true;
        }
    %>
    <title>PIXY Live</title>
    <link rel="stylesheet" type="text/css" href="/static/css/hotChannel.css?mm=<%=cssVersion%>">

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no,minimal-ui">
    <meta name="description" content="Pixy Hot Channel" >
    <meta name="keywords" content="Pixy Hot Channel" >
    <meta name="format-detection" content="email=no">
    <meta name="format-detection" content="address=no">
    <meta name="format-detection" content="telephone=no">

    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="apple-mobile-web-app-capable" content="yes" />

    <meta property="og:title" content="PIXY" />
    <meta property="og:site_name" content="PIXY" />
    <meta property="og:image" content="https://m.pixy.tv/static/images/ic_applogo.png" />
    <meta property="og:description" content="Live stream, chat and be a star." />
    <meta name="twitter:card" content="summary" />
    <meta property="twitter:site" content="@pixymessenger" />
    <meta property="twitter:title" content="PIXY" />
    <meta property="twitter:description" content="Live stream, chat and be a star." />
    <meta property="twitter:image" content="https://m.pixy.tv/static/images/ic_applogo.png" />
    <meta property="al:ios:app_store_id" content="1122622681" />
    <meta property="al:ios:app_name" content="PIXY" />

</head>
<body class="language_${language}" language="${language}" pixy_id="${currentChannel.ownerUid}">

<div id="wrap">
        <div class="video-container">
            <a class="video-wrapper-play onClickDownPixy">
                <img src="/static/images/ic_play@3x.png" alt="Play"/>
            </a>
            <div class="video-wrapper">
                <%--<img class="video-cover" src="${currentChannel.ownerAvatar}">--%>
                <div class="video-cover-div" style="background-image: url('${currentChannel.ownerAvatar}')"></div>
            </div>

            <div class="video-top">

                <a class="video-top1 onClickDownPixy" >
                    <div class="video-owner download-pixy" >
                        <div class="video-owner-line1"></div>
                        <img class="video-owner-avatar" src="${currentChannel.ownerAvatar}">
                        <div class="video-owner-text">
                            <span class="line1"><fmt:message key="pixy_live_hint"></fmt:message></span>
                            <span class="line2">${currentChannel.userCount}</span>
                        </div>
                        <div class="video-owner-follow">
                            <fmt:message key="pixy_live_Follow"></fmt:message>
                        </div>
                    </div>
                    <div class="video-fan-list">
                        <c:forEach var="d" varStatus="id" items="${fanList}">
                            <div class="video-fan1">
                                <img class="video-fan" src="${d.avatar}">
                            </div>
                        </c:forEach>
                    </div>
                </a>

                <div class="video-top2">
                    <a class="star onClickDownPixy" >
                        <img class="ss1" src="/static/images/ic_starbig@3x.png" />
                        <span class="star-userCount">
                            ${currentChannel.userCount}
                        </span>
                        <img class="ss2" src="/static/images/ic_keyboadarrowright@3x_${language}.png" />
                    </a>
                    <div class="pixyId">
                        <span><fmt:message key="pixy_common_id"></fmt:message></span>
                        <span>:</span>
                        <span>${currentChannel.ownerUid}</span>
                    </div>

                </div>

            </div>

            <div class="video-gift">
                <img src="/static/images/ic_send_gift_${language}.png" />
            </div>

            <div class="video-msg-list">
                <div class="send_flowers">


                    <div class="p" data-index="1">
                        <img class="img-level" src="/static/images/ic_fake_level/ic_level25_${language}@3x.png" alt=""/>
                        <div class="content">
                                    <span class="name">
                                        <fmt:message key="hot_channel_fake_name2"></fmt:message>
                                    </span>
                                    <span class="msg" class="msg" style="color: #ffffff">
                                        <fmt:message key="hot_channel_fake_text2"></fmt:message>
                                    </span>
                            <i class="gift gift2"></i>
                        </div>
                        <div class="clearfix"></div>
                    </div>



                    <div class="p" data-index="5">
                        <img class="img-level" src="/static/images/ic_fake_level/ic_level10_${language}@3x.png" alt=""/>
                        <div class="content">
                                    <span class="name">
                                        <fmt:message key="hot_channel_fake_name5"></fmt:message>
                                    </span>
                                    <span class="msg" style="color: #7BD1EB">
                                        <fmt:message key="hot_channel_fake_text5"></fmt:message>
                                    </span>
                            <i class="gift gift0"></i>
                        </div>
                        <div class="clearfix"></div>
                    </div>

                    <div class="p" data-index="3">
                        <img class="img-level" src="/static/images/ic_fake_level/ic_level8_${language}@3x.png" alt=""/>
                        <div class="content">
                                    <span class="name">
                                        <fmt:message key="hot_channel_fake_name1"></fmt:message>
                                    </span>
                                    <span class="msg" style="color: #F24D5B">
                                        <fmt:message key="hot_channel_fake_text1"></fmt:message>
                                    </span>
                            <i class="gift gift1"></i>
                        </div>
                        <div class="clearfix"></div>
                    </div>

                    <div class="p" data-index="2">
                        <img class="img-level" src="/static/images/ic_fake_level/ic_level100_${language}@3x.png" alt=""/>
                        <div class="content">
                                    <span class="name">
                                        <fmt:message key="hot_channel_fake_name3"></fmt:message>
                                    </span>
                                    <span class="msg" style="color: #ffffff">
                                        <fmt:message key="hot_channel_fake_text3"></fmt:message>
                                    </span>
                            <i class="gift gift0"></i>
                        </div>
                        <div class="clearfix"></div>
                    </div>



                    <div class="p" data-index="4">
                        <img class="img-level" src="/static/images/ic_fake_level/ic_level17_${language}@3x.png" alt=""/>
                        <div class="content">
                                    <span class="name">
                                        <fmt:message key="hot_channel_fake_name4"></fmt:message>
                                    </span>
                                    <span class="msg" style="color: #7BD1EB">
                                        <fmt:message key="hot_channel_fake_text4"></fmt:message>
                                    </span>
                            <i class="gift gift0"></i>
                        </div>
                        <div class="clearfix"></div>
                    </div>


                </div>
            </div>

            <div class="video-msg-send">

            </div>

            <div class="video-hearts">

                <div class="c_heart">
                    <div class="hot_heart">
                        <div class="hearts">
                            <div class="h-1"><span></span></div>
                            <div class="h-2"><span></span></div>
                            <div class="h-3"><span></span></div>
                            <div class="h-4"><span></span></div>
                            <div class="h-5"><span></span></div>
                            <div class="h-6"><span></span></div>
                            <div class="h-7"><span></span></div>
                            <div class="h-8"><span></span></div>
                            <div class="h-9"><span></span></div>
                            <div class="h-10"><span></span></div>
                        </div>
                        <span class="c_hot_heart white_bg"></span>
                        <span class="c_hot_heart red_bg"></span>
                    </div>
                    <span class="c_gift"></span>
                </div>
                <div class="ic_gift">
                    <a class="onClickDownPixy">
                        <img src="/static/images/ic_gift@3x.png">
                    </a>
                </div>
            </div>
        </div>


    <div class="bottom-down">
        <div class="bottom-down-inner">
            <img class="ic_pixy_logo" src="/static/images/ic_pixy_logo.png" >
            <div class="ic_pixy_logo_name">
                <img src="/static/images/ic_pixy_logo_name.png">
                <span><fmt:message key="pixy_commonads"></fmt:message></span>
            </div>
            <a class="down-btn onClickPixyDownLoad" >
                <fmt:message key="pixy_common_download"></fmt:message>
            </a>
            <div class="clearfix"></div>
        </div>
    </div>


        <div class="pop-title">
            <img src="/static/images/ic_profile_live@3x.png" />
            <span><fmt:message key="pixy_guide_trendinglives"></fmt:message></span>
            <div class="clearfix"></div>
        </div>

        <div class="channel-list">
            <div class="clearfix"></div>
            <c:forEach var="d" varStatus="id" items="${channelList}">
                <a class="onClickDownPixy channel-item channel-item${id.index%2}" ownerUid="${d.ownerUid}">
                    <div class="channel-play-info">
                        <img class="live" src="/static/images/ic_live_tag_web_${language}.png" alt="live"/>
                    </div>
                    <img class="channel-item-avatar" src="${d.ownerAvatar}">
                    <div class="channel-item-mask"></div>
                    <div class="channel-user-name">${d.ownerName}</div>
                </a>
            </c:forEach>
            <div class="clearfix"></div>
        </div>


        <div id="alertConsole" style='font-size: 12px;display: <%=(isDevVersion?"block":"none")%>'></div>

        <div class="bottom-placeholder"></div>





</div>




</body>




<script src="/static/js/jquery-1.10.1.min.js"></script>



<script>


    function alertConsole(t){
        $('#alertConsole').html(t)
    }

    function isAndroid() {
        return navigator.userAgent.match(/Android/i);
    }

    function isChrome() {
        var ua = navigator.userAgent;
        return ua.match(/Chrome/);
    }

    function isIOS() {
        var ua = navigator.userAgent;
        return ua.match(/iPhone/i) || ua.match(/iPod/i) || ua.match(/iPad/i);
    }

    alertConsole( navigator.userAgent)

    function isMacSystem() {
        var p = navigator.platform;
        return p.indexOf("Mac") == 0;
    }

    function isWindowSystem() {
        var p = navigator.platform;
        return p.indexOf("Win") == 0;
    }

    function isAppleWebkit(){
        var ua = navigator.userAgent;
        return ua.match(/AppleWebKit/i);
    }

    function getClickURL(ownerUid) {


        var pathname = window.location.pathname;
        var isLivePage = (pathname.indexOf('live')!=-1);
        var isUserPage = (pathname.indexOf('user')!=-1);
        var host = window.location.host;

        var body = document.body;
        var uid = null;
        if(ownerUid){
            uid = ownerUid;
        }else{
            uid = body.getAttribute('pixy_id');
        }

        var loc = host + '/user/' + uid;

        if (isMacSystem() || isWindowSystem()) {
            return 'https://pixy.tv/';
        }

        if (isAndroid() && isChrome()) {
            return "intent://"+loc+"#Intent;scheme=pixy;package=tv.pixy.live;S.browser_fallback_url=https%3A%2F%2Fd.pixy.tv%2Finvite%2F2;end";
        }

        if (isIOS()) {
            return "pixy://"+loc; //pixy://m-beta.pixy.tv/user/12121212
        }

        return "pixy://"+loc;
    }


    function getDownloadUrl(ownerUid){
        if (isAndroid()) {
            return "https://d.pixy.tv/invite/2";
        }else if(isIOS()){
            return "https://itunes.apple.com/app/id1122622681";
        }else{
            return "https://pixy.tv/";
        }

    }


    var appOpened = false;
    var timeoutHandler = null;


    jQuery(document).ready(function () {


        var pixy_id = $("body").attr('pixy_id');

        $('.onClickPixyDownLoad').each(function () {
            var $this = $(this);
            var ownerUid = $this.attr('ownerUid');
            if (!ownerUid) {
                ownerUid = pixy_id;
            }
            var url = getDownloadUrl(ownerUid);
            $this.attr('href', url);
        });


        $('.onClickDownPixy').each(function () {
            var $this = $(this);
            var ownerUid = $this.attr('ownerUid')
            if (!ownerUid) {
                ownerUid = pixy_id;
            }
            var url = getClickURL(ownerUid);
            $this.attr('href', url);
        });




        $('.onClickDownPixy').click(function () {

            var href = $(this).attr('href');

            appOpened = false;

            if (timeoutHandler) {
                window.clearTimeout(timeoutHandler);
            }


            var startTime = new Date().getTime();

            timeoutHandler = window.setTimeout(function () {
                var now = new Date().getTime();
                if (now - startTime > 2200 || appOpened) {
                    //opened
                } else {
                    // open app store
                    if (isAndroid()) {

                        alertConsole('aaaa')

                        if(!isChrome()){
                            alertConsole('bbb')
                            window.location.href = "https://d.pixy.tv/invite/2";
                        }
                        else{
                            if(isAppleWebkit()){
                                alertConsole('ccc');
                                window.location.href = "https://d.pixy.tv/invite/2";
                            }else{
                                //Chrome 浏览器比较牛逼不用做
                                alertConsole('ddd')
                            }

                        }

                    } else if (isIOS()) {
                          window.location.href = "https://itunes.apple.com/app/id1122622681";
//                        appendIframe("https://itunes.apple.com/app/id1122622681");
//                        window.location.href = "itms-apps://itunes.apple.com/app/id1122622681";
//                        window.open("https://itunes.apple.com/app/id1122622681")
                        alertConsole('mmmmm');
////                        $('.onClickPixyDownLoad').trigger('touchend')
////                        $('.onClickPixyDownLoad').click();
//                        var a = $('.onClickPixyDownLoad')[0];
//                        var evObj = document.createEvent('MouseEvents');
//                        evObj.initMouseEvent('touchend', true, true, window);
//                        a.dispatchEvent(evObj);
                    }
                }
                appOpened = false;
            }, 2000);


        });


    });



    function appendIframe(url){
        var iframe = '<iframe></iframe>';
        var $iframe = $(iframe);
        $iframe.attr('src',url);
        $('body').append($iframe);
    }






    window.onblur = function() {
        if(timeoutHandler){
            window.clearTimeout(timeoutHandler);
        }
    };

    window.addEventListener('pagehide', function () {
        appOpened = true;
        if(timeoutHandler){
            window.clearTimeout(timeoutHandler);
        }
    }, false);
    window.addEventListener('pageshow', function () {
        appOpened = true;
        if(timeoutHandler){
            window.clearTimeout(timeoutHandler);
        }
    }, false);
    window.addEventListener('blur', function () {
        appOpened = true;
        if(timeoutHandler){
            window.clearTimeout(timeoutHandler);
        }
    }, false);




</script>


<script>

    function fontSizeSetREM() {
        var tid = "";
        var fontSize = 100;
        var pageWidth = 640;
        var maxPageWidth = 640;
        var elm = document.documentElement;
        var clientWidth = elm.clientWidth;
        if (clientWidth >= maxPageWidth) {
            clientWidth = maxPageWidth;
        }
        var fonsSizeSeting = fontSize * (clientWidth / pageWidth) + 'px';
        elm.style.fontSize = fonsSizeSeting;
        function refreshRem() {
            var elmInner = document.documentElement;
            var widthInner = elmInner.clientWidth;
            if (widthInner >= maxPageWidth) {
                widthInner = maxPageWidth;
            }
            elmInner.style.fontSize = fontSize * (widthInner / pageWidth) + 'px';
            document.body.style.display = 'block';
//            $('body').show();
        }

        window.addEventListener('resize', function () {
            clearTimeout(tid);
            tid = setTimeout(refreshRem, 300);
        }, false);
        refreshRem();
    }

    fontSizeSetREM();
</script>


<script>



        function judgeShowBigGift($p) {
            var gift1 = $p.find('.gift1');
            if (gift1 && gift1.length > 0) {
                $(".video-gift").addClass('video-gift-show');
                window.setTimeout(function () {
                    $(".video-gift").removeClass('video-gift-show');
                }, 1500)
            }
        }

        function displayMsg() {


            var $p = $(".send_flowers").find('.p:first-child');
            $p.remove();


            var $p1 = $p.clone();
            $p1.hide();
            $(".send_flowers").append($p1);

            judgeShowBigGift($p1);

            $p1.show(200, function () {
                setTimeout(function () {
                    displayMsg();
                }, 1500)
            });

        }






    jQuery(document).ready(function () {

        displayMsg();

        if(isAndroid()){
            $('body').addClass('androidDevice');
        }
    });


</script>

</html>
