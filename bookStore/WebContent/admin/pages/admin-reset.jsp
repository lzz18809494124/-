<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>

	<form action="adminReset" method="post" >

		<input type="hidden" name="id" value="${admin.id}"/>
		<input type="hidden" name="username" value="${admin.username}"/>
		
		用户: ${admin.username}<br>
		密码：<input type="text" name="password" value="" required="required"/>
		
		<input type="submit" value="重置"/>
		
		<p style="color:red;">${msg}</p>
		
	</form>
	
</body>
</html>
