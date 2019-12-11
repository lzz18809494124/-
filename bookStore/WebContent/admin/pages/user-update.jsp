<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>

	<form action="userUpdate" method="post" >
	
		<input type="hidden" name="page" value="${param.page}"/>

		<input type="hidden" name="id" value="${user.id}"/>
		<input type="hidden" name="username" value="${user.username}"/>
		<input type="hidden" name="password" value="${user.password}"/>
		
		用户：${user.username}<br>
		电话：<input type="text" name="phone" value="${user.phone}" required="required"/>
		<input type="submit" value="修改"/>
		<input type="button" value="返回上一界面" onclick="javascript:history.go(-1);">
		
		<p style="color:red;">${msg}</p>
		
	</form>
	
</body>
</html>
