<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>��ٱ���</h1>
	
	<fieldset>
		<legend>��ǰ����Ʈ</legend>
		
		<!-- 
			��Ű�� ����� ��ǰ���� ����ϴ� ����� �����Ͻÿ�. 
			- "product" -> "��ǰ" ��ȯ ( replace() Ȱ�� )
		-->
		<!-- [����� ����] 
			<ul>
				<li>��ǰ1</li>
				<li>��ǰ2</li>
			</ul>
		 -->
		 <ul>
		 	<%
		 		Cookie[] cookies = request.getCookies();

		 		if(cookies != null){
		 			
		 			for(int i=0;i<cookies.length;i++){
		 				if(cookies[i].getName().contains("product")){
							out.print("<li>"+cookies[i].getValue().replace("product","��ǰ")+"</li>");
						}
		 			}
		 		}
		 	%>
		 </ul>
	</fieldset>
	
	<p><a href="product_list.jsp">��Ӽ����ϱ�</a></p>
	<p><a href="product_deleteAll.jsp">����ǰ����</a></p>
</body>
</html>