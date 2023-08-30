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
			<input type="radio" class="platform" name="name" value="NETFLIX"> 넷플릭스
			<input type="radio" class="platform" name="name" value="WAVVE"> 웨이브
			<input type="radio" class="platform" name="name" value="DISNEY+"> 디즈니+
			<input type="radio" class="platform" name="name" value="WATCHA"> 왓챠
			<input type="radio" class="platform" name="name" value="APPLETV+"> 애플TV+
			<input type="radio" class="platform" name="name" value="AMAZONPRIMEVIDEO"> 아마존프라임비디오
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
								html += "<span> 가격 : " + result[i].price + "<span>";
								html += "<span> 공유인원 : " + result[i].share + "<span>";
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