/** 图片上传后的相对路径 *//*
var  oppositePath = "";

*//** 上传状态 0: 无上传/取消， 1： 上传中， 2： 暂停  ， 3：上传成功 *//*
var uploadState = 0;

function initPage() 
{
    //重置上传图片的状态
    uploadState = 0;
    
    //重置图片路径
    oppositePath = "";
    
    //初始化文件上传
    $('.fileinput').fileinput('clearImg');
    
    //隐藏进度条
    $("#fileprogress").hide();
}

*//**
 * 功能描述：上传图片
 * 
 * @Param [String] id <input框的id>
 *
 * @Param [String] param1 <进度条最外层的div的id>
 * 
 * @Param [String] param2 <进度条背景div的id>
 * 
 * @Param [String] param3 <进度条数字div的id>
 * 
 * @author jixingwang
 *
 * @date 2017-3-23 13:53:53
 *//*
function uploadLOGO(id,param1,param2,param3)
{
     $("#"+param1).show();
     var name = getFileNameAndSize(id,"0","file");//0代表测试
     oppositePath = name[0].resourcePath;
     uploadFiles(id,param1,param2,param3,name);
}*/