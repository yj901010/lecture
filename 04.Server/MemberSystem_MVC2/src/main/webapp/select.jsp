<%@page import="com.model.MemberDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.model.MemberDAO"%>
<%@page import="java.sql.ResultSet"%>
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
		MemberDAO dao = new MemberDAO();
	
		ArrayList<MemberDTO> list = dao.select();
		
		// System.out.println("현재회원 수 : " + list.size());
	%>
	
	<table border="1">
		<tr>
			<th>번호</th>
			<th>아이디</th>
			<th>닉네임</th>
			<th>이메일</th>
			<th>전화번호</th>
			<th>성별</th>
			<th>나이</th>
		</tr>
	<!-- 내가 가진 list 크기만큼 반복을 돌면서 회원의 정보를 출력 -->
	<% 
		for(int i=0;i<list.size();i++){
			out.print("<tr>");
			out.print("<th>" + (i+1) + "</td>");
			out.print("<th>" + list.get(i).getId() + "</td>");
			out.print("<th>" + list.get(i).getNick() + "</td>");
			out.print("<th>" + list.get(i).getEmail() + "</td>");
			out.print("<th>" + list.get(i).getPhone() + "</td>");
			out.print("<th>" + list.get(i).getGender() + "</td>");
			out.print("<th>" + list.get(i).getAge() + "</td>");
			out.print("</tr>");
		}
	%>
	</table>
</body>
</html>