$password = ConvertTo-SecureString "1Qa2ws3ed" -AsPlainText -Force 

Write-Host "wangyajun" -ForegroundColor red

get-help Write-Host -detail

get-help Write-Host -example

get-help Write-Host -full



remove-mailbox -Identity "wang" -Confirm:$false

$session=New-PSSession -ConfigurationName Microsoft.Exchange -ConnectionUri http://exchange.water-sh.com/powershell/ -Authentication Kerberos -Credential 

<#
$mycreds = New-Object System.Management.Automation.PSCredential ("water-sh\administrator",$password) 
$session=New-PSSession -ConfigurationName Microsoft.Exchange -ConnectionUri http://exchange.water-sh.com/powershell/ -Authentication Kerberos -Credential $mycreds 
Import-PSSession $session 

remove-mailbox -Identity "wang" -Confirm:$false #>
