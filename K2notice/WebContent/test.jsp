<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*"%>
<%
	Connection conn = null;

	try {
		String url = "jdbc:oracle:thin:@61.252.141.82:1521:orcl";
		String user = "iahs4";
		String password = "iahs4";

		Class.forName("oracle.jdbc.driver.OracleDriver");
		conn = DriverManager.getConnection(url, user, password);
		

	} catch (SQLException ex) {
		out.println("데이터베이스 연결이 실패했습니다.<br>");
		out.println("SQLException:" + ex.getMessage());
	}
%>