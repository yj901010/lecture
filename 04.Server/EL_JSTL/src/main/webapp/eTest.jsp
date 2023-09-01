<%@page import="com.MemberDTO"%>
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
		session.setAttribute("id", "hodoodady");
	%>
	<%--
		EL�� ����
		- EL�� java�� ����� �ƹ� ������ ���� ������ �� �� �ִ°��� �ƴ϶�
		 Scope�� ����� ���� ������ ����� �� �ִ�.
		 �� Scope�����̶� - page, request, session, application
	 --%>
	<!--  session�� ����� id��� �̸��� ���� ���������� ǥ���Ͻÿ�. -->
	${id } �� ȯ���մϴ�!
	
	<%--
		El�� �پ��� ������
	 --%>
	 <%
	 	pageContext.setAttribute("num", 10);
	 	pageContext.setAttribute("isCheck", true);
	 %>
	 
	 ${num } <br>
	 ${num + 10} <br>
	 ${num - 5 } <br>
	 ${num * 3 } <br>
	 ${num / 2 } ${num div 2 } <br>
	 ${num % 3 } ${num mod 3 } <br>
	 ${num > 5 && num > 3 } 
	 ${num > 5 and num > 3} <br>
	 ${num > 5 || num > 3 }
	 ${num > 5 or num > 3 } <br>
	 ${isCheck } <br>
	 ${!isCheck } ${not isCheck } <br>
	 
	 ${num > 3} ${num gt 3 } <br>
	 ${num < 20} ${num lt 20 } <br>
	 ${num >= 3} ${num ge 3 } <br>
	 ${num <= 20} ${num le 20 } <br>
	 
	 ${num == 10 } ${num eq 10 } <br>
	 ${num != 20 } ${num ne 20 } <br>
	 
	 <%--
	 	EL���� DTO, VO�� �������� ��� �����ñ�?
	  --%>
	 
	 <%
	 	MemberDTO dto = new MemberDTO("pbk","1234","ȣ�ξƺ�","����");
	 	pageContext.setAttribute("dto", dto);
	 %>
	 
	 <!-- page������ ����� dto�� ���̵� ���� ǥ������ ����Ͽ� ���������� ǥ���Ͻÿ� -->
	 <% MemberDTO info = (MemberDTO)pageContext.getAttribute("dto"); %>
	 <%=info.getId() %>
	 
	 <!-- 
	 	EL����Ͽ� dto�ȿ� �ִ� private �ʵ尪�� �����������ؼ���
	 	�ݵ�� getter�޼ҵ尡 �ʿ��ϴ�
	  -->
	 ${dto.id}
	 ${dto.pw}
	 ${dto.nick}
	 ${dto.addr}
	 
	 <!-- ���� el�� ���� ���� �������� ��� �ɱ�?0 -->
	 ${empty good }
	 ${not empty good }
	 
	 <!-- 
	 	���࿡ ������ �̸��� ���� ���� ������ ���ִٸ�
	 	EL������ ��� ���� �����ñ�
	 	
	 	EL���� ���� �������ڴ� ����) ${name}�ϰ� �Ǵ� ����
	 	EL�� pageContext�������� name�� ���� �ִ��� ã�Եȴ�
	 	
	 	ã�¼���
	 	page -> request -> session -> application
	 	
	 	�׷���
	 	���� EL���� Ư������������ ã�����Ҷ� name�տ� Ư������Scope�� �ٿ��ش�
	  -->
	 
	 <%
	 	pageContext.setAttribute("name", "�ں���");
	 	request.setAttribute("name", "�����");
	 	session.setAttribute("name", "Ȳ�ص�");
	 	application.setAttribute("name", "���ؿ�");
	 %>
	 
	 ${sessionScope.name}

</body>
</html>