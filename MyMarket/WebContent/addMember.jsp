<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<script type="text/javascript" src="./resources/js/jquery-3.4.1.js"></script>
<title>회원 가입</title>
</head>
<body>
	<fmt:bundle basename="resourceBundle.message">
	<jsp:include page="menu.jsp" />	
		<div class="jumbotron">
			<div class="container">
				<h1 class="display-3">
					회원 가입
				</h1>
			</div>
		</div>
		<div class="container">
			<form name="newMember" action="./processAddMember.jsp"
				class="form-horizontal" method="post" enctype="multipart/form-data">
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
					<label class="col-sm-2">비밀번호확인</label>
					<div class="col-sm-3">
						<input type="password" id="checkpassword" name="checkpassword"
							class="form-control">
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
					<label class="col-sm-2">생일</label>
					<div class="col-sm-3">
						<input type="date" name="birth">
					</div>
				</div><div class="form-group row">
					<label class="col-sm-2">이메일</label>
					<div class="col-sm-3">
						<input type="email" name="mail">
					</div>
				</div>
				<div class="form-group row">
					<label class="col-sm-2">전화번호</label>
					<div class="col-sm-3">
						<input type="tel" name="phone" class="form-control">
					</div>
				</div>
				<div class="form-group row">
					<label class="col-sm-2">주소</label>
					<div class="col-sm-5">
						<textarea name="address" cols="50" rows="2"
							class="form-control"></textarea>
					</div>
				</div>
				<div class="form-group row">
					<div class="col-sm-offset-2 col-sm-10">
						<input type="submit" id="sum" class="btn btn-primary"
							value=등록>
					</div>
				</div>
			</form>
		</div>
	</fmt:bundle>
</body>
</html>







