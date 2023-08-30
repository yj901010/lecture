<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<style>
	.all {
		margin: 0;
		background: black;
		width: 100%;
	}
	.grid{
		display: grid;
		margin-top: 120px;
	}
	.grid-item-group {
	    display: grid;
	    grid-template-columns: repeat(6, 1fr);
	    grid-gap: 10px;
	}
	.grid-item {
		padding: 15px;
	}
	.grid-item a{
		border-radius: 5px;
		display: block;
	}
	.container {
		margin-left: 0;
		margin-right: 0;
		margin-top: 50px;
		box-sizing: border-box;
	}
</style>
<body>
	<div class="all">
	<jsp:include page="/navbar.jsp"/>
		<div class="container"> <!-- 컨테이너 열음 -->
			<div class="grid"> <!-- 그리드 열음 -->
				<div class="title-list-grid">  <!-- 타이틀리스트 열음 -->
					<div class="grid-item-group"> <!-- 그리드그룹 열음 -->
						<div class="grid-item"> <!-- 그리드 아이템 열음 -->
							<a href="#">
								<img src="img/movie/1_에브리씽_에브리웨어_올_앳_원스.jpg" style="width: 200px; height: 300px;">
							</a>
						</div> <!-- 그리드 아이템 닫음 -->
						<div class="grid-item"> <!-- 그리드 아이템 열음 -->
							<a href="#">
								<img src="img/movie/10_폴_600미터.jpg" style="width: 200px; height: 300px;">
							</a>
						</div> <!-- 그리드 아이템 닫음 -->
						<div class="grid-item"> <!-- 그리드 아이템 열음 -->
							<a href="#">
								<img src="img/movie/100_조커.jpg" style="width: 200px; height: 300px;">
							</a>
						</div> <!-- 그리드 아이템 닫음 -->
					</div> <!-- 그리드그룹 닫음 -->
					<div class="grid-item-group"> <!-- 그리드그룹 열음 -->
						<div class="grid-item"> <!-- 그리드 아이템 열음 -->
							<a href="#">
								<img src="img/movie/101_위대한_레보스키.jpg" style="width: 200px; height: 300px;">
							</a>
						</div> <!-- 그리드 아이템 닫음 -->
						<div class="grid-item"> <!-- 그리드 아이템 열음 -->
							<a href="#">
								<img src="img/movie/102_트로픽_썬더.jpg" style="width: 200px; height: 300px;">
							</a>
						</div> <!-- 그리드 아이템 닫음 -->
						<div class="grid-item"> <!-- 그리드 아이템 열음 -->
							<a href="#">
								<img src="img/movie/103_텐_데이즈_오브_굿_맨.jpg" style="width: 200px; height: 300px;">
							</a>
						</div> <!-- 그리드 아이템 닫음 -->
					</div> <!-- 그리드 그룹 닫음 -->
				</div> <!-- 타이틀리스트 닫음 -->
			</div> <!-- 그리드 닫음 -->
		</div> <!-- 컨테이너 닫음 -->
	<jsp:include page="/footer.jsp"/>
	</div>
</body>
</html>