<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		Cookie cookie = new Cookie("item","");
		
		cookie.setMaxAge(0);
		
		response.addCookie(cookie);
		
		response.sendRedirect("ex05_readCookie.jsp");
	%>
</body>
</html>