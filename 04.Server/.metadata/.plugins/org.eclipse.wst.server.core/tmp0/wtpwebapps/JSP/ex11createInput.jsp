<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style type="text/css">
	div, h2, fieldset, input{
		margin:auto;
		text-align: center;
		margin-top: 10px;
	}
</style>
</head>
<body>
	<div>
		<fieldset>
			<legend>랜덤당첨 작성</legend>
			<form action="ex11randomWinner.jsp" method="post">
				주제 : <input type="text" name="title">
				<br>
				<%-- 입력한 숫자만큼 input태그를 생성하세요 --%>
				<%
					int num = Integer.parseInt(request.getParameter("num"));
					for(int i=1;i<=num;i++){
						out.print("아이템"+ i +" : <input name='item' type='text'><br>");
					}
				%>
				<input type="submit" value="시작">
			</form>
		</fieldset>
	</div>
</body>
</html>