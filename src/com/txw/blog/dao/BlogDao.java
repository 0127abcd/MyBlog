package com.txw.blog.dao;

import java.util.List;

import org.hibernate.Query;

import com.txw.blog.entities.Article;
import com.txw.blog.entities.Category;

public class BlogDao extends BaseDao{
	
	public List<Article> getAll(){
		String hql = "FROM Article a";
		return getSession().createQuery(hql).list();
	}
	
	public List<Article> getLife(){
		String hql = "FROM Article a WHERE a.category = 4 order by a.time desc ";
		return getSession().createQuery(hql).list();
	}
	
	public List<Article> getHot(){
		String hql = "from Article a order by a.reader desc ";
		return getSession().createQuery(hql).setFirstResult(0).setMaxResults(5).list(); 
	}

	public Article getById(Integer id) {
		return (Article)getSession().get(Article.class, id);
	}

	public String getTitleById(Integer id) {
		String hql = "SELECT title FROM Article a WHERE a.id = ?";
		Query query = getSession().createQuery(hql).setInteger(0, id);
		return (String) query.uniqueResult();
	}
	
	public void saveArticle(Article article){
		getSession().saveOrUpdate(article);
	}
	
	public List<Category> getCategory(){
		String hql = "FROM Category c";
		return getSession().createQuery(hql).list();
	}
	
}
