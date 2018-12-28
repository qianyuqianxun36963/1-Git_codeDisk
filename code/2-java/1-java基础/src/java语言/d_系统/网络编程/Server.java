package java语言.d_系统.网络编程;

import java.io.*;
import java.net.*;
import java.util.*;

import java语言.d_系统.网络编程.Server.CreateServerThread;
//import java.lang.*;
@SuppressWarnings("unused")
public class Server extends ServerSocket
{
private static ArrayList<String> User_List = new ArrayList<String>();
private static ArrayList<CreateServerThread> Threader = new ArrayList<CreateServerThread>();
private static LinkedList<String> Message_Array = new LinkedList<String>();
private static int Thread_Counter = 0;
private static boolean isClear = true;
protected static final int SERVER_PORT = 10000;
protected FileOutputStream LOG_FILE = new FileOutputStream("d:/connect.log", true);

public Server() throws FileNotFoundException, IOException
{
super(SERVER_PORT);
new Broadcast();
//append connection log
Calendar now = Calendar.getInstance();
String str = "[" + now.getTime().toString() + "] Accepted a connection\015\012";
byte[] tmp = str.getBytes();
LOG_FILE.write(tmp);
try
{
while (true)
{
Socket socket = accept();
new CreateServerThread(socket);
}
}
finally
{
close();
}
}

public static void main(String[] args) throws IOException
{
new Server();
}

//--- Broadcast 广播线程
class Broadcast extends Thread
{
public Broadcast()
{
start();
}

public void run()
{
while (true)
{
if (!isClear)
{
String tmp = (String)Message_Array.getFirst();

for (int i = 0; i < Threader.size(); i++)
{
CreateServerThread client = (CreateServerThread)Threader.get(i);
client.sendMessage(tmp);
}

Message_Array.removeFirst();
isClear = Message_Array.size() > 0 ? false : true;
}
}
}
}

//--- CreateServerThread
class CreateServerThread extends Thread
{
private Socket client;
private BufferedReader in;
private PrintWriter out;
private String Username;

public CreateServerThread(Socket s) throws IOException
{
client = s;
in = new BufferedReader(new InputStreamReader(client.getInputStream()));
out = new PrintWriter(client.getOutputStream(), true);
//out.println("--- Welcome to this chatroom ---");
out.println("Input your nickname:");
start();
}

public void sendMessage(String msg)
{
out.println(msg);
}

public void run()
{
try
{
int flag = 0;
Thread_Counter++;
String line = in.readLine();
while (!line.equals("bye"))
{if (line.equals("l"))
{
out.println(listOnlineUsers());
line = in.readLine();
continue;
}
if (flag++ == 0)
{
Username = line;
User_List.add(Username);
out.println(listOnlineUsers());
Threader.add(this);
pushMessage("[< " + Username + " come on in >]");
}
else
{
pushMessage("<" + Username + ">" + line);
}

line = in.readLine();
}

out.println("--- See you, bye! ---");
client.close();
}
catch (IOException e)
{}
finally
{
try
{
client.close();
}
catch (IOException e){}

Thread_Counter--;
Threader.remove(this);
User_List.remove(Username);
pushMessage("[< " + Username + " left>]");
}
}
private String listOnlineUsers()
{
String s ="-+- Online list -+-\015\012";

for (int i = 0; i < User_List.size(); i++)
{
s += "[" + User_List.get(i) + "]\015\012";
}
s += "-+---------------------+-";
return s;
}
private void pushMessage(String msg)
{Message_Array.addLast(msg);
isClear = false;
}
}
}