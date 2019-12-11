<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>

	<form action="userReset" method="post" >

		<input type="hidden" name="id" value="${user.id}"/>
		
		用户: ${user.username}<br>
		密码：<input type="text" name="password" value="" required="required"/>
		
		<input type="submit" value="重置"/>
		<input type="button" value="返回上一界面" onclick="javascript:history.go(-1);">
		
		<p style="color:red;">${msg}</p>
		
	</form>
	
</body>
</html>
