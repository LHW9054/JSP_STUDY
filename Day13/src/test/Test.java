package test;

import java.util.ArrayList;
import java.util.Arrays;

public class Test {
	public static void main(String[] args) {
		
		String s1 = "1,2,3,4,5";	
		ArrayList<String> list = new ArrayList<>(Arrays.asList(s1.split(",")));
		System.out.println(list);
		
		String idx = "3";
		
		list.remove(idx);			//list.remove(Object o)
		list.add(0, idx);			//list.add(int index, Object o)
		System.out.println(list);
		
		String s2 = list.toString();
		s2 = s2.replace(" ", "");	// string.replace(oldChar,newChar)
		s2 = s2.substring(1,s1.length() -1);	// string.substring(beginIndex, endIndex)
		System.out.println(s2);
		
	}
}
