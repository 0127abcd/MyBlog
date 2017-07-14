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

<title>Talk Edit</title>
<!--
<link rel="stylesheet" type="text/css" href="styles.css">
-->

</head>

<body>
	<s:form action="talk-editCom" method="post" enctype="multipart/form-data">
		<s:textfield name="title" label="标题"></s:textfield>
		<s:file name="img" label="图片"></s:file>
		<s:textarea name="content" label="内容"></s:textarea>
		<s:submit id="sub"></s:submit>
	</s:form>

</body>
</html>