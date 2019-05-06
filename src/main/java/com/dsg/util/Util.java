package com.dsg.util;

import java.util.ArrayList;
import java.util.List;

public class Util {

	public String UUID() {
		
		return null;
	}
	public static String[] getPwd (String string, int in, String[] str) {
		char[] ch = string.toCharArray();
		int num = ch.length;
		String ss = "";
		for (int i = 0; i < in; i++) {
			ss += ch[(int) (Math.random()*num)];
		}
		if (ss.length()==in) {
			for (int j = 0; j < str.length; j++) {
				if (!ss.equals(str[j]) || str == null) {
					String[] tempArray=new String[str.length+1];
					for(int i=0;i<str.length;i++)
					{
						tempArray[i]=str[i];
					}
					tempArray[str.length]=ss;
					str = tempArray;
					return str;
				} else {
					getPwd(string, in, str);
					
				}
			}
		} 
		
		return str;
	}
	
	public static List<String> getPwd (String string, int in, List<String> list) {
		char[] ch = string.toCharArray();
		int num = ch.length;
		String ss = "";
		for (int i = 0; i < in; i++) {
			ss += ch[(int) (Math.random()*num)];
		}
		if (ss.length()==in) {
			if (list.size()==0) {
				list.add(ss);
				return list;
			}
			for (int j = 0; j < list.size(); j++) {
				
				if (!ss.equals(list.get(j))) {
					list.add(ss);
					return list;
				} else {
					getPwd(string, in, list);
				}
			}
		} 
		
		return list;
	}
	
	public static float getNum(float ff) {
		
		return (float) (((ff+52.8)*5-3.9343)/0.5) - ff*10;
	}
	
	public static void main(String[] args) {
		
		String string ="qwertyuiopasdfghjklzxcvbnmQWERTYUIOPASDFGHJKLZXCVBNM1234567890";
		String[] str = new String[]{""};
		List<String> list = new ArrayList<String>();
		for (int i = 0; i < 5; i++) {
			str = Util.getPwd(string, 10, str);
		}
		
		for (String string2 : str) {
			System.out.println(string2);
		}
		System.out.println("---------------------------");
		for (int i = 0; i < 5; i++) {
			list = Util.getPwd(string, 16, list);
		}
		
		for (String string2 : list) {
			System.out.println(string2);
		}
		float ff = (float) Math.random();
		
		System.out.println(Util.getNum(ff));
		
		
	}
}
