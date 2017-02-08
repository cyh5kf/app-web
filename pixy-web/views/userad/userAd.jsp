<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="format-detection" content="telephone=no">
    <meta name="apple-mobile-web-app-capable" content="yes" />
    <meta name="viewport" content="initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no, width=device-width">
    <title>${page_title}</title>
    <script src="https://m.pixy.tv/static/js/font_lct.js"></script>
    <script type="text/javascript" src="https://m.pixy.tv/static/js/jquery-1.9.1.min.js"></script>
    <script src='https://m.pixy.tv/static/js/nprogress.js'></script>
    <script src='https://m.pixy.tv/static/js/imagesloaded.pkgd.min.js'></script>
    <link rel='stylesheet' href='https://m.pixy.tv/static/css/nprogress.css'/>
    <style>
        * {
            margin: 0;
            padding: 0;
        }
        img {
            border:none;
        }
        .main {
            width: 100%;
            margin: 0 auto;
        }
        .main a {
            width: 100%;
            height: 100%;
        }
        .main img {
            width: 100%;
            height: 100%;
        }
    </style>
</head>
<body>
<div class="main">
    <c:if test="${uid ne 0}">
        <a href="https://pixy.tv/user_profile?uid=${uid}&auto_following=true">
            <img src="${deep_pic_url}">
        </a>
    </c:if>
    <c:if test="${uid eq 0}">
        <img src="${deep_pic_url}">
    </c:if>
</div>

<script type="text/javascript">
    var completed = 0,
            total = $('img').length;
    NProgress.start(); //此方法将启动进度条

    $('img').imagesLoaded().done(function(instance){
        NProgress.done(); //这里调用进度条指示完成
    }).progress(function(instance, image){
        NProgress.start();
        completed++; //添加   计数器
        var imgprogress = completed/total; //生成进度数值
        NProgress.set(imgprogress); //每次加载完毕一张图片，则设置进度为新值，使用.set方法
    });
</script>
</body>
</html>