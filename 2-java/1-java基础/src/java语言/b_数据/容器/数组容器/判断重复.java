package java语言.b_数据.容器.数组容器;

import java.util.Map;
import java.util.HashMap;

import org.apache.commons.lang.StringUtils;
import org.junit.Test;

//判断优惠范围是否重复
//例如：优惠范围考虑两个因素，学生类型和教学点。
//现新增教学点 1,2 学生类型 A,B 做优惠范围，这样就新增了4种优惠范围。
//要求，判断新增优惠范围是否与已有范围重复。

public class 判断重复 {
    private String[][] existedScope = {{"1","A"},{"1","B"},{"2","A"},{"2","B"}};
    private String[][] newScope     = {{"1","A"},{"1","B"},{"2","A"},{"2","B"}};
    
    @Test
    public void test(){
        System.out.println(check(existedScope,newScope));
    }
    
    //将数组拼接字符串作为key来判断该数组是否已存在。
    public boolean check(String[][] existedScope,String[][] newScope){
        Map<String,Boolean> existedScopeMap = new HashMap();
        for(String[] sa: existedScope){
            existedScopeMap.put(StringUtils.join(sa,","),true);
        }
        
        for(String[] scope:newScope){
            System.out.println(existedScopeMap.get(StringUtils.join(scope,",")));
            return true;
        }
        return false;
    }
    
}
