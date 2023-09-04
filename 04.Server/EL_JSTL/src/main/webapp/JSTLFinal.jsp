<%@page import="com.MemberDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		ArrayList<String> idol = new ArrayList<String>();
		idol.add("����ȩ");
		idol.add("����");		
		idol.add("����");		
		idol.add("����");		
		idol.add("����");		
		pageContext.setAttribute("idol", idol);
	%>
	
	<c:forEach items="${idol}" var="name">
		${name}	
	</c:forEach>
	<br>
	
	<%
		MemberDTO dto1 = new MemberDTO("pbk","1234","ȣ�ξƺ�","����");
		MemberDTO dto2 = new MemberDTO("IU","5678","������","����");
		MemberDTO dto3 = new MemberDTO("son","7777","�����","����");
		MemberDTO dto4 = new MemberDTO("jjy","9999","�ؿ��","����");
		MemberDTO dto5 = new MemberDTO("imh","4567","���ưϵ�","����");
		
		ArrayList<MemberDTO> list = new ArrayList<MemberDTO>();
		list.add(dto1);
		list.add(dto2);
		list.add(dto3);
		list.add(dto4);
		list.add(dto5);
		pageContext.setAttribute("list", list);
	%>
	
	<table border="1px">
		<tr>
			<td>��ȣ</td>
			<td>���̵�</td>
			<td>��й�ȣ</td>
			<td>�г���</td>
			<td>�ּ�</td>
		</tr>
		<!-- ���� �Ʒ��� JSTL�� ���ؼ� list�ȿ� �ִ� ȸ���� ������ ��� -->
		<c:forEach items="${list}" var="member" varStatus="i">
			<tr>
			<td>${i.count}</td>
			<td>${member.id}</td>
			<td>${member.pw}</td>
			<td>${member.nick}</td>
			<td>${member.addr}</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>