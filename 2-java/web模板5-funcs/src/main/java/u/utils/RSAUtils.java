package u.utils;

import java.math.BigInteger;
import java.security.KeyFactory;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.NoSuchAlgorithmException;
import java.security.PrivateKey;
import java.security.Provider;
import java.security.PublicKey;
import java.security.SecureRandom;
import java.security.interfaces.RSAPrivateKey;
import java.security.interfaces.RSAPublicKey;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.RSAPrivateKeySpec;
import java.security.spec.RSAPublicKeySpec;

import javax.crypto.Cipher;

import org.apache.commons.codec.binary.Hex;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.bouncycastle.jce.provider.BouncyCastleProvider;



public class RSAUtils {
    
	private static final Logger logger = LogManager.getLogger(RSAUtils.class);
	//安全服务提供者
	private static final Provider PROVIDER = new BouncyCastleProvider();
	
	//密钥大小
	private static final int KEY_SIZE = 1024;
	
	//不可以实例化
	private RSAUtils(){
		
	}
	
	/**
	 * 生成密钥对
	 * @return
	 * @throws Exception
	 */
	public static KeyPair generateKeyPair() throws Exception {
		try{
			KeyPairGenerator keyPairGenerator = KeyPairGenerator.getInstance("RSA",PROVIDER);
			keyPairGenerator.initialize(KEY_SIZE, new SecureRandom());
			return keyPairGenerator.generateKeyPair();
		}catch(Exception e) {
			throw new Exception(e.getMessage());
		}
	}
	
	/**
	 * 生成公钥
	 * @param modules
	 * @param publicExpont
	 * @return
	 * @throws Exception
	 */
	public static RSAPublicKey generateRSAPublicKey(byte[] modules,byte[] publicExpont) throws Exception {
		KeyFactory keyFac = null;
		try{
			keyFac = KeyFactory.getInstance("RSA",PROVIDER);
			RSAPublicKeySpec pubKeySpec = new RSAPublicKeySpec(new BigInteger(modules),new BigInteger(publicExpont));
			return (RSAPublicKey) keyFac.generatePublic(pubKeySpec);
		}catch(NoSuchAlgorithmException | InvalidKeySpecException  e) {
			throw new Exception(e.getMessage());
		}
	}
	
	/**
	 * 生成私钥
	 * @param modules
	 * @param publicExpont
	 * @return
	 * @throws Exception
	 */
	public static RSAPrivateKey generateRSAPrivateKey(byte[] modules,byte[] publicExpont) throws Exception {
		KeyFactory keyFac = null;
		try{
			keyFac = KeyFactory.getInstance("RSA",PROVIDER);
			RSAPrivateKeySpec privKeySpec = new RSAPrivateKeySpec(new BigInteger(modules),new BigInteger(publicExpont));
			return (RSAPrivateKey) keyFac.generatePrivate(privKeySpec);
		}catch(NoSuchAlgorithmException | InvalidKeySpecException  e) {
			throw new Exception(e.getMessage());
		}
	}
	
	/**
	 * 加密
	 * @param publicKey 公钥
	 * @param data 数据
	 * @return 加密后的数据
	 * @throws Exception
	 */
	public static byte[] encrypt(PublicKey publicKey,byte[] data) throws Exception {
		try{
			Cipher cipher = Cipher.getInstance("RSA",PROVIDER);
			cipher.init(Cipher.ENCRYPT_MODE, publicKey);
			return cipher.doFinal(data);
		}catch(Exception e){
			throw new Exception(e.getMessage());
		}
	}
	
	/**
	 * 加密
	 * @param publicKey 公钥
	 * @param text 字符串
	 * @return Base64编码字符串
	 * @throws Exception
	 */
	public static String encrypt(PublicKey publicKey,String text) throws Exception {
		try{
			byte[] data = encrypt(publicKey,text.getBytes());
			return data != null ? new String(Hex.encodeHex(data)) : null;
		} catch(Exception e) {
			throw new Exception(e.getMessage());
		}
	}
	
	/**
	 * 解密
	 * @param privateKey 私钥
	 * @param data 数据
	 * @return 解密后的数据
	 * @throws Exception
	 */
	public static byte[] decrypt(PrivateKey privateKey,byte[] data) throws Exception {
		try{
			Cipher cipher = Cipher.getInstance("RSA", PROVIDER);
			cipher.init(Cipher.DECRYPT_MODE, privateKey);
			return cipher.doFinal(data);
		}catch(Exception e) {
			throw new Exception(e.getMessage());
		}
	}
	
	/**
	 * 解密
	 * @param privateKey 私钥
	 * @param text base64编码字符串
	 * @return 解密后的数据
	 * @throws Exception
	 */
	public static String decrypt(PrivateKey privateKey,String text) throws Exception{
		try{
			byte[] en_data = Hex.decodeHex(text.toCharArray());
			byte[] data = decrypt(privateKey,en_data);
			return data != null ? new StringBuffer(new String(data)).reverse().toString() : null;
		}catch(Exception e){
			throw new Exception(e.getMessage());
		}
	}
}
