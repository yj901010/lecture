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
		<div class="container"> <!-- �����̳� ���� -->
			<div class="grid"> <!-- �׸��� ���� -->
				<div class="title-list-grid">  <!-- Ÿ��Ʋ����Ʈ ���� -->
					<div class="grid-item-group"> <!-- �׸���׷� ���� -->
						<div class="grid-item"> <!-- �׸��� ������ ���� -->
							<a href="#">
								<img src="img/movie/1_���긮��_���긮����_��_��_����.jpg" style="width: 200px; height: 300px;">
							</a>
						</div> <!-- �׸��� ������ ���� -->
						<div class="grid-item"> <!-- �׸��� ������ ���� -->
							<a href="#">
								<img src="img/movie/10_��_600����.jpg" style="width: 200px; height: 300px;">
							</a>
						</div> <!-- �׸��� ������ ���� -->
						<div class="grid-item"> <!-- �׸��� ������ ���� -->
							<a href="#">
								<img src="img/movie/100_��Ŀ.jpg" style="width: 200px; height: 300px;">
							</a>
						</div> <!-- �׸��� ������ ���� -->
					</div> <!-- �׸���׷� ���� -->
					<div class="grid-item-group"> <!-- �׸���׷� ���� -->
						<div class="grid-item"> <!-- �׸��� ������ ���� -->
							<a href="#">
								<img src="img/movie/101_������_������Ű.jpg" style="width: 200px; height: 300px;">
							</a>
						</div> <!-- �׸��� ������ ���� -->
						<div class="grid-item"> <!-- �׸��� ������ ���� -->
							<a href="#">
								<img src="img/movie/102_Ʈ����_���.jpg" style="width: 200px; height: 300px;">
							</a>
						</div> <!-- �׸��� ������ ���� -->
						<div class="grid-item"> <!-- �׸��� ������ ���� -->
							<a href="#">
								<img src="img/movie/103_��_������_����_��_��.jpg" style="width: 200px; height: 300px;">
							</a>
						</div> <!-- �׸��� ������ ���� -->
					</div> <!-- �׸��� �׷� ���� -->
				</div> <!-- Ÿ��Ʋ����Ʈ ���� -->
			</div> <!-- �׸��� ���� -->
		</div> <!-- �����̳� ���� -->
	<jsp:include page="/footer.jsp"/>
	</div>
</body>
</html>