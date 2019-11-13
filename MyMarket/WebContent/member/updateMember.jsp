<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*"%>
<%@ include file="../dbconn.jsp"%>
<html>
<head>
<link rel="stylesheet" href="../resources/css/bootstrap.min.css" />
<script type="text/javascript" src="../resources/js/jquery-3.4.1.js"></script>
<title>회원 정보 수정</title>
</head>
<body>
	<jsp:include page="../menu.jsp" />
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">회원 정보 수정</h1>
		</div>
	</div>
	<%
		request.setCharacterEncoding("UTF-8");
	
		String id = request.getParameter("id");

		PreparedStatement pstmt = null;
		ResultSet rs = null;

		String sql = "select * from product where id = ?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		
		
	%>
	<div class="container">
		<div class="row">
			<div class="col-md-7">
				<form name="UpdateMember" action="./processUpdateMember.jsp"
					class="form-horizontal" method="post"
					enctype="multipart/form-data">
					<div class="form-group row">
						<label class="col-sm-2">아이디</label>
						<div class="col-sm-3">
							
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-2">비밀번호</label>
						<div class="col-sm-3">
							<input type="text" id="password" name="password" class="form-control"
								>
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-2">성명</label>
						<div class="col-sm-3">
							<input type="text" id="name" name="name"
								class="form-control" >
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-2">성별</label>
						<div class="col-sm-5">
							<textarea name="gender" cols="50" rows="2"
								class="form-control"></textarea>
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-2">생일</label>
						<div class="col-sm-3">
							<input type="date" name="birth" class="form-control"
								>
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-2">이메일</label>
						<div class="col-sm-3">
							<input type="email" name="mail" class="form-control"
								>
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-2">전화번호</label>
						<div class="col-sm-3">
							<input type="text" id="phone" name="phone"
								class="form-control">
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-2">주소</label>
						<div class="col-sm-3">
							<input type="text" id="address" name="address"
								class="form-control" >
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-2">가입 날짜</label>
						<div class="col-sm-3">
							<input type="date" id="regist_day" name="regist_day"
								class="form-control" >
						</div>
					</div>
					<div class="form-group row">
						<div class="col-sm-offset-2 col-sm-10">
							<input type="submit" class="btn btn-primary" value="등록">
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
	<%
	
	
		if (pstmt != null)
			pstmt.close();
		if (conn != null)
			conn.close();
	%>
</body>
</html>