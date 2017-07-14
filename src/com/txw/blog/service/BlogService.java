package com.txw.blog.service;

import java.util.List;

import com.txw.blog.dao.BlogDao;
import com.txw.blog.entities.Article;
import com.txw.blog.entities.Category;

public class BlogService {

	private BlogDao blogDao;
	
	public void setBlogDao(BlogDao blogDao) {
		this.blogDao = blogDao;
	}

	public List<Article> getAll(){
		return blogDao.getAll();
	}
	
	public List<Article> getLife(){
		return blogDao.getLife();
	}
	public List<Article> getHot(){
		return blogDao.getHot();
	}
	
	public Article getById(Integer id) {
		return blogDao.getById(id);
	}

	public String getTitleById(Integer id) {
		return blogDao.getTitleById(id);
	}
	
	public void saveArticle(Article article){
		blogDao.saveArticle(article);
	}
	public List<Category> getCategory(){
		return blogDao.getCategory();
	}
}
