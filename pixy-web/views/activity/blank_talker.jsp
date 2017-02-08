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
    <title><fmt:message key="pixy_recruit_title"></fmt:message></title>
    <script src="/static/js/font_lct.js"></script>
    <link rel="stylesheet" type="text/css" href="/static/css/downloadPage.css?20169182055">

</head>

<body>
   <div class="contain language_${language}">
     <img src="/static/images/talker/logo_pixy_3x.png" class="talker_logo">
     <div class="text text_talker">
        <p class="talker_text direction">" <fmt:message key="pixy2_recruit_oldversion"></fmt:message> "</p>
     </div>
     

<!--       <div class="appstore_content">
        <a class="download_appstore" href="https://itunes.apple.com/app/id1122622681"></a>
      </div>
      <div class="playstore_content">
        <a class="download_Playstore" href="https://d.pixy.tv/invite/2"></a>
      </div> -->

      <div class="download_btn">
          <span class="content"><i class="ic_downloadArrow"></i><fmt:message key="pixy_common_download"></fmt:message></span>
      </div>
         
     <p class="copyright">© PIXY 2016</p>
   </div>
  <script type="text/javascript">
      window.onload=function() { 
          var download_btn = document.querySelector(".download_btn");
          download_btn.onclick = function(){
              if (navigator.userAgent.match(/iPhone/i)
                      || navigator.userAgent.match(/iPad/i)
                      || navigator.userAgent.match(/iPod/i)) {
                  window.location = "https://itunes.apple.com/app/id1122622681";
              } else {
                  window.location = "https://d.pixy.tv/invite/2";
              }
          }
          
       }
      
   </script>
</body>

</html>

