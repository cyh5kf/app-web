//if (navigator.language) {
//var language = navigator.language;
//}
//else {
//var language = navigator.browserLanguage;
//}
//console.log(language);

//设置多语言
jQuery(document).ready(function($) {

    var language = $("body").attr("language");

   $('[multiLanguage]').each(function () {
        var $this = $(this);
        var languageKey = $this.attr('multiLanguage');
        if(language.indexOf('en') > -1){
            var languageValue = lang_en[languageKey];
            if (languageKey == 'pixy_recruit_email') {
                $this.attr('placeholder', languageValue);
            } else if (languageKey == 'pixy_recruit_aboutyou') {
                $this.attr('placeholder', languageValue);
            } else {
                $this.html(languageValue);
            }
            $(".picture").attr('src', '/static/images/soma_message/pic_joinus_en_min.png');
        } else if (language.indexOf('ar') > -1) {
            var languageValue = lang_ar[languageKey];
            if (languageKey == 'pixy_recruit_email') {
                $this.attr('placeholder', languageValue);
            } else if (languageKey == 'pixy_recruit_aboutyou') {
                $this.attr('placeholder', languageValue);
            } else {
                $this.html(languageValue);
            }
            $(".picture").attr('src', '/static/images/soma_message/pic_joinus_ar_min.png');
        } else {
            var languageValue = lang_en[languageKey];
            if (languageKey == 'pixy_recruit_email') {
                $this.attr('placeholder', languageValue);
            } else if (languageKey == 'pixy_recruit_aboutyou') {
                $this.attr('placeholder', languageValue);
            } else {
                $this.html(languageValue);
            }
            $(".picture").attr('src', '/static/images/soma_message/pic_joinus_en_min.png');
        }
    }) 
});
