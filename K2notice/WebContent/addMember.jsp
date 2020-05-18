<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*"%>
<html>
<head>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
	integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
	crossorigin="anonymous"></script>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<link rel="stylesheet" href="./style.css">
<title>회원 가입</title>
</head>
<body>
	<jsp:include page="./Header.jsp" />	
		<div class="jumbotron">
			<div class="container">
				<h1 class="display-3">
					회원 가입
				</h1>
			</div>
		</div>
		<div class="container">
			<form name="newMember" action="./processAddMember.jsp"
				class="form-horizontal" method="post">
				<div class="form-group row">
					<label class="col-sm-2">아이디</label>
					<div class="col-sm-3">
						<input type="text" id="id" name="id"
							class="form-control">
					</div>
				</div>
				<div class="form-group row">
					<label class="col-sm-2">비밀번호</label>
					<div class="col-sm-3">
						<input type="password" id="password" name="password" class="form-control">
					</div>
				</div>
				<div class="form-group row">
					<label class="col-sm-2">성명</label>
					<div class="col-sm-3">
						<input type="text" id="name" name="name" class="form-control">
					</div>
				</div>
				<div class="form-group row">
					<label class="col-sm-2">성별</label>
					<div class="col-sm-3">
						<input type="radio" name="gender" value="Man">
						남자
						<input type="radio" name="gender" value="Girl">
						여자
					</div>
				</div>
				<div class="form-group row">
					<div class="col-sm-offset-2 col-sm-10">
						<input type="submit" id="sum" class="btn btn-primary"
							value=가입>
					</div>
				</div>
			</form>
		</div>
</body>
</html>







