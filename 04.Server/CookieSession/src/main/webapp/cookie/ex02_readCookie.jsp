<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>��Ű����Ȯ��</h1>
	<%
		// ��Ű������ �������� ���
		Cookie[] cookies = request.getCookies();
	
		if(cookies != null){
			
			for(int i=0;i<cookies.length;i++){
				out.print("��Ű�̸�: " + cookies[i].getName()+"<br>");
				out.print("��Ű��: " + cookies[i].getValue()+"<br>");
				out.print("<hr>");
			}
		}
	%>
</body>
</html>