package com.txw.blog.actions;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Date;
import java.util.Map;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.RequestAware;

import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;
import com.txw.blog.entities.Article;
import com.txw.blog.entities.Talk;
import com.txw.blog.service.TalkService;

public class TalkAction implements RequestAware, ModelDriven<Talk>, Preparable{

	private TalkService talkService;

	private Integer id;
	
	public void setId(Integer id) {
		this.id = id;
	}
	
	public void setTalkService(TalkService talkService) {
		this.talkService = talkService;
	}
	
	private Map<String, Object> request;
	
	@Override
	public void setRequest(Map<String, Object> arg0) {
		this.request = arg0;
	}
	
	public String list(){
		request.put("talks", talkService.getTalks());
		return "doing";
	}

	public String edit() {
		return "edit";
	}
	
	public String editCom() throws IOException{
		if(id == null){
			model.setDate(new Date());
		}
		
		System.out.println("******************************************************");
        System.out.println("上传文件:"+img); 
        System.out.println("上传文件名:"+imgFileName);  
        System.out.println("上传文件类型:"+imgContentType);  
       
        if(img != null) {
	        String path = ServletActionContext.getServletContext().getRealPath("/upload/talk/" + System.currentTimeMillis() +imgFileName);
	        
	        String dir = "upload/talk/" + path.substring(path.lastIndexOf("\\")+1, path.length());
	        
	        String dir1 = "E:\\Learn\\eclipseworkspace\\MyBlog\\WebContent\\upload\\talk\\" + path.substring(path.lastIndexOf("\\")+1, path.length());
	        
	        System.out.println(path);
	        System.out.println(dir);
	     	System.out.println("******************************************************");
	     	
	     	FileOutputStream out = new FileOutputStream(dir1);
	     	FileInputStream in = new FileInputStream(img);
	     	
	     	byte[] buffer = new byte[1024];
	     	int len = 0;
	     	while ((len = in.read(buffer)) != -1) {
				out.write(buffer, 0, len);
			}
	     	out.close();
	     	in.close();
	        
	     	model.setImage(dir);
	     	model.setHasImage(1);
        } else
        	model.setHasImage(0);
			
		System.out.println("------------------------------------------------------");
		System.out.println(model);
		System.out.println("------------------------------------------------------");

		talkService.saveTalk(model);
		
		return "editCom";
	}

	public void prepareEditCom(){
		if(id == null){
			model = new Talk();
		}else{
			model = talkService.getById(id);
		}
	}
	
	@Override
	public void prepare() throws Exception {}

	private Talk model;
	
	@Override
	public Talk getModel() {
		return model;
	}
	
	private File img; //上传的文件  
    private String imgFileName; //文件名称  
    private String imgContentType;

	public File getImg() {
		return img;
	}

	public void setImg(File img) {
		this.img = img;
	}

	public String getImgFileName() {
		return imgFileName;
	}

	public void setImgFileName(String imgFileName) {
		this.imgFileName = imgFileName;
	}

	public String getImgContentType() {
		return imgContentType;
	}

	public void setImgContentType(String imgContentType) {
		this.imgContentType = imgContentType;
	}

}
