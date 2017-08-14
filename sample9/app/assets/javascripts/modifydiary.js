function diary_modify_view(id){
    _e('modify_id').value=id.replace('"','')
    doPost('/diarymodify/comfirm/',`id=${id.replace('"','')}&rgs=${_f('rgs')}`,'modfiy')
}

function diary_modify_update(){
    var id =_f('modify_id').replace('"','')
    doPost('/diarymodify/update/',`id=${id}&rgs=${_f('rgs')}&modfiy=${_f('modfiy')}`,'result')
}
