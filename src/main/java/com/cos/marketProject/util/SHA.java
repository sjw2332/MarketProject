package com.cos.marketProject.util;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;


public class SHA {
	public static String encrypt(String rawPassword, MyAlgorithm algorithm) {
		MessageDigest md = null;
		try {
			md = MessageDigest.getInstance(algorithm.getType()); // SHA-256, SHA-512
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
		}

		// 2. 비밀번호
		md.update(rawPassword.getBytes());
		
		// 3. 암호화 -> 16진수
		StringBuilder sb = new StringBuilder();
		for(Byte b : md.digest()) {
			sb.append(String.format("%02x", b));
		}
		return sb.toString();
	}
}
