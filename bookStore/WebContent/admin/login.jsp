<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录后台管理</title>
<style type="text/css">
</style>
</head>
<body>
	 <table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
		<tr>
			<td height="608" >
				<table width="862" border="0" align="center" cellpadding="0" cellspacing="0">
					<tr><td height="95">
					<table width="200%" border="0" cellspacing="0" cellpadding="0">
						<tr>
						   	
						   	
	
						<form action="login" method="post" id="form_login" >
							<table width="200%" border="0" cellspacing="0" cellpadding="0">
								<tr>
									<td width="21%" height="30"><div align="center"><span class="STYLE3">用户</span></div></td>
									<td width="79%" height="30"><input type="text" name="username" value="admin" style="height: 18px; width: 130px; border: solid 1px #cadcb2; font-size: 12px; color: #81b432;"></td>
								</tr>
								<tr>
									<td height="30"><div align="center"><span class="STYLE3">密码</span></div></td>
									<td height="30"><input type="password" name="password" value="admin" style="height: 18px; width: 130px; border: solid 1px #cadcb2; font-size: 12px; color: #81b432;"></td>
								</tr>
								 <tr>
									<td height="30">&nbsp;</td>
									<td height="30"><img src="images/dl.gif" width="81" height="22" border="0" usemap="#Map"></td>
								</tr>
							</table>
						</form>
							</td>
							<td width="255" >&nbsp;</td>
						</tr>
					</table></td>
					</tr>
				</table>
				</td>
		</tr>
	</table>

 <map name="Map">
		<area shape="rect" coords="3,3,36,19" href="javascript:document.getElementById('form_login').submit();">
		<area shape="rect" coords="40,3,78,18" href="javascript:document.getElementById('form_login').reset();">
	</map>

</body>
</html>
