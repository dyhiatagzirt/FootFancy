package com.footfancy.tools;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class Tools {

	public static boolean regexMatch(String pattern, String text) {
		Pattern pat = Pattern.compile(pattern);
		Matcher matcher = pat.matcher(text);
		return matcher.matches();
	}
}
