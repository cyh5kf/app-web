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
    <title><fmt:message key="pixy_actitle_leader"></fmt:message></title>
    <script src="/static/js/font_lct.js"></script>
    <link rel='stylesheet' href='/static/css/nprogress.css'/>
    <link rel="stylesheet" type="text/css" href="/static/css/campaign.css">
    <link rel="stylesheet" href="/static/css/swiper.min.css">

</head>

<body class="language_${language}" language="${language}">
   <div class="contain">
       <c:if test="${language=='en'}">
            <img src="/static/images/Activity/english_daily_leaderboard1.png" class="head_title">
       </c:if>
       <c:if test="${language=='ar'}">
            <img src="/static/images/Activity/arab__daily_leaderboard1.png" class="head_title">
       </c:if>
       <c:if test="${language=='es'}">
            <img src="/static/images/Activity/spanish_daily_leaderboard.png" class="head_title">
       </c:if>
       <div class="tabs"> 
          <div class="active tab"><fmt:message key="pixy_leader_broadcaster"></fmt:message></div> 
          <div class="tab"><fmt:message key="pixy_leader_patron"></fmt:message></div>
       </div>
       <div id="tabs-container" class="swiper-container">
          <div class="swiper-wrapper">


              <div class="swiper-slide">
                  <div class="leaderBroadcaster">
                      <div class="content-slide">
                          <ul class="broadcasters_list">
                              <c:forEach var="rank" items="${broadcasterRankList}">

                                  <c:if test="${rank.index==1}">
                                     <li data-uid="${rank.uid}" onclick="clickUserProfile(${rank.uid})">
                                         <img class="rank_img" src="/static/images/Activity/ic_no1_3x.png">
                                         <img src="${rank.avatar130}" class="avatar">
                                         <div class="broadcaster_name">
                                              <div class="name_text">${rank.name}</div>
                                              <img src="/static/images/Activity/ic_gender_${rank.gender}.png" class="gender">
                                              <div class="level">
                                                  <div class="level_contain bg_${rank.levelStyle}">
                                                      <img src="/static/images/Activity/ic_level_${rank.levelStyle}.png" class="ic_level">
                                                      <span class="level_num">${rank.level}</span>
                                                  </div>
                                              </div>
                                          </div>

                                         <span class="stars"><fmt:message key="pixy_live_stars_received"></fmt:message> <span class="star_num">${rank.display_amount}</span> <fmt:message key="pixy_live_stars_received1"></fmt:message></span>
                                     </li>
                                  </c:if>

                                  <c:if test="${rank.index==2}">
                                      <li data-uid="${rank.uid}" onclick="clickUserProfile(${rank.uid})">
                                          <img class="rank_img" src="/static/images/Activity/ic_no2_3x.png">
                                          <img src="${rank.avatar130}" class="avatar">
                                          <div class="broadcaster_name">
                                              <span class="name_text">${rank.name}</span>
                                              <img src="/static/images/Activity/ic_gender_${rank.gender}.png" class="gender">
                                              <div class="level">
                                                  <div class="level_contain bg_${rank.levelStyle}">
                                                      <img src="/static/images/Activity/ic_level_${rank.levelStyle}.png" class="ic_level">
                                                      <span class="level_num">${rank.level}</span>
                                                  </div>
                                              </div>
                                          </div>

                                         <span class="stars"><fmt:message key="pixy_live_stars_received"></fmt:message> <span class="star_num">${rank.display_amount}</span> <fmt:message key="pixy_live_stars_received1"></fmt:message></span>
                                     </li>
                                  </c:if>


                                  <c:if test="${rank.index==3}">
                                      <li data-uid="${rank.uid}" onclick="clickUserProfile(${rank.uid})">
                                          <img class="rank_img" src="/static/images/Activity/ic_no3_3x.png">
                                          <img src="${rank.avatar130}" class="avatar">
                                          <div class="broadcaster_name">
                                              <span class="name_text">${rank.name}</span>
                                              <img src="/static/images/Activity/ic_gender_${rank.gender}.png" class="gender">
                                              <div class="level">
                                                  <div class="level_contain bg_${rank.levelStyle}">
                                                      <img src="/static/images/Activity/ic_level_${rank.levelStyle}.png" class="ic_level">
                                                      <span class="level_num">${rank.level}</span>
                                                  </div>
                                              </div>
                                           </div>

                                         <span class="stars"><fmt:message key="pixy_live_stars_received"></fmt:message> <span class="star_num">${rank.display_amount}</span> <fmt:message key="pixy_live_stars_received1"></fmt:message></span>
                                     </li>
                                  </c:if>

                                  <c:if test="${rank.index>3}">
                                      <li data-uid="${rank.uid}" onclick="clickUserProfile(${rank.uid})">
                                         <span class="no_num">NO.${rank.index}</span>
                                         <img src="${rank.avatar130}" class="avatar">
                                         <div class="broadcaster_name">
                                              <span class="name_text">${rank.name}</span>
                                              <img src="/static/images/Activity/ic_gender_${rank.gender}.png" class="gender">
                                              <div class="level">
                                                  <div class="level_contain bg_${rank.levelStyle}">
                                                      <img src="/static/images/Activity/ic_level_${rank.levelStyle}.png" class="ic_level">
                                                      <span class="level_num">${rank.level}</span>
                                                  </div>
                                              </div>
                                          </div>

                                         <span class="stars"><fmt:message key="pixy_live_stars_received"></fmt:message> <span class="star_num">${rank.display_amount}</span> <fmt:message key="pixy_live_stars_received1"></fmt:message></span>
                                     </li>
                                  </c:if>

                                  </c:forEach>
                                 
                             </ul>
                      </div>
                     
                  </div>
              </div>



              <div class="swiper-slide">
                  <div class="leaderBroadcaster">
                      <div class="content-slide">
                          <ul class="broadcasters_list">
                              <c:forEach var="rank" items="${audienceRankList}">

                                  <c:if test="${rank.index==1}">
                                     <li data-uid="${rank.uid}" onclick="clickUserProfile(${rank.uid})">
                                         <img class="rank_img" src="/static/images/Activity/ic_no1_3x.png">
                                         <img src="${rank.avatar130}" class="avatar">
                                         <div class="broadcaster_name">
                                              <span class="name_text">${rank.name}</span>
                                              <img src="/static/images/Activity/ic_gender_${rank.gender}.png" class="gender">
                                              <div class="level">
                                                  <div class="level_contain bg_${rank.levelStyle}">
                                                      <img src="/static/images/Activity/ic_level_${rank.levelStyle}.png" class="ic_level">
                                                      <span class="level_num">${rank.level}</span>
                                                  </div>
                                              </div>
                                          </div>

                                         <span class="stars"><fmt:message key="pixy_leader_gifted"></fmt:message> <span class="star_num">${rank.display_amount}</span> <fmt:message key="pixy_leader_gifted1"></fmt:message></span>
                                     </li>
                                  </c:if>

                                  <c:if test="${rank.index==2}">
                                      <li data-uid="${rank.uid}" onclick="clickUserProfile(${rank.uid})">
                                          <img class="rank_img" src="/static/images/Activity/ic_no2_3x.png">
                                          <img src="${rank.avatar130}" class="avatar">
                                          <div class="broadcaster_name">
                                              <span class="name_text">${rank.name}</span>
                                              <img src="/static/images/Activity/ic_gender_${rank.gender}.png" class="gender">
                                              <div class="level">
                                                  <div class="level_contain bg_${rank.levelStyle}">
                                                      <img src="/static/images/Activity/ic_level_${rank.levelStyle}.png" class="ic_level">
                                                      <span class="level_num">${rank.level}</span>
                                                  </div>
                                              </div>
                                          </div>

                                         <span class="stars"><fmt:message key="pixy_leader_gifted"></fmt:message> <span class="star_num">${rank.display_amount}</span> <fmt:message key="pixy_leader_gifted1"></fmt:message></span>
                                     </li>
                                  </c:if>


                                  <c:if test="${rank.index==3}">
                                      <li data-uid="${rank.uid}" onclick="clickUserProfile(${rank.uid})">
                                          <img class="rank_img" src="/static/images/Activity/ic_no3_3x.png">
                                          <img src="${rank.avatar130}" class="avatar">
                                          <div class="broadcaster_name">
                                              <span class="name_text">${rank.name}</span>
                                              <img src="/static/images/Activity/ic_gender_${rank.gender}.png" class="gender">
                                              <div class="level">
                                                  <div class="level_contain bg_${rank.levelStyle}">
                                                      <img src="/static/images/Activity/ic_level_${rank.levelStyle}.png" class="ic_level">
                                                      <span class="level_num">${rank.level}</span>
                                                  </div>
                                              </div>
                                           </div>

                                         <span class="stars"><fmt:message key="pixy_leader_gifted"></fmt:message> <span class="star_num">${rank.display_amount}</span> <fmt:message key="pixy_leader_gifted1"></fmt:message></span>
                                     </li>
                                  </c:if>

                                  <c:if test="${rank.index>3}">
                                      <li data-uid="${rank.uid}" onclick="clickUserProfile(${rank.uid})">
                                         <span class="no_num">NO.${rank.index}</span>
                                         <img src="${rank.avatar130}" class="avatar">
                                         <div class="broadcaster_name">
                                              <span class="name_text">${rank.name}</span>
                                              <img src="/static/images/Activity/ic_gender_${rank.gender}.png" class="gender">
                                              <div class="level">
                                                  <div class="level_contain bg_${rank.levelStyle}">
                                                      <img src="/static/images/Activity/ic_level_${rank.levelStyle}.png" class="ic_level">
                                                      <span class="level_num">${rank.level}</span>
                                                  </div>
                                              </div>
                                          </div>

                                         <span class="stars"><fmt:message key="pixy_leader_gifted"></fmt:message> <span class="star_num">${rank.display_amount}</span> <fmt:message key="pixy_leader_gifted1"></fmt:message></span>
                                     </li>
                                  </c:if>

                                  </c:forEach>
                                 
                             </ul>
                      </div>
                     
                  </div>
              </div>




              
          </div>
           
        </div>
   </div>
   <script src="/static/js/jquery-1.10.1.min.js"></script>
   <script src='/static/js/nprogress.js'></script>
   <script src='/static/js/imagesloaded.pkgd.min.js'></script>
   <script src="/static/js/swiper-3.3.1.jquery.min.js"></script>
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


       $(function(){
          //设置默认头像
          $(".avatar").each(function(){
             var $img = $(this);
             var img = $img[0];
             img.onerror = function(){
                 var mm = $img.data("loaded");
                 if(mm!=='finished'){
                     $img.attr("src","/static/images/defult_avatar_min.png");
                     $img.data("loaded","finished");
                 }
             };
         });

          //触摸滑动事件
          var tabsSwiper = new Swiper('#tabs-container',{
              speed:500,
              onSlideChangeStart: function(){
                $(".tabs .active").removeClass('active');
                $(".tabs .tab").eq(tabsSwiper.activeIndex).addClass('active');
              }
            })
            $(".tabs .tab").on('touchstart mousedown',function(e){
                e.preventDefault();
                $(".tabs .active").removeClass('active');
                $(this).addClass('active');
                tabsSwiper.slideTo($(this).index());
            })
            $(".tabs .tab").click(function(e){
              e.preventDefault();
            })
       })

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
          
   </script>

</body>

</html>
