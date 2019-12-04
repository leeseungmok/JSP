<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<%@ include file="dbconn.jsp"%>
<%
	String sessionId = (String) session.getAttribute("sessionId");
%>
<html>
<head>
<link rel="stylesheet" href="/MyMarket/resources/css/bootstrap.min.css" />
<link rel="stylesheet" href="/MyMarket/style.css" />
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script>
<link rel="stylesheet" type="text/css"
	href="https://csshake.surge.sh/csshake.min.css">
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-dark bg-white">
		<div class="dropdown">
			<button class="btn btn-primary dropdown-toggle" type="button"
				data-toggle="dropdown">
				메뉴 <span class="caret"></span>
			</button>
			<ul class="dropdown-menu">
				<li><a href="<c:url value="/products.jsp"/>">상품 목록</a></li>
				<hr>
				<li><a href="<c:url value="/addProduct.jsp"/>">상품 등록</a></li>
				<hr>
				<li><a href="<c:url value="/editProduct.jsp?edit=update"/>">상품
						수정</a></li>
				<hr>
				<li><a href="<c:url value="/editProduct.jsp?edit=delete"/>">상품
						삭제</a></li>
				<hr>
				<li><a href="<c:url value="/BoardListAction.do?pageNum=1"/>">
						게시판</a></li>
				<hr>
				<li><a href="<c:url value="/lee.jsp"/>">휴게소</a></li>
			</ul>
		</div>



		<div class="shake-slow">
			<a href="<c:url value="http://localhost:8080/MyMarket/Market.jsp"/>">메인페이지
			</a>
		</div>

		<form class="form-inline my-2 my-lg-0" action="search.jsp"
			method="post" style="margin-right: 300px;">
			<input class="form-control mr-sm-2" type="search"
				placeholder="상품을 검색해 보세요" aria-label="Search" name="search"
				style="margin-left: 465px;">
			<button class="btn btn-outline-success my-2 my-sm-0" type="submit">검색</button>
		</form>
		<%
			if (sessionId == null) {
		%>
		<p style="padding: 7px 5px 0 5px;"><a href="<c:url value="/member/loginMember.jsp"/>">로그인</a></p>
		<p style="padding: 7px 5px 0 5px;"><a href="<c:url value="/member/addMember.jsp"/>">/회원 가입</a></p>
		<%
			} else {

				PreparedStatement pstmt = null;
				ResultSet rs = null;
				String sql = "select * from member where id = ?";
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, sessionId);
				rs = pstmt.executeQuery();
				while (rs.next()) {
		%>

		<p style="padding: 7px 5px 0 5px; color: magenta">[<%=rs.getString("name")%>님] </p>
		<p style="padding: 7px 0 0 0;" ><a href="<c:url value="/member/logoutMember.jsp"/>">로그아웃</a></p>
		<p style="padding: 7px 0 0 0;"><a
			href="<c:url value="/member/resultMember.jsp?id="/><%=sessionId%>">/회원
				정보</a></p>
		<%
			}
				if (rs != null)
					rs.close();
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			}
		%>


	</nav>
</body>
</html>

