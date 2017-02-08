<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="format-detection" content="telephone=no">
    <meta name="apple-mobile-web-app-capable" content="yes" />
    <meta name="viewport" content="initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no, width=device-width">
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
    <!-- <meta name="apple-itunes-app" content="app-id=1122622681, app-argument: soma://soma.im/join?g=31242" /> -->
    <title>PIXY.TV</title>
    <script src="https://m.pixy.tv/static/js/font_lct.js"></script>
    <link rel="stylesheet" type="text/css" href="https://m.pixy.tv/static/css/downloadPage.css">

</head>

<body>
   <div class="main">
     <a class="download_link" href="javascript:;">
        <div id="logo_evaluate"></div>
        <p class="download_tip">Don’t have PIXY yet?</p>
        <p class="download_tip">Get it for free now!</p>
        <div id="arrow-right"></div>
     </a>
     <img src="https://m.pixy.tv/static/images/logo_pixy1.png" class="logo">
     <div class="text">
        <p>“Download PIXY and watch my livestream now!”</p>
        <div class="personal_inf">
            <c:if test="${not empty avatar}">
                <img class="avatar" src="${avatar}"></img>
            </c:if>
            <c:if test="${ empty avatar}">
                <img class="avatar" src="https://m.pixy.tv/static/images/defult_avatar_large.png"></img>
            </c:if>
            <div class="personal_right">
             <p class="name">${name}</p>
             <p class="pixy_id">
                 <span>PIXY ID:</span>
                 <span>${uid}</span>
             </p> 
         </div>
     </div>
     </div>
     
     <a class="join_live" href="javascript:;">Join Live</a>
     <div class="pc_show">
        <p class="download_tip download_tip_web">Don’t have PIXY yet? Get it for free now!</p>
        <div class="btn_download">
            <div class="inline">
                <a id="btn_appstore" href="https://itunes.apple.com/app/id1122622681"></a>
                <a id="btn_Playstore" href="https://d.pixy.tv/invite/2"></a>
            </div>
        </div>
     </div>
         
     <p class="copyright">© PIXY 2016</p>
   </div>
   <script>
    var loc = window.location.toString();
    var idx = loc.indexOf("://");
    if (idx != -1) {
        loc = loc.substring(idx + 3);
    }
    idx = loc.indexOf("#");
    if (idx != -1) {
        loc = loc.substring(0, idx);
    }
    var linkEl = document.querySelector(".join_live");
    linkEl.href = "pixy://" + loc;
    var ua = navigator.userAgent;
    var mPixy = loc.indexOf("m.beta.");
    if(mPixy != -1) {
        loc = loc.substring(mPixy + 7);
    }
    if (ua.indexOf("Android") != -1 && ua.match(/Chrome/)) {
        linkEl.href = "intent://" + loc + "#Intent;scheme=pixy;package=tv.pixy.live;S.browser_fallback_url=https%3A%2F%2Fd.pixy.tv%2Finvite%2F2;end";
    }
    if (ua.match(/iPhone/i) || ua.match(/iPod/i) || ua.match(/iPad/i)) {
        linkEl.href = "pixy://" + loc;
    }

    //点击join live按钮
    linkEl.onclick = function() {
        appOpened = false;
        if (heartbeat == null) {
            heartbeat = window.setInterval(function() {
                var now = new Date().getTime();
                var diff = now - lastInterval - 200;
                lastInterval = now;
                if (diff > 500) { // don't trigger on small stutters less than 1000ms
                    before = new Date().getTime() - 3000;
                    tipsShown = new Date().getTime();
                    if (heartbeat != null) {
                        window.clearTimeout(heartbeat);
                        heartbeat = null;
                    }
                }
            }, 200);
        }
        if (timeout != null) {
            window.clearTimeout(timeout);
            timeout = null;
        }
        before = new Date().getTime();
        timeout = window.setTimeout(function() {
            var now = new Date().getTime();
            if (heartbeat != null) {
                window.clearTimeout(heartbeat);
                heartbeat = null;
            }
            if (now - before > 2500 || appOpened) {
            } else {
                // open app store
                if (navigator.userAgent.match(/Android/i)) {
                    window.location = "https://d.pixy.tv/invite/2";
                } else if (navigator.userAgent.match(/iPhone/i)
                        || navigator.userAgent.match(/iPad/i)
                        || navigator.userAgent.match(/iPod/i)) {
                    window.location = "https://itunes.apple.com/app/id1122622681";
                }
            }
        }, 2000);
        window.location = this.href;
        console.log(this.href);
    };
    if (ua.indexOf("Android") != -1 || ua.match(/iPhone/i) || ua.match(/iPod/i)) { // || ua.match(/iPad/i)
        document.querySelector(".pc_show").style.display = "none";
        document.querySelector(".download_link").style.display = "block";
        document.querySelector(".join_live").style.display = "block";
        document.querySelector("#logo_evaluate").className = 'logo_evaluate';
        document.querySelector("#arrow-right").className = 'arrow-right';
    } else {
        document.querySelector(".pc_show").style.display = "block";
        document.querySelector(".download_link").style.display = "none";
        document.querySelector(".join_live").style.display = "none";
        document.querySelector(".text").className = 'text pc_style';
        document.querySelector("#btn_appstore").className = 'btn_appstore';
        document.querySelector("#btn_Playstore").className = 'btn_Playstore';
    }
    if (navigator.userAgent.match(/Android/i)) {
        document.querySelector(".download_link").href = "https://d.pixy.tv/invite/2";
    } else if (navigator.userAgent.match(/iPhone/i)
            || navigator.userAgent.match(/iPad/i)
            || navigator.userAgent.match(/iPod/i)) {
        document.querySelector(".download_link").href = "https://itunes.apple.com/app/id1122622681";
    }

    //点击下载按钮
    document.querySelector(".download_link").onclick = function() {
        if (navigator.userAgent.match(/iPhone/i)
                || navigator.userAgent.match(/iPad/i)
                || navigator.userAgent.match(/iPod/i)) {
            var redirected = getProperty("app.store.redirected");
            if (redirected == null) {
                setProperty("app.store.redirected", "1");
            }
            window.location = "https://itunes.apple.com/app/id1122622681";
        } else {
            var redirected = getProperty("google.play.redirected");
            if (redirected == null) {
                setProperty("google.play.redirected", "1");
            }
            window.location = "https://d.pixy.tv/invite/2";
        }
    };



    function getProperty(name) {
        var prefix = name + "=";
        var allCookies = document.cookie.split (';');
        for(var i = 0; i < allCookies.length; i++) {
            var item = allCookies[i].replace (/^\s*-/, "");
            if (item.indexOf (prefix) == 0) {
                return item.substring (prefix.length, item.length);
            }
        }
        return null;
    }
    function setProperty(name, value) {
        var toExpire = new Date();
        if (value == null) {
            value = "";
            toExpire.setTime (new Date().getTime () - 24 * 3600 * 1000);
        } else {
            toExpire.setTime (new Date().getTime () + 3 * 24 * 3600 * 1000);
        }
        document.cookie = name + "=" + value
                + "; expires=" + toExpire.toGMTString ()
                + "; path=/";
    }
    var done = false;
    var appOpened = false;
    var tipsShown = new Date().getTime();
    var before = new Date().getTime();
    var timeout = window.setTimeout(function() {
        var now = new Date().getTime();
        if (now - before > 2500 || appOpened) {
            // has new version of SOMA Messenger
            if (heartbeat != null) {
                window.clearTimeout(heartbeat);
                heartbeat = null;
            }
        } else {
            if (ua.indexOf("Android") != -1 && (ua.match(/Chrome/) || ua.match(/Firefox/))) {
                // Do not try to redirect to Google Play or download APK file automatically.
                if (heartbeat != null) {
                    window.clearTimeout(heartbeat);
                    heartbeat = null;
                }
            } else if (ua.indexOf("Android") != -1) {
                var tipsShown = new Date().getTime();
                window.setTimeout(function() {
                    var now = new Date().getTime();
                    if (now - tipsShown >= 3500 && now - tipsShown < 4000) {
                        //if (navigator.userAgent.match(/iPhone/i)
                        //      || navigator.userAgent.match(/iPad/i)
                        //      || navigator.userAgent.match(/iPod/i)) {
                        //  window.location = "https://itunes.apple.com/app/id1122622681";
                        //} else {
                        var redirected = getProperty("google.play.redirected");
                        if (redirected == null) {
                            setProperty("google.play.redirected", "1");
                            window.location = "https://d.pixy.tv/invite/2";
                        }
                        //}
                    }
                    if (heartbeat != null) {
                        window.clearTimeout(heartbeat);
                        heartbeat = null;
                    }
                }, 3500);
            } else {
                if ((navigator.userAgent.match(/iPhone/i)
                        || navigator.userAgent.match(/iPad/i)
                        || navigator.userAgent.match(/iPod/i))
                        && !navigator.userAgent.match(/ OS [12345678]_/)) {
                    var tipsShown = new Date().getTime();
                    window.setTimeout(function() {
                        var now = new Date().getTime();
                        if (now - tipsShown >= 3500 && now - tipsShown < 4000) {
                            var redirected = getProperty("app.store.redirected");
                            if (redirected == null) {
                                setProperty("app.store.redirected", "1");
                                window.location = "https://itunes.apple.com/app/id1122622681";
                            }
                        }
                        if (heartbeat != null) {
                            window.clearTimeout(heartbeat);
                            heartbeat = null;
                        }
                    }, 3500);
                }
                // do nothing
            }
        }
        done = true;
    }, 2000);

    // For all other browsers except Safari (which do not support pageshow and pagehide properly)
    var lastInterval = new Date().getTime();
    var heartbeat = window.setInterval(function() {
        var now = new Date().getTime();
        var diff = now - lastInterval - 200;
        lastInterval = now;
        if (diff > 500) { // don't trigger on small stutters less than 1000ms
            before = new Date().getTime() - 3000;
            tipsShown = new Date().getTime();
            if (heartbeat != null) {
                window.clearTimeout(heartbeat);
                heartbeat = null;
            }
        }
    }, 200);

    window.addEventListener('pagehide', function () {
        tipsShown = new Date().getTime();
        if (!done) {
            appOpened = true;
            done = true;
        }
        if (timeout != null) {
            window.clearTimeout(timeout);
            timeout = null;
        }
        if (heartbeat != null) {
            window.clearTimeout(heartbeat);
            heartbeat = null;
        }
    }, false);
    window.addEventListener('pageshow', function () {
        tipsShown = new Date().getTime();
        if (heartbeat != null) {
            window.clearTimeout(heartbeat);
            heartbeat = null;
        }
    }, false);
    window.addEventListener('blur', function () {
        tipsShown = new Date().getTime();
        if (!done) {
            appOpened = true;
        }
        if (timeout != null) {
            window.clearTimeout(timeout);
            timeout = null;
        }
        if (heartbeat != null) {
            window.clearTimeout(heartbeat);
            heartbeat = null;
        }
    }, false);


   </script>
</body>

</html>
