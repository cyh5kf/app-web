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
    <title>Huawei Settings</title>
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
        }
        img {
            width: 100%;
            height: 100%;
            display:block;
            box-shadow:0 1px 2px rgba(0,0,0,.3); /*底边阴影*/ 
        }
        .wrap {
            width: 15.5rem;
            margin: 0 auto;
        }
        .head_title {
            font-size: 1.05rem;
            font-weight: bold;
            text-align: center;
            margin-top: 1.75rem;
        }
        .small_title {
            height: 1.1rem;
            line-height: 1.1rem;
            font-size: 0.9rem;
            font-weight: bold;
            padding-left: 0.6rem;
            position: relative;
            margin-top: 1.75rem;
        }
        .vertical_bar {
            width: 0.15rem;
            height: 1.1rem;
            background-color: #E5E5E5;
            position: absolute;
            top: 0;
            left: 0;
        }
        .text {
            margin-top: 0.5rem;
            font-size: 0.8rem;
        }
        .split_line {
            width:100%;
            margin-top: 1.8rem;
        }
        .split_line b{
            background: #E5E5E5;
            margin-top: 0.2rem;
            display: inline-block;
            width: 7rem;
            height: 1px;
            _overflow: hidden;
            vertical-align: middle;
        }
        .split_line span{
            display: inline-block;
            width: 0;
            height: 0;
            margin-top: 0.2rem;
            vertical-align: middle;
            border-top: 0.6rem solid #E5E5E5;
            border-right: 0.6rem solid transparent;
            border-left: 0.6rem solid transparent;
        }
        .blue_title1 {
            margin-top: 1.5rem;
        }
        .dot {
            display: inline-block;
            width: 0.35rem;
            height: 0.35rem;
            border-radius: 50%;
            background-color: #0099CC;
            margin-bottom: 0.2rem;
        }
        .blue_color {
            color: #0099CC;
            font-weight: bold;
            font-size: 0.9rem;
        }
        .black_text {
            color: #383838;
            font-weight: bold;
            font-size: 0.9rem;
        }
        .steps {
            color: #757575;
            font-size: 0.8rem;
        }
        .ic_pic {
            width: 14rem;
            margin-top: 0.5rem;
            margin-left: 0.75rem;
        }
        .pic_style1 {
            height: 1.65rem;
        }
        .setp_margin1 {
            margin-top: 1rem;
        }
        .setp_margin2 {
            margin-top: 1.5rem;
        }
        .pic_style2 {
            height: 19.3rem;
        }
        .blue_title2 {
            margin-top: 2.5rem;
        }
        .pic_style3 {
            height: 7.7rem;
        }
        .pic_style4 {
            height: 5.75rem;
        }
        .pic_style5 {
            height: 16.35rem;
        }
        .pic_style6 {
            height: 11.8rem;
        }
        .pic_style7 {
            height: 8.8rem;
        }
        .pic_style8 {
            height: 10.6rem;
        }
        .black_text2 {
            color: #383838;
            font-size: 0.8rem;
            font-weight: bold;
        }
        .split_dashed {
            border:1px #E5E5E5 dashed;
        }
        .black_text3 {
            color: #383838;
            font-size: 0.8rem;
        }
        .pic_style9 {
            height: 11.85rem;
        }
        .pic_style10 {
            height: 10.55rem;
        }
        .contact_info {
            width: 100%;
            height: 4.15rem;
            background-color: #F6F6F6;

        }
        .contact_text {
            width: 15.5rem;
            margin: 0 auto;
            padding-top: 1rem;
        }
        .black_text4 {
            color: #000;
            font-size: 0.8rem;
            font-weight: bold;
        }
        .blue_color2 {
            color: #0099CC;
            font-weight: bold;
            font-size: 0.8rem;
        }
    </style>
</head>

