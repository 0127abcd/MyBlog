package com.txw.blog.entities;

import java.util.Date;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.FetchType;
import javax.persistence.Lob;

public class Article {
	
	private Integer id;
	private String title;
	private String photo;
	private String editor;
	private Date time;
	private int reader;
	private String keyword;
	private String introduce;
	private String content;

	private Category category;
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getPhoto() {
		return photo;
	}
	public void setPhoto(String photo) {
		this.photo = photo;
	}
	public String getEditor() {
		return editor;
	}
	public void setEditor(String editor) {
		this.editor = editor;
	}
	public Date getTime() {
		return time;
	}
	public void setTime(Date time) {
		this.time = time;
	}
	public int getReader() {
		return reader;
	}
	public void setReader(int reader) {
		this.reader = reader;
	}
	public String getKeyword() {
		return keyword;
	}
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
	public String getIntroduce() {
		return introduce;
	}
	public void setIntroduce(String introduce) {
		this.introduce = introduce;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Category getCategory() {
		return category;
	}
	public void setCategory(Category category) {
		this.category = category;
	}
	
	public Article() {
		editor="·ç³µ";
	}
	@Override
	public String toString() {
		return "Article [id=" + id + ", title=" + title + ", photo=" + photo + ", editor=" + editor + ", time=" + time
				+ ", reader=" + reader + ", keyword=" + keyword + ", introduce=" + introduce + ", content=" + content
				+ ", category=" + category.getId() + "]";
	}
	
}
