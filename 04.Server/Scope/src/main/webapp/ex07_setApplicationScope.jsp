<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>Application ����</h1>
	
	<%
		// Application Scope
		// - ��� ����ڵ鿡�� ���������� ����ϴ� ���� ������Ű�� ����
		// - ex) �湮�� ��
		application.setAttribute("nickName", "������");
		response.sendRedirect("ex08_getApplicationScope.jsp");
	%>
</body>
</html>