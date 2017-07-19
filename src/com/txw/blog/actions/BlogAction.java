package com.txw.blog.actions;

import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.RequestAware;

import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;
import com.txw.blog.entities.Article;
import com.txw.blog.service.BlogService;
import com.txw.blog.utils.ImageSrc;
import com.txw.blog.utils.QiniuUtil;

public class BlogAction implements RequestAware, ModelDriven<Article>, Preparable{

	private BlogService blogService;
	
	private Integer max;
	private List<Article> articles;
	
	private Integer id;
	
	public void setId(Integer id) {
		System.out.println("SET_ID：" + id + " MAX: " + max);
		if(id <= 1)
			this.id = 1;
		else if(id >= max)
			this.id = max;
		else
			this.id = id;
	}
	
	private Map<String, Object> request;
	
	@Override
	public void setRequest(Map<String, Object> arg0) {
		this.request = arg0;
	}
	
	public void setBlogService(BlogService blogService) {
		this.blogService = blogService;
		articles = blogService.getAll();
		max = articles.get(articles.size()-1).getId();
	}
	
	public String list(){
		request.put("articles", blogService.getHot());
		return "list";
	}
	
	public String life(){
		request.put("life_articles", blogService.getLife());
		return "life";
	}
	
	
	
	public String detail(){
		
		Article article = blogService.getById(id);
		article.setReader(article.getReader()+1);
		blogService.saveArticle(article);
		
		Integer next = max;
		Integer pre = articles.get(0).getId();
		for(int i = 0; i < articles.size(); i++) {
			if (articles.get(i).getId() == id) {
				if(i > 0)
					pre = articles.get(i-1).getId();
				if(i < articles.size()-1)
					next = articles.get(i+1).getId();
			}
		}
		
		request.put("detail", article);		
		request.put("maxArt", max);
		request.put("minArt", articles.get(0).getId());
		
		request.put("previewId", pre);
		request.put("nextviewId", next);
//		
		request.put("previewTitle", blogService.getTitleById(pre));
		request.put("nextviewTitle", blogService.getTitleById(next));
		
		return "detail";
	}
	
	public String aboutMe() {
		return "aboutMe";
	}
	
	@Override
	public void prepare() throws Exception {}
	
	private Article model;
	
	@Override
	public Article getModel() {
		return model;
	}
	
	public String editCom() throws IOException{
		if(id == null){
			model.setTime(new Date());
		}
		
//		System.out.println("******************************************************");
		System.out.println("上传文件:"+img); 
//		System.out.println("上传文件位置:"+img.getAbsolutePath());     
//        System.out.println("上传文件名:"+imgFileName);  
//        System.out.println("上传文件类型:"+imgContentType);  
       
//        String path = ServletActionContext.getServletContext().getRealPath("/upload/" + System.currentTimeMillis() +imgFileName);
//        
//        String dir = "upload/" + path.substring(path.lastIndexOf("\\")+1, path.length());
//        
//        String dir1 = "E:\\Learn\\eclipseworkspace\\MyBlog\\WebContent\\upload\\" + path.substring(path.lastIndexOf("\\")+1, path.length());
//        
//        System.out.println(path);
//        System.out.println(dir);
//     	System.out.println("******************************************************");
//     	
//     	FileOutputStream out = new FileOutputStream(dir1);
//     	FileInputStream in = new FileInputStream(img);
//     	
//     	byte[] buffer = new byte[1024];
//     	int len = 0;
//     	while ((len = in.read(buffer)) != -1) {
//			out.write(buffer, 0, len);
//		}
//     	out.close();
//     	in.close();
//        
     	

		System.out.println("---------------------Qi Niu Util----------------------");
		QiniuUtil qiniuUtil = new QiniuUtil();
		model.setPhoto(QiniuUtil.BUCKET + qiniuUtil.upload(img.getAbsolutePath()));
		System.out.println("------------------------------------------------------");
		System.out.println(model);
		List<String> imgsrc = ImageSrc.getImageSrc(model.getContent());
		for (String src : imgsrc) {
			System.out.println("SRC:" + src);
			System.out.println(model.getContent());
			String realName = qiniuUtil.uploadFromHttp(src);
			model.setContent(model.getContent().replaceAll("<img src=\\\"(.*?)\\\"", "<img src=\""+QiniuUtil.BUCKET+realName+"\""));
			System.out.println(model.getContent());
		}
		
		blogService.saveArticle(model);
		
		return "editCom";
	}

	public void prepareEditCom(){
		if(id == null){
			model = new Article();
		}else{
			model = blogService.getById(id);
		}
	}
	
	public String edit() {
		request.put("categories", blogService.getCategory());
		return "edit";
	}
	
	private File img; //上传的文件  
//    private String imgFileName; //文件名称  
//    private String imgContentType;

	public File getImg() {
		return img;
	}

	public void setImg(File img) {
		this.img = img;
	}
    
}
