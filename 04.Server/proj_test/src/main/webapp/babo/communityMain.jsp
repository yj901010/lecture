<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>Insert title here</title>
<!-- Custom fonts for this template -->
<link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet"
	type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">

<!-- Custom styles for this template -->
<link href="css/sb-admin-2.min.css" rel="stylesheet">

<!-- Custom styles for this page -->
<link href="vendor/datatables/dataTables.bootstrap4.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
<link rel="stylesheet" type="text/css" href="navbar-style.css">
</head>
<style>
body {
	margin: 0;
	width: 100%;
}

.box-container {
	display: flex;
	justify-content: center;
	margin: 5px;
}

.box {
	border: 1px solid #ccc;
	width: 260px;
	height: 40px;
	display: flex;
	justify-content: center; /* 가로 가운데 정렬 */
	align-items: center; /* 세로 가운데 정렬 */
}

.all {
	margin-top: 140px;
}
.row {
	display: flex;
}
</style>
<body>
	<div class="app">
		<div class="hrbar">
			<!-- hr바 열음 -->
			<div class="navbar_hr">
				<!-- 회원 염 -->
				<a href="#" class="navbar_hr_login">로그인</a> <a href="#"
					class="navbar_hr_join">회원가입</a>
			</div>
			<!-- 회원 닫음 -->
		</div>
		<!-- hr바 닫음 -->

		<div class="navbar">
			<!-- 네비게이션 염 -->
			<div class="navbar_logo">
				<!-- 로고 염 -->
				<a href="#"> <img class="logo" src="img/logo.png" width="190px"
					height="70px">
				</a>
			</div>
			<!-- 로고 닫음 -->
			<div class="navbar_wrapper">
				<!-- 상단 본문 염-->
				<a href="#" class="navbar_btn_home">영화검색 홈</a> <a href="#"
					class="navbar_btn_">늘보더치</a> <a href="#" class="navbar_btn_">자유게시판</a>
				<div class="navbar_search">
					<!-- 검색 창 -->
					<div class="search">
						<!-- 검색창 패딩 -->
						<div class="search-container">
							<i class="fas fa-search search-icon"></i> <input type="text"
								id="searchInput" placeholder="영화 또는 TV프로그램 검색">
						</div>
					</div>
					<!-- 검색 창 패딩 닫음 -->
				</div>
				<!-- 검색 창 닫기 -->
			</div>
			<!-- 상단 본문 닫기 -->
		</div>
		<!-- 네비게이션 닫음 -->
	</div>

	<div class="all">
		<div class="box-container">
			<div class="box">
				<span class="commu"><b>COMMUNITY</b></span>
			</div>
		</div>
	</div>
	<!-- Page Wrapper -->
	<div id="wrapper">

		<!-- Content Wrapper -->
		<div id="content-wrapper" class="d-flex flex-column">

			<!-- Main Content -->
			<div id="content">

				<!-- Begin Page Content -->
				<div class="container-fluid">

					<!-- DataTales Example -->
					<div class="card shadow mb-4">
						<div class="card-body">
							<div class="table-responsive">
								<table class="table table-bordered" id="dataTable" width="100%"
									cellspacing="0">
									<thead>
										<tr>
											<th>NO</th>
											<th>제목</th>
											<th>작성자</th>
											<th>추천 수</th>
											<th>작성시간</th>
											<th>첨부사진 여부</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>Tiger Nixon</td>
											<td>System Architect</td>
											<td>Edinburgh</td>
											<td>61</td>
											<td>2011/04/25</td>
											<td>$320,800</td>
										</tr>
										<tr>
											<td>Donna Snider</td>
											<td>Customer Support</td>
											<td>New York</td>
											<td>27</td>
											<td>2011/01/25</td>
											<td>$112,000</td>
										</tr>
									</tbody>
								</table>
							</div>
							<div class="row">
								<div class="col-sm-12 col-md-5">
									<div class="dataTables_info" id="dataTable_info" role="status"
										aria-live="polite">Showing 1 to 10 of 57 entries</div>
								</div>
								<div class="col-sm-12 col-md-7 float-right position-fixed" style="top: 20px; right: 20px;">
									<div class="dataTables_paginate paging_simple_numbers"
										id="dataTable_paginate">
										<ul class="pagination">
											<li class="paginate_button page-item previous disabled"
												id="dataTable_previous"><a href="#"
												aria-controls="dataTable" data-dt-idx="0" tabindex="0"
												class="page-link">Previous</a></li>
											<li class="paginate_button page-item active"><a href="#"
												aria-controls="dataTable" data-dt-idx="1" tabindex="0"
												class="page-link">1</a></li>
											<li class="paginate_button page-item "><a href="#"
												aria-controls="dataTable" data-dt-idx="2" tabindex="0"
												class="page-link">2</a></li>
											<li class="paginate_button page-item "><a href="#"
												aria-controls="dataTable" data-dt-idx="3" tabindex="0"
												class="page-link">3</a></li>
											<li class="paginate_button page-item "><a href="#"
												aria-controls="dataTable" data-dt-idx="4" tabindex="0"
												class="page-link">4</a></li>
											<li class="paginate_button page-item "><a href="#"
												aria-controls="dataTable" data-dt-idx="5" tabindex="0"
												class="page-link">5</a></li>
											<li class="paginate_button page-item "><a href="#"
												aria-controls="dataTable" data-dt-idx="6" tabindex="0"
												class="page-link">6</a></li>
											<li class="paginate_button page-item next"
												id="dataTable_next"><a href="#"
												aria-controls="dataTable" data-dt-idx="7" tabindex="0"
												class="page-link">Next</a></li>
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>

				</div>
				<!-- /.container-fluid -->

			</div>
			<!-- End of Main Content -->

		</div>
		<!-- End of Content Wrapper -->

	</div>
	<!-- End of Page Wrapper -->
	<!-- Footer -->
	<jsp:include page="/footer.jsp" />
	<!-- End of Footer -->

	<!-- Bootstrap core JavaScript-->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Core plugin JavaScript-->
	<script src="vendor/jquery-easing/jquery.easing.min.js"></script>

	<!-- Custom scripts for all pages-->
	<script src="js/sb-admin-2.min.js"></script>

	<!-- Page level plugins -->
	<script src="vendor/datatables/jquery.dataTables.min.js"></script>
	<script src="vendor/datatables/dataTables.bootstrap4.min.js"></script>

	<!-- Page level custom scripts -->
	<script src="js/demo/datatables-demo.js"></script>
</body>
</html>