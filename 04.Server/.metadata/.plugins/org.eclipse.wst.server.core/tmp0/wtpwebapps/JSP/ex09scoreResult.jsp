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
			<legend>학점확인프로그램</legend>
			<table style="margin: auto; text-align: left;">
				<tr>
					<td>이름</td>
					<td><%= name %></td>
				</tr>
				<tr>
					<td>JAVA점수</td>
					<td><%= java %></td>
				</tr>
				<tr>
					<td>WEB점수</td>
					<td><%= web %></td>
				</tr>
				<tr>
					<td>IOT점수</td>
					<td><%= iot %></td>
				</tr>
				<tr>
					<td>ANDROID점수</td>
					<td><%= android %></td>
				</tr>
				<tr>
					<td>평균</td>
					<td><%= avg %></td>
				</tr>
				<tr>
					<td>학점</td>
					<td><strong><%= rank %></strong></td>
				</tr>
			</table>
	</fieldset>
</body>
</html>