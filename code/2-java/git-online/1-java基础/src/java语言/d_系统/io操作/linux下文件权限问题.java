package java语言.d_系统.io操作;
import java.io.*;


public class linux下文件权限问题{
	public static void main( String args[] )
	{
		try{
			File f = new File( "/usr/local/nginx/file/resource/test/file/123.txt" );
			/* f.createNewFile(); */
			RandomAccessFile af = new RandomAccessFile( f, "rw" );
			/* af.writeDouble(1.414); */
			/*这里上下两句不可颠倒，必须先建立物理文件，再进行下面的授权操作。 光定义一个file对象 不行！*/
			f.setExecutable( true, false );
			f.setReadable( true, false );
			f.setWritable( true, false );
		}
		catch ( Exception e ) {
			System.out.println( "new file error!" );
		}
	}
}
