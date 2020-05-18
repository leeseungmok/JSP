<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*"%>
<%@ include file="./test.jsp"%>
<%
	request.setCharacterEncoding("UTF-8");

	String id = request.getParameter("id");

	PreparedStatement pstmt = null;
	ResultSet rs = null;

	String sql = "select * from member";
	pstmt = conn.prepareStatement(sql);
	rs = pstmt.executeQuery();

	if (rs.next()) {
		sql = "delete from member where id = ?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		pstmt.executeUpdate();
	} else
		out.println("일치하는 아이디가 없습니다");

	if (pstmt != null)
		pstmt.close();
	if (conn != null)
		conn.close();
	session.invalidate();
%>
<script>
	alert('삭제 되었습니다!');

	location.href = './Main.jsp';
</script>