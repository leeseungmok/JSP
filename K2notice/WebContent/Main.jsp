<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<%@ include file="test.jsp"%>
<% 
	String sessionId = (String) session.getAttribute("sessionId");
%>
<html>
<head>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
	integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
	crossorigin="anonymous"></script>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<script type="text/javascript" src="./resources/js/jquery-3.4.1.js"></script>
<script type="text/javascript">
	function checkForm() {	
		if (${sessionId==null}) {
			alert("로그인 해주세요.");
			return false;
		}
		location.href = "./write.jsp?id=<%=sessionId%>"
	}
</script>
<title>Board</title>
</head>
<body>
	<jsp:include page="./Header.jsp" />
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">게시판</h1>
		</div>
	</div>
	<div class="container">
		<form action="list.jsp" method="post">
			<div></div>
			<div style="padding-top: 50px">
				<table class="table table-hover">
					<tr>
						<th>번호</th>
						<th>제목</th>
						<th>날짜</th>
						<th>작성자</th>
					</tr>
					<%
                   	PreparedStatement pstmt = null;
                   	ResultSet rs = null;
                    String sql = "select * from board ORDER BY num DESC";
                    pstmt = conn.prepareStatement(sql);
                    rs = pstmt.executeQuery();

                    while (rs.next()) {
                %>
					<tr>
						<th><%=rs.getString("num")%></th>
						<th><a
							href="<c:url value="/View.jsp?num="/><%=rs.getString("num")%>"><%=rs.getString("subject")%></a></th>
						<th><%=rs.getString("REGIST_DAY")%></th>
						<th><%=rs.getString("name")%></th>
					</tr>
					<%
                    }
                    if (rs != null)
                        rs.close();
                    if (pstmt != null)
                        pstmt.close();
                    if (conn != null)
                        conn.close();
                %>
				</table>
			</div>
			<div align="center"></div>
			<div align="left">
				<table>
					<tr>
						<td width="100%" align="left">&nbsp;&nbsp; <select
							name="items" class="txt">
								<option value="subject">제목에서</option>
								<option value="content">본문에서</option>
								<option value="name">글쓴이에서</option>
						</select> <input name="text" type="text" /> <input type="submit"
							id="btnAdd" class="btn btn-primary " value="검색 " />
						</td>
						<td width="100%" align="right"><a href="write.jsp"
							onclick="checkForm(); return false;" class="btn btn-primary">&laquo;글쓰기</a>
						</td>
					</tr>
				</table>
			</div>
		</form>
		<hr>
	</div>
</body>
</html>
