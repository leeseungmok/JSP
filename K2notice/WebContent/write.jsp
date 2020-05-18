<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.sql.*"%>
<%@ include file="test.jsp"%>
<% 
	String sessionId = (String) session.getAttribute("sessionId");

	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String sql = "select * from member where id = ?";
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, sessionId);
	rs = pstmt.executeQuery();
	while (rs.next()) {

		
	

%>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<script type="text/javascript" src="./resources/js/jquery-3.4.1.js"></script>
<title>글쓰기</title>
</head>
<body>
	<jsp:include page="./Header.jsp" />
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">글쓰기</h1>
		</div>
	</div>
	<div class="container">
		<form name="writeform" action="insert.jsp" class="form-horizontal"
			method="post" onsubmit="return checkForm()">
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
						placeholder="subject">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2 control-label">내용</label>
				<div class="col-sm-8">
					<textarea name="content" cols="50" rows="5" class="form-control"
						placeholder="content"></textarea>
				</div>
			</div>
			<div class="form-group row">
				<div class="col-sm-offset-2 col-sm-10">
					<input type="submit" id="sum" class="btn btn-primary" value=등록>
				</div>
			</div>
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







