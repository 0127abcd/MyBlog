package com.txw.blog.utils;

import java.io.IOException;

import com.google.gson.Gson;
import com.qiniu.common.QiniuException;
import com.qiniu.common.Zone;
import com.qiniu.http.Response;
import com.qiniu.storage.Configuration;
import com.qiniu.storage.UploadManager;
import com.qiniu.storage.model.DefaultPutRet;
import com.qiniu.util.Auth;

public class QiniuUtil {

	/** �������� */
	// ���ú��˺ŵ�ACCESS_KEY��SECRET_KEY
	private static final String ACCESS_KEY = "X-0rJi9N6wGdjMV2Akv9SBbVfIZ62Z1VcM-B74W4";
	private static final String SECRET_KEY = "YMGGaVJWjAX9KHrbAk4HfF6GH8c6GaDO7mxj-Fuj";
	// Ҫ�ϴ��Ŀռ�--Ŀǰ�õĲ��Կռ�--����Ҫ�޸�
	private static final String bucketname = "txwblog";
//	private static final String bucketname = "ot266cmmt.bkt.clouddn.com";

	/** ָ�����浽��ţ���ļ���--ͬ���ϴ��ᱨ�� {"error":"file exists"} */
	/**
	 * {"hash":"FrQF5eX_kNsNKwgGNeJ4TbBA0Xzr","key":"aa1.jpg"} �������� keyΪ��ţ�ռ��ַ
	 * http://imagetest.i.haierzhongyou.com/aa1.jpg
	 */
	// �ϴ�����ţ�󱣴���ļ���---��ָ���Ļ�����ţ�������-�޺�׺
	// String key = "hi.jpg";
	// �ϴ��ļ���·��
	// String FilePath ="src/11.jpg";
	//String FilePath = "E:/Learn/eclipseworkspace/MyBlog/WebContent/upload/14997351479691.jpg";
	// ��Կ����
	private Auth auth;
	// �����ϴ�����

	// ���ϴ���ʹ��Ĭ�ϲ��ԣ�ֻ��Ҫ�����ϴ��Ŀռ����Ϳ�����
	public String getUpToken() {
		return auth.uploadToken(bucketname);
	}

	public String upload(String FilePath) throws IOException {
		auth = Auth.create(ACCESS_KEY, SECRET_KEY);
		Configuration cfg = new Configuration(Zone.zone2());
		//...���������ο���ע��
		UploadManager uploadManager = new UploadManager(cfg);
		try {
			// ����put�����ϴ�

			Response res = uploadManager.put(FilePath, null, getUpToken());
			
			DefaultPutRet putRet = new Gson().fromJson(res.bodyString(), DefaultPutRet.class);
			
		    System.out.println(putRet.key);
		    System.out.println(putRet.hash);
			// ��ӡ���ص���Ϣ
			System.out.println("1:" + res.bodyString());
			return putRet.key;
		} catch (QiniuException e) {
			Response r = e.response;
			// ����ʧ��ʱ��ӡ���쳣����Ϣ
			System.out.println("2:" + r.toString());
			try {
				// ��Ӧ���ı���Ϣ
				System.out.println(r.bodyString());
			} catch (QiniuException e1) {
				e1.printStackTrace();
			}
		}
		return null;
	}

}