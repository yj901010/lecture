<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style>
	#wrap,h2, table{
		margin: auto;
		text-align: center;
	}
</style>
</head>
<body>
	<div id="wrap">
		<h2>ȸ������������</h2>
		<form action="JoinService" method="post">
			<table>
				<tr>
					<td>ID</td>
					<td><input type="text" name="id"></td>
				</tr>
				<tr>
					<td>PW</td>
					<td><input type="password" name="pw"></td>
				</tr>
				<tr>
					<td>NAME</td>
					<td><input type="text" name="name"></td>
				</tr>
				<tr>
					<td>BIRTH</td>
					<td><input type="date" name="birth"></td>
				</tr>
				<tr>
					<td>NICK</td>
					<td><input type="text" name="nick"></td>
				</tr>
				<tr>
					<td>EMAIL</td>
					<td><input type="email" name="email"></td>
				</tr>
				<tr>
					<td>PHONE</td>
					<td><input type="tel" name="phone"></td>
				</tr>
				<tr>
					<td>GENDER</td>
					<td>
						����<input type="radio" name="gender" value="����">
						����<input type="radio" name="gender" value="����">
					</td>
				</tr>
				
				<tr>
					<td colspan="2">
						<input type="submit" value="ȸ������">
						<input type="reset">
					</td>
				</tr>
		
			</table>
		</form>
	
	
	
	</div>


</body>
</html>