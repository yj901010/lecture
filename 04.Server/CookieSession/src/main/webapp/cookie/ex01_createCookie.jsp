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
		// ��Ű(Cookie)
		// - ������� ������ ������Ű�� ���� ���
		// - �����PC�� ���� (key, value ������ ���� �� ���Ϸ� ����)
		// - value���� Ÿ���� ���ڿ��� ����
		//  * URLEncoder.encode() Ȱ��
		
		// ��Ű �����ϴ� ���
		Cookie cookie = new Cookie("name","Justin");
		
		// ��Ű�� �����Ⱓ �����ϴ� ���
		// - �� ������ ���� ex) setMaxAge(10) -> 10�� ���� ����
		// cookie.setMaxAge(30);
	
		// ������ ��Ű�� ����ڿ��� ����
		response.addCookie(cookie);
		
		Cookie cookie2 = new Cookie("name2","Jason");
		Cookie cookie3 = new Cookie("name3","Tim");
		
		response.addCookie(cookie2);
		response.addCookie(cookie3);
	%>
	
	<h1>��Ű�����Ϸ�!</h1>
</body>
</html>