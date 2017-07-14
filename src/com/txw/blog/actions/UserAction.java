package com.txw.blog.actions;

import java.util.Map;

import org.apache.struts2.interceptor.RequestAware;

import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;
import com.txw.blog.entities.User;
import com.txw.blog.service.UserService;

public class UserAction implements RequestAware, ModelDriven<User>, Preparable{

	private UserService userService;

	private String userName;
	private String password;
	
	public void setUserName(String userName) {
		this.userName = userName;
	}
	
	public void setPassword(String password) {
		this.password = password;
	}
	
	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	
	private Map<String, Object> request;
	
	@Override
	public void setRequest(Map<String, Object> arg0) {
		this.request = arg0;
	}
	
	public String login() {
		return "login";
	}
	
	public String list() {
		if(model.getId() == null) 
			return "login";
		if(!model.getPassword().equals(password))
			return "login";
		System.out.println(model);
		return "list";
	}
	
	public void prepareList() {
		if(userName == null){
			System.out.println("New User");
			model = new User();
		}else{
			model = userService.getByUserName(userName);
			System.out.println("GET USER FROM DB");
		}
	}

	private User model;
	
	@Override
	public User getModel() {
		return model;
	}

	@Override
	public void prepare() throws Exception {}
	
}
