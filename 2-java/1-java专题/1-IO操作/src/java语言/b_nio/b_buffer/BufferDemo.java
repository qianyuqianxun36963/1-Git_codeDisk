package java”Ô—‘.b_nio.b_buffer;


import java.io.FileInputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.channels.FileChannel;

public class BufferDemo {
    public static void main(String args[]) throws IOException {
        String relativelyPath = System.getProperty("user.dir") + "/src/files";
        FileInputStream input = new FileInputStream(relativelyPath + "/testin.txt");
        FileChannel source = input.getChannel();

        ByteBuffer buf = ByteBuffer.allocate(2048);
        source.read(buf);

        CharBuffer chf = buf.asCharBuffer();

        char[] dist = new char[30];
        chf.get(dist);
        System.out.println(dist);

        source.close();
    }
}
