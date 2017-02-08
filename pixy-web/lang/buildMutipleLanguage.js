var xlsx = require('node-xlsx');
var fs = require('fs');

//__dirname = __dirname+"/../"
var obj = xlsx.parse(__dirname + '/../mutiple_language/mutiple_language_activity.xlsx'); // parses a file
var data = obj[0].data;

var lang_en = "var lang_en = {\n";
var lang_ar = "var lang_ar = {\n";

data.splice(0,1);

data.forEach(function (item) {
 if(item[0]){
  var key = '\t"'+item[0]+'"';
  if(item[1]){
   lang_en += key +":" + '"' + item[1] + '",\n'
  }else {
   lang_en += "//"+key +":" + '"' + " " + '",\n'
  }

  if(item[2]){
   lang_ar += key +":" + '"' + item[2] + '",\n'
  }else {
   lang_ar += "//"+key +":" + '"' + " " + '",\n'
  }

 }else {
  lang_en+="\n";
  lang_ar+="\n";
 }
})

lang_en += "};\n";
lang_ar += "};\n";

var languageDir =  __dirname ;//ls+ "../../static/lang/"

fs.writeFile(languageDir+"/en_activity.js", lang_en, function(err) {
 if(err) {
  return console.log(err);
 }
 console.log("en_activity.js"+" was saved!");
});



fs.writeFile(languageDir+"/ar_activity.js", lang_ar, function(err) {
 if(err) {
  return console.log(err);
 }
 console.log("ar_activity.js"+" was saved!");
});





