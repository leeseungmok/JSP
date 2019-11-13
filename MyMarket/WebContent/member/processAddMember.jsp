<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<%@ include file="../dbconn.jsp"%>


<%
	request.setCharacterEncoding("UTF-8");

	String id = request.getParameter("id");
	String name = request.getParameter("name");
	String password = request.getParameter("password");
	String gender = request.getParameter("gender");
	String birth = request.getParameter("birth");
	String mail = request.getParameter("mail");
	String phone = request.getParameter("phone");
	String address = request.getParameter("address");
	String regist_day = request.getParameter("regist_day");

	PreparedStatement pstmt = null;
	

	String sql = "INSERT into member (id, password, name, gender, birth, mail, phone, address, regist_day) values (?,?,?,?,?,?,?,?,?)";
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, id);
	pstmt.setString(2, password);
	pstmt.setString(3, name);
	pstmt.setString(4, gender);
	pstmt.setString(5, birth);
	pstmt.setString(6, mail);
	pstmt.setString(7, phone);
	pstmt.setString(8, address);
	pstmt.setString(9, regist_day);
	
	pstmt.executeUpdate();


	if (pstmt != null)
		pstmt.close();
	if (conn != null)
		conn.close();
	
%>
<script>
	alert('회원가입 성공');

	location.href = 'loginMember.jsp';
</script>