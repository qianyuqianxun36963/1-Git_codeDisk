<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!--获取指南保存地址-->
<%
//这里获取指南在服务器上的保存目录，文件名在body中(隐藏)，通过上页传值过来的值优先。
//basePath获取的是服务器工程路径。
String basePath = request.getSession().getServletContext().getRealPath("/");
basePath = basePath.replace("\\", "\\\\");
%>

<%@include file="/common/common.jsp" %>

<html>
<%--
- Author(s): wang
- Date: 2016-03-21 17:18:57
- Description:
    --%>
    <head>
        <title>
                编辑员工信息
        </title>
        
        <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
        <style type="text/css">
            .spancell{
                float:left;
                border-bottom:1px solid #efeded;
                border-top:1px solid #efeded;
                display:none;
/*              display:inline-block; */
            }
        
            .mybutton{
                color: #FFFFFF;
                padding: 0;
                border: 1px solid #e3e3e3;
                background: #d93946;
                text-align: center;
                display: inline-block;
                vertical-align: middle;
                outline: none;
            }
        
            .textcell{
                width:23%;height:30px;
            }
            
            .edittextcell{
                width:15%;height:30px;
            }
            
            .buttoncell{
                width:8%;height:20px;
                border-bottom:1px solid #efeded;
                padding:5px 5px;
                display:none;
            }
            
            .inputcell{
                width:23%;height:20px;
                padding:5px 5px;
            }
       
        </style>
        
    </head>
    <body>

        <div class="fcs">

           <div class="nui-toolbar" style="text-align:left;margin-bottom:2px;" borderStyle="border:0;">
               <table style="width:100%;border:1px solid #e3e3e3;">
                    <tr>
                        <td style="width:100%;">
                            <a class = "mybutton" href="javascript:onOk()" style="width:60px;" iconCls="icon-save-p" >保存</a>
                            <a class = "mybutton" href="javascript:resetForm()" id="resetBtn" style="width:60px;" iconCls="icon-reset">重置</a>
                            <a class = "mybutton" href="javascript:addField()" id="addBtn" style="width:110px;" iconCls="icon-add">添加字段</a>
                            <a class = "mybutton" href="javascript:showEdit()" id="editBtn" style="width:110px;" iconCls="icon-edit">编辑字段</a>
                            <a class = "mybutton" href="javascript:finishEdit()" id="saveBtn" style="width:110px; display:none" iconCls="icon-save">退出编辑</a>
                            <a class = "mybutton" href="javascript:cancel()" id="cancelBtn" style="width:60px;display:none;" iconCls="icon-cancel">取消</a>
                        </td>
                    </tr>
                </table>
            </div> 
 

            <div id="dataform1" style="padding-top:5px;">
                <!-- hidden域 -->
                <input class="nui-hidden" name="orgsfyempextend.extempid" id="orgsfyempextend.extempid"/>
                
                <div class="mytable" style="margin-left:auto;margin-right:auto;width:100%;">
                                        
                    <span id="textcell1" class="spancell textcell" style="display:none;">自定义字段一</span><span id="buttoncell1" class="spancell buttoncell"><img src="../icons/edit20.png" onclick="editField(1)" /><img src="../icons/remove20.png" onclick="removeField(1)" /></span>
                    <span id="inputcell1" class="spancell inputcell" style="display:none;"><input class="nui-textbox" name="orgsfyempextend.sfyempext1"/></span>
                    
                    <span id="textcell2" class="spancell textcell" style="display:none;">自定义字段二</span><span id="buttoncell2" class="spancell buttoncell"><img src="../icons/edit20.png" onclick="editField(2)" /><img src="../icons/remove20.png" onclick="removeField(2)" /></span>
                    <span id="inputcell2" class="spancell inputcell" style="display:none;"><input class="nui-textbox" name="orgsfyempextend.sfyempext2"/></span>
                    
                    <span id="textcell3" class="spancell textcell" style="display:none;">自定义字段三</span><span id="buttoncell3" class="spancell buttoncell"><img src="../icons/edit20.png" onclick="editField(3)" /><img src="../icons/remove20.png" onclick="removeField(3)" /></span>
                    <span id="inputcell3" class="spancell inputcell" style="display:none;"><input class="nui-textbox" name="orgsfyempextend.sfyempext3"/></span>
                    
                    <span id="textcell4" class="spancell textcell" style="display:none;">自定义字段四</span><span id="buttoncell4" class="spancell buttoncell"><img src="../icons/edit20.png" onclick="editField(4)" /><img src="../icons/remove20.png" onclick="removeField(4)" /></span>
                    <span id="inputcell4" class="spancell inputcell" style="display:none;"><input class="nui-textbox" name="orgsfyempextend.sfyempext4"/></span>
                    
                    <span id="textcell5" class="spancell textcell" style="display:none;">自定义字段五</span><span id="buttoncell5" class="spancell buttoncell"><img src="../icons/edit20.png" onclick="editField(5)" /><img src="../icons/remove20.png" onclick="removeField(5)" /></span>
                    <span id="inputcell5" class="spancell inputcell" style="display:none;"><input class="nui-textbox" name="orgsfyempextend.sfyempext5"/></span>
                    
                    <span id="textcell6" class="spancell textcell" style="display:none;">自定义字段六</span><span id="buttoncell6" class="spancell buttoncell"><img src="../icons/edit20.png" onclick="editField(6)" /><img src="../icons/remove20.png" onclick="removeField(6)" /></span>
                    <span id="inputcell6" class="spancell inputcell" style="display:none;"><input class="nui-textbox" name="orgsfyempextend.sfyempext6"/></span>
                    
                    <span id="textcell7" class="spancell textcell" style="display:none;">自定义字段七</span><span id="buttoncell7" class="spancell buttoncell"><img src="../icons/edit20.png" onclick="editField(7)" /><img src="../icons/remove20.png" onclick="removeField(7)" /></span>
                    <span id="inputcell7" class="spancell inputcell" style="display:none;"><input class="nui-textbox" name="orgsfyempextend.sfyempext7"/></span>
                    
                    <span id="textcell8" class="spancell textcell" style="display:none;">自定义字段八</span><span id="buttoncell8" class="spancell buttoncell"><img src="../icons/edit20.png" onclick="editField(8)" /><img src="../icons/remove20.png" onclick="removeField(8)" /></span>
                    <span id="inputcell8" class="spancell inputcell" style="display:none;"><input class="nui-textbox" name="orgsfyempextend.sfyempext8"/></span>
                    
                    <span id="textcell9" class="spancell textcell" style="display:none;">自定义字段九</span><span id="buttoncell9" class="spancell buttoncell"><img src="../icons/edit20.png" onclick="editField(9)" /><img src="../icons/remove20.png" onclick="removeField(9)" /></span>
                    <span id="inputcell9" class="spancell inputcell" style="display:none;"><input class="nui-textbox" name="orgsfyempextend.sfyempext9"/></span>
                    
                    <span id="textcell10" class="spancell textcell" style="display:none;">自定义字段十一</span><span id="buttoncell10" class="spancell buttoncell"><img src="../icons/edit20.png" onclick="editField(10)" /><img src="../icons/remove20.png" onclick="removeField(10)" /></span>
                    <span id="inputcell10" class="spancell inputcell" style="display:none;"><input class="nui-textbox" name="orgsfyempextend.sfyempext10"/></span>
                    
                    <span id="textcell11" class="spancell textcell" style="display:none;">自定义字段十二</span><span id="buttoncell11" class="spancell buttoncell"><img src="../icons/edit20.png" onclick="editField(11)" /><img src="../icons/remove20.png" onclick="removeField(11)" /></span>
                    <span id="inputcell11" class="spancell inputcell" style="display:none;"><input class="nui-textbox" name="orgsfyempextend.sfyempext11"/></span>
                    
                    <span id="textcell12" class="spancell textcell" style="display:none;">自定义字段十三</span><span id="buttoncell12" class="spancell buttoncell"><img src="../icons/edit20.png" onclick="editField(12)" /><img src="../icons/remove20.png" onclick="removeField(12)" /></span>
                    <span id="inputcell12" class="spancell inputcell" style="display:none;"><input class="nui-textbox" name="orgsfyempextend.sfyempext12"/></span>
                    
                    <span id="textcell13" class="spancell textcell" style="display:none;">自定义字段十四</span><span id="buttoncell13" class="spancell buttoncell"><img src="../icons/edit20.png" onclick="editField(13)" /><img src="../icons/remove20.png" onclick="removeField(13)" /></span>
                    <span id="inputcell13" class="spancell inputcell" style="display:none;"><input class="nui-textbox" name="orgsfyempextend.sfyempext13"/></span>
                    
                    <span id="textcell14" class="spancell textcell" style="display:none;">自定义字段十五</span><span id="buttoncell14" class="spancell buttoncell"><img src="../icons/edit20.png" onclick="editField(14)" /><img src="../icons/remove20.png" onclick="removeField(14)" /></span>
                    <span id="inputcell14" class="spancell inputcell" style="display:none;"><input class="nui-textbox" name="orgsfyempextend.sfyempext14"/></span>
                    
                    <span id="textcell15" class="spancell textcell" style="display:none;">自定义字段十五</span><span id="buttoncell15" class="spancell buttoncell"><img src="../icons/edit20.png" onclick="editField(15)" /><img src="../icons/remove20.png" onclick="removeField(15)" /></span>
                    <span id="inputcell15" class="spancell inputcell" style="display:none;"><input class="nui-textbox" name="orgsfyempextend.sfyempext15"/></span>
                    
                    <span id="textcell16" class="spancell textcell" style="display:none;">自定义字段十六</span><span id="buttoncell16" class="spancell buttoncell"><img src="../icons/edit20.png" onclick="editField(16)" /><img src="../icons/remove20.png" onclick="removeField(16)" /></span>
                    <span id="inputcell16" class="spancell inputcell" style="display:none;"><input class="nui-textbox" name="orgsfyempextend.sfyempext16"/></span>
                    
                    <span id="textcell17" class="spancell textcell" style="display:none;">自定义字段十七</span><span id="buttoncell17" class="spancell buttoncell"><img src="../icons/edit20.png" onclick="editField(17)" /><img src="../icons/remove20.png" onclick="removeField(17)" /></span>
                    <span id="inputcell17" class="spancell inputcell" style="display:none;"><input class="nui-textbox" name="orgsfyempextend.sfyempext17"/></span>
                    
                    <span id="textcell18" class="spancell textcell" style="display:none;">自定义字段十八</span><span id="buttoncell18" class="spancell buttoncell"><img src="../icons/edit20.png" onclick="editField(18)" /><img src="../icons/remove20.png" onclick="removeField(18)" /></span>
                    <span id="inputcell18" class="spancell inputcell" style="display:none;"><input class="nui-textbox" name="orgsfyempextend.sfyempext18"/></span>
                    
                    <span id="textcell19" class="spancell textcell" style="display:none;">自定义字段十九</span><span id="buttoncell19" class="spancell buttoncell"><img src="../icons/edit20.png" onclick="editField(19)" /><img src="../icons/remove20.png" onclick="removeField(19)" /></span>
                    <span id="inputcell19" class="spancell inputcell" style="display:none;"><input class="nui-textbox" name="orgsfyempextend.sfyempext19"/></span>
                    
                    <span id="textcell20" class="spancell textcell" style="display:none;">自定义字段二十</span><span id="buttoncell20" class="spancell buttoncell"><img src="../icons/edit20.png" onclick="editField(20)" /><img src="../icons/remove20.png" onclick="removeField(20)" /></span>
                    <span id="inputcell20" class="spancell inputcell" style="display:none;"><input class="nui-textbox" name="orgsfyempextend.sfyempext20"/></span>
                </div>
                                
            </div>

        </div>

