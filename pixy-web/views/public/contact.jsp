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
    <title>CONTACT US</title>
    <script src="/static/js/font_lct.js"></script>
    <script type="text/javascript" src="/static/js/jquery-1.9.1.min.js"></script>
    <script src='/static/js/nprogress.js'></script>
    <script src='/static/js/imagesloaded.pkgd.min.js'></script>
    <link rel='stylesheet' href='/static/css/nprogress.css'/>
    <link rel="stylesheet" type="text/css" href="/static/css/termsService.css">
</head>

<body>
    <div class="contact_content">
      <p class="contact_title">CONTACT US</p>
      <!-- <p class="contact_head">Product Support</p>
      <p class="contact_text">Need help? Please feel free to contact our product support:</p>
      <p class="email">support@pixy.tv</p> -->

      <p class="contact_head">Feedback</p>
      <p class="contact_text">Got some feedback? We would like to hear from you:</p>
      <p class="email">feedback@pixy.tv</p>

      <p class="contact_head head_top1">Business Inquiries</p>
      <p class="contact_text">Please feel free to contact our business team:</p>
      <p class="email">bd@pixy.tv</p>
    </div>

  <script type="text/javascript">
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
