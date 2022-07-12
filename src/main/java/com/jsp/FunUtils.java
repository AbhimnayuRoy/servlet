package com.jsp;

public class FunUtils {
	public static String makeItUpper(String name) {
		return name.toUpperCase();
	}
	
	public static int makeSquare(int num) {
		return num*num;	
	}
	
	public static int makeItCube(int num) {
		return makeSquare(num)*num;
	}
}

