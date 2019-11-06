<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*" %>
<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<link rel="stylesheet" href="style.css">
<script type="text/javascript" src="./resources/js/jquery-3.4.1.js"></script>
<script type="text/javascript" src="./resources/js/validation.js"></script>
<title>상품 목록</title>
</head>
<body>
	<jsp:include page="menu.jsp" />
	<div class="jumbotron">
		<div class="jumbotron" style="background-color: rgba(0, 0, 0, 0);">
			<div class="container">
				<h1 class="display-3"
					style="color: rgb(32, 69, 250); text-shadow: 5px 5px 5px black;">
					상품 목록</h1>
			</div>
		</div>
	</div>


	<div class="container">
		<div class="row" align="center">
			<%@ include file="dbconn.jsp"%>
			<%
				PreparedStatement pstmt = null;
				ResultSet rs = null;
				String sql = "select * from product";
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery();
				while (rs.next()) {
			%>
			<div class="card"
				style="width: 18rem; float: left; margin: 0px 30px 30px 30px;"> <img
					class="card-img-top" src="./image/<%=rs.getString("p_fileName")%>"
					alt="Card image cap">
				<div class="card-body">
					<h5 class="card-title"><%=rs.getString("p_name")%></h5>
					<p><%=rs.getString("p_description")%>
					<p><%=rs.getString("p_UnitPrice")%>원
					<p>
						<a href="./product.jsp?id=<%=rs.getString("p_id")%>"
							class="btn btn-secondary" role="button">상세 정보&raquo;</a>
				</div>
			</div>
			<%
				}
			%>
			<% if (rs != null) rs.close(); if (pstmt != null) pstmt.close(); if
			(conn != null) conn.close();
			%>
		</div>
		<hr>
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>