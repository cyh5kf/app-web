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
    <title><fmt:message key="pixy_skill_page_title"></fmt:message></title>
    <script src="/static/js/font_lct.js"></script>
    <style type="text/css">
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
            display:block;
        }
        .btn_guide {
            background: url(/static/images/broadcaster_skill_guide/btn_lets_go_3x.png) no-repeat;
            background-size: cover;
            position: absolute;
            left: 50%;
            bottom: 1.75rem;
            margin-left: -7.6rem;
            width: 15.2rem;
            height: 3.15rem;
        }
        .btn_guide:active {
            background: url(/static/images/broadcaster_skill_guide/btn_lets_go_pressed_3x.png) no-repeat;
            background-size: cover;
        }
        .btn_advanced_features {
            background: url(/static/images/broadcaster_skill_guide/btn_advanced_features_${language}_3x.png) no-repeat;
            background-size: cover;
            position: absolute;
            left: 1.9rem;
            top: 17.9rem;
            width: 7.1rem;
            height: 5.35rem;
        }
        .btn_advanced_features:active {
            background: url(/static/images/broadcaster_skill_guide/btn_advanced_features_pressed_${language}_3x.png) no-repeat;
            background-size: cover;
        }
        .btn_essential_skill {
            background: url(/static/images/broadcaster_skill_guide/btn_essential_skill_${language}_3x.png) no-repeat;
            background-size: cover;
            position: absolute;
            right: 1.9rem;
            top: 12.75rem;
            width: 7.1rem;
            height: 5.35rem;
        }
        .btn_essential_skill:active {
            background: url(/static/images/broadcaster_skill_guide/btn_essential_skill_pressed_${language}_3x.png) no-repeat;
            background-size: cover;
        }
        .hands_noti {
            position: absolute;
            
            animation-timing-function: ease;
        }
        .ic_hand_l {
            background: url(/static/images/broadcaster_skill_guide/ic_hand_l_${language}_3x.png) no-repeat;
            background-size: cover;
            width: 8.5rem;
            height: 6.9rem;
            left: 0;
            top: 9.7rem;
            -webkit-animation: moveTopLeft 1.5s infinite;
            animation: moveTopLeft 1.5s infinite;
        }
        .ic_hand_r {
            background: url(/static/images/broadcaster_skill_guide/ic_hand_r_3x.png) no-repeat;
            background-size: cover;
            width: 5.75rem;
            height: 4.05rem;
            right: 0;
            top: 7.25rem;
            -webkit-animation: moveTopRight 1.5s infinite;
            animation: moveTopRight 1.5s infinite;
        }
        @-webkit-keyframes moveTopLeft {
            0% {
                top: 9.7rem;
            }
            100% {
                top: 12.7rem;
            }
        }
        @keyframes moveTopLeft {
            0% {
                top: 9.7rem;
            }
            100% {
                top: 12.7rem;
            }
        }
        @-webkit-keyframes moveTopRight {
            0% {
                top: 7.25rem;
            }
            100% {
                top: 10.25rem;
            }
        }
        @keyframes moveTopRight {
            0% {
                top: 7.25rem;
            }
            100% {
                top: 10.25rem;
            }
        }
        .skill_dialog {
            background: url(/static/images/broadcaster_skill_guide/ic_frame_background_3x.png) no-repeat;
            background-size: cover;
            width: 18.75rem;
            height: 16.75rem;
            position: absolute;
            top: 6.05rem;
            z-index: 3;
        }
        .skill_wrap {
            width: 13rem;
            height: 12rem;
            margin: 0 auto;
            text-align: center;
            margin-top: 3rem;
            overflow: hidden;
            position: relative;
        }
        .skill_content {
            width: 100%;
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
        }
        .skill_text {
            width: 100%;
            height: 12rem;
            position: relative;
        }
        h1 {
            color: #000;
            font-size: 0.9rem;
            font-weight: bold;
        }
        .text1 {
            color: #914910;
            font-size: 0.8rem;
            font-weight: bold;
            text-align: left;
            margin-top: 0.7rem;
        }
        .text2 {
            color: #000;
            font-size: 0.8rem;
            text-align: left;
            margin-top: 0.2rem;
        }
        .language_ar .text1,  .language_ar .text2 {
            text-align: right;
        }
        .text3 {
            margin-top: 0.7rem;
        }
        .btn_next {
            position: absolute;
            right: 0;
            top: 10.5rem;
            width: 100%;
            padding-top: 1.25rem;
            color: #7E6952;
            font-weight: bold;
            font-size: 0.75rem;
            z-index: 4;
            display: inline-block;
            -webkit-transform: translate(0, -50%);
            transform: translate(0, -50%);
            text-decoration: none;
            transition: opacity .3s;
        }
        .btn_next:active {
            background-color: #EEECE6;
        }
        .btn_next span {
            position: absolute;
            top: 0;
            left: 50%;
            width: 0.5rem;
            height: 0.5rem;
            margin-left: -0.25rem;
            border-left: 2px solid #7E6952;
            border-bottom: 2px solid #7E6952;
            -webkit-transform: rotate(-45deg);
            transform: rotate(-45deg);
            -webkit-animation: arrowAni 2s infinite;
            animation: arrowAni 2s infinite;
            opacity: 0;
            box-sizing: border-box;
        }
        .btn_next span:nth-of-type(1) {
            -webkit-animation-delay: 0s;
            animation-delay: 0s;
        }
        .btn_next span:nth-of-type(2) {
            top: 0.35rem;
            -webkit-animation-delay: .15s;
            animation-delay: .15s;
        }
        @-webkit-keyframes arrowAni {
            0% {
                opacity: 0;
            }
            50% {
                opacity: 1;
            }
            100% {
                opacity: 0;
            }
        }
        @keyframes arrowAni {
            0% {
                opacity: 0;
            }
            50% {
                opacity: 1;
            }
            100% {
                opacity: 0;
            }
        }
        .mask {
            position: fixed;
            width: 100%;
            height: 100%;
            background-color: #000;
            opacity: 0.5;
            z-index: 2;
        }
    </style>
