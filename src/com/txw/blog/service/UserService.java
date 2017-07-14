package com.txw.blog.service;

import com.txw.blog.dao.UserDao;
import com.txw.blog.entities.User;

public class UserService {

	private UserDao userDao;
	
	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}
	
	public User getByUserName(String userName) {
		return userDao.getByUserName(userName);
	}

}
