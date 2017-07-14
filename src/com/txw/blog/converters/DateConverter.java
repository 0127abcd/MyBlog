package com.txw.blog.converters;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;

import org.apache.struts2.util.StrutsTypeConverter;

public class DateConverter extends StrutsTypeConverter {

	private DateFormat dateFormat;
	
	{
		dateFormat = new SimpleDateFormat("yyyy-MM-dd");
	}
	
	@Override
	public Object convertFromString(Map context, String[] values, Class toClass) {
		if(toClass == Date.class){
			try {
				System.out.println("cccccc");
				return dateFormat.parse(values[0]);
			} catch (ParseException e) {
				e.printStackTrace();
			}
		}
		return null;
	}

	@Override
	public String convertToString(Map context, Object o) {
		if(o instanceof Date){
			System.out.println("dddddd");
			return dateFormat.format((Date)o);
		}
		return null;
	}

}
