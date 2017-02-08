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
    <meta property="og:title" content="PIXY" />
    <meta property="og:site_name" content="PIXY" />
    <meta property="og:image" content="https://m.pixy.tv/static/images/ic_applogo.png" />
    <meta property="og:description" content="Chat live on PIXY with Madison, Nathaniel and more! " />
    <meta name="twitter:card" content="summary" />
    <meta property="twitter:site" content="@pixymessenger" />
    <meta property="twitter:title" content="PIXY" />
    <meta property="twitter:description" content="Chat live on PIXY with Madison, Nathaniel and more! " />
    <meta property="twitter:image" content="https://m.pixy.tv/static/images/ic_applogo.png" />
    <meta property="al:ios:app_store_id" content="1122622681" />
    <meta property="al:ios:app_name" content="PIXY" />
    <!-- <meta name="apple-itunes-app" content="app-id=1122622681, app-argument: soma://soma.im/join?g=31242" /> -->
    <title><fmt:message key="pixy_recruit_title"></fmt:message></title>
    <script src="/static/js/font_lct.js"></script>
    <style>
        body {
            font-family: San Francisco,Helvetica,sans-serif;
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
        .apply {
            position: absolute;
            left: 50%;
            bottom: 2.2rem;
            margin-left: -4.2rem;
            width: 8.4rem;
            height: 2.9rem;
            border-radius: 25px;
            -webkit-tap-highlight-color: #FFD417;
        }
    </style>

</head>

<body class="language_${language}" language="${language}" from="${from}">
   <div class="main">
       <img src="/static/images/talker/ic_banner_talker_${language}.png" class="bg_img">
       <c:if test="${from=='pixy'}">
          <a href="http://pixy.tv/talker/apply" class="apply"></a>
       </c:if>
       <c:if test="${from=='soma'}">
          <a href="javascript:;" class="apply" id="linkToStore"></a>
       </c:if>
   </div>
   <script type="text/javascript">
      window.onload=function() { 
          var isPixy = '${from}';
          if(isPixy !== "pixy") {
              //点击apply按钮
              var btn_apply = document.querySelector("#linkToStore");
              btn_apply.onclick = function(){
                  if (navigator.userAgent.match(/iPhone/i)
                          || navigator.userAgent.match(/iPad/i)
                          || navigator.userAgent.match(/iPod/i)) {
                      window.location = "https://itunes.apple.com/app/id1122622681";
                  } else {
                      window.location = "https://d.pixy.tv/invite/2";
                  }
              }
          }
          
       }
      
   </script>

</body>

</html>
