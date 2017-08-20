function doPost(path,param,callbackid) {
    commute(_f("_hostname")+path, param,callbackid)
}

function commute(url, param,callbackid) {
    var req = new XMLHttpRequest();
    req.open('POST', url, true);
    req.setRequestHeader('content-type',
    'application/x-www-form-urlencoded;charset=UTF-8');
    //CSRF対策
    req.setRequestHeader('X-CSRF-Token',
    document.head.children['csrf-token'].content);
    req.send(param);
    req.onload = _r(req,
        function () { _t(callbackid, req.responseText);});
}

function _r(req, caller) {
    return function (event) {
        if (req.readyState === 4 && req.status === 200)
            caller();
    };
}

function _f(str) {
    return document.getElementById(str).value;
}

function _t(str, text) {
    if(document.getElementById(str).innerHTML){
        document.getElementById(str).innerHTML = text;
    }else{
        document.getElementById(str).value = text;
    }
}

function _k(str) {
    return Object.keys(document.getElementsByTagName(str))
}

function _g() {
    console.log(_k('input'))
    return _k('input')
    .filter(a=>isNaN(a))
    .map(a=>`${a}=${_f(a)}`)
}
function _e(str){return document.getElementById(str)}

