function register(){
    doPost('/diaryregister/register/',`diary=${_f('diary')}&rgs=${_f('rgs')}`,'programing')
}
function comfirm_content(){
    doPost('/diaryregister/comfirm/',`diary=${_f('diary')}&rgs=${_f('rgs')}`,'programing')
}

