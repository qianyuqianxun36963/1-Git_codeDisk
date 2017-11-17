package com.wh.eas.sys.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.wh.eas.sys.dao.ExcelMapper;
import com.wh.eas.sys.service.IExcelService;

@Service
public class ExcelServerImpl implements IExcelService{
    
    @Override
    public List<Map<String, Object>> queryExcelInfos_Export(Map map) {
        return null;
    }

    @Override
    public boolean updateExportInfoStatus(Map map) {
        return false;
    }

    @Override
    public boolean updateExcelInfoByImport(Map map) {
        return false;
    }
    
    /**DAO层注入*/
    @Resource
    private ExcelMapper excelMapper;
    
    //下面是检查插入值是否存在的通用方法,如 校验性别,checkExist("sex","男");
    public Map checkEmpty(String type,Object info){
        SingletonCheckFactory checkFactory = SingletonCheckFactory.getInstance();
        return checkFactory.checkEmpty(type,info);
    }
    
    //下面是检查插入值是否存在的通用方法,如 校验性别,checkExist("sex","男");
    public Map checkExist(String type,Object info){
        SingletonCheckFactory checkFactory = SingletonCheckFactory.getInstance();
        return checkFactory.checkExist(type,info);
    }
    
    //下面是检查插入值是否存在的通用方法,如 校验性别,checkExist("sex","男");
    public Map checkNotExist(String type,Object info){
        SingletonCheckFactory checkFactory = SingletonCheckFactory.getInstance();
        return checkFactory.checkNotExist(type,info);
    }
    
    //下面是检查插入值是否符合格式的通用方法,如 校验qq号,checkReg("qq","152123123");
    public Map checkReg(String type,String info){
        SingletonCheckFactory checkFactory = SingletonCheckFactory.getInstance();
        return checkReg(type,info);
    }
    
        
    //导入学生信息时需要的校验处理
    
    static class SingletonCheckFactory {
        private static SingletonCheckFactory mSingletonClass = null;
        
        Map<String,Map> checkInfos     = new HashMap<String,Map>();         //进行是否存在的校验时需要的数据，该 map中,key为导入的字段值。value为校验通过需要返回的值。
        Map<String,Map<?,?>> checkRegs = new HashMap<String,Map<?,?>>();    //进行规制校验时需要的数据，该map中,key为导入的字段值。value为。
        Map<String,String> comments    = new HashMap<String,String>();      //字段的注释。
        
        SingletonCheckFactory() {
            initCheckInfos(checkInfos);
            initCheckRegs(checkRegs);
            initComments(comments);
        }
        
        public static synchronized SingletonCheckFactory getInstance() {
            if (mSingletonClass == null) {
                synchronized (SingletonCheckFactory.class) {
                    if (mSingletonClass == null) {
                        mSingletonClass = new SingletonCheckFactory();
                    }
                }
            }
            return mSingletonClass;
        }
        
        //必填字段的校验，字段为空，不符合规则，返回false，并给出注释。
        public Map checkEmpty(String type,Object info){
            Map result = new HashMap();
            if(null == info||"".equals(info)){
                result.put("result", false);
                result.put("reason",comments.get(type) + "不能为空");
                return result;
            }
            else {
                result.put("result", true);
                return result;
            }
        }
        
        //下面是检查插入值是否存在的通用方法,如 校验性别,checkExist("sex","男");
        public Map checkExist(String type,Object info){
            Map result = new HashMap();
            Map checkInfo = checkInfos.get(type);
            if(null == checkInfo.get(info)) {
                result.put("result", false);
                result.put("reason",comments.get(type) + "不存在数据库中");
                return result;
            }else{
                result.put("result", true);
                return result;
            }
        }
        
        //下面是检查插入值是否存在的通用方法,如 校验性别,checkExist("sex","男");
        public Map checkNotExist(String type,Object info){
            Map result = new HashMap();
            Map checkInfo = checkInfos.get(type);
            if(null != checkInfo.get(info)) {
                result.put("result", false);
                result.put("reason",comments.get(type) + "已经在数据库中，不允许重复");
                return result;
            }else{
                result.put("result", true);
                return result;
            }
        }
        
