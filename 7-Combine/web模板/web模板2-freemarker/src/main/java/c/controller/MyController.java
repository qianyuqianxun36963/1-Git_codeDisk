/**
 * 
 */
package c.controller;

import java.util.Iterator;
import java.util.List;

import net.sf.json.JSONArray;
import s.service.DBService;
import z.entity.po.Func;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;


/**
 * TODO
 * @author 
 * @date 2017
 */
@Controller
public class MyController {
	
	@Autowired
	private DBService dbService;

	@RequestMapping("/getFuncTree")
	@ResponseBody
    public String getFuncTree(
	@RequestParam(value = "pid", required = false)String pid) 
	{
        // 操作 ...
		System.out.println(pid);
		List<?> funcList = dbService.getFuncTree();
		if(null!=funcList&&0!=funcList.size()){
			Iterator<?> itFunc = funcList.iterator();
			while(itFunc.hasNext()){
				Func func = (Func) itFunc.next();
				String name = func.getFuncname();//得到了里面的元素的属性了
				System.out.println(name);
			}
		}
		JSONArray jsonArray = JSONArray.fromObject(funcList);
        return jsonArray.toString();
    }
	
	@RequestMapping("/getCommonTree")
	@ResponseBody
    public String getCommonTree(
			@RequestParam(value = "pid", required = false)String pid, 
			@RequestParam(value = "type", required = false)String type
			){
        // 操作 ...
		System.out.println("pid:"+pid+" type:"+type);
        return "success";
    }
}
