<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<!-- ��� ��ǰ������ ������ �Ŀ� prouct_basket.jsp�� �̵��ϴ� ����� �����Ͻÿ�. -->
	<%
		Cookie[] cookies = request.getCookies();
		
		if(cookies != null){
			
			for(int i=0;i<cookies.length;i++){
				cookies[i].setMaxAge(0);
				response.addCookie(cookies[i]);
			}
		}
		
		response.sendRedirect("product_basket.jsp");
	%>
	
</body>
</html>