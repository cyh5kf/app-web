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
    <title><fmt:message key="pixy_actitle_rec"></fmt:message></title>
    <script src="/static/js/font_lct.js"></script>
    <link rel='stylesheet' href='/static/css/nprogress.css'/>
    <link rel="stylesheet" type="text/css" href="/static/css/pixyShow.css">

</head>

<body class="language_${language}" language="${language}">
   <div class="contain">
       <img src="/static/images/Activity/pixyShow_bg.png" class="head_title">
       <ul>
           <c:forEach var="recoUser" items="${recommendBroadcasters}">
               <li >
                   <div class="broadcast_head">
                       <div class="broadcast_info" onclick="clickUserProfile(${recoUser.uid})">
                           <img class="avatar" src="${recoUser.avatar}">
                           <div class="info_right">
                               <div class="broadcast_name">${recoUser.name}</div>
                               <div class="broadcast_address">${recoUser.signature}</div>
                           </div>
                       </div>
                       <div  <c:if test="${recoUser.follow ne true}">onclick="clickFollow(${recoUser.uid})"</c:if> class="follow_${recoUser.uid} follow_Common <c:if test="${recoUser.follow eq true}">following</c:if> <c:if test="${recoUser.follow ne true}">follow</c:if> "><c:if test="${recoUser.follow ne true}"><fmt:message key="pixy_live_Follow"></fmt:message></c:if><c:if test="${recoUser.follow}"><fmt:message key="pixy_common_following"></fmt:message></c:if></div>
                   </div>
                   <div class="broadcast_body" onclick="clickUserProfile(${recoUser.uid})">
                       <img class="broadcast_photo" src="${recoUser.avatar}">
                       <div class="text">
                           <p class="text_top">${recoUser.introduction}</p>
                           <p class="text_bottom">${recoUser.nextBroadcast}</p>
                           <div class="mask"></div>
                       </div>
                   </div>
                   <div class="broadcast_footer">
                       <div class="contribution"><fmt:message key="pixy_common_contribution"></fmt:message></div>
                       <div class="avatars">
                           <c:forEach var="contributor" items="${recoUser.contributorUsers}" varStatus="counter">
                               <div class="avatar_contain ${!counter.last ? '' : 'last_avatar'}" onclick="clickUserProfile(${contributor.uid})">
                                   <img class="another_avatar" src="${contributor.avatar}">
                                   <img class="ic_no_small " src="/static/images/Activity/ic_no${counter.count}_small_3x.png">
                               </div>
                           </c:forEach>
                       </div>
                       <c:if test="${language=='en'}">
                            <img class="arrow_img" src="/static/images/ic_next1.png">
                       </c:if>
                       <c:if test="${language=='ar'}">
                            <img class="arrow_img" src="/static/images/ic_next_a.png">
                       </c:if>
                   </div>
               </li>
           </c:forEach>
       </ul>
   </div>
   <script src="/static/js/jquery-1.9.1.min.js"></script>
   <script src='/static/js/nprogress.js'></script>
   <script src='/static/js/imagesloaded.pkgd.min.js'></script>
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
       function clickFollow(followUid) {
           var isOpenInApp = ${!isOpenInApp ? 'false' : 'true'};
           if(isOpenInApp){
               $.ajax({
                   url: "/private/follow?followUid="+followUid+"&"+window.location.href.slice(window.location.href.indexOf('?') + 1),
                   type: "POST",
                   contentType: "application/json"
               }).done(function (ret) {
                   if(ret.code == 0){
                       $(".follow_" + followUid).removeClass("follow");
                       $(".follow_" + followUid).addClass("following");
                       $(".follow_" + followUid).html("following")
                       $(".follow_" + followUid).attr('onclick','').unbind('click');
                   }
               });
           }else{
               redirectToDownload(followUid);
           }
       }
       function clickUserProfile(uid) {
           var isOpenInApp = ${!isOpenInApp ? 'false' : 'true'};
           if(isOpenInApp){
               window.location.href = "https://pixy.tv/user_profile?uid="+uid+"&auto_following=false";
           }else {
               redirectToDownload(uid);
           }
       }
       function redirectToDownload(uid) {
           var loc = "https://pixy.tv/user_profile?uid="+uid+"&auto_following=false";
           if (navigator.userAgent.match(/iPhone/i)
                   || navigator.userAgent.match(/iPad/i)
                   || navigator.userAgent.match(/iPod/i)) {
               window.location.href = loc;
           } else {
               window.location = "intent://" + "pixy.tv/user_profile?uid="+uid+"&auto_following=false" + "#Intent;scheme=pixy;package=tv.pixy.live;S.browser_fallback_url=https%3A%2F%2Fd.pixy.tv%2Finvite%2F2;end";;
           }

       }
      
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
   </script>

</body>

</html>
