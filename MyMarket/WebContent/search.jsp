<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
		String usersc = request.getParameter("search");

		if (usersc.equals("꼰스") || usersc.equals("프리덤") || usersc.equals("반집업") || usersc.equals("맨투맨")) {
			response.sendRedirect("http://localhost:8080/MyMarket/product.jsp?id=P1234");
		} else if (usersc.equals("옹브레") || usersc.equals("셔츠")  || usersc.equals("체크") || usersc.equals("오버핏") || usersc.equals("후드") || usersc.equals("긴팔")) {
			response.sendRedirect("http://localhost:8080/MyMarket/product.jsp?id=P1235");
		} else if (usersc.equals("루이까또즈") || usersc.equals("반지갑") || usersc.equals("남성")) {
			response.sendRedirect("http://localhost:8080/MyMarket/product.jsp?id=P1236");
		} else if (usersc.equals("자네트") || usersc.equals("세실리") || usersc.equals("소파")) {
			response.sendRedirect("http://localhost:8080/MyMarket/product.jsp?id=P1237");
		} else if (usersc.equals("삼성") || usersc.equals("LED50W")) {
			response.sendRedirect("http://localhost:8080/MyMarket/product.jsp?id=P1238");
		} else if (usersc.equals("코닥") && usersc.equals("LED")) {
			response.sendRedirect("http://localhost:8080/MyMarket/product.jsp?id=P1239");
		} else if (usersc.equals("클럭") || usersc.equals("마사지")) {
			response.sendRedirect("http://localhost:8080/MyMarket/product.jsp?id=P1240");
		} else if (usersc.equals("나영우") || usersc.equals("영우")) {
			response.sendRedirect("http://www.k2web.co.kr/mbs/k2web/index.jsp");
		} else if (usersc.equals("오피지지") || usersc.equals("op.gg")) {
			response.sendRedirect("https://www.op.gg");
		} else if (usersc.equals("샤오미") || usersc.equals("보호필름")) {
			response.sendRedirect("http://localhost:8080/MyMarket/product.jsp?id=P1241");
		} else if (usersc.equals("캐리어") || usersc.equals("냉장고")) {
			response.sendRedirect("http://localhost:8080/MyMarket/product.jsp?id=P1242");
		} else {
			response.sendRedirect("http://localhost:8080/MyMarket/exceptionNoProductId.jsp");
		}
	%>
</body>
</html>