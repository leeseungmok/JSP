<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<%@ include file="test.jsp"%>
<%
	String sessionId = (String) session.getAttribute("sessionId");
%>
<html>
<head>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-dark bg-white">
		<a href="./Main.jsp" class="btn btn-primary">메인</a>
		
		<%
			if (sessionId == null) {
		%>
		<p style="padding: 7px 5px 0 5px;"><a href="<c:url value="./login.jsp"/>">로그인</a></p>
		<p style="padding: 7px 5px 0 5px;"><a href="<c:url value="./addMember.jsp"/>">/회원 가입</a></p>
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
		<p style="padding: 7px 0 0 0;" ><a href="<c:url value="./logout.jsp"/>">로그아웃</a></p>
		<p style="padding: 7px 0 0 0;"><a
			href="<c:url value="./resultMember.jsp?id="/><%=sessionId%>">/회원
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

