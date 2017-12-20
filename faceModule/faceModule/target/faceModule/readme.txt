项目中主要使用说明

1.    form标签的位置
    <form id="formId_add">
        ....
    </form>

    <form id="formId_edit">
        ....
    </form>

2.    提交按钮必须为 type="submit"
    <button type="submit" class="btn btn-primary" id="" disabled>保存</button>

3.    dom结构
    <label for="email">邮箱：</label><input id="email" name="email" placeholder="请输入邮箱" type="email" required />
    a.    <label for="email"> 其中email是之后input的id,表示对这个input的解释说明,
    b.    Input.id对应 label.for;
    c.    required 该项不为空;
    d.    type有对应的几个已经写好的正则判断,phone,email等;

4.  为某些指定的form添加验证：
    多个form表单：
    var departmentForm = $("form[id^='formId']");
    departmentForm.each(function(){
        var formId = this.id;
        var flag = formId.substr(formId.indexOf("_") + 1); //flag对应于“add”、“edit”。
        $(this).html5Validate(function() {
            //验证成功后操作
            TODO
        });
    });

    单个form表单加额外操作：
    $("#userForm").html5Validata(
        function(){
            //验证成功后操作
            TODO
        },{
        validate:function(){
            //额外的特殊检验
            TODO
        }
    });

拓展html5Validate

编辑jquery-html5Validate.js:

    // 全局对象，可扩展
    OBJREG = {
        EMAIL:"^[a-z0-9._%-]+@([a-z0-9-]+\\.)+[a-z]{2,4}$",
        NUMBER: "^\\-?\\d+(\\.\\d+)?$",
        URL:"^(http|https|ftp)\\:\\/\\/[a-z0-9\\-\\.]+\\.[a-z]{2,3}(:[a-z0-9]*)?\\/?([a-z0-9\\-\\._\\?\\,\\'\\/\\\\\\+&amp;%\\$#\\=~])*$",
        TEL:"^1\\d{10}$",
        ZIPCODE:"^\\d{6}$",
        "prompt": {
            radio: "请选择一个选项",
            checkbox: "如果要继续，请选中此框",
            "select": "请选择列表中的一项",
            email: "请输入电子邮件地址",
            url: "请输入网站地址",
            tel: "请输入手机号码",
            number: "请输入数值",
            date: "请输入日期",
            pattern: "内容格式不符合要求",
            empty: "请填写此字段",
            multiple: "多条数据使用逗号分隔"
        }
    };