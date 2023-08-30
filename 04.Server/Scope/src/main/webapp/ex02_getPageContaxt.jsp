<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h3>PageScope에 저장된 정보는 다른 페이지에서 접근이 불가능하다!</h3>
	<%=pageContext.getAttribute("nickName") %>
</body>
</html>