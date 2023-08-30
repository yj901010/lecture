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
	<%
		// id, pw, nick, email, phone, gender, age
		// 위의 값을 먼저 다 가져온다음
		// id와 pw가 일치하는 계정을 찾아
		// 입력한 nick, email, phone, gender, age를 수정하시오
		
		// 수정 성공시 -> main.jsp 이동
		// 수정 실패시 -> update.jsp 이동
		
		request.setCharacterEncoding("EUC-KR");
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String nick = request.getParameter("nick");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String gender = request.getParameter("gender");
		int age = Integer.parseInt(request.getParameter("age"));
		
		Class.forName("oracle.jdbc.driver.OracleDriver");
		
		String db_url = "jdbc:oracle:thin:@localhost:1521:xe";
		String db_id = "shopping";
		String db_pw = "12345";
		
		Connection conn = DriverManager.getConnection(db_url, db_id, db_pw);
		
		if(conn != null){
			System.out.println("DB연결 성공");
		}else{
			System.out.println("DB연결 실패");
		}
		
		String sql = "UPDATE MEMBER SET nick=?, email=?, phone=?, gender=?, age=? WHERE id=? AND pw=?";
		PreparedStatement psmt = conn.prepareStatement(sql);
		
		psmt.setString(1, nick);
		psmt.setString(2, email);
		psmt.setString(3, phone);
		psmt.setString(4, gender);
		psmt.setInt(5, age);
		psmt.setString(6, id);
		psmt.setString(7, pw);
		
		int cnt = psmt.executeUpdate();
		
		if(psmt != null) {
			psmt.close();
		}
		if(conn != null) {
			conn.close();
		}
		
		if(cnt > 0){
			response.sendRedirect("main.jsp");
		}else{
			response.sendRedirect("update.jsp");
		}
	%>
</body>
</html>