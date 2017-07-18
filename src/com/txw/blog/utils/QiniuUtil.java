package com.txw.blog.utils;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;

import com.google.gson.Gson;
import com.qiniu.common.QiniuException;
import com.qiniu.common.Zone;
import com.qiniu.http.Response;
import com.qiniu.storage.BucketManager;
import com.qiniu.storage.Configuration;
import com.qiniu.storage.UploadManager;
import com.qiniu.storage.model.DefaultPutRet;
import com.qiniu.storage.model.FetchRet;
import com.qiniu.util.Auth;

public class QiniuUtil {

	/** 基本配置 */
	// 设置好账号的ACCESS_KEY和SECRET_KEY
	private static final String ACCESS_KEY = "X-0rJi9N6wGdjMV2Akv9SBbVfIZ62Z1VcM-B74W4";
	private static final String SECRET_KEY = "YMGGaVJWjAX9KHrbAk4HfF6GH8c6GaDO7mxj-Fuj";
	// 要上传的空间--目前用的测试空间--上线要修改
	private static final String BUCKET_NAME = "txwblog";
	public static final String BUCKET = "http://osavi2ikz.bkt.clouddn.com/";

	/** 指定保存到七牛的文件名--同名上传会报错 {"error":"file exists"} */
	/**
	 * {"hash":"FrQF5eX_kNsNKwgGNeJ4TbBA0Xzr","key":"aa1.jpg"} 正常返回 key为七牛空间地址
	 * http://imagetest.i.haierzhongyou.com/aa1.jpg
	 */
	// 上传到七牛后保存的文件名---不指定的话，七牛随机产生-无后缀
	// String key = "hi.jpg";
	// 上传文件的路径
	// String FilePath ="src/11.jpg";
	// 密钥配置
	private Auth auth;
	// 创建上传对象

	// 简单上传，使用默认策略，只需要设置上传的空间名就可以了
	public String getUpToken() {
		return auth.uploadToken(BUCKET_NAME);
	}

	public String upload(String FilePath) throws IOException {
		auth = Auth.create(ACCESS_KEY, SECRET_KEY);
		Configuration cfg = new Configuration(Zone.zone2());
		//...其他参数参考类注释
		UploadManager uploadManager = new UploadManager(cfg);
		try {
			// 调用put方法上传

			Response res = uploadManager.put(FilePath, null, getUpToken());
			
			DefaultPutRet putRet = new Gson().fromJson(res.bodyString(), DefaultPutRet.class);
			
		    System.out.println(putRet.key);
		    System.out.println(putRet.hash);
			// 打印返回的信息
			System.out.println("1:" + res.bodyString());
			return putRet.key;
		} catch (QiniuException e) {
			Response r = e.response;
			// 请求失败时打印的异常的信息
			System.out.println("2:" + r.toString());
			try {
				// 响应的文本信息
				System.out.println(r.bodyString());
			} catch (QiniuException e1) {
				e1.printStackTrace();
			}
		}
		return null;
	}

	public String uploadFromHttp(String url) {
		auth = Auth.create(ACCESS_KEY, SECRET_KEY);
		Configuration cfg = new Configuration(Zone.zone2());
		BucketManager bucketManager = new BucketManager(auth, cfg);
		try {
		    FetchRet putret = bucketManager.fetch(url, BUCKET_NAME);
		    return putret.key;
		} catch (QiniuException e1) {
		    e1.printStackTrace();
		}
		return null;
	}
}