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
			<span class="STYLE4">订单列表</span></td>
		  <td width="14"> <img src="images/tab_07.gif" width="14" height="30" /></td>
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
						<div align="center" class="STYLE2 STYLE1">订单编号</div></td>
					<td width="10%" height="26" background="images/tab_14.gif" class="STYLE1">
						<div align="center" class="STYLE2 STYLE1">下单时间</div></td>
					<td width="5%" height="26" background="images/tab_14.gif" class="STYLE1">
						<div align="center" class="STYLE2 STYLE1">下单用户</div></td>
					<td width="5%" height="26" background="images/tab_14.gif" class="STYLE1">
						<div align="center" class="STYLE2 STYLE1">商品数量</div></td>
					<td width="5%" height="26" background="images/tab_14.gif" class="STYLE1">
						<div align="center" class="STYLE2 STYLE1">订单总价</div></td>
					<td width="5%" height="26" background="images/tab_14.gif" class="STYLE1">
						<div align="center" class="STYLE2 STYLE1">订单状态</div></td>
					<td width="5%" height="26" background="images/tab_14.gif" class="STYLE1">
						<div align="center" class="STYLE2 STYLE1">收货人姓名</div></td>
					<td width="5%" height="26" background="images/tab_14.gif" class="STYLE1">
						<div align="center" class="STYLE2 STYLE1">收货人电话</div></td>
					<td width="15%" height="26" background="images/tab_14.gif" class="STYLE1">
						<div align="center" class="STYLE2 STYLE1">收货地址</div></td>
					<td width="15%" height="26" background="images/tab_14.gif" class="STYLE1">
						<div align="center" class="STYLE2">操作</div></td>
				</tr>
				
				<!-- 用struts的iterator标签遍历news集合, 并去处每一个name显示 -->
				<c:forEach var="indent" items="${indentList}">
	
					<tr>
						<td height="20" bgcolor="#FFFFFF">
							<div align="center" class="STYLE2 STYLE1">${indent.id}</div></td>
						<td height="20" bgcolor="#FFFFFF">
							<div align="center" class="STYLE2 STYLE1">${indent.systimes}</div></td>
						<td height="20" bgcolor="#FFFFFF">
							<div align="center" class="STYLE2 STYLE1">${indent.user.username}</div></td>
						<td height="20" bgcolor="#FFFFFF">
							<div align="center" class="STYLE2 STYLE1">${indent.amount}</div></td>
						<td height="20" bgcolor="#FFFFFF">
							<div align="center" class="STYLE2 STYLE1">${indent.total}</div></td>
						<td height="20" bgcolor="#FFFFFF">
							<div align="center" class="STYLE2 STYLE1">
								<c:if test="${indent.status==1}">未处理</c:if>
								<c:if test="${indent.status==2}">已处理</c:if>
								<c:if test="${indent.status==3}">已删除</c:if>
							</div>
						</td>
						<td height="20" bgcolor="#FFFFFF">
							<div align="center" class="STYLE2 STYLE1">${indent.name}</div></td>
						<td height="20" bgcolor="#FFFFFF">
							<div align="center" class="STYLE2 STYLE1">${indent.phone}</div></td>
						<td height="20" bgcolor="#FFFFFF">
							<div align="center" class="STYLE2 STYLE1">${indent.address}</div></td>
								
						<td height="20" bgcolor="#FFFFFF">
							<div align="center">
								<img src="images/a1.gif" width="9" height="9" /><span class="STYLE1">[</span><a href="itemList?id=${indent.id}">查看详情</a><span class="STYLE1">]</span>
								<c:if test="${indent.status==1}">
									<img src="images/037.gif" width="9" height="9" /><span class="STYLE1">[</span><a href="indentDispose?id=${indent.id}&status=${status}&page=${page}">标记处理</a><span class="STYLE1">]</span>
								</c:if>
								<img src="images/083.gif" width="9" height="9" /><span class="STYLE1">[</span><a href="indentDelete?id=${indent.id}&status=${status}&page=${page}">删除</a><span class="STYLE1">]</span>
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
