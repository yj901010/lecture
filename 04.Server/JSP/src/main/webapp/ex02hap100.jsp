<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<!-- 1���� 100������ ���� �ݺ����� ���Ͽ� ���Ѵ��� h1�±� �ȿ� ǥ���Ͻÿ� -->
	<%
		// ��ũ��Ʈ�� -> JSP�ȿ��� Java�ڵ带 ����ϱ� ���ؼ� ����ϴ� ��
		int sum=0;	// 1���� 100������ ���� �����ϱ� ���� ����
		for(int i=1;i<=100;i++){
			sum+=i;	//sum = sum+i;
		}
	%>
	<h1>1���� 100������ ���� -> <%= sum %> </h1>
	
</body>
</html>