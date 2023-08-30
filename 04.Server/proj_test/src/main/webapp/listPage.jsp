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
	
	/* ������ ��Ÿ�� */
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
        /* ������ �ݱ� */
</style>
<body>
	<div> <!-- ��ü ���� -->
		<div> <!-- ���� -->
			<div class="hrbar"> <!-- hr�� ���� -->
				<div class="navbar_hr"> <!-- ȸ�� �� -->
					<a href="#" class="navbar_hr_login">�α���</a>
					<a href="#" class="navbar_hr_join">ȸ������</a>
				</div> <!-- ȸ�� ���� -->
			</div> <!-- hr�� ���� -->
			<div class="navbar"> <!-- �׺���̼� �� -->
				<div class="navbar_logo"> <!-- �ΰ� �� -->
					<a href="#">
					<img class="logo" src="img/logo.png" width="120px" height="60px">
					</a>
				</div> <!-- �ΰ� ���� -->
				<div class="navbar_wrapper"> <!-- ��� ���� ��-->
					<a href="#" class="navbar_btn_home">��ȭ�˻� Ȩ</a>
					<a href="#" class="navbar_btn_">�ú���ġ</a>
					<a href="#" class="navbar_btn_">�����Խ���</a>
					<div class="navbar_search"> <!-- �˻� â -->
						<div class="search"> <!-- �˻�â �е� -->
							<div class="search-container">
						        <i class="fas fa-search search-icon"></i>
						        <input type="text" id="searchInput" placeholder="��ȭ �Ǵ� TV���α׷� �˻�">
						    </div>
						</div> <!-- �˻� â �е� ���� -->
					</div> <!-- �˻� â �ݱ� -->
				</div> <!-- ��� ���� �ݱ� -->
			</div> <!-- �׺���̼� ���� -->
		</div> <!-- ���� ���� -->
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
	</div> <!-- ��ü ���� -->
</body>
</html>