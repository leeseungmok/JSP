<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<%@ include file="test.jsp"%>


<%
	request.setCharacterEncoding("UTF-8");

	String id = request.getParameter("id");
	String password = request.getParameter("password");
	
	
	session.setAttribute("sessionId", id);

	
	PreparedStatement pstmt = null;
	ResultSet rs = null;

	String sql = "select password from member where id=?";
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, id);
	
	rs = pstmt.executeQuery();
	
	if(rs.next()){
		if(password.equals(rs.getString("password"))){
			session.setAttribute("id",id);
			response.sendRedirect("./Main.jsp");
		}else{
			%>
			<script>
			alert('패스워드가 맞지 않습니다');
			history.back();
			</script>
			<% 
			session.invalidate();
		}
		}else{
			%>
			<script>
			alert('아이디가 유효하지 않습니다');
			location.href = 'login.jsp';
			history.back();
			</script>
			<% 
			session.invalidate();
		}
	

	if (pstmt != null)
		pstmt.close();
	if (conn != null)
		conn.close();
	
%>
