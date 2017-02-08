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
    <title>FAQ</title>
    <script src="/static/js/font_lct.js"></script>
    <script type="text/javascript" src="/static/js/jquery-1.9.1.min.js"></script>
    <script src='/static/js/nprogress.js'></script>
    <script src='/static/js/imagesloaded.pkgd.min.js'></script>
    <link rel='stylesheet' href='/static/css/nprogress.css'/>
    <link rel="stylesheet" type="text/css" href="/static/css/feedback.css">
</head>

<body>
   <div class="main">
    <div class="problems">
      <div class="title">
        <p class="title_text">THE BASICS</p>
      </div>
      <div class="padding_lift">
        <div class="q_a">
          <div class="question">1. What is PIXY ?</div>
          <div class="answer">On PIXY The Fame Game you can create, share and discover live video broadcasts and interact with your fans and the stars you follow while earning money. Whether you’re into music, art, sports or fashion, PIXY is a fun way to share your world and be a star.</div>
        </div>
        <div class="q_a">
          <div class="question">2. What is a broadcast?</div>
          <div class="answer">A PIXY broadcast is a live video stream that let’s you interact with viewers and fans. They can chat with you and send you fun virtual gifts in real time as a token of appreciation. You can then exchange the gifts into real money. </div>
        </div>
        <div class="q_a">
          <div class="question">3. What are diamonds?</div>
          <div class="answer">Viewers buy diamonds and use them to buy virtual gifts that help them engage with broadcasters, stand out from the crowd and show their support. </div>
        </div>
        <div class="q_a">
            <div class="question">4. What are gifts?</div>
            <div class="answer">Gifts are sticker-like icons you can send to broadcasters during their live stream. They are a symbol of your dedication, appreciation and help you become more visible to broadcasters.</div>
        </div>
      </div>
      <div class="q_a last_qa">
          <div class="question">5. What are stars?</div>
          <div class="answer">Broadcasters can earn stars when viewers send gifts during a live broadcast. After a gift is sent, it turns into stars when received by the broadcaster. Once you have earned enough stars, you can either exchange stars for diamonds or real money.  </div>
      </div>
      
    </div>
    <div class="problems">
      <div class="title">
        <p class="title_text">DIAMOND RECHARGE</p>
      </div>
      <div class="padding_lift">
        <div class="q_a">
          <div class="question">1. How can I buy diamonds?</div>
          <div class="answer">Go to PIXY>Profile>Diamonds. You can buy Diamonds according to your needs. </div>
        </div>
        <div class="q_a">
          <div class="question">2. How do I pay for diamonds?</div>
          <div class="answer">For iOS users, you can buy diamonds via an in-app purchase through the App Store; for Android users, you can buy diamonds via an in-app purchase through the Google Play Store.</div>
        </div>
        <div class="q_a no_borderBottom more_top" >
          <div class="question">3. If I purchased diamonds in the wrong account, can I get my money back?</div>
          <div class="answer">No. Once your payment is completed, it can’t be canceled. Please check the payment screen carefully before you confirm. We will also do our best to remind you of important details during the payment process.</div>
        </div>
      </div>
      <div class="more">
        MORE<img src="/static/images/ic_more_3x.png">
      </div>
      <div style="display:none;">
        <div class="padding_lift">
          <div class="q_a">
            <div class="question">4. Is there a limit of how many diamonds I can recharge?</div>
            <div class="answer">No. There is no limit of diamonds you can buy. If you would like to buy more than 9999 diamonds at one time, recharge multiple times. </div>
          </div>
          <div class="q_a">
            <div class="question">5. What should I do if the recharge failed?</div>
            <div class="answer">First, check your bankcard balance. If the payment didn’t go through, you can try again. If the recharge fails again, please reinstall PIXY and log in with the same account, then try to recharge.If your bankcard shows that the payment went through, please contact customer support. A support specialist will be assigned to help you.
            </div>
          </div>
        </div>
        <div class="q_a last_qa">
          <div class="question">6. Why does my diamond balance remain unchanged after completing the payment?</div>
          <div class="answer">Please check your bankcard balance and make sure the payment went through. Then contact customer support and provide the materials listed below so we can service you faster.<br>
          1). Your PIXY ID<br>
          2). The specific day and time you made the transaction.<br>
          3). A screenshot of your bankcard statement showing the transaction.
          </div>
        </div>
      </div>
    </div>
    <div class="problems">
      <div class="title">
        <p class="title_text">BROADCASTING</p>
      </div>
      <div class="padding_lift">
        <div class="q_a">
          <div class="question">1. How do I broadcast?</div>
          <div class="answer">Tap the camera-shaped icon in the middle of the home screen to start broadcasting. Before the broadcast begins, set a title for the broadcast and share the broadcast to your favorite social media site. </div>
        </div>
        <div class="q_a">
          <div class="question">2. What should I do if I get a notification that says PIXY has no access to the camera and microphone?</div>
          <div class="answer">For iOS users, go to Settings>Privacy. Find Camera and Microphone and enable access for PIXY to both. For Android users, there is a similar setting in the System Settings. </div>
        </div>
        <div class="q_a no_borderBottom more_top">
          <div class="question">3. Why does the image of the video appear reversed?</div>
          <div class="answer">Sometimes when you broadcast using the front camera, the image is captured and transmitted as a mirror image, meaning it will appear backwards. It won’t affect the viewers.</div>
        </div>
      </div>
      <div class="more">
        MORE 
        <img src="/static/images/ic_more_3x.png">
      </div>
      <div style="display:none;">
        <div class="padding_lift">
          <div class="q_a">
            <div class="question">4. What can I do to increase viewers of my broadcast?</div>
            <div class="answer">First, you can share your broadcast to social media channels like Instagram, FB or Twitter so you can let more people know about your broadcast. Be engaging to all incoming messages and interact with the audience as much as you can. The more you interact with your audiences, the more they will appreciate you, send you gifts and follow you. By broadcasting consistently, you will increase your fan base and over time you will gain more and more viewers. </div>
          </div>
          <div class="q_a">
            <div class="question">5. What are Bullets?</div>
            <div class="answer">A bullet message is an attention grabbing banner message that drifts slowly across the screen. It’s the best way to stand out from the crowd and gain the broadcaster’s attention. </div>
          </div>
          <div class="q_a">
            <div class="question">6. What should I do when I didn’t receive a notification when a broadcaster that I am following went live?</div>
            <div class="answer">If the broadcaster went live and you didn’t receive a notification, please check your PIXY>Profile>Settings>Notifications and enable notifications for this broadcaster. Also check your iPhone Settings>Notifications>PIXY. </div>
          </div>
          <div class="q_a">
            <div class="question">7. What should I do if someone sent an insulting or harassing message?</div>
            <div class="answer">If you are broadcasting, you can mute this person. Just click the username of this person, select manage, and select mute. The person will no longer be able to message during your broadcast. You can also assign up to 5 people you trust as your administrator to help you block such people while you broadcast. If you are watching a broadcast, and someone is sending inappropriate messages, you can choose to report this person the same way. But we do not encourage malicious reporting. </div>
          </div>
          <div class="q_a">
            <div class="question">8. How do I follow or unfollow someone?</div>
            <div class="answer">Go to a person’s profile page or tap someone’s username in a broadcast to view his/her information and tap follow. If you tap follow again, you will unfollow this person. </div>
          </div>
          <div class="q_a">
            <div class="question">9. How does my broadcast appear in the trending broadcasts?</div>
            <div class="answer">All trending broadcasts are randomly selected by the system. You can increase your chance to appear in the trending section if you broadcast consistently and have large audiences watching your broadcast.</div>
          </div>
          <div class="q_a">
            <div class="question">10. How can I watch a clean broadcast without all the messages?</div>
            <div class="answer">If you slide the screen left while you are viewing a broadcast, you can change the view to one without messages or bullets; slide right and it will bring back the normal view.</div>
          </div>
          <div class="q_a">
            <div class="question">11. How can I share broadcasts?</div>
            <div class="answer">As a broadcaster you can choose to share your broadcast to different social media channels before you go live or while you are broadcasting. Before your broadcast starts, you will have to choose one favorite option to share your broadcast to. Any time during your broadcast, you can tap the share icon and repeat the process to share to as many channels as you like. If you are watching someone else’s broadcast, you can do this as well. </div>
          </div>
        </div>
        <div class="q_a last_qa">
          <div class="question">12. Why are my messages sometimes delayed?</div>
          <div class="answer">When large numbers of viewers are sending too many messages at one time, some of the messages you sent could be delayed. You can choose to send bullets if you want the broadcaster to notice and read your message.</div>
        </div>
      </div>
    </div>
    <div class="problems">
      <div class="title">
        <p class="title_text">ACCOUNT SETTINGS</p>
      </div>
      <div class="padding_lift">
        <div class="q_a">
          <div class="question">1. Why can’t I log in?</div>
          <div class="answer">If you have trouble logging into PIXY:<br>
          Make sure you have the latest version of PIXY.<br>
          Shut down app, reopen, and then try to log in again.<br>
          Forgot your password? Try to reset your password.
          </div>
        </div>
        <div class="q_a">
          <div class="question">2. How do I edit my profile?</div>
          <div class="answer">Go to your profile page, then tap the arrow icon on the right side of your profile. You can now edit your personal profile. Note: Gender can only be set once.</div>
        </div>
        <div class="q_a no_borderBottom more_top">
          <div class="question">3. What should I do if PIXY takes up too much memory after I watch broadcasts for an extended period?</div>
          <div class="answer">Access Profile>Settings and choose Manage Storage. The cache content will be cleared. This will not affect your use this app.</div>
        </div>
      </div>
      <div class="more last_more">
        MORE 
        <img src="/static/images/ic_more_3x.png">
      </div>
      <div style="display:none;">
        <div class="padding_lift">
          <div class="q_a">
            <div class="question">4. What should I do if I receive a warning?</div>
            <div class="answer">Receiving a warning means that some of your actions violated PIXY’s Terms or Community Guidelines. If you continue to receive violations, PIXY will review your account according to our policy, including but not limited to freezing your account temporarily, or permanently. In order to keep PIXY a fun, friendly and healthy live platform, please strictly adhere to our Terms and Community Guidelines.</div>
          </div>
          <div class="q_a">
            <div class="question">5. Why did my live broadcast stop suddenly?</div>
            <div class="answer">According to PIXY’s Terms, if your action is identified as a serious violation, PIXY reserves the right to shut down your live broadcast immediately and report you to local authorities if necessary. </div>
          </div>
          <div class="q_a">
            <div class="question">6. Why did I receive a message that my account is frozen?</div>
            <div class="answer">According to PIXY’s Terms, if your action is identified as a serious violation, PIXY may freeze your account temporarily or permanently. </div>
          </div>
          <div class="q_a">
            <div class="question">7. How do I make an appeal if my account is frozen?</div>
            <div class="answer">If you don’t accept the reason for freezing your account, you can contact customer support in Profile>Settings>Customer Support and appeal.</div>
          </div>
        </div>
        <div class="q_a last_qa">
          <div class="question">8. When should I make an appeal?</div>
          <div class="answer">You can make an appeal within 10 days after your account was frozen. The appeal application will not be accepted after 10 days.</div>
        </div>
      </div>
    </div>
    <div class="toBottom"></div>
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


      
      $(function(){
        $(".more").click(function(){
          $(this).hide();
          $(this).next().show();
          $(this).prev("padding_lift").children(".more_top").removeClass("no_borderBottom");
          $(this).prev("padding_lift").children(".more_top").css('padding-bottom', '0.25rem');
        })
      })
   
    </script>
</body>

</html>






