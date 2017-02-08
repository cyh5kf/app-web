<%@ page isELIgnored="false" contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="format-detection" content="telephone=no">
    <meta name="apple-mobile-web-app-capable" content="yes" />
    <meta name="viewport" content="initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no, width=device-width">
    <title><fmt:message key="pixy_common_team"></fmt:message></title>
    <script src="/static/js/font_lct.js"></script>
    <link rel="stylesheet" type="text/css" href="/static/css/recruitment.css?ddd23=33">
    <% boolean isFemale = "1".equals(request.getAttribute("gender")); %>
    <% boolean isMale = "2".equals(request.getAttribute("gender")); %>
</head>

<body class="language_${language}" language="${language}" pixy_id="${pixy_id}">
        <div style="display: none">
            <img src="/static/images/soma_message/ic_choose_gender_on.png" alt=""/>
            <img src="/static/images/soma_message/ic_choose_gender_off.png" alt=""/>
            <img src="/static/images/soma_message/ic_choose_gender_check.png" alt=""/>
        </div>
        <div class="contain">
            <div class="homepage">
                <div class="message_content">
                    <p class="message_title"><fmt:message key="pixy_recruit_title_inside"></fmt:message></p>
                    <br>
                    <p class="text"><fmt:message key="pixy_recruit_address_pixy"></fmt:message></p>
                    <br>
                    <p class="text direction"><fmt:message key="pixy_recruit_content_pixy"></fmt:message></p>
                    <c:if test="${language=='en'}">
                        <img class="picture" src="/static/images/pixy_recruitment/JoinUs_Western.jpg">
                    </c:if>
                    <c:if test="${language=='ar'}">
                        <img class="picture" src="/static/images/soma_message/pic_joinus_ar_min.png">
                    </c:if>
                    <p class="text_title"><fmt:message key="pixy_recruit_contentplus"></fmt:message></p>
                </div>
                <div class="form_bg">
                    <div class="form_content">
                        <img src="/static/images/soma_message/ic_triangle_new.png" class="ic_arrow">
                        <p class="form_title"><fmt:message key="pixy_recruit_join"></fmt:message></p>
                        <p class="text"><fmt:message key="pixy_recruit_describe"></fmt:message></p>
                        <br>
                        <p class="text direction">
                            <span><fmt:message key="pixy_recruit_social_one"></fmt:message></span>
                            <span class="blue_color"><fmt:message key="pixy_recruit_social_two"></fmt:message></span>
                            <span><fmt:message key="pixy_recruit_social_three"></fmt:message></span>
                            <span class="blue_color"><fmt:message key="pixy_recruit_social_four"></fmt:message></span>
                            <span><fmt:message key="pixy_recruit_social_five"></fmt:message></span>
                        </p>
                        <br>
                        <div class="input_container">
                            <input id="email" placeholder='<fmt:message key="pixy_recruit_email"></fmt:message>' class="input_style form_input mr_bottom" value="${email}" />
                            <p class="error_tip email_tip direction" style="display: none;"><fmt:message key="pixy_toast_wrongmail"></fmt:message></p>
                        </div>
                        <div class="gender_contain">
                            <span class="radio_title_star">*</span>
                            <span class="radio_title"><fmt:message key="pixy_common_gender"></fmt:message> </span>
                            <label class="male">
                                <span class="gender">
                                    <div class='ic_gender <%=(isMale?"on":"off")%>' data-gender="2"></div>
                                    <fmt:message key="pixy_common_male"></fmt:message>
                                </span>
                            </label>
                            <label>
                                <span class="gender">
                                    <div class='ic_gender <%=(isFemale?"on":"off")%>' data-gender="1"></div>
                                    <fmt:message key="pixy_common_female"></fmt:message>
                                </span>
                            </label>
                        </div>
                        <div class="input_container">
                            <textarea maxlength="1024" id="self_introduction" placeholder='<fmt:message key="pixy_recruit_aboutyou"></fmt:message>' class="input_style form_input textarea_input"></textarea>
                            <p class="error_tip length_tip direction" style="display: none;"><fmt:message key="pixy_message_too_short"></fmt:message></p>
                        </div>
                        
                        <div class="btn_submit"><fmt:message key="groups_nearby_submit"></fmt:message></div>
                    </div>
                </div>
                    
            </div>

            <div class="successTip" style="display: none;">
                <img src="/static/images/soma_message/ic_submitted.png" class="ic_success">
                <span class="success_text"><fmt:message key="pixy_recruit_submitted"></fmt:message></span>
            </div>

             <div class="popUp_contain" style="display: none;">
                <div class="mask"></div>
                <div class="popUp">
                    <div class="text"><fmt:message key="pixy_recruit_popup_content"></fmt:message></div>
                    <div class="btn_choice">
                        <div class="btn_cancel"><fmt:message key="pixy_recruit_popup_cancel"></fmt:message></div>
                        <div class="btn_yes"><fmt:message key="pixy_recruit_popup_yes"></fmt:message></div>
                    </div>
                </div>
            </div>

        </div>
        
    <script src="/static/js/jquery-1.9.1.min.js"></script>
    <script type="text/javascript">
        $(function() {

             $('label').click(function() {
                var $this = $(this);
                $('label').find(".ic_gender").removeClass("on").removeClass("warn").addClass("off");
                $this.find(".ic_gender").removeClass("off").addClass("on");
            });

            //submit
            $(".btn_submit").click(function () {
                var email = $("#email").val();
                var self_introduction = $("#self_introduction").val();

                var emailReg = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
                var gender = $('label .ic_gender.on').data("gender");
                var $body = $("body");
                var pixy_id = $body.attr("pixy_id") || "";
                var language = $body.attr("language") || "";

                var val_array = {
                    email: email,
                    self_introduction: self_introduction,
                    pixy_id: pixy_id,
                    lang: language,
                    gender: gender
                };
                console.log(val_array);
                var language = $("body").attr("language");
                var checkOk = 0;

                if (email == "" || !emailReg.test(email)) {
                    if (!emailReg.test(email) && email != "") {
                        $(".email_tip").show();
                    }
                    $("#email").css("border-color", "#F24D5B");
                } else {
                    checkOk++;
                    $("#email").css("border-color", "#e5e5e5");
                    $(".email_tip").hide();
                }

                if (!gender) {
                     $(".ic_gender").addClass("warn");
                 } else {
                     $(".ic_gender").removeClass("warn");
                     checkOk++;
                 }

                if (self_introduction == "" || self_introduction.length <10) {
                    if (self_introduction.length <10 && self_introduction != "") {
                        $(".length_tip").show();
                    }
                    $("#self_introduction").css("border-color", "#F24D5B");
                } else {
                    checkOk++;
                    $("#self_introduction").css("border-color", "#e5e5e5");
                    $(".length_tip").hide();
                }

                if (checkOk < 3) {
                    return false;
                }

                setTimeout(function(){
                    $(".popUp_contain").show();
                }, 500);
                

                $(".btn_yes").click(function() {
                    $.ajax({
                        url: "/public/broadcasterRecruitPixySubmit",
                        type: "POST",
                        contentType: "application/json; charset=utf-8",
                        dataType: "text",
                        data: JSON.stringify(val_array),
                        success: function (cont, txtStatus, xhr) {
                            if (xhr.status == 200) {
                                console.log("提交成功");
                                $(".homepage").hide();
                                $(".successTip").show();
                                $(".popUp_contain").hide();
                            } else if (xhr.status == 207 || 'pixyId_has_been_used' === cont) {
                                console.log("pixy已注册");
                                $(".popUp_contain").hide();
                            }
                        }
                    });
                });

                $(".btn_cancel").click(function() {
                    $(".popUp_contain").hide();
                })

            });

            
        })

    </script>

</body>

</html>
