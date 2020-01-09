
var responseCallbacks = [];
var uniqueId = 1;

window.YPHybirdBridge = {
	// Native 端调用本接口，实现回调参数给 JS
    sendResponseMessage: _sendResponseMessage,
	// H5 调用原生接口
    callNativeFunction: _callNativeFunction
}

// 调用原生的方法，funName 为函数名
function _callNativeFunction(funName, data, responseCallback) {
    if (arguments.length == 2 && typeof data == 'function') {
        responseCallback = data;
        data = null;
    }
    var callbackId;
    if (responseCallback) {
        callbackId = 'cb_' + (uniqueId++) + '_' + new Date().getTime();
        responseCallbacks[callbackId] = responseCallback;
    }

    var commend = {
        functionName: funName,
        data: data,
        callbackId: callbackId
    };

    var jsonStr = JSON.stringify(commend);
    var url = "yunpian:" + jsonStr;
    loadURL(url);
};

// 发起模拟 URL 请求
function loadURL(url) {
    var iFrame;
    iFrame = document.createElement("iframe");
    iFrame.setAttribute("src", url);
    iFrame.setAttribute("style", "display:none;");
    iFrame.setAttribute("height", "0px");
    iFrame.setAttribute("width", "0px");
    iFrame.setAttribute("frameborder", "0");
    document.body.appendChild(iFrame);
    setTimeout(function(){iFrame.parentNode.removeChild(iFrame);}, 0);
};

// 原生根据 JS 传过去的 callbackId，调用本函数实现 JS 函数的请求回调
// messageJSON 格式: {responseId:"JS 传过去的 callbackId",responseData:"需要回调的参数"}
function _sendResponseMessage(messageJSON) {
    var message = JSON.parse(messageJSON);
    var responseCallback;
    if (message.responseId) {
        responseCallback = responseCallbacks[message.responseId];
        if (!responseCallback) {
            console.log("responseCallback not exist");
            return;
        }
        responseCallback(message.responseData);
        responseCallbacks[message.responseId] = null;
    }
}
