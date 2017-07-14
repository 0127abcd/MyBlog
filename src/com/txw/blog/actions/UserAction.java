package com.txw.blog.actions;

import java.util.Map;

import org.apache.struts2.interceptor.RequestAware;

import com.txw.blog.service.UserService;

public class UserAction implements RequestAware{

	private UserService userService;

	private Integer id;
	
	public void setId(Integer id) {
		this.id = id;
	}
	
	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	
	private Map<String, Object> request;
	
	@Override
	public void setRequest(Map<String, Object> arg0) {
		this.request = arg0;
	}
	
}
