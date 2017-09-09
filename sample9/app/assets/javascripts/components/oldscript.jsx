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

function diary_modify_view(id){
    _e('modify_id').value=id.replace('"','')
    doPost('/diarymodify/comfirm/',`id=${id.replace('"','')}&rgs=${_f('rgs')}`,'modfiy')
}

function diary_modify_update(){
    var id =_f('modify_id').replace('"','')
    doPost('/diarymodify/update/',`id=${id}&rgs=${_f('rgs')}&modfiy=${_f('modfiy')}`,'result')
}

function register(){
    doPost('/diaryregister/register/',`diary=${_f('diary')}&rgs=${_f('rgs')}`,'programing')
}
function comfirm_content(){
    doPost('/diaryregister/comfirm/',`diary=${_f('diary')}&rgs=${_f('rgs')}`,'programing')
}

