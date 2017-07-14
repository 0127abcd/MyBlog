package com.txw.blog.dao;

import java.util.List;

import org.hibernate.Query;

import com.txw.blog.entities.Article;
import com.txw.blog.entities.Category;
import com.txw.blog.entities.Talk;

public class TalkDao extends BaseDao{
	
	public List<Talk> getTalks(){
		String hql = "FROM Talk t";
		return getSession().createQuery(hql).list();
	}

	public void saveTalk(Talk model) {
		getSession().saveOrUpdate(model);
	}

	public Talk getById(Integer id) {
		return (Talk) getSession().get(Talk.class, id);
	}
	
}
