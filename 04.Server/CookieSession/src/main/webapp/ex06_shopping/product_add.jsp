<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<!-- 
		������ ������ ��ǰ���� ��Ű�� �����ϵ��� ����� �����Ͻÿ�.
		- �Ѱܹ��� value���� ��Ű�� name���� ���
		- �ϳ��� ��ǰ �Ǵ� ���� ���� ��ǰ�� ������ �� �迭�� ������ ��
		 -> request.getParameterValues () Ȱ��
		* ����Ȯ���� �����ڵ��� -> ���ø����̼� -> ��Ű�� Ȯ���� �� ��
	 -->
	 
	 <%
	 	String[] products = request.getParameterValues("product");

	    if (products != null) {
	    	for(int i=0; i<products.length;i++){
	    		// ��Ű �̸��� �ϳ��� �����ϰ� �Ǹ� �������� ����� ���� ��Ű�� �����ȴ�.
	    		// ���� ��ǰ���� ����ǰ� �Ϸ��� ��Ű�̸��� �ߺ��Ǹ� �ȵȴ�.
	    		Cookie cookie = new Cookie(products[i], products[i]);
		        response.addCookie(cookie);
	    	}
	    }
	    response.sendRedirect("product_list.jsp");
	 %>
</body>
</html>