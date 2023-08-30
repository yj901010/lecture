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
	<link rel="stylesheet" type="text/css" href="navbar-style.css">
<body>
	<header class="app">
        <nav class="hrbar"> <!-- hr바 열음 -->
            <div class="navbar_hr"> <!-- 회원 염 -->
                <a href="#" class="navbar_hr_login">로그인</a>
                <a href="#" class="navbar_hr_join">회원가입</a>
            </div> <!-- 회원 닫음 -->
        </nav> <!-- hr바 닫음 -->
        
        <nav class="navbar"> <!-- 네비게이션 염 -->
            <div class="navbar_logo"> <!-- 로고 염 -->
                <a href="#">
                <img class="logo" src="img/logo.png" width="190px" height="70px">
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
        </nav> <!-- 네비게이션 닫음 -->
	</header>
</body>
</html>