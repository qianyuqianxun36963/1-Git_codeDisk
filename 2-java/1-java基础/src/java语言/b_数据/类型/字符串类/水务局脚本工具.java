package java语言.b_数据.类型.字符串类;

public class 水务局脚本工具 {

	public static void main(String[] args) {
		System.out.println(getShellstr());
		
	}
	
	public static String getShellstr() {
		String str = "$secpasswd = ConvertTo-SecureString \"1Qa2ws3ed\" -AsPlainText -Force \r\n"
				+ "$mycreds = New-Object System.Management.Automation.PSCredential (\"water-sh\\administrator\", $secpasswd) \r\n"
				+ "$session=New-PSSession -ConfigurationName Microsoft.Exchange -ConnectionUri http://exchange.water-sh.com/powershell/ -Authentication Kerberos -Credential $mycreds \r\n"
				+ "Import-PSSession $session \r\n"

				+ "function DeleteMailbox {  \r\n"
				+ "$a=($_.split(\",\"))[0]     \r\n"
				+ "remove-mailbox -Identity $a -Confirm:$false \r\n"
				+ "} \r\n"
				
				+ "gc "
				+ "mailbox.csv | foreach {DeleteMailbox } \r\n";
		return str;
	}
	
}

