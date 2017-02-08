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
    <title>COPYRIGHT POLICY</title>
    <script src="/static/js/font_lct.js"></script>
    <script type="text/javascript" src="/static/js/jquery-1.9.1.min.js"></script>
    <script src='/static/js/nprogress.js'></script>
    <script src='/static/js/imagesloaded.pkgd.min.js'></script>
    <link rel='stylesheet' href='/static/css/nprogress.css'/>
    <link rel="stylesheet" type="text/css" href="/static/css/termsService.css">
</head>

<body>
<div class="main">
      <p class="title">PIXY Copyright Policy</p>
      <p class="effective"> Last Updated: June 16th, 2016</p>
      <p class="text1 common_word">
        <span>Instanza Interactive Limited which operates the PIXY service, (“PIXY”) respects the intellectual property rights of others and expects its users to do the same.</span>
        <br><br>
        <span>It is PIXY’s policy to terminate inappropriate circumstances and at its discretion account holders or subscribers who repeatedly infringe or who are repeatedly charged with infringing the rights of copyright holders.</span>
        <br><br>
        <span>In accordance with the Digital Millennium Copyright Act of 1998, the text of which may be found on the U.S. Copyright Office website at: http://www.copyright.gov/legislation/dmca.pdf, PIXY will respond expeditiously to claims of copyright infringement committed using the PIXY website, mobile application or other online network accessible through a mobile device or other type of device (the “Sites”) that are reported to PIXY’s Designated Copyright Agent.</span>
        <br><br>
        <span>If you are a copyright owner, or are authorized to act on behalf of one, or authorized to act under any exclusive right under copyright, please report alleged copyright infringements taking place on or through the Sites by completing the following DMCA Notice of Alleged Infringement and delivering it to PIXY’s Designated Copyright Agent. Upon receipt of the Notice as described below, PIXY will take whatever action, in its sole discretion, it deems appropriate, including removal of the challenged material from the Sites.</span>
      </p>
      <p class="head1 head_common">DMCA Notice of Alleged Infringement (“Notice”)</p>
      <p class="text_top common_word">
        <span>1. Identify the copyrighted work that you claim has been infringed, or - if multiple copyrighted works are covered by this Notice - you may provide a representative list of the copyrighted works that you claim have been infringed.</span>
        <br><br>
        <span>2. Identify (i) the material that you claim is infringing (or to be the subject of infringing activity) and that is to be removed or access to which is to be disabled, and provide information reasonably sufficient to permit us to locate the material, including at a minimum, if applicable, the URL of the link shown on the Site where such material may be found, and (ii) the reference or link, to the material or activity that you claim to be infringing, that is to be removed or access to which is to be disabled, and information reasonably sufficient to permit us to locate that reference or link, including at a minimum, if applicable, the URL of the link shown on the Sites where such reference or link may be found.</span>
        <br><br>
        <span>3. Provide your mailing address, telephone number, and, if available, email address.</span>
        <br><br>
        <span>4. Include both of the following statements in the body of the Notice:</span><br><br>
      </p>
      <div class="dot common_word"><i></i><span>“I hereby state that I have a good faith belief that the disputed use of the copyrighted material is not authorized by the copyright owner, its agent, or the law (e.g., as a fair use).”</span></div>
      <div class="dot common_word"><i></i><span>“I hereby state that the information in this Notice is accurate and, under penalty of perjury, that I am the owner, or authorized to act on behalf of the owner, of the copyright or of an exclusive right under the copyright that is allegedly infringed.”</span></div>
      <p class="text_top common_word">
        <span>5. Provide your full legal name and your electronic or physical signature.</span>
        <br><br>
        <span>Deliver this Notice, with all items completed, to PIXY’s Designated Copyright Agent:</span>
        <br><br>
        <span>Copyright Agent </span>
        <br>
        <span>c/o Instanza Interactive Limited </span>
        <br><br>
        <span>Email Notices to <span class="email">copyright@pixy.tv</span></span><br><br><br><br>
      </p>
      
      <p class="bottom_distance common_word">
        <span>Pursuant to Section 512(f) of the DMCA, any person who knowingly materially misrepresents that certain material or activity is infringing may be subject to liability for damages. Please do not make false claims. PIXY reserves the right to forward the information provided in your Notice to the person who provided the allegedly infringing material. Your claimant information may be published on the Sites in place of disabled material.</span>
      </p>
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
