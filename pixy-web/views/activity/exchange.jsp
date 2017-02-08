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
    <title><fmt:message key="pixy_exchange_title"></fmt:message></title>
    <script src="/static/js/font_lct.js"></script>
    <style>
        body {
            font-family: San Francisco,Helvetica,sans-serif;
            background-color: #A478FF;
        }
        *{
            margin:0;
            padding:0;
        }
        .main {
            width: 100%;
            margin: 0 auto;
            max-width: 620px;
            position: relative;
        }
        img {
            width: 100%;
            height: 100%;
        }
        .btn_exchange {
            position: absolute;
            left: 50%;
            bottom: 2rem;
            margin-left: -7.4rem;
            width: 14.7rem;
            height: 2.6rem;
            border-radius: 25px;
        }
        .language_ar .btn_exchange {
            bottom: 2.7rem;
        }
        .language_es .btn_exchange {
            bottom: 1.7rem;
        }
        .btn_exchange:active {
            background-color: #FD7A57;
        }
    </style>

</head>

<body class="language_${language}" language="${language}" from="${from}">
   <div class="main">
       <img src="/static/images/exchange/ic_exchange_${language}.png" class="bg_img">
       <a href="https://pixy.tv/charge_by_star" class="btn_exchange"></a>
   </div>
   
</body>

</html>
