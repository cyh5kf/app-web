var xlsx = require('node-xlsx');
var fs = require('fs');


var arguments = process.argv.splice(2);

var fileName = arguments[0];
console.log(__dirname + '/' + fileName + '.xlsx');

//__dirname = __dirname+"/../"
var obj = xlsx.parse(__dirname + '/' + fileName + '.xlsx'); // parses a file
var data = obj[0].data;

var lang_en_arr = [];
var lang_ar_arr = [];
var lang_es_arr = [];

data.splice(0, 1);

data.forEach(function (item) {
    if (item[0]) {
        var key = item[0];
        if (item[1]) {
            lang_en_arr.push({
                key: key,
                value: item[1]
            });
        } else {
            console.log('en', key, item[1]);
        }

        if (item[2]) {

            lang_ar_arr.push({
                key: key,
                value: item[2]
            });
        }

        if (item[3]) {

            lang_es_arr.push({
                key: key,
                value: item[3]
            });

        }

        else {
            console.log('ar', key, item[2]);
        }

    } else {
        console.log('key is null', item[0], item[1], item[2]);
    }
});


var decToHex = function (str) {
    var res = [];
    for (var i = 0; i < str.length; i++) {
        res[i] = ("00" + str.charCodeAt(i).toString(16)).slice(-4);
    }
    return "\\u" + res.join("\\u");
};


function buildContent(keyValueArr) {
    var strArr = keyValueArr.map(function (v) {
        var key = (v.key || "").trim();
        var value = (v.value || "").trim();
        value = decToHex(value);
        return v.key + '=' + value;
    });
    return strArr.join("\n");
}


var languageDir = __dirname + "/../../../resources/i18n/";

var lang_en = buildContent(lang_en_arr);
var lang_ar = buildContent(lang_ar_arr);
var lang_es = buildContent(lang_es_arr);


fs.writeFile(languageDir + fileName + "_en.properties", lang_en, function (err) {
    if (err) {
        return console.log(err);
    }
    console.log(languageDir + fileName + "_en.properties" + " was saved!");
});


fs.writeFile(languageDir + fileName + "_ar.properties", lang_ar, function (err) {
    if (err) {
        return console.log(err);
    }
    console.log(languageDir + fileName + "_ar.properties" + " was saved!");
});


fs.writeFile(languageDir + fileName + "_es.properties", lang_es, function (err) {
    if (err) {
        return console.log(err);
    }
    console.log(languageDir + fileName + "_es.properties" + " was saved!");
});





