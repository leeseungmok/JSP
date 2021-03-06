<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*"%>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<script type="text/javascript" src="./resources/js/jquery-3.4.1.js"></script>
<script>
	   function deleteMember(id) {
	      if (confirm("해당 계정을 삭제합니다!!"))
	         location.href = "./deleteMember.jsp?id=" + id;
	      else
	         return;
}
</script>
<title>회원 상세 정보</title>
</head>
<body>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">회원 정보</h1>
		</div>
	</div>

	<div class="container">
		<%@include file="./test.jsp"%>
		<%
			String id = request.getParameter("id");
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			String sql = "select * from member where id = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if (rs.next()) {
		%>
		<div class="row">
			<div class="col-md-6">
				<p>
					<b>아이디</b> :
					<%=rs.getString("id")%>
				</p>
				<p>
					<b>비밀번호</b> :
					<%=rs.getString("password")%>
				</p>
				<p>
					<b>이름</b> :
					<%=rs.getString("name")%>
				</p>
				<p>
					<b>성별</b> :
					<%=rs.getString("gender")%>
				</p>

				<a class="btn btn-danger"
					href="./deleteMember.jsp?id=<%=rs.getString("id")%>"
					onclick="deleteMember('<%=rs.getString("id")%>')">삭제</a> <a
					class="btn btn-primary" href="./Main.jsp">메인페이지</a>
			</div>
		</div>
		<%
			}
			if (rs != null)
				rs.close();
			if (pstmt != null)
				pstmt.close();
			if (conn != null)
				conn.close();
		%>
		<hr>
	</div>
</body>
</html>