<body class="language_${language}" language="${language}" from="${from}">
   <div class="main">
       <div class="wrap">

           <div class="head_title">Special Settings for Huawei</div>
           <div class="small_title">
               <div class="vertical_bar"></div>
               <span>Problem</span>
           </div>
           <div class="text">Encountered these problems before? Using SOMA on a Huawei mobile phone and sometimes new messages will arrive but you recieve no notification? Only find new messages after launching SOMA? Important messages missed?</div>
           <div class="small_title">
               <div class="vertical_bar"></div>
               <span>Causes</span>
           </div>
           <div class="text">When the phone is on standby, the Huawei operating system automatically stops applications run in the background, SOMA included, thats why you can not receive real time notifications.</div>
           <div class="small_title">
               <div class="vertical_bar"></div>
               <span>Solution</span>
           </div>
           <div class="text">To receive messages promptly, please do not kill SOMA, allow SOMA to send push notifications to you, and set SOMA as a protected app. </div>
           <div class="split_line"><b></b><span></span><b></b></div>
           <div class="blue_title1">
               <span class="dot"></span>
               <span class="blue_color">Do not Kill Process</span>
               <span class="black_text">（If SOMA is not running, restart SOMA.）</span>
           </div>
           <div class="steps setp_margin1">Click on the Menu button</div>
           <img class="ic_pic pic_style1" src="/static/images/huawei/ic_huawei_pic1.png">
           <div class="steps setp_margin2">Make sure SOMA is running</div>
           <img class="ic_pic pic_style2" src="/static/images/huawei/ic_huawei_pic2.png">
           <div class="blue_title2">
               <span class="dot"></span>
               <span class="blue_color">Allow Notifications</span>
           </div>
           <div class="steps setp_margin1">Go to Settings > Notification Panel & status bar > Notification center</div>
           <img class="ic_pic pic_style3" src="/static/images/huawei/ic_huawei_pic3.png">
           <div class="steps setp_margin2">Locate SOMA</div>
           <img class="ic_pic pic_style4" src="/static/images/huawei/ic_huawei_pic4.png">
           <div class="steps setp_margin2">Allow notifications for SOMA, allow notifications to display as banner and on the lock screen, so you can see new messages immediately.</div>
           <img class="ic_pic pic_style5" src="/static/images/huawei/ic_huawei_pic5.png">
           <div class="blue_title2">
               <span class="dot"></span>
               <span class="blue_color">Set Protected Apps</span>
           </div>
           <div class="steps setp_margin1">Go to Phone manager > Battery manager </div>
           <img class="ic_pic pic_style6" src="/static/images/huawei/ic_huawei_pic6.png">
           <div class="steps setp_margin2">Find Protected Apps</div>
           <img class="ic_pic pic_style7" src="/static/images/huawei/ic_huawei_pic7.png">
           <div class="steps setp_margin2">Locate SOMA and switch the button on</div>
           <img class="ic_pic pic_style8" src="/static/images/huawei/ic_huawei_pic8.png">
           <div class="black_text2 setp_margin2">Or:</div>
           <div class="steps">Go to Settings > Advanced Settings > Battery Manager > Protected Apps</div>
           <div class="steps setp_margin1">Locate SOMA and switch the button on</div>
           <hr class="split_dashed setp_margin2">
           <div class="black_text3 setp_margin2">To make sure you can receive messages promptly after the phone has restarted or has changed status, please set SOMA to Auto-launch.</div>
           <div class="steps setp_margin1">Go to Phone manager, slide to page 2, find App auto-launch</div>
           <img class="ic_pic pic_style9" src="/static/images/huawei/ic_huawei_pic9.png">
           <div class="steps setp_margin2">Locate SOMA and switch the button on</div>
           <img class="ic_pic pic_style10" src="/static/images/huawei/ic_huawei_pic10.png">
            
       </div>
       <div class="contact_info setp_margin2">
           <div class="contact_text">
               <span class="black_text4">*For any further questions, please email us at </span>
               <span class="blue_color2">soma@instanza.com</span> 
           </div>
       </div>

   </div>
   
</body>

</html>
