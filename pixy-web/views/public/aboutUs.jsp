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
    <title><fmt:message key="pixy_settings_aboutus"></fmt:message></title>
    <script src="/static/js/font_lct.js"></script>
    <link rel='stylesheet' href='/static/css/nprogress.css'/>
    <link rel="stylesheet" type="text/css" href="/static/css/about_us.css">
</head>

<body class="language_${language}" language="${language}">
   <div class="main">
    <img class="logo_img" src="/static/images/ic_logo_about.png">
    <p class="pix_version">PIXY</p>
    <div class="jump_label">
      <div class="pl">
        <div class="label" onclick="community()">
          <span><fmt:message key="pixy_settings_aboutus_community"></fmt:message></span>
          <div class="arrow-right"></div>
        </div>
        <div class="label" onclick="Privacy()">
          <span><fmt:message key="pixy_settings_aboutus_privacy"></fmt:message></span>
          <div class="arrow-right"></div>
        </div>
        <div class="label" onclick="termsService()">
          <span><fmt:message key="pixy_settings_aboutus_terms"></fmt:message></span>
          <div class="arrow-right"></div>
        </div>
        <div class="label last_label" onclick="copyright()">
          <span><fmt:message key="pixy_settings_aboutus_copyright"></fmt:message></span>
          <div class="arrow-right"></div>
        </div>
      </div>
    </div>

    <div class="jump_label jump2">
      <div class="pl">
        <div class="label last_label" onclick="contact()">
          <span><fmt:message key="pixy_settings_aboutus_contact"></fmt:message></span>
          <div class="arrow-right"></div>
        </div>
      </div>
    </div>

    <footer>© PIXY 2016</footer>
   </div>
  <script type="text/javascript" src="/static/js/jquery-1.9.1.min.js"></script>
  <script src='/static/js/nprogress.js'></script>
  <script src='/static/js/imagesloaded.pkgd.min.js'></script>
  <script type="text/javascript">
        
       function community() {
           window.location.href="/public/communityGuidelines";
       }

       function Privacy() {
           window.location.href="/public/privacyPolicy";
       }

       function termsService() {
           window.location.href="/public/termsService";
       }

       function copyright() {
           window.location.href="/public/copyright";
       }

       function contact() {
           window.location.href="/public/contact";
       }
        
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
    
  </script>
   
</body>

</html>
