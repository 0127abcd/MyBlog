<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>后台登陆</title>
</head>
<body>
		
	<s:form action="admin-list" method="post">
		<s:textfield name="userName" label="用户名"></s:textfield>
		<s:textfield name="password" type="password" label="密码"></s:textfield>
		<s:submit></s:submit>
	</s:form>
		
		
</body>
</html>