</head>

<body class="language_${language}" language="${language}" from="${from}">
   <div class="main">
       <div class="mask" style="display: none;"></div>
       <img src="/static/images/broadcaster_skill_guide/ic_backgroud_${language}.jpg">
       <!-- <img src="/static/images/broadcaster_skill_guide/btn_lets_go_pressed_3x.png" style="display: none;"> -->
       <img src="/static/images/broadcaster_skill_guide/btn_advanced_features_pressed_${language}_3x.png" style="display: none;">
       <img src="/static/images/broadcaster_skill_guide/btn_essential_skill_pressed_${language}_3x.png" style="display: none;">
       <img src="/static/images/broadcaster_skill_guide/ic_frame_background_3x.png" style="display: none;">
       <div class="btn_advanced_features"></div>
       <div class="btn_essential_skill"></div>
       <!-- <div class="btn_guide"></div> -->
       <div class="hands_noti ic_hand_l"></div>
       <div class="hands_noti ic_hand_r"></div>
       <div class="skill_dialog advanced_dialog" style="display: none;">
           <div class="skill_wrap">
               <div class="skill_content" id="advanced_content">
                   <div class="skill_text">
                       <h1><fmt:message key="pixy_skill_advance1_feature1"></fmt:message></h1>
                       <p class="text2 text3"><fmt:message key="pixy_skill_advance1_feature2"></fmt:message></p>
                       <div class="btn_next" next="2">
                            <span></span>
                            <span></span>
                            <fmt:message key="pixy_skill_advance2_part1"></fmt:message>
                        </div>
                   </div>
                   <div class="skill_text skill_text2" >
                       <h1><fmt:message key="pixy_skill_advance2_part1"></fmt:message></h1>
                       <p class="text2 text3"><fmt:message key="pixy_skill_advance2_part2"></fmt:message></p>
                       <div class="btn_next" next="3">
                            <span></span>
                            <span></span>
                            <fmt:message key="pixy_skill_advance_reminder_title"></fmt:message>
                        </div>
                   </div>
                   <div class="skill_text skill_text3">
                       <h1><fmt:message key="pixy_skill_advance_reminder_title"></fmt:message></h1>
                       <p class="text2 text3"><fmt:message key="pixy_skill_advance_reminder"></fmt:message></p>
                       <div class="btn_next" next="close">
                            <span></span>
                            <span></span>
                            <p class="btn_advanced_close"><fmt:message key="pixy_skill_cards_close"></fmt:message><p>
                        </div>
                   </div>
               </div>
           </div>
       </div>
       <div class="skill_dialog essential_dialog" style="display: none;">
           <div class="skill_wrap">
               <div class="skill_content" class="essential_content">
                   <div class="skill_text">
                       <h1><fmt:message key="pixy_skill_essential1_no1"></fmt:message></h1>
                       <p class="text1"><fmt:message key="pixy_skill_essential1_no2"></fmt:message></p>
                       <p class="text2"><fmt:message key="pixy_skill_essential1_no3"></fmt:message></p>
                       <div class="btn_next" next="2">
                            <span></span>
                            <span></span>
                            <fmt:message key="pixy_skill_essential2_no1"></fmt:message>
                        </div>
                   </div>
                   <div class="skill_text skill_text2">
                       <h1><fmt:message key="pixy_skill_essential2_no1"></fmt:message></h1>
                       <p class="text1"><fmt:message key="pixy_skill_essential2_no2"></fmt:message></p>
                       <p class="text2"><fmt:message key="pixy_skill_essential2_no3"></fmt:message></p>
                       <div class="btn_next" next="3">
                            <span></span>
                            <span></span>
                            <fmt:message key="pixy_skill_essential3_no1"></fmt:message>
                        </div>
                   </div>
                   <div class="skill_text skill_text3">
                       <h1><fmt:message key="pixy_skill_essential3_no1"></fmt:message></h1>
                       <p class="text1"><fmt:message key="pixy_skill_essential3_no2"></fmt:message></p>
                       <p class="text2"><fmt:message key="pixy_skill_essential3_no3"></fmt:message></p>
                       <div class="btn_next" next="4">
                            <span></span>
                            <span></span>
                            <fmt:message key="pixy_skill_essential_plus1"></fmt:message>
                        </div>
                   </div>
                   <div class="skill_text skill_text4">
                       <h1><fmt:message key="pixy_skill_essential_plus1"></fmt:message></h1>
                       <p class="text2 text3"><fmt:message key="pixy_skill_essential_plus2"></fmt:message></p>
                       <div class="btn_next" next="close">
                            <span></span>
                            <span></span>
                            <p class="btn_advanced_close"><fmt:message key="pixy_skill_cards_close"></fmt:message><p>
                        </div>
                   </div>
               </div>
           </div>
       </div>
   </div>
   
   <script src="/static/js/jquery-1.9.1.min.js"></script>
   <script>
       $(function(){
            $(".btn_advanced_features").click(function(e) {
                $(".hands_noti").hide();
                $(".mask").show();
                $(".advanced_dialog").show();
                $(".advanced_dialog .skill_text").show();
            })
            $(".btn_essential_skill").click(function(e) {
                $(".hands_noti").hide();
                $(".mask").show();
                $(".essential_dialog").show();
                $(".essential_dialog .skill_text").show();
            })

            $(".advanced_dialog .btn_next").click(function() {

                $(".advanced_dialog .skill_text").hide();
                var $this = $(this);
                var next = $this.attr('next');
                if (next==='close') {
                    $(".advanced_dialog").hide();
                    $(".mask").hide();
                    $(".hands_noti").show();
                } else {
                    $(".advanced_dialog .skill_text"+next).show();                    
                }
                
            })


            $(".essential_dialog .btn_next").click(function() {

                $(".essential_dialog .skill_text").hide();
                var $this = $(this);
                var next = $this.attr('next');
                if (next==='close') {
                    $(".essential_dialog").hide();
                    $(".mask").hide();
                    $(".hands_noti").show();
                } else {
                    $(".essential_dialog .skill_text"+next).show();                    
                }
                
            })

            $(".mask").click(function() {
                var skill_dialog = $(".skill_dialog");
                skill_dialog.each(function() {
                    $(this).hide();
                    $(".mask").hide();
                    $(".hands_noti").show();
                });

            })


       })
   </script>
</body>

</html>
