<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String sessionId = (String) session.getAttribute("sessionId");
%>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script>
<link rel="stylesheet" type="text/css"
	href="https://csshake.surge.sh/csshake.min.css">
<nav class="navbar navbar-expand-lg navbar-dark bg-white">
	<div class="dropdown">
		<button class="btn btn-primary dropdown-toggle" type="button"
			data-toggle="dropdown">
			메뉴 <span class="caret"></span>
		</button>
		<ul class="dropdown-menu">
			<li><a href="./products.jsp">상품 목록</a></li>
			<hr>
			<li><a href="./addProduct.jsp">상품 등록</a></li>
			<hr>
			<li><a href="./editProduct.jsp?edit=update">상품 수정</a></li>
			<hr>
			<li><a href="./editProduct.jsp?edit=delete">상품 삭제</a></li>
			<hr>
			<li><a href="lee.jsp">휴게소</a></li>
			<hr>
			
			<c:choose>
				<c:when test="&{empty sessionId}">
					<li><a href="<c:url value="/member/longinMember.jsp"/>">로그인</a></li>
					<hr>
					<li><a href="<c:url value="/member/addMember.jsp"/>">회원 가입</a></li>
				</c:when>
				<c:otherwise>
					<li style="padding-top: 7px; color:white">[<%=sessionId %>님 ]</li>
					<li><a href="<c:url value="/member/logoutMember.jsp"/>">로그아웃</a></li>
					<hr>
					<li><a href="<c:url value="/member/updateMember.jsp"/>">회원 수정</a></li>
				</c:otherwise>
			</c:choose>

		</ul>
	</div>



	<div class="shake-slow">
		<a href="./Market.jsp"> <img src="image/image5.png" width="174"
			height="41" alt="쿠팡로고">
		</a>
	</div>

	<!-- 	<form action="search.jsp" method=post""> -->
	<!-- 		<input type="text" name="search"> -->
	<!-- 			<input type="submit" value="전송"> -->
	<!-- 	</form> -->

	<form class="form-inline my-2 my-lg-0" action="search.jsp"
		method="post">
		<input class="form-control mr-sm-2" type="search"
			placeholder="상품을 검색해 보세요" aria-label="Search" name="search"
			style="margin-left: 380px;">
		<button class="btn btn-outline-success my-2 my-sm-0" type="submit">검색</button>
	</form>


</nav>