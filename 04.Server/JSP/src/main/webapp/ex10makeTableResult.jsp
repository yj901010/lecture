<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<style>
	h2{ text-align: center;
	}
</style>
<body>
	<%
		int c = Integer.parseInt(request.getParameter("c"));
		int r = Integer.parseInt(request.getParameter("r"));
	%>
	<h2><%=c %>��</h2>
	<h2><%=r %>��</h2>
	<table border="1" style="margin: auto; text-align: center;">
		<%
			for(int i=1;i<=c;i++){
				out.print("<tr>");
				for(int j=1;j<=r;j++){
					out.print("<td>"+j+"</td>");
				}
				out.print("</tr>");
			}
		%>
	
	</table>
</body>
</html>