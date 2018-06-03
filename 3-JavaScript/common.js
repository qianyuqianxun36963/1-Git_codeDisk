function getRootPath() {
    //获取当前网址，如： http://127.0.0.1:8080/default/index/menuFrame.jsp 
    var curWwwPath = window.document.location.href;
    //获取主机地址之后的目录，如： /default/index/menuFrame.jsp  
    var pathName = window.document.location.pathname;
    var pos = curWwwPath.indexOf(pathName);
    //获取主机地址，如： http://localhost:8083  
    var localhostPaht = curWwwPath.substring(0, pos);
    //获取带"/"的项目名，如：/uimcardprj
    var projectName = pathName.substring(0, pathName.substr(1).indexOf(
            '/') + 1);
    return (localhostPaht + projectName);
}