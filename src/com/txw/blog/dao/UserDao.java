package com.txw.blog.dao;

import org.hibernate.Query;

import com.txw.blog.entities.User;

public class UserDao extends BaseDao{
	
	public User getByUserName(String userName) {
		String hql = "FROM User u WHERE u.userName = ?";
		Query query = getSession().createQuery(hql).setString(0, userName);
		return (User) query.uniqueResult();
	}
	
}
