<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style type="text/css">
	div, h2, fieldset, input{
		margin:auto;
		text-align: center;
		margin-top: 10px;
	}
</style>
</head>
<body>
	<div>
		<fieldset>
			<legend>������÷���</legend>
				<%
					request.setCharacterEncoding("EUC-KR");
					String title = request.getParameter("title");
					out.print(title);
				%>
				<br>
				<%
					String[] item = request.getParameterValues("item");
					Random rd = new Random();
					out.print(item[rd.nextInt(item.length)]);
				%>
		</fieldset>
	</div>
</body>
</html>