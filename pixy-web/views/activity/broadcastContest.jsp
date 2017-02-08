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
    <meta property="og:description" content="Win a Contract with PIXY. Join us now and show us what you've got!" />
    <meta name="twitter:card" content="summary" />
    <meta property="twitter:site" content="@pixymessenger" />
    <meta property="twitter:title" content="PIXY" />
    <meta property="twitter:description" content="Win a Contract with PIXY. Join us now and show us what you've got!" />
    <meta property="twitter:image" content="https://m.pixy.tv/static/images/ic_applogo.png" />
    <meta property="al:ios:app_store_id" content="1122622681" />
    <meta property="al:ios:app_name" content="PIXY" />
    <!-- <meta name="apple-itunes-app" content="app-id=1122622681, app-argument: soma://soma.im/join?g=31242" /> -->
    <title>$50K Giveaway</title>
    <script src="/static/js/font_lct.js"></script>
    <link rel='stylesheet' href='/static/css/nprogress.css'/>
    <link rel="stylesheet" type="text/css" href="/static/css/campaign.css">

</head>

<body>
   <div class="main">
       <div class="btn_operation">
           <div class="btn_details">Details</div>
           <div class="btn_join">Join</div>
       </div>

       <div class="btn_operation2" style="display: none;">
          <div class="btn_join right_spacing">Join</div>
          <div class="got_it">Got it!</div>
       </div>

       <div class="topBroadcasters" style="display: none;">
           <div class="top_title">Top Broadcasters</div>
           <ul class="broadcasters_list">
               <li>
                   <img class="rank_img" src="/static/images/Activity/ic_no1_3x.png">
                   <img src="/static/images/avatar.png" class="avatar">
                   <span class="broadcaster_name">
                        <span>Lucy Monkasion</span>
                        <img src="/static/images/Activity/ic_boy_3x.png" class="gender">
                        <div class="level bg_red">
                           <img src="/static/images/Activity/ic_sunwhite_3x.png" class="ic_level">
                           <span class="level_num">99</span>
                        </div>
                    </span>
                   
                   <span class="stars">received <span class="star_num">9867</span> stars</span>
                   <img class="arrow_img" src="/static/images/ic_next1.png">
               </li>
               <li>
                   <img class="rank_img" src="/static/images/Activity/ic_no2_3x.png">
                   <img src="/static/images/avatar.png" class="avatar">
                   <span class="broadcaster_name">
                        <span>Charlene Choi</span>
                        <img src="/static/images/Activity/ic_girl_3x.png" class="gender">
                        <div class="level bg_yellow">
                           <img src="/static/images/Activity/ic_moonwhite_3x.png" class="ic_level">
                           <span class="level_num">99</span>
                        </div>
                    </span>
                   
                   <span class="stars">received <span class="star_num">9867</span> stars</span>
                   <img class="arrow_img" src="/static/images/ic_next1.png">
               </li>
               <li>
                   <img class="rank_img" src="/static/images/Activity/ic_no3_3x.png">
                   <img src="/static/images/avatar.png" class="avatar">
                   <span class="broadcaster_name">
                        <span>Amondo</span>
                        <img src="/static/images/Activity/ic_boy_3x.png" class="gender">
                        <div class="level bg_blue">
                           <img src="/static/images/Activity/ic_starwhite_3x.png" class="ic_level">
                           <span class="level_num">99</span>
                        </div>
                    </span>
                   
                   <span class="stars">received <span class="star_num">9867</span> stars</span>
                   <img class="arrow_img" src="/static/images/ic_next1.png">
               </li>
               <li>
                   <span class="no_num">NO.4</span>
                   <img src="/static/images/avatar.png" class="avatar">
                   <span class="broadcaster_name">
                        <span>Lucy Monkasion</span>
                        <img src="/static/images/Activity/ic_gender_unspecified_3x.png" class="gender">
                        <div class="level bg_blue">
                           <img src="/static/images/Activity/ic_starwhite_3x.png" class="ic_level">
                           <span class="level_num">99</span>
                        </div>
                    </span>
                   
                   <span class="stars">received <span class="star_num">9867</span> stars</span>
                   <img class="arrow_img" src="/static/images/ic_next1.png">
               </li>
               <li>
                   <span class="no_num">NO.5</span>
                   <img src="/static/images/avatar.png" class="avatar">
                   <span class="broadcaster_name">
                        <span>Lucy Monkasion</span>
                        <img src="/static/images/Activity/ic_boy_3x.png" class="gender">
                        <div class="level bg_yellow">
                           <img src="/static/images/Activity/ic_moonwhite_3x.png" class="ic_level">
                           <span class="level_num">99</span>
                        </div>
                    </span>
                   
                   <span class="stars">received <span class="star_num">9867</span> stars</span>
                   <img class="arrow_img" src="/static/images/ic_next1.png">
               </li>
               <li>
                   <span class="no_num">NO.12</span>
                   <img src="/static/images/avatar.png" class="avatar">
                   <span class="broadcaster_name">
                        <span>Lucy Monkasion</span>
                        <img src="/static/images/Activity/ic_girl_3x.png" class="gender">
                        <div class="level bg_yellow">
                           <img src="/static/images/Activity/ic_moonwhite_3x.png" class="ic_level">
                           <span class="level_num">99</span>
                        </div>
                    </span>
                   
                   <span class="stars">received <span class="star_num">9867</span> stars</span>
                   <img class="arrow_img" src="/static/images/ic_next1.png">
               </li>
               
           </ul>
       </div>
   </div>
   <script src="/static/js/jquery-1.9.1.min.js"></script>
   <script src='/static/js/nprogress.js'></script>
   <script src='/static/js/imagesloaded.pkgd.min.js'></script>
   <script type="text/javascript">
       $(function() {
           $(".btn_details").click(function() {
               $(".main").css("background", "url(/static/images/Activity/bg_detail.png) no-repeat");
               $(".main").css("background-size", "100%");
               $(".btn_operation").hide();
               $(".btn_operation2").show();
               $(".topBroadcasters").hide();
           })

           $(".got_it").click(function(){
               $(".main").css("background", "url(/static/images/Activity/bg_campaign.png) no-repeat");
               $(".main").css("background-size", "100%");
               $(".btn_operation").show();
               $(".btn_operation2").hide();
               $(".topBroadcasters").show();
           })
       })


      //进度条加载事件
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
