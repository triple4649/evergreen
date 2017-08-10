var host = "http://localhost:3000/exam/register/;"
function doPost() {
    var id = Math.floor(Math.random() * 1000000)
    var param = _g()
    .concat(
       [`id#1=${id}`])
    .join('&')
    commute(host, param)
}

function commute(url, param) {
    var req = new XMLHttpRequest();
    req.open('POST', url, true);
    req.setRequestHeader('content-type',
    'application/x-www-form-urlencoded;charset=UTF-8');
    console.log(param)
    req.send(param);
    req.onload = _r(req,
        function () { _t('display', req.responseText); });
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
    return document.getElementById(str).innerText = text;
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

