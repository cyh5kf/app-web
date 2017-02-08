<%@ page isELIgnored="false" contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <%
        Object isDev = request.getParameter("isAppWebDev");
        double cssVersion = 0.004;
        boolean isDevVersion = false;
        if ("true".equals(isDev)){
            cssVersion = Math.random();
            isDevVersion = true;
        }
    %>
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
    <title>PIXY</title>
    <script src="/static/js/font_lct.js"></script>
    <link rel="stylesheet" type="text/css" href="/static/css/hotTalker.css?mm=<%=cssVersion%>">
</head>

<body class="language_${language}" language="${language}" from="${from}">
    <div class="main">
        <ul class="talker_wrap">
            <c:forEach var="d" varStatus="obj" items="${talkerList}">
            <li class="talkerList talkerList${obj.count%2}">
                <img src="${d.avatar}" class="avatar">
                <img src="/static/images/ic_online.png" class="ic_online">
                <div class="talker_info">
                    <p class="takler_name">${d.name}</p>
                    <div class="old_language">
                        <div class="gender_old gender_color${d.gender}">
                            <img src="/static/images/ic_gender${d.gender}.png" class="gender">
                            ${d.age}
                        </div>
                        <div class="language">${d.displayLiveLang}</div>
                    </div>
                    <div class="text">${d.signature}</div>
                </div>
            </li>
            </c:forEach>
        </ul>
        <div class="bottom-down">
            <div class="bottom-down-inner">
                <img class="ic_pixy_logo" src="/static/images/ic_pixy_logo.png" >
                <div class="ic_pixy_logo_name">
                    <img src="/static/images/ic_pixy_logo_name.png">
                    <span>Let’s Talk</span>
                </div>
                <a class="down-btn onClickPixyDownLoad" >
                    <fmt:message key="pixy_common_download"></fmt:message>
                </a>
                <div class="clearfix"></div>
            </div>
        </div>
    </div>

    <script src="/static/js/jquery-1.10.1.min.js"></script>
    <script>
        $(function() {

            $('.talkerList').each(function () {
                var $this = $(this);
                $this.click(function() {
                    if (navigator.userAgent.match(/Android/i)) {
                        window.location = "https://d.pixy.tv/invite/2";
                    } else if (navigator.userAgent.match(/iPhone/i)
                            || navigator.userAgent.match(/iPad/i)
                            || navigator.userAgent.match(/iPod/i)) {
                        window.location = "https://itunes.apple.com/app/id1122622681";
                    } else {
                        window.location = "https://pixy.tv/";
                    }
                });
            });


            $('.onClickPixyDownLoad').click(function() {
                if (navigator.userAgent.match(/Android/i)) {
                    window.location = "https://d.pixy.tv/invite/2";
                } else if (navigator.userAgent.match(/iPhone/i)
                        || navigator.userAgent.match(/iPad/i)
                        || navigator.userAgent.match(/iPod/i)) {
                    window.location = "https://itunes.apple.com/app/id1122622681";
                } else {
                    window.location = "https://pixy.tv/";
                }
            });


        }) 

    </script>

</body>
</html>
