<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<%@ include file="test.jsp"%>
<html>
<head>
<script type="text/javascript">
	function deleteboard(num) {
		if (confirm("해당 글을 삭제합니다!!") == true)
			location.href = "./deleteboard.jsp?num=" + num;
		else
			return;
	}
</script>
</head>
<body>
	<jsp:include page="./Header.jsp" />
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">수정하기</h1>
		</div>
	</div>
	<div class="container">
		<%
			String num = request.getParameter("num");
			PreparedStatement pstmt = null;

			ResultSet rs = null;
			String sql = "select * from board where num = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, num);
			rs = pstmt.executeQuery();

			while (rs.next()) {
		%>
		<form name="processupdateboard.jsp" class="form-horizontal" method="post">

			<input name="id" type="hidden" class="form-control" value="${name}">
			<div class="form-group row">
				<label class="col-sm-2 control-label">작성자</label>
				<div class="col-sm-3">
					<input name="name" type="text" class="form-control"
						value="<%=rs.getString("name")%>" placeholder="name">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2 control-label">제목</label>
				<div class="col-sm-5">

					<input name="subject" type="text" class="form-control"
						value="<%=rs.getString("subject")%>" placeholder="subject">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2 control-label">내용</label>
				<div class="col-sm-8">
					<textarea name="content" cols="50" rows="5" class="form-control"
						placeholder="content"><%=rs.getString("content")%></textarea>
				</div>
			</div>
			<a class="btn btn-danger"
				href="deleteboard.jsp?num=<%=rs.getString("num")%>"
				onclick="deleteboard('<%=rs.getString("num")%>')">삭제</a> <a
				class="btn btn-success"
				href="updateboard.jsp?num=<%=rs.getString("num")%>">수정하기</a> <a
				href="Main.jsp" class="btn btn-primary">메인페이지</a>
		</form>
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

</body>
</html>