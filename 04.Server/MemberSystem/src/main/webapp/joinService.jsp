<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
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
		// �Ѿ�� �����͸� �������� JDBC�� ���� ���̺� �� �ֱ� (ȸ������)
		// �������� �Ѿ���� ������
		// id, pw, nick, email, phone, gender, age
		request.setCharacterEncoding("EUC-KR");
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String nick = request.getParameter("nick");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String gender = request.getParameter("gender");
		int age = Integer.parseInt(request.getParameter("age"));
		
		Connection conn = null;
		PreparedStatement psmt = null;
		// JDBC ����
		// 0.����̹� ���� ������Ʈ�� �ֱ�
		// 1.����̺� �����ε�
		Class.forName("oracle.jdbc.driver.OracleDriver");
		
		// 2.Ŀ�ؼ� ����
		String db_url = "jdbc:oracle:thin:@localhost:1521:xe";
		String db_id = "shopping";
		String db_pw = "12345";
		
		conn = DriverManager.getConnection(db_url, db_id, db_pw);
		
		if(conn != null){
			System.out.println("DB���� ����");
		}else{
			System.out.println("DB���� ����");
		}
		// 3.SQL�� ����
		String sql = "INSERT INTO MEMBER VALUES(?,?,?,?,?,?,?)";
		psmt = conn.prepareStatement(sql);
		
		psmt.setString(1, id);
		psmt.setString(2, pw);
		psmt.setString(3, nick);
		psmt.setString(4, email);
		psmt.setString(5, phone);
		psmt.setString(6, gender);
		psmt.setInt(7, age);
		
		psmt.executeUpdate();
		
		if(psmt != null) {
			psmt.close();
		}
		if(conn != null) {
			conn.close();
		}
		// ���� : ȸ������ �� main �������� ���ư��� ����� �ϼ��Ͻÿ�]
		response.sendRedirect("main.jsp");
	%>
</body>
</html>