<script type="text/javascript">
        nui.parse();
        
        var fieldnum = 20;
        
        var UnusedFieldType = {};
        var UsedFieldType = {};
        
        var form = new nui.Form("#dataform1");
        var tab = nui.get("tab");
        form.setChanged(false);
        
        var basePath = "<%=basePath %>";
    
        (function(){
            initdata();
         })();
         
        function resetForm(){
            initdata();
        }
         
        function initdata(){
            if(window.parent.getCurrentNode){
                var node = window.parent.getCurrentNode();
                window['parentNode'] = node;
                nui.get("orgsfyempextend.extempid").setValue(node.empid);
                var data = {orgsfyempextend:{extempid:node.empid}};
                var json = nui.encode(data);
                //alert(json);
                $.ajax({
                    url:"com.sfy.oa.orgextend.orgsfyemployeebiz.getOrgSfyEmpUserdefine.biz.ext",
                    type:'POST',
                    data:json,
                    cache:false,
                    contentType:'text/json',
                    success:function(text){
                        obj = nui.decode(text);
                        debugger;
                        form.setData(obj);
                        form.setChanged(false);
                    }
                });
            }
        } 
    
        function onOk(){
            saveData();
        }
       
        function setData(data){
            
        }

        function saveData(){
            debugger;
            form.validate();
            if(form.isValid()==false) return;
            var formdata = form.getData(false,true);
            var data = {empextend:formdata.orgsfyempextend};
            var json = nui.encode(data);

            $.ajax({
                url:"com.sfy.oa.orgextend.orgsfyemployeebiz.updateOrgSfyEmpUserdefine.biz.ext",
                type:'POST',
                data:json,
                cache:false,
                contentType:'text/json',
                success:function(text){
                    var returnJson = nui.decode(text);
                    if(returnJson.exception == null){
                        //CloseWindow("saveSuccess");
                        nui.alert("修改成功");
                    }else{
                        nui.alert("保存失败", "系统提示", function(action){
                            if(action == "ok" || action == "close"){
                                //CloseWindow("saveFailed");
                            }
                        });
                    }
                }
            });
        }

        function onReset(){
            form.reset();
            form.setChanged(false);
        }

        function onCancel(){
            CloseWindow("cancel");
        }

        function CloseWindow(action){

            if(action=="close"){

                }else if(window.CloseOwnerWindow)
                return window.CloseOwnerWindow(action);
                else
                return window.close();
        }
        
        function removeField(i){
            changVisitAble("textcell"+i,"none");
            changVisitAble("buttoncell"+i,"none");
            changVisitAble("inputcell"+i,"none");
        }
        
        function addOneField(i){
            changVisitAble("textcell"+i,"inline-block");
            changVisitAble("inputcell"+i,"inline-block");
            for(var i=1;i<=fieldnum;i++){
                changClass("textcell"+i,"spancell textcell");
                if(checkVisitAble("textcell"+i)){
                    changVisitAble("buttoncell"+i,"none");
                }
            }
        }
        
        function showEdit(){
            for(var i=1;i<=fieldnum;i++){
                changClass("textcell"+i,"spancell edittextcell");
                if(checkVisitAble("textcell"+i)){
                    changVisitAble("buttoncell"+i,"inline-block");
                }
            }
            changVisitAble("editBtn","none");
            changVisitAble("saveBtn","inline-block");
        }
        
        function finishEdit(){
            for(var i=1;i<=fieldnum;i++){
                changClass("textcell"+i,"spancell textcell");
                if(checkVisitAble("textcell"+i)){
                    changVisitAble("buttoncell"+i,"none");
                }
            }
            changVisitAble("editBtn","inline-block");
            changVisitAble("saveBtn","none");
        }
        

        function changVisitAble(id,able){
            var node = document.getElementById(id);
            node.style.display= able;
        }
        
        function changClass(id,classname){
            var node = document.getElementById(id);
            node.setAttribute("class",classname); 
        }
        
        function checkVisitAble(id){
            //debugger;
            if(document.getElementById(id).style.display!="inline-block") return false;
            else return true;
        }
        
        function changeFilelText(id,name){
            debugger;
            var node = document.getElementById(id);
            node.innerHTML = name;
        }
        
        function getUnusedInfo(){
            debugger;
            UnusedFieldType = {};
            for(var i=1;i<=fieldnum;i++){
                if(!checkVisitAble("textcell"+i)){
                    if(i==1||i==2){ if(UnusedFieldType.decimal==null) {UnusedFieldType.decimal = []; UnusedFieldType.decimal.push(i);} else UnusedFieldType.decimal.push(i);}
                    if(i==3||i==4){ if(UnusedFieldType.date==null) {UnusedFieldType.date = []; UnusedFieldType.date.push(i);} else UnusedFieldType.date.push(i);}
                    if(i>=5&&i<=10){if(UnusedFieldType.varchar16==null) {UnusedFieldType.varchar16 = []; UnusedFieldType.varchar16.push(i);} else UnusedFieldType.varchar16.push(i);}
                    if(i>=11&&i<=14){if(UnusedFieldType.varchar32==null) {UnusedFieldType.varchar32 = []; UnusedFieldType.varchar32.push(i);} else UnusedFieldType.varchar32.push(i);}
                    if(i>=15&&i<=18){if(UnusedFieldType.varchar64==null) {UnusedFieldType.varchar64 = []; UnusedFieldType.varchar64.push(i);} else UnusedFieldType.varchar64.push(i);}
                    if(i==19||i==20){if(UnusedFieldType.varchar128==null) {UnusedFieldType.varchar128 = []; UnusedFieldType.varchar128.push(i);} else UnusedFieldType.varchar128.push(i);}
                }
            }
        }
        
        function addField(){
            getUnusedInfo();
            nui.open({
                url: "<%= request.getContextPath() %>/orgextend/employeeConf/emp_sfy_userdef_addField.jsp",
                title: "添加字段", width: 600, height: 300,
                onload: function () {//弹出页面加载完成
                    var iframe = this.getIFrameEl();
                    var data = {UnusedFieldType:UnusedFieldType};
                    //直接从页面获取，不用去后台获取
                    iframe.contentWindow.setFormData(data);
                },
                ondestroy: function (action) {//弹出页面关闭前
                    var iframe = this.getIFrameEl();
                    var data = iframe.contentWindow.GetData();
                    debugger;
                    if(data.op=="save"){
                        var i = UnusedFieldType[data.fieldtype][0];
                        var name = data.fieldname;
                        changeFilelText("textcell"+i,name);
                        addOneField(i);
                    }
                }
            });
        }
        
        function editField(id){
            var oldname = document.getElementById("textcell"+id).innerHTML;
            nui.open({
                url: "<%= request.getContextPath() %>/orgextend/employeeConf/emp_sfy_userdef_editField.jsp",
                title: "编辑字段", width: 600, height: 300,
                onload: function () {//弹出页面加载完成
                    var iframe = this.getIFrameEl();
                    var data = {oldname:oldname,id:id};
                    //直接从页面获取，不用去后台获取
                    iframe.contentWindow.setFormData(data);
                },
                ondestroy: function (action) {//弹出页面关闭前
                    var iframe = this.getIFrameEl();
                    var data = iframe.contentWindow.GetData();
                    debugger;
                    if(data.op=="edit"){
                        var name = data.fieldname;
                        changeFilelText("textcell"+id,name);
                    }
                }
            });
        }
        
</script>
</body>
</html>
