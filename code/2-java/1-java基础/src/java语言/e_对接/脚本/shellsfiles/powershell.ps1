$n=123
$n


<#  这段是修改注册表，让excel不检查文件类型与内容是否相符。
New-Item  -Path hkcu:\Software\Microsoft\Office\15.0\Excel
New-Item  -Path hkcu:\Software\Microsoft\Office\15.0\Excel\Security
New-ItemProperty hkcu:\Software\Microsoft\Office\15.0\Excel\Security -name "ExtensionHardening" -value "0" -propertyType dword
#>

<#
cmd 针对windows
powershell针对.net架构 比如用C# 开发的程序

很多命令，cmd有，powershell也有。 例如："net user"；"cd **"等。
有些命令，cmd没有，powershell是有的。例如：get-command
#>
