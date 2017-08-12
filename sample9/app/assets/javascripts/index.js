function closeView(str){_e(str).style.visibility = "hidden";}
function view(path,lang,str,paging){
    doPost(path,`lang=${lang}&_beforepaging=${paging}`)
    _e(str).style.visibility = "visible";
    divmove()
}

