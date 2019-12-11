<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>图书搜索</title>
</head>
<body>

<div id="wrap">

<jsp:include page="header.jsp"/>

<div class="center_content">

	<div class="left_content">
	
		<div class="title"><span class="title_icon"><img src="images/bullet1.gif"/></span>图书搜索</div>
     
     	<c:forEach var="book" items="${bookList}">
     
			<div class="feat_prod_box">
				<div class="prod_img">
					<a href="detail?bookId=${book.id}">
						<img src="../${book.cover}" class="thumb_big" border="0"/>
					</a>
				</div>
				<div class="prod_det_box">
					<c:if test="${book.special==true}"><span class="special_icon"><img src="images/special_icon.gif"/></span></c:if>
					<c:if test="${book.news==true}"><span class="special_icon"><img src="images/new_icon.gif"/></span></c:if>
					<c:if test="${book.sale==true}"><span class="special_icon"><img src="images/promo_icon.gif"/></span></c:if>
					<div class="box_top"></div>
					<div class="box_center">
						<div class="prod_title"><a href="detail?bookId=${book.id}">${book.name}</a></div>
						<p class="details">${book.intro}</p>
						<a href="detail?bookId=${book.id}" class="more">- 图书详情 -</a>
						<div class="clear"></div>
					</div>
					<div class="box_bottom"></div>
				</div>
				<div class="clear"></div>
			</div>
		
		</c:forEach>
     
	    <!-- 分页 -->
		${pageTool}
		
		<div class="clear"></div>
	
	</div>
   
   	<jsp:include page="right.jsp"/>
   
	<div class="clear"></div>
	
</div>

<jsp:include page="footer.jsp"/>

</div>

</body>
</html>