<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<style>
	body{
		margin: 0;
		background: black;
	}
	.hrbar {
		top: 0;
		position: fixed;
		background: black;
  		width: 100%;
	}
	.navbar_hr {
		background: black;
		margin-top: 10px;
		padding: 10px;
		text-align: right;
	}
	.navbar {
		position: fixed; 
		background: black;
		left: 0;
		width: 100%;
		display: flex;
	}
	.navbar_wrapper {
		display: flex;
	}
	.navbar_hr a {
		color: #999C9F;
		text-decoration: none;
		padding-top: 10px;
		margin-right: 20px;
		font-size: 14px;
		white-space: nowrap;
	}
	.navbar_hr a:hover{
		color: #D9E8ED;
		cursor: pointer;
	}
	.navbar_hr a:active {
		font-weight: bold;
		color: #D9E8ED;
	}
	.navbar_wrapper a {
		color: #999C9F;
		text-decoration: none;
		padding-top: 30px;
		margin-right: 40px;
		font-size: 14px;
		white-space: nowrap;
	}
	.container {
		background : black;
		display : flex;
		overflow : auto; 
		margin-top: 50px;
		width : 100%;
	}
	.navbar_wrapper a:hover{
		color: #D9E8ED;
		cursor: pointer;
	}
	.navbar_wrapper a:active {
		font-weight: bold;
		color: #D9E8ED;
	}
	.search {
		padding: 15px;
		margin-top: 10px;
		width: 400px;
		height: 30px;
	}
	.search-container {
	    display: flex;
	    align-items: center;
	    background-color: #10161D;
	    display: flex;
	    padding-left: 10px;
	    border-radius: 5px;
	}
	.search-icon {
	    margin-right: 10px;
	    color: #999C9F;
	}
	
	input[type="text"] {
	    border: none;
	    background-color: #10161D;
	    width: 100%;
	    font-size: 12px;
	    padding: 8px;
	    color: white;
	    border-radius: 5px;
	}
	.logo{
		padding: 3px;
		margin-top: 2px;
		margin-right: 30px;
		margin-left: 20px;
	}
	.grid{
		display: grid;
		margin-top: 120px;
	}
	.grid-item-group {
	    display: grid;
	    grid-template-columns: repeat(3, 1fr);
	    grid-gap: 10px;
	}
	.grid-item {
		padding: 15px;
	}
	.grid-item a{
		border-radius: 5px;
		display: block;
	}
	
	/* 반응형 스타일 */
        @media screen and (max-width: 768px) {
		    .navbar_wrapper {
		        justify-content: center;
		        flex-wrap: wrap;
		    }
		
		    .search-container {
		        width: 100%;
		        justify-content: center;
		    }
		
		    .navbar {
		        flex-direction: column;
		        align-items: center;
		    }
		
		    .navbar_hr {
		        margin-top: 10px;
		    }
		
		    .search {
		        max-width: 100%;
		    }
		    .grid{
				margin-top: 180px;
			}
		}
        /* 반응형 닫기 */
</style>
<body>
	<div> <!-- 전체 열음 -->
		<div> <!-- 여백 -->
			<div class="hrbar"> <!-- hr바 열음 -->
				<div class="navbar_hr"> <!-- 회원 염 -->
					<a href="#" class="navbar_hr_login">로그인</a>
					<a href="#" class="navbar_hr_join">회원가입</a>
				</div> <!-- 회원 닫음 -->
			</div> <!-- hr바 닫음 -->
			<div class="navbar"> <!-- 네비게이션 염 -->
				<div class="navbar_logo"> <!-- 로고 염 -->
					<a href="#">
					<img class="logo" src="img/logo.png" width="120px" height="60px">
					</a>
				</div> <!-- 로고 닫음 -->
				<div class="navbar_wrapper"> <!-- 상단 본문 염-->
					<a href="#" class="navbar_btn_home">영화검색 홈</a>
					<a href="#" class="navbar_btn_">늘보더치</a>
					<a href="#" class="navbar_btn_">자유게시판</a>
					<div class="navbar_search"> <!-- 검색 창 -->
						<div class="search"> <!-- 검색창 패딩 -->
							<div class="search-container">
						        <i class="fas fa-search search-icon"></i>
						        <input type="text" id="searchInput" placeholder="영화 또는 TV프로그램 검색">
						    </div>
						</div> <!-- 검색 창 패딩 닫음 -->
					</div> <!-- 검색 창 닫기 -->
				</div> <!-- 상단 본문 닫기 -->
			</div> <!-- 네비게이션 닫음 -->
		</div> <!-- 여백 닫음 -->
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
	</div> <!-- 전체 닫음 -->
</body>
</html>