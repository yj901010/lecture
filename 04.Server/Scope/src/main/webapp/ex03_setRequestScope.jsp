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
		// Request Scope
		// - �ϳ� �̻��� JSP ���������� ������ ������Ű�� ����
		// - forward������� �̵��� �� ������ ������ų �� ����
		request.setAttribute("nickName", "������");
		
		// ���� �������� �̵��ϴ� ��� : redirect
		// - ������ �̵�(�ܼ��̵�, �����ͺ��̽��� ��ȭ�� �ִ� �̵�)
		// - ��û�� �� �� �߻�(��������X)
		// - ���� or �ܺ� ������ ����
		// response.sendRedirect("ex04_getRequestScope.jsp");
		
		// ���� �������� ������ ������ �� ����ϴ� ��� : forward
		// - ������ �̵� (��ȸ�� ������ ������ ��)
		// ��û�� �� ���� �߻�
		// - ���� �������� ����
		RequestDispatcher dispatcher = request.getRequestDispatcher("ex04_getRequestScope.jsp");
		dispatcher.forward(request, response);
	%>
	<h1>Request����</h1>
	<%=request.getAttribute("nickName") %>
</body>
</html>