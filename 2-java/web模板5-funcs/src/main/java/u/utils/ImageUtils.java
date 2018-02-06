package u.utils;

import java.awt.image.BufferedImage;
import java.io.File;

import javax.imageio.ImageIO;

public class ImageUtils {
	
	/**
	 * 判断图片大小是否在指定范围之内
	 * @param file
	 * @param maxSize 最大值，单位kb
	 * @param minSize 最小值，单位kb
	 * @return
	 */
   public static boolean checkImageSize(File file,int maxSize,int minSize) {
	   Long fileLength = file.length()/1024;
	   if(fileLength > maxSize || fileLength < minSize) {
		   return false;
	   }
	   return true;
   }
   
   /**
    * 根据要求校验图片像素，宽和高是否符合标准
    * @param file
    * @param requireWidth 要求的像素宽
    * @param requireHeight 要求的像素高
    * @return
    */
   public static boolean checkImagePixel(File file,int requireWidth,int requireHeight) {
	   BufferedImage bi = null;
	   try{
		   bi = ImageIO.read(file);
		   int width = bi.getWidth();//像素 宽
		   int height = bi.getHeight();//像素 高
		   if(width != requireWidth || height != requireHeight) {
			   return false;
		   }
		   return true;
	   }catch(Exception e){
		   e.printStackTrace();
		   return false;
	   }
   }
}
