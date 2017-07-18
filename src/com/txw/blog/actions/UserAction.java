package com.txw.blog.actions;

import java.util.Map;

import org.apache.struts2.interceptor.RequestAware;

import com.txw.blog.entities.User;
import com.txw.blog.service.BlogService;
import com.txw.blog.service.TalkService;
import com.txw.blog.service.UserService;

public class UserAction implements RequestAware{

	private UserService userService;
	private BlogService blogService;
	private TalkService talkService;
	
	private String userName;
	private String password;
	
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public void setBlogService(BlogService blogService) {
		this.blogService = blogService;
	}
	public void setTalkService(TalkService talkService) {
		this.talkService = talkService;
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
		User model = new User(null, userName, password);
		User userAdmin = userService.getByUserName(userName);
		if(userAdmin == null)
			return "loginFail";
		if(!model.getPassword().equals(userAdmin.getPassword()))
			return "loginFail";
		
		request.put("blogs", blogService.getAll());
		request.put("User", userAdmin);
		return "list";
	}
}
