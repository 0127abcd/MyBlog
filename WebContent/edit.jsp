<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>百度编辑器开发实例</title>
<!--
<link rel="stylesheet" type="text/css" href="styles.css">
-->
<script type="text/javascript" src="./ueditor/ueditor.config.js"></script>
<script type="text/javascript" src="./ueditor/ueditor.all.js"></script>
<script type="text/javascript" src="./js/jquery-3.1.1.min.js"></script>
<link rel="stylesheet" href="./ueditor/themes/default/css/ueditor.css">
</head>

<body>
	<s:form action="blog-editCom" method="post" id="myform" name="myform" enctype="multipart/form-data">
		<s:select list="#request.categories" listKey="id" listValue="categoryName" name="category.id"
			label="类别"></s:select>
		<s:textfield name="title" label="标题"></s:textfield>
		<s:textfield name="introduce" label="介绍"></s:textfield>
		<s:textfield name="keyword" label="关键词"></s:textfield>
		<s:file name="img" label="图片"></s:file>
		<!-- <textarea name="content" id="newsEditor">这里写你的初始化内容</textarea> -->
		<s:textarea name="content" id="newsEditor"></s:textarea>
		<script type="text/javascript">
			UE.getEditor('newsEditor'); 
		</script>
		<s:submit id="sub"></s:submit>
	</s:form>

</body>
</html>