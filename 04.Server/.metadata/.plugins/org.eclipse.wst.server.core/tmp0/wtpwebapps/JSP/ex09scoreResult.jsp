<%@page import="org.eclipse.jdt.internal.compiler.parser.ParserBasicInformation"%>
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
		
		String name = request.getParameter("name");
		int java = Integer.parseInt(request.getParameter("java"));
		int web = Integer.parseInt(request.getParameter("web"));
		int iot = Integer.parseInt(request.getParameter("iot"));
		int android = Integer.parseInt(request.getParameter("android"));
		
		String rank;
		double avg = (java+web+iot+android)/4.0;
		if(avg>=95) rank = "A+";
		else if(avg>=85) rank = "A";
		else if(avg>=80) rank = "B";
		else if(avg>=70) rank = "C";
		else rank = "F";
	%>
	<fieldset>
			<legend>����Ȯ�����α׷�</legend>
			<table style="margin: auto; text-align: left;">
				<tr>
					<td>�̸�</td>
					<td><%= name %></td>
				</tr>
				<tr>
					<td>JAVA����</td>
					<td><%= java %></td>
				</tr>
				<tr>
					<td>WEB����</td>
					<td><%= web %></td>
				</tr>
				<tr>
					<td>IOT����</td>
					<td><%= iot %></td>
				</tr>
				<tr>
					<td>ANDROID����</td>
					<td><%= android %></td>
				</tr>
				<tr>
					<td>���</td>
					<td><%= avg %></td>
				</tr>
				<tr>
					<td>����</td>
					<td><strong><%= rank %></strong></td>
				</tr>
			</table>
	</fieldset>
</body>
</html>