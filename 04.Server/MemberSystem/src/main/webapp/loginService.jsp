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
		ID, PW 두개의 정보를 받아와서
		로그인을 한다음
		로그인 성공한 사람의 닉네임 콘솔에 출력
	 --%>
	<%
		// 넘어온 데이터를 기준으로 JDBC를 통해 테이블에 값 넣기 (회원가입)
		// 이쪽으로 넘어오는 데이터
		// id, pw, nick, email, phone, gender, age
		//request.setCharacterEncoding("EUC-KR");
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		String nick = null;
		
		// JDBC 순서
		// 0.드라이버 파일 프로젝트에 넣기
		// 1.드라이브 동적로딩
		Class.forName("oracle.jdbc.driver.OracleDriver");
		
		// 2.커넥션 연결
		String db_url = "jdbc:oracle:thin:@localhost:1521:xe";
		String db_id = "shopping";
		String db_pw = "12345";
		
		Connection conn = DriverManager.getConnection(db_url, db_id, db_pw);
		
		if(conn != null){
			System.out.println("DB연결 성공");
		}else{
			System.out.println("DB연결 실패");
		}
		// 3.SQL문 실행
		String sql = "SELECT * FROM MEMBER WHERE id=? AND pw=?";
		PreparedStatement psmt = conn.prepareStatement(sql);
		
		psmt.setString(1, id);
		psmt.setString(2, pw);
		
		ResultSet rs = psmt.executeQuery();
		if(rs.next()){
			// 로그인에 성공
			nick = rs.getString("nick"); // 메소드 오버로딩
		}
		// 4.연결종료
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
			response.sendRedirect("loginSuccess.jsp?nick="+nick); // 로그인 성공
		}
		else response.sendRedirect("login.jsp"); // 로그인 실패
	%>
</body>
</html>