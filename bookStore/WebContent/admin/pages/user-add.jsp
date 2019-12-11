<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>

	<form action="userAdd" method="post" >

		用户：<input type="text" name="username" required="required"/><br>
		密码：<input type="text" name="password" required="required"/><br>
		电话：<input type="text" name="phone"/>
		
		<input type="submit" value="添加"/>
		<input type="button" value="返回上一界面" onclick="javascript:history.go(-1);">
		
	</form>
	
	<p style="color:red;">${msg}</p>
	
</body>
</html>
