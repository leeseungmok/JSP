<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<%@ include file="dbconn.jsp"%>
<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<link rel="stylesheet" href="magnifier.css">
<script type="text/javascript" src="./resources/js/jquery-3.4.1.js"></script>
<script type="text/javascript" src="./resources/js/validation.js"></script>
<script type="text/javascript" src="./resources/js/magnifier.js"></script>
<title>상품 상세 정보</title>
<script type="text/javascript">
function addToCart(){
	if (confirm("상품을 장바구니에 추가하시겠습니까?")){
		document.addForm.submit();
	}else{
		document.addForm.reset();
	}
}
</script>
</head>
<body>
	<%@ include file="menu.jsp"%>
	<div class="jumbotron">
		<div class="jumbotron" style="background-color: rgba(0, 0, 0, 0);">
			<div class="container">
				<h1 class="display-3"
					style="color: rgb(32, 69, 250); text-shadow: 5px 5px 5px black;">
					상품 정보</h1>
			</div>
		</div>
	</div>
	<%
		String id = request.getParameter("id");
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "select * from product where p_id=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		rs = pstmt.executeQuery();
		
		while(rs.next()){
	%>
	<div class="container">
		<div class="row">
			<div class="wrap">

				<img class="target" src="./image/<%= rs.getString("p_fileName") %>" style="width : 100%; height : 100%;"
					data-zoom="2" />
			</div>
			<div class="col-md-6">
				<h3><%= rs.getString("p_name") %></h3>
				<p><%= rs.getString("p_description") %>
				<p>
					<b>상품 코드 : </b><span class="badge badge-danger"> <%= rs.getString("p_id") %></span>
				<p>
					<b>제조사</b>:<%= rs.getString("p_manufacturer") %>
				<p>
					<b>분류</b>:<%= rs.getString("p_category") %>
				<p>
					<b>재고 수</b>:<%= rs.getString("p_unitsInStock") %>
				<h4><%= rs.getString("p_unitPrice") %>원
				</h4>
				<p> <form name="addForm" action="./addCart.jsp?id=<%= rs.getString("p_id") %>" method="post">
					<a href="#" class="btn btn-info" onclick="addToCart()">상품 주문&raquo;</a>
					 <a href="./cart.jsp" class="btn btn-warning"> 장바구니&raquo;</a>
					 <a href="./products.jsp" class="btn btn-secondary">상품 목록&raquo;</a>
			</form>
			</div>
		</div>
		<hr>
	</div>
	<%
		}
		if (rs != null) rs.close(); if (pstmt != null) pstmt.close();
		if (conn != null) conn.close();
	%>
	<jsp:include page="footer.jsp" />
</body>
</html>