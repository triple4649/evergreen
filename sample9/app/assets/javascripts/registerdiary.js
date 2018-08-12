//TextAreaに文字を挿入する
function add_str(name){
    var obj ={
        add_header:'#',
        add_kaigyo:'\n',
        add_url:'[]()',
        add_haifun:' - ',
        add_underbar:'_',
        add_quout:'~~~',
        add_date:function (){
              var dt = new Date();
              var y = dt.getFullYear();
              var m = ("00" + (dt.getMonth()+1)).slice(-2);
              var d = ("00" + dt.getDate()).slice(-2);
              var result = y + "/" + m + "/" + d;
              return result;
            }()
    }
    var textarea = document.getElementById('diary')
    var sentence = textarea.value;
    var len      = sentence.length;
    var pos      = textarea.selectionStart;
    var before   = sentence.substr(0, pos);
    var word     = obj[name];
    var after    = sentence.substr(pos, len);
    sentence = before + word + after;
    textarea.value = sentence;
}