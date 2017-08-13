function closeView(str){_e(str).style.visibility = "hidden";}
function view(path,lang,str,paging){
    doPost(path,`lang=${lang}&_beforepaging=${paging}`,'programing')
    _e(str).style.top = `${window.innerHeight/4}px`;
    _e(str).style.left = `${window.innerHeight/4}px`;
    _e(str).style.visibility = "visible";
    divmove()
}

