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
	
	String sql = "INSERT INTO BOARD values(board_seq.nextval, ?, ?, ?, sysdate, ?)";

	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, name);
	pstmt.setString(2, subject);
	pstmt.setString(3, content);
	pstmt.setString(4, hit);
	pstmt.executeUpdate();

	if (pstmt != null)
		pstmt.close();
	if (conn != null)
		conn.close();

%>
<script>

	alert('글이 등록 되었습니다');

	location.href = 'Main.jsp';

</script>