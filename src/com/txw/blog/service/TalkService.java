package com.txw.blog.service;

import java.io.File;
import java.util.List;

import com.txw.blog.dao.TalkDao;
import com.txw.blog.entities.Talk;

public class TalkService {

	private TalkDao talkDao;
	
	public void setTalkDao(TalkDao talkDao) {
		this.talkDao = talkDao;
	}
	
	public List<Talk> getTalks(){
		return talkDao.getTalks();
	}

	public void saveTalk(Talk model) {
		talkDao.saveTalk(model);
	}

	public Talk getById(Integer id) {
		return talkDao.getById(id);
	}

}
