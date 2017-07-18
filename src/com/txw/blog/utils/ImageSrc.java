package com.txw.blog.utils;

import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class ImageSrc {
	public static List<String> getImageSrc(String htmlCode) {
		List<String> imgList = new ArrayList();
		String regEx = "<img.*?src=\"(.*?)\"";
		Pattern pat = Pattern.compile(regEx);
		Matcher mat = pat.matcher(htmlCode);
		while (mat.find()) {
			imgList.add(mat.group(1));
		}	
		return imgList;
    }
}
