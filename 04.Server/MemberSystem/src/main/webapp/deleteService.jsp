<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
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
		ID�� PW���� ���� �����´���
		ID�� PW�� ��ġ�ϴ� ȸ���� ������ ����
		
		���� ���� -> main.jsp �̵�
		���� ���� -> delete.jsp �̵�
	 --%>
	 
	 <% 
	 	String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
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
		String sql = "DELETE FROM MEMBER WHERE id=? AND pw=?";
		PreparedStatement psmt = conn.prepareStatement(sql);
		
		psmt.setString(1, id);
		psmt.setString(2, pw);
		
		int cnt = psmt.executeUpdate();
		// 4.��������
		if(psmt != null) {
			psmt.close();
		}
		if(conn != null) {
			conn.close();
		}
		if (cnt >0){
			// ȸ��Ż�� ����
			out.print("<script>");
			out.print("alert('ȸ��Ż�� ����');");
			out.print("location.href='main.jsp';");
			out.print("</script>");
			
			// response.sendRedirect("main.jsp");
		}else{
			// ȸ��Ż�� ����
			response.sendRedirect("delete.jsp");
		}
	%>
</body>
</html>