User:<br/>
${user.userid}--->${user.username}<br/>
List:<br/>
<#list list as item >
<font color="red">${item}</br></font>
</#list>
param:</br>
${RequestParameters.a}&nbsp;a=${param!}