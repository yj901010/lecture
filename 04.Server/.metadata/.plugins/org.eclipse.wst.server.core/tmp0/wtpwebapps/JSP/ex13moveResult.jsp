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
		request.setCharacterEncoding("EUC-KR");
		String url = request.getParameter("url");
		
		switch(url){
			case "구글": 
				response.sendRedirect("https://www.google.com");
			case "네이버": 
				response.sendRedirect("https://www.naver.com");
			case "다음": 
				response.sendRedirect("https://www.daum.net");
			case "인공지능사관학교": 
				response.sendRedirect("https://gj-aischool.or.kr/");
		}
	%>
</body>
</html>