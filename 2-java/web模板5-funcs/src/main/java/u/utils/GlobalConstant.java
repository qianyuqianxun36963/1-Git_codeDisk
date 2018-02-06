package u.utils;

public class GlobalConstant {
   private GlobalConstant(){
	   throw new IllegalAccessError("工具类不用实例化");
   }
   
   //存储用户session键值
   public static String SESSION_USER = "sessionUser";
   
   //用户接入token标识
   public static String ACCESSTOKEN = "ACCESSTOKEN";
   
   //错误token接入
   public static String ERRORACCESSTOKEN ="errorTokenRequestKey";
   
   //自定义登录URL
   public static String CUSTOMLOGINURL = "CUSTOMLOGINURL";
   
   //跳转页面
   public static String GOTOURL = "gotoUrl";
   
   //验证码
   public static String  DEFAULT_CAPTCHA_PARAM = "captcha";
   
   //工作目录
   public static String rootDir = null;
   
   //临时目录
   public static String tempRootPath = System.getProperty("user.dir") + "/temp/";
   
   //是否导出Excel标识
   public static final String exportexcel = "exportexcel";
   
   //学校编码
   public static String SCHOOL_CODE = "school_code";
   
   //办学类型代码
   public static String SCHOOL_TYPE_CODE = "school_type_code";
   
   //新建用户的默认密码
   public static String DEFAULT_PASSWORD = "default_password";
   //登录RSA私钥
   public static String LOGIN_RSA_PRIVATE_KEY = "LoginRSAPrivateKey";
   //修改密码私钥
   public static String CHANGPWD_RSA_PRIVATE_KEY = "ChangPWDRSAPrivateKey";
   //请求成功
   public static final String SUCCESS = "success";
   //请求异常
   public static final String ERROR = "error";
   //请求失败
   public static final String FAIL = "fail";
   //请求警告
   public static final String WARNING = "warning";
   
   static{
	   String path = Thread.currentThread().getContextClassLoader().getResource("").toString();
	   path = path.replace("\\", "/");
	   
	   if(path.startsWith("file:/")){
		   path = path.substring(6,path.length());
	   }
	   
	   int _info = path.indexOf("/WEB-INF/classes");
	   if(_info > 0) {
		   path = path.substring(0,_info);
	   }
	   
	   rootDir = path;
	   tempRootPath = rootDir + "/temp/";
   }
   
   /**
    * 定时任务状态
    * 
    */
   public enum ScheduleStatus {
       /**
        * 正常
        */
   	NORMAL(0),
       /**
        * 暂停
        */
   	PAUSE(1);

       private int value;

       private ScheduleStatus(int value) {
           this.value = value;
       }
       
       public int getValue() {
           return value;
       }
   }
}
