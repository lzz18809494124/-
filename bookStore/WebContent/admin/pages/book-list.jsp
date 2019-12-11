<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style type="text/css">
</style>
</head>

<body>

<table width="100%" border="0" align="left" cellpadding="0" cellspacing="0">
  <tr>
    <td height="30">
	  <table width="100%" border="0" cellspacing="0" cellpadding="0">
		<tr>
		  <td width="15" height="30"><img src="images/tab_03.gif" width="15" height="30" /></td>
		  <td background="images/tab_05.gif"><img src="images/311.gif" width="16" height="16" /> 
			<span class="STYLE4">图书列表</span></td>
		  <td width="14"><img src="images/tab_07.gif" width="14" height="30" /></td>
		</tr>
	  </table>
	</td>
  </tr>
  <tr>
    <td>
	  <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td width="9" background="images/tab_12.gif">&nbsp;</td>
          <td bgcolor="e5f1d6">
			<table width="100%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#CECECE">
				<tr>
					<td width="5%" height="26" background="images/tab_14.gif" class="STYLE1">
						<div align="center" class="STYLE2 STYLE1">编号</div></td>
					<td width="10%" height="26" background="images/tab_14.gif" class="STYLE1">
						<div align="center" class="STYLE2 STYLE1">封面</div></td>
					<td width="10%" height="26" background="images/tab_14.gif" class="STYLE1">
						<div align="center" class="STYLE2 STYLE1">书名</div></td>
					<td width="5%" height="26" background="images/tab_14.gif" class="STYLE1">
						<div align="center" class="STYLE2 STYLE1">价格</div></td>
					<td width="5%" height="26" background="images/tab_14.gif" class="STYLE1">
						<div align="center" class="STYLE2 STYLE1">库存</div></td>
					<td width="20%" height="26" background="images/tab_14.gif" class="STYLE1">
						<div align="center" class="STYLE2 STYLE1">介绍</div></td>
					<td width="10%" height="26" background="images/tab_14.gif" class="STYLE1">
						<div align="center" class="STYLE2 STYLE1">作者</div></td>
					<td width="10%" height="26" background="images/tab_14.gif" class="STYLE1">
						<div align="center" class="STYLE2 STYLE1">出版社</div></td>
					<td width="10%" height="26" background="images/tab_14.gif" class="STYLE1">
						<div align="center" class="STYLE2 STYLE1">出版日期</div></td>
					<td width="20%" height="26" background="images/tab_14.gif" class="STYLE1">
						<div align="center" class="STYLE2">操作</div></td>
				</tr>
				
				<!-- 用struts的iterator标签遍历news集合, 并去处每一个name显示 -->
				<c:forEach var="book" items="${bookList}">
	
					<tr>
						<td height="20" bgcolor="#FFFFFF">
							<div align="center" class="STYLE2 STYLE1">${book.id}</div></td>
						<td height="20" bgcolor="#FFFFFF">
							<div align="center" class="STYLE2 STYLE1"><a href="../index/detail?bookId=${book.id}" target="_blank"><img src="../${book.cover}" width="150px" height="150px"></a></div></td>
						<td height="20" bgcolor="#FFFFFF">
							<div align="center" class="STYLE2 STYLE1"><a href="../index/detail?bookId=${book.id}" target="_blank">${book.name}</a></div></td>
						<td height="20" bgcolor="#FFFFFF">
							<div align="center" class="STYLE2 STYLE1">${book.price}</div></td>
						<td height="20" bgcolor="#FFFFFF">
							<div align="center" class="STYLE2 STYLE1">${book.count}</div></td>
						<td height="20" bgcolor="#FFFFFF">
							<div align="center" class="STYLE2 STYLE1">${book.intro}</div></td>
						<td height="20" bgcolor="#FFFFFF">
							<div align="center" class="STYLE2 STYLE1">${book.auther}</div></td>
						<td height="20" bgcolor="#FFFFFF">
							<div align="center" class="STYLE2 STYLE1">${book.press}</div></td>
						<td height="20" bgcolor="#FFFFFF">
							<div align="center" class="STYLE2 STYLE1">${book.pubdate}</div></td>
						<td height="20" bgcolor="#FFFFFF">
							<div align="center">
								<c:if test="${!book.special}"><img src="images/001.gif" width="9" height="9" /><span class="STYLE1">[</span><a href="bookSet?id=${book.id}&flag=11&status=${status}&page=${page}">设为推荐</a><span class="STYLE1">]</span></c:if>
								<c:if test="${book.special}"><img src="images/010.gif" width="9" height="9" /><span class="STYLE1">[</span><a href="bookSet?id=${book.id}&flag=10&status=${status}&page=${page}">取消推荐</a><span class="STYLE1">]</span></c:if>
								<c:if test="${!book.news}"><img src="images/001.gif" width="9" height="9" /><span class="STYLE1">[</span><a href="bookSet?id=${book.id}&flag=21&status=${status}&page=${page}">设为最新</a><span class="STYLE1">]</span></c:if>
								<c:if test="${book.news}"><img src="images/010.gif" width="9" height="9" /><span class="STYLE1">[</span><a href="bookSet?id=${book.id}&flag=20&status=${status}&page=${page}">取消最新</a><span class="STYLE1">]</span></c:if>
								<c:if test="${!book.sale}"><img src="images/001.gif" width="9" height="9" /><span class="STYLE1">[</span><a href="bookSet?id=${book.id}&flag=31&status=${status}&page=${page}">设为促销</a><span class="STYLE1">]</span></c:if>
								<c:if test="${book.sale}"><img src="images/010.gif" width="9" height="9" /><span class="STYLE1">[</span><a href="bookSet?id=${book.id}&flag=30&status=${status}&page=${page}">取消促销</a><span class="STYLE1">]</span></c:if>
								<br>
								<img src="images/037.gif" width="9" height="9" /><span class="STYLE1">[</span><a href="bookUp?id=${book.id}&page=${page}">修改</a><span class="STYLE1">]</span>
								<img src="images/083.gif" width="9" height="9" /><span class="STYLE1">[</span><a href="bookDelete?id=${book.id}&page=${page}">删除</a><span class="STYLE1">]</span>
							</div>
						</td>
					</tr>
					
				</c:forEach>
				
			</table>
		  </td>
		  <td width="9" background="images/tab_16.gif">&nbsp;</td>
		</tr>
	  </table>
	</td>
  </tr>
  <tr>
    <td height="29">
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
		  <tr>
			<td width="15" height="29"><img src="images/tab_20.gif" width="15" height="29" /></td>
			<td background="images/tab_21.gif">${pageTool}</td>
			<td width="14"><img src="images/tab_22.gif" width="14" height="29" /></td>
		  </tr>
		</table>
	</td>
  </tr>
</table>

</body>
</html>
