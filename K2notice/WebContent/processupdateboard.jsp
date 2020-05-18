<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<%@ include file="test.jsp"%>
<%
	request.setCharacterEncoding("UTF-8");

	String num = request.getParameter("num");
	String name = request.getParameter("name");
	String subject = request.getParameter("subject");
	String content = request.getParameter("content");
	String regist_day = request.getParameter("regist_day");
	String hit = request.getParameter("hit");

	PreparedStatement pstmt = null;

	ResultSet rs = null;

	String sql = "select * from member where num = ?";
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, num);
	rs = pstmt.executeQuery();

	if (rs.next()) {

		sql = "UPDATE member SET num=?, name=?, subject=?, content=?, regist_day=?, hit=? WHERE num=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, num);
		pstmt.setString(2, name);
		pstmt.setString(3, subject);
		pstmt.setString(4, content);
		pstmt.setString(5, regist_day);
		pstmt.setString(6, hit);

		pstmt.executeUpdate();

	}

	if (pstmt != null)
		pstmt.close();
	if (conn != null)
		conn.close();

%>
<script>

	alert('수정되었습니다');

	location.href = 'Main.jsp';

</script>