<%@page import="java.net.URLEncoder"%>
<%@page import="java.sql.ResultSet"%>
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
	<%--
		ID, PW �ΰ��� ������ �޾ƿͼ�
		�α����� �Ѵ���
		�α��� ������ ����� �г��� �ֿܼ� ���
	 --%>
	<%
		// �Ѿ�� �����͸� �������� JDBC�� ���� ���̺� �� �ֱ� (ȸ������)
		// �������� �Ѿ���� ������
		// id, pw, nick, email, phone, gender, age
		//request.setCharacterEncoding("EUC-KR");
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		String nick = null;
		
		// JDBC ����
		// 0.����̹� ���� ������Ʈ�� �ֱ�
		// 1.����̺� �����ε�
		Class.forName("oracle.jdbc.driver.OracleDriver");
		
		// 2.Ŀ�ؼ� ����
		String db_url = "jdbc:oracle:thin:@localhost:1521:xe";
		String db_id = "shopping";
		String db_pw = "12345";
		
		Connection conn = DriverManager.getConnection(db_url, db_id, db_pw);
		
		if(conn != null){
			System.out.println("DB���� ����");
		}else{
			System.out.println("DB���� ����");
		}
		// 3.SQL�� ����
		String sql = "SELECT * FROM MEMBER WHERE id=? AND pw=?";
		PreparedStatement psmt = conn.prepareStatement(sql);
		
		psmt.setString(1, id);
		psmt.setString(2, pw);
		
		ResultSet rs = psmt.executeQuery();
		if(rs.next()){
			// �α��ο� ����
			nick = rs.getString("nick"); // �޼ҵ� �����ε�
		}
		// 4.��������
		if(rs != null){
			rs.close();
		}
		if(psmt != null) {
			psmt.close();
		}
		if(conn != null) {
			conn.close();
		}
		if(nick != null) {
			nick = URLEncoder.encode(nick, "EUC-KR");			
			response.sendRedirect("loginSuccess.jsp?nick="+nick); // �α��� ����
		}
		else response.sendRedirect("login.jsp"); // �α��� ����
	%>
</body>
</html>