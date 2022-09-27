package com.bum2us.infra.modules.utils;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class UtilSecurity {

	public static String encryptSha256(String text) throws NoSuchAlgorithmException{
		
		MessageDigest md = MessageDigest.getInstance("SHA-256");
		md.update(text.getBytes());
		
		return bytesToHex(md.digest());
	}

	private static String bytesToHex(byte[] digest) {

		StringBuilder builder = new StringBuilder();
		
		for (byte b : digest ) {
			
			builder.append(String.format("%02x",b));
		}
		
		return builder.toString();
	}

	
	
}