        // 下面是检查插入值是否符合格式的通用方法,如 校验qq号,checkReg("qq","152123123");
        public Map checkReg(String type,String info){
            Map result = new HashMap();
            Map checkReg = checkRegs.get(type);
            if(!Pattern.matches((String)checkReg.get("reg"),info)){
                result.put("result", false);
                result.put("reason", comments.get(type) + "格式错误，" + checkReg.get("reason"));
                return result;
            }else {
                result.put("result", true);
                return result;
            }
        }
    }
    
    
    
    
    public static void initComments(Map<String,String> comments){
        if(null == comments){
            comments.put("sex", "性别");
            comments.put("name","姓名");
            comments.put("politicalStatus","政治面貌");
            comments.put("nation","民族");
            comments.put("certificateType","证件类型");
            comments.put("accountsNature","户口性质");
            comments.put("nativePlace","籍贯");
            comments.put("positionStatus","在职状况：0：不在职，1：在职");
            comments.put("regsource","报名来源");
            comments.put("studentNo","学号");
            comments.put("pointInfo","教学点");
            comments.put("familyAddress","家庭地址");
            comments.put("postalAddress","通讯地址");
            comments.put("studentType","学生类型(数据字典维护)");
            comments.put("studentSource","学生来源(数据字典维护)");
            comments.put("major","专业");
            comments.put("level","层次");
        }
    }
    
    public static void initCheckInfos(Map<String,Map> checkInfos) {
        if(null == checkInfos){
            checkInfos = new HashMap<String,Map>();
            
            Map sex               = new HashMap();   //'性别：1：男，2：女'
            sex.put("男", "1"); sex.put("女", "2");
            Map politicalStatus   = new HashMap();   //'政治面貌'
            Map nation            = new HashMap();   //'民族'
            Map certificateType   = new HashMap();   //'证件类型'
            Map accountsNature    = new HashMap();   //'户口性质'
            Map nativePlace       = new HashMap();   //'籍贯'
            Map positionStatus    = new HashMap();   //'在职状况：0：不在职，1：在职'
            Map regsource         = new HashMap();   //'报名来源'
            Map studentNo         = new HashMap();   //'学号'
            Map pointInfo         = new HashMap();   //'教学点'
            Map familyAddress     = new HashMap();   //'家庭地址'
            Map postalAddress     = new HashMap();   //'通讯地址'
            Map studentType       = new HashMap();  // '学生类型(数据字典维护)',
            Map studentSource     = new HashMap();  // '学生来源(数据字典维护)',
            Map major             = new HashMap();  // '专业',
            Map level             = new HashMap();  // '层次',
            
            checkInfos.put("sex",sex);                          //'性别：1：男，2：女'
            checkInfos.put("politicalStatus",politicalStatus);  //'政治面貌'
            checkInfos.put("nation",nation);                    //'民族'
            checkInfos.put("certificateType",certificateType);  //'证件类型'
            checkInfos.put("accountsNature",accountsNature);    //'户口性质'
            checkInfos.put("nativePlace",nativePlace);          //'籍贯'
            checkInfos.put("positionStatus",positionStatus);    //'在职状况：0：不在职，1：在职'
            checkInfos.put("regsource",regsource);              //'报名来源'
            checkInfos.put("studentNo",studentNo);              //'学号'
            checkInfos.put("pointInfo",pointInfo);              //'教学点'
            checkInfos.put("familyAddress",familyAddress);      //'家庭地址'
            checkInfos.put("postalAddress",postalAddress);      //'通讯地址'
            checkInfos.put("studentType",studentType);          //'学生类型(数据字典维护)',
            checkInfos.put("studentSource",studentSource);      //'学生来源(数据字典维护)',
            checkInfos.put("major",major);                      //'专业',
            checkInfos.put("level",level);                      //'层次'
        }
    }
    
