---
title: java-cas对接
date: 2018-01-03 15:26:51
tags: java
toc: true
---

# 教务平台cas对接

## 一、所需的jar包

应用所需JAR包两个：casclient.jar，commons-lang-2.4.jar

<!-- more -->


## 二、CMS应用服务器Web.xml配置如下：

```

//***********统一身份认证对接部分(start)***************

<!-- begin1 -->
<!-- 如下所示在应用系统原web.xml 中插入内容，注意根据集成测试环境或生产环境，更换param-value -->
<!-- 集成测试环境为， https://certest.njnu.edu.cn -->
<!-- 集成生产环境为， heeps://cer.njnu.edu.cn -->
<context-param>
    <!--统一身份平台处理集成应用系统登出URL-->
    <param-name>casServerLogoutUrl</param-name>
    <param-value>https://ids3.jsou.cn/logout</param-value>
</context-param>
<!-- end1 -->

<!-- begin2-->
<!--统一添加下面的内-->
<listener>
    <listener-class>edu.yale.its.tp.cas.client.SingleSignOutHttpSessionListener</listener-class>
</listener>     
<!-- end2 -->

<!-- begin3-->
<filter>
    <filter-name>CAS Filter</filter-name>
    <filter-class>edu.yale.its.tp.cas.client.filter.CASFilter</filter-class>
    <init-param>
        <!--统一身份平台处理集成应用系统登录URL-->
        <param-name>edu.yale.its.tp.cas.client.filter.loginUrl</param-name>
        <param-value>https://ids3.jsou.cn/login</param-value>
    </init-param>
    <init-param>
        <!--统一身份平台处理集成应用系统验证URL-->
        <param-name>edu.yale.its.tp.cas.client.filter.validateUrl</param-name>
        <param-value>https://ids3.jsou.cn/serviceValidate</param-value>
    </init-param>
    <init-param>
        <!--业务系统访问地址,host:port,具体业务系统请替换,端口为80的可不写端口-->
        <!--本处业务系统的域名假定为abc.njnu.edu.cn:9080/index.jsp-->
        <param-name>edu.yale.its.tp.cas.client.filter.serverName</param-name>
        <!--<param-value>219.219.195.239:8080</param-value>-->
        <param-value>www.jscvc.cn</param-value>
    </init-param>
</filter>
<!-- end3 -->

<!-- begin4 -->
<!-- 集成ik务系统认证前拦截，认证成功后再转向ik务系统尿认证成功后私有逻辑处理棂块 -->
<!-- 本处银定集成ik务系统认证处理页面为caslogin,jsp -->
<filter-mapping>
    <filter-name>CAS Filter</filter-name>
    <url-pattern>/security/*</url-pattern>
</filter-mapping>
<!-- end4 -->

//***********统一身份认证对接部分(end)***************

```

## 三、配置网址证书

    - 第一步:首先,需要用浏览器下载 https 证书,访问 https://ids3.jsou.cn/login 
    - 第二步:切换到证书的详细信息,并选择复制到文件 
    - 第三步:按证书导出向导,下一步选择证书格式,一般选择缺省的证书格式 
    - 第四步:指定导出证书文件的存储路径,本处举例用 $JAVA_HOME/security/jsou.cer; %JAVA_HOME%\security\jsou.cer
    - 第五步:完成证书导出 
    - 第六步:复制证书到 jdk环境下,例如 $JAVA_HOME/security/jsou.cer
    - 第七步:使用命令行 linux: cd $JAVA_HOME/jre/lib/security; windows: cd %JAVA_HOME%\jre\lib\security
    - 第八步:输入命令 keytool -import -alias cacerts -keystore cacerts -file %JAVA_HOME%\security\jsou.cer
    - 第九步:按提示输入 cacerts证书库的密码,缺省为 changeit
    - 第十步:信任证书,导入完成。 
    - 第十一步:查看导入的证书,输入 keytool -list -keystore cacerts
    注: 更新证书前需输入 keytool -delete -alias cacerts -keystore cacerts 先删除证书 
    注：这里的cacerts证书库是一个通用的名称，不要起其他的名字。 密码也是，为changeit 记：改变它-change it
