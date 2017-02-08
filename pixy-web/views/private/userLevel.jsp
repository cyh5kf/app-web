<%@ page contentType="text/html;charset=UTF-8" %>
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
    <title><fmt:message key="pixy_common_level"></fmt:message></title>
    <script src="/static/js/font_lct.js"></script>
    <link rel='stylesheet' href='/static/css/nprogress.css'/>
    <link rel="stylesheet" type="text/css" href="/static/css/level.css?201609271548">
</head>

<body class="language_${language}" language="${language}">
    <div class="main">
        <div class="diamonds">
            <div class="number"><i></i>${diamonds}</div>
            <p><fmt:message key="pixy_live_diamondspend"></fmt:message></p>
        </div>
        <div class="gold_medal">
            <img class="goldmedal_img" src="/static/images/ic_goldmedia.png">
            <div class="level_num">
                <div class="num">${level}</div>
                <div class="letter"><fmt:message key="pixy_common_level"></fmt:message></div>
            </div>
        </div>
        <div class="progress_bar">
            <div class="scale">

            </div>
            <div class="progress_bg">
                <div class="progress_inner" style="width: ${widthPercent}"></div>
            </div>
        </div>
        <div class="top_text">
            <p class="text1 direction"><fmt:message key="pixy_level_normalexplain"></fmt:message></p>
            <p class="text2"><fmt:message key="pixy_level_advancedexplain"></fmt:message></p>
        </div>
        <div class="title">
            <p class="title_text"><fmt:message key="pixy_level_privilegeintro"></fmt:message></p>
        </div>
        <div class="introduction">
            <div class="project">
                <img src="/static/images/ic_specialIdentity_3x.png">
                <div class="introduction_text">
                    <p class="text_top"><fmt:message key="pixy_level_intro_identity"></fmt:message></p>
                    <p class="text_bottom"><fmt:message key="pixy_level_intro_identitydetail"></fmt:message></p>
                </div>
            </div>
            <div class="project">
                <img src="/static/images/ic_topRanking_3x.png">
                <div class="introduction_text">
                    <p class="text_top"><fmt:message key="pixy_level_intro_ranking"></fmt:message></p>
                    <p class="text_bottom"><fmt:message key="pixy_level_intro_rankingdetail"></fmt:message></p>
                </div>
            </div>
            <div class="project">
                <img src="/static/images/ic_greaterReward_3x.png">
                <div class="introduction_text">
                    <p class="text_top"><fmt:message key="pixy_level_intro_reward"></fmt:message></p>
                    <p class="text_bottom"><fmt:message key="pixy_level_intro_rewarddetail"></fmt:message></p>
                </div>
            </div>
            <div class="project noBorder">
                <c:if test="${level>=60}">
                    <img src="/static/images/ic_specialeffect_3x.png">
                </c:if>
                <c:if test="${level<60}">
                    <img src="/static/images/ic_specialeffect_disable_3x.png">
                </c:if>
                <div class="introduction_text">
                    <p class="text_top direction"><fmt:message key="pixy_level_intro_effect"></fmt:message></p>
                    <p class="text_bottom"><fmt:message key="pixy_level_intro_effectdetail"></fmt:message></p>
                </div>
            </div>
        </div>
    </div>
    <script src="/static/js/jquery-1.9.1.min.js"></script>
    <script src='/static/js/nprogress.js'></script>
    <script src='/static/js/imagesloaded.pkgd.min.js'></script>
    <script type="text/javascript">
        //加载进度条
        var completed = 0,
                total = $('img').length;
        NProgress.start(); //此方法将启动进度条

        $('img').imagesLoaded().done(function(instance){
            NProgress.done(); //这里调用进度条指示完成
        }).progress(function(instance, image){
            NProgress.start();
            completed++; //添加计数器
            var imgprogress = completed/total; //生成进度数值
            NProgress.set(imgprogress); //每次加载完毕一张图片，则设置进度为新值，使用.set方法
        });

        //设置多语言
        var language = $("body").attr("language");

        if(language.indexOf('en') > -1){
            var $html = '<span class="numerator">${currentScore}</span>'
                        +'<span>/</span>'
                        +'<span class="denominator">${totalScore}</span>'
            $(".scale").html($html);

        } else if (language.indexOf('ar') > -1) {
            var $html = '<span class="denominator">${totalScore}</span>'
                        +'<span>/</span>'
                        +'<span class="numerator">${currentScore}</span>'
            $(".scale").html($html);

        } else {
            var $html = '<span class="numerator">${currentScore}</span>'
                        +'<span>/</span>'
                        +'<span class="denominator">${totalScore}</span>'
            $(".scale").html($html);

        }
    </script>
</body>
</html>
