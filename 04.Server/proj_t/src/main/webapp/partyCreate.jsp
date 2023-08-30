<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
<style type="text/css">
	body {
		width: 100%;
	}
	.wrap {
		border: 1;
	}
</style>
</head>
<body>
	<form action="PartyCreate" method="post">
	<div class="wrap">
		<div>
			<input type="radio" class="platform" name="name" value="NETFLIX"> ���ø���
			<input type="radio" class="platform" name="name" value="WAVVE"> ���̺�
			<input type="radio" class="platform" name="name" value="DISNEY+"> �����+
			<input type="radio" class="platform" name="name" value="WATCHA"> ��í
			<input type="radio" class="platform" name="name" value="APPLETV+"> ����TV+
			<input type="radio" class="platform" name="name" value="AMAZONPRIMEVIDEO"> �Ƹ��������Ӻ���
		</div>
		<div>
			<script>
				$(".platform").on('change',function(){
					var platform = $(this).val();c
					
					$.ajax({
						url : "MembershipSelect",
						type : "POST",
						data : {"platform" : platform},
						dataType : "JSON",
						success : function(result){
							console.log(result);
							let html = "";
							for(let i = 0; i < result.length; i++){
								html += "<input type='radio' class='plan' name='title' value='" + result[i].title + "'> " + result[i].title;
								html += "<span> ���� : " + result[i].price + "<span>";
								html += "<span> �����ο� : " + result[i].share + "<span>";
								html += "<br>";
							}
							$("#result").html(html);
						},
						error : function(e){
							console.log(e);
						}
					});
					
				});
			</script>
			
		</div>
		<div id="result">
		</div>
		<div>
			<input type="date" name="start_Date">
		</div>
		<div>
			<select name="period">
				<option>1</option>
				<option>2</option>
				<option>3</option>
				<option>4</option>
				<option>5</option>
				<option>6</option>
				<option>7</option>
				<option>8</option>
				<option>9</option>
				<option>10</option>
				<option>11</option>
				<option>12</option>
			</select>
		</div>
		<div>
			<input type="submit">
		</div>
	</div>
	</form>
</body>
</html>