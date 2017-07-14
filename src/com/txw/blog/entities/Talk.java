package com.txw.blog.entities;

import java.util.Date;

public class Talk {
	
	private Integer id;
	private String content;
	private String title;
	private Date date;
	private String image;
	private int HasImage; 
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public int getHasImage() {
		return HasImage;
	}
	public void setHasImage(int hasImage) {
		HasImage = hasImage;
	}
}