    public static void initCheckRegs(Map<String,Map<?,?>> checkRegs){
        if(null == checkRegs){
            checkRegs = new HashMap<String,Map<?,?>>();
            
            Map reg_qq = new HashMap();  //QQ号
            reg_qq.put("reg", "[1-9][0-9]{4,}");
            reg_qq.put("reason", "腾讯QQ号从10000开始");
            checkRegs.put("qq",reg_qq);  //QQ号
                  
            Map reg_telephone = new HashMap();  //固定电话
            reg_telephone.put("reg","^(\\(\\d{3,4}-)|\\d{3.4}-)?\\d{7,8}$");
            reg_telephone.put("reason", "固定电话格式有误");
            checkRegs.put("telephone",reg_telephone);  //固定电话
            
            Map reg_mobilephone = new HashMap();  //移动电话
            reg_mobilephone.put("reg", "^(13[0-9]|14[5|7]|15[0|1|2|3|5|6|7|8|9]|18[0|1|2|3|5|6|7|8|9])\\sd{8}$");
            reg_mobilephone.put("reason", "手机号必须为11位");
            checkRegs.put("mobilephone",reg_mobilephone);  //移动电话
            
            Map reg_email = new HashMap(); //邮箱
            reg_email.put("reg", "^\\w+((-\\w+)|(\\.\\w+))*\\@[A-Za-z0-9]+((\\.|-)[A-Za-z0-9]+)*\\.[A-Za-z0-9]+$");
            reg_email.put("reason", "邮箱格式不符合标准");
            checkRegs.put("email",reg_email ); //邮箱
            
            Map reg_postalCode = new HashMap();  //邮政编码
            reg_postalCode.put("reg", "[1-9]\\d{5}(?!\\d)");
            reg_postalCode.put("reason", "邮政编码有误,中国邮政编码为6位数字");
            checkRegs.put("postalCode",reg_postalCode);  //邮政编码
            
            Map reg_birthday = new HashMap(); //出生日期
            reg_birthday.put("reg","^((\\d{2}(([02468][048])|([13579][26]))[\\-\\/\\s]?((((0?[13578])|(1[02]))[\\-\\/\\s]?((0?[1-9])|([1-2][0-9])|(3[01])))|(((0?[469])|(11))[\\-\\/\\s]?((0?[1-9])|([1-2][0-9])|(30)))|(0?2[\\-\\/\\s]?((0?[1-9])|([1-2][0-9])))))|(\\d{2}(([02468][1235679])|([13579][01345789]))[\\-\\/\\s]?((((0?[13578])|(1[02]))[\\-\\/\\s]?((0?[1-9])|([1-2][0-9])|(3[01])))|(((0?[469])|(11))[\\-\\/\\s]?((0?[1-9])|([1-2][0-9])|(30)))|(0?2[\\-\\/\\s]?((0?[1-9])|(1[0-9])|(2[0-8]))))))(\\s(((0?[0-9])|([1-2][0-9]))\\:([0-5]?[0-9])((\\s)|(\\:([0-5]?[0-9])))))?$");
            reg_birthday.put("reason", "出生年月日闰年平年有误");
            checkRegs.put("birthday",reg_birthday);    //出生日期
            
            Map reg_date = new HashMap();  //日期格式
            reg_date.put("reg", "^\\d{4}-\\d{1,2}-\\d{1,2}");
            reg_date.put("reason", "日期格式有误");
            checkRegs.put("date",reg_date);  //日期格式
            
            Map reg_certificate_idcard = new HashMap();  //身份证
            reg_certificate_idcard.put("reg", "(^\\d{15}$)|(^\\d{18}$)|(^\\d{17}(\\d|X|x)$)");
            reg_certificate_idcard.put("reason", "身份证号有误,需为(15位、18位数字),最后一位可以为X");
            checkRegs.put("certificate_idcard",reg_certificate_idcard);//身份证
        }
    }
}
