		/** 上传状态 0: 无上传/取消， 1： 上传中， 2： 暂停  ， 3：上传成功 */
		var uploadState = 0;

		function initPage() 
		{
			//重置上传图片的状态
			uploadState = 0;
			
			//初始化文件上传
			$('.fileinput').fileinput('clearImg');
			
			//隐藏进度条
			$("#fileprogress").hide();
		}

		/**
		 * 功能描述：上传图片
		 * 
		 * @Param [String] tagid <input框的id>
		 *
		 * @Param [String] progressBarDivId        <进度条最外层的div的id>
		 * 
		 * @Param [String] progressBarBackgroundId <进度条背景div的id>
		 * 
		 * @Param [String] progressBarNumberId     <进度条数字div的id>
		 * 
		 * @author jixingwang
		 *
		 * @date 2017-3-23 13:53:53
		 */
		function uploadLOGO(tagid,progressBarDivId,progressBarBackgroundId,progressBarNumberId)
		{
			 $("#"+progressBarDivId).show(); //显示进度条。
			 var fileInfos = getFileInfos(tagid,"0","file");//0代表测试,"file"代表二级目录。
			 alert(fileInfos[0].resourcePath);
			 uploadFiles(tagid,progressBarDivId,progressBarBackgroundId,progressBarNumberId,fileInfos);
		}