function diarydetails_view(url,paging){
    doPost(url,`_beforepaging=${paging}&rgs=${_f('rgs')}`,'lists')
}

function diarydetails_viewdetail(url,id){
    _e('details_main').style.visibility = "visible";
    doPost(url,`id=${id}&rgs=${_f('rgs')}`,'d_contents')
}


function diarydetails_close(){
    _e('details_main').style.visibility = "hidden";
}
