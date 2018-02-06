package u.utils;

import java.util.HashMap;
import java.util.Map;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;



/**
 * 短信网关工具类
 * @author thinkpad
 *
 */
public class SMUtils {

	private static final Logger logger = LogManager.getLogger(SMUtils.class);
	/**
	 * 发送短信
	 * @param smContent 发送短信内容
	 * @param mobilePhones 多个号码中间采用半角逗号分隔,每个包最大支持200个号码。例：13500000000,13000000000,15100000000
	 * @param sendTime 定时发送，可以为空。为空表示立即发送，定时时间格式为：yyyy-MM-dd HH:mm:ss
	 * @param smsId 短信唯一编码，用于查询发送状态使用，可以为空
	 * @return
	 */
	public static Map sendSM(String smContent,String mobilePhones,String smsId,String sendTime) {
		String sendUrl = PropertiesUtil.fileParams.get("smSendUrl");
		String enterpriseID = PropertiesUtil.fileParams.get("smEnterpriseID");
		String loginName = PropertiesUtil.fileParams.get("smLoginName");
		String password = PropertiesUtil.fileParams.get("smPassword");
		String subPort = "";
		Map returnMap = new HashMap();
		if(StringUtils.isEmpty(mobilePhones) || StringUtils.isEmpty(smContent)) {
			returnMap.put("status", "error");
			returnMap.put("msg", "发送内容或者手机号码不能为空");
			return returnMap;
		}
		try {
			String postContent = "enterpriseID=" + enterpriseID + "&loginName=" + loginName + "&password=" +  DigestUtils.md5Hex(password) + "&smsId=" + smsId + "&subPort=" + subPort + "&content=" + java.net.URLEncoder.encode(smContent, "UTF-8") + "&mobiles=" + mobilePhones + "&sendTime=" +sendTime;
			String returnXML = HttpUtils.doPost(sendUrl, postContent,false);
			/*Map<String,String> paramMap = new HashMap<String,String>();
			paramMap.put("enterpriseID", enterpriseID);
			paramMap.put("loginName", loginName);
			paramMap.put("password", DigestUtils.md5Hex(password));
			paramMap.put("smsId", smsId);
			paramMap.put("subPort", subPort);
			paramMap.put("content", smContent);
			paramMap.put("mobiles", mobilePhones);
			paramMap.put("sendTime", sendTime);
			String returnXML = HttpUtils.doPost(sendUrl, paramMap, false);*/
			Map map = XMLUtils.getNodeValues(XMLUtils.getRootElement(returnXML));
			returnMap.put("status", "success");
			returnMap.put("result", map);
			return returnMap;
		} catch (Exception e) {
			logger.error(e.getMessage(),e);
		}

		return returnMap;
	}
	
	public static void main(String[] args){
		System.out.println(sendSM("测试发送短信","18756095356","","").toString());
	}
}
