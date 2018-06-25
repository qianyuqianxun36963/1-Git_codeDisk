package java语言.b_nio.b_channels;


import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.channels.FileChannel;
import java.nio.channels.ReadableByteChannel;
import java.nio.channels.WritableByteChannel;

public class ChannelTransferData {
    public static void main(String args[]) throws IOException{
        String relativelyPath = System.getProperty("user.dir") + "/src/files";

        FileInputStream  input  = new FileInputStream(relativelyPath + "/testin.txt");
        FileOutputStream output = new FileOutputStream(relativelyPath + "/testout.txt");

        FileChannel inputChannel = input.getChannel();
        FileChannel writableChannel = output.getChannel();

        FileChannel outputChannel = output.getChannel();
        FileChannel readableChannel = input.getChannel();

        //传输数据只是这一句而已！！
        //inputChannel.transferTo(0,inputChannel.size(),writableChannel);
        outputChannel.transferFrom(readableChannel,0,readableChannel.size());

        inputChannel.close();
        input.close();

        outputChannel.close();
        output.close();
    }
}
