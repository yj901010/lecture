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
			case "����": 
				response.sendRedirect("https://www.google.com");
			case "���̹�": 
				response.sendRedirect("https://www.naver.com");
			case "����": 
				response.sendRedirect("https://www.daum.net");
			case "�ΰ����ɻ���б�": 
				response.sendRedirect("https://gj-aischool.or.kr/");
		}
	%>
</body>
</html>