<%@page import="com.model.BoardFileDAO"%>
<%@page import="com.model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html dir="ltr" lang="en-US">
<head>

	<meta http-equiv="content-type" content="text/html; charset=utf-8" />
	<meta name="author" content="SemiColonWeb" />

	<!-- Stylesheets
	============================================= -->
	<link href="https://fonts.googleapis.com/css?family=Lato:300,400,400i,700|Poppins:300,400,500,600,700|PT+Serif:400,400i&display=swap" rel="stylesheet" type="text/css" />
	<link rel="stylesheet" href="css/bootstrap.css" type="text/css" />
	<link rel="stylesheet" href="style.css" type="text/css" />
	<link rel="stylesheet" href="css/dark.css" type="text/css" />
	<link rel="stylesheet" href="css/font-icons.css" type="text/css" />
	<link rel="stylesheet" href="css/animate.css" type="text/css" />
	<link rel="stylesheet" href="css/magnific-popup.css" type="text/css" />

	<link rel="stylesheet" href="css/custom.css" type="text/css" />
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<style>
        select.box {
            width: 100%;
            height: 50px;
            box-sizing: border-box;
            margin-left: 5px;
            padding: 5px 0 5px 10px;
            border-radius: 4px;
            border: 1px solid #d9d6d6;
            color: #383838;
            background-color: #ffffff;
            font-family: 'Montserrat', 'Pretendard', sans-serif;
        }

        option {
        font-size: 16px;
        }

        .info .box#domain-list option {
        font-size: 14px;
        background-color: #ffffff;
        }

        .info#info__birth select::-webkit-scrollbar {
        width: 10px;
        }

        .info#info__birth select::-webkit-scrollbar-thumb {
        background-color: #b6b6b6;
        border-radius: 3px;
        }

        .info#info__birth select::-webkit-scrollbar-track {
        background-color: #ebe9e9;
        border-radius: 6px;
        }
        /* SECTION - BIRTH */
        .info#info__birth {
        display: flex;
        }

        .info#info__birth select {
        margin-left : 7px;
        }

        .info#info__birth select:first-child {
        margin-left : 0px;
        }
    </style>

	<!-- Document Title
	============================================= -->
	<title>Login - Layout 3 | Canvas</title>

</head>

<body class="stretched">
	<!-- Document Wrapper
	============================================= -->

		<!-- Content
		============================================= -->
		<section id="content">
			<div class="content-wrap">
				<div class="row justify-content-center">
					<div class="col-xl-6 col-lg-8 text-center mb-5" style="margin:0px 0 0 0; padding:0px;">
						<a href="#"><h3 style="color:#FFD966; margin: 0 0 0 0;" class="h1 fw-bold mb-3">Modification</h3></a>
					</div>
				<div class="container clearfix">
					<div class="accordion accordion-lg mx-auto mb-0 clearfix" style="max-width: 550px;">

						<div class="accordion-header">
							<div class="accordion-icon">
								<i class="accordion-closed icon-user4"></i>
								<i class="accordion-open icon-ok-sign"></i>
							</div>
							<div class="accordion-title">
								���� ����
							</div>
						</div>
							<% 
							MemberDTO info = (MemberDTO)session.getAttribute("info");
							BoardFileDAO dao = new BoardFileDAO();
							 %>
						<div class="accordion-content clearfix">
							<form id="register-form" name="register-form" class="row mb-0" action="UpdateService" method="post" enctype="multipart/form-data">
								<div class="col-12 form-group">
									<label for="register-form-profile">������ ����</label>
									<br>
									<%  
										if(info.getFile_no() == 0){ %>
										<img src='images/icons/avatar.jpg' width=100px height=100px>
										
									<%
										}else{	%>
									<img src='upload/<%=dao.findName(info.getFile_no())%>' width=100px height=100px>
									<%
										}
									%>
									<input type="file" id="register-form-profile" name="upload" value="" class="form-control" />
								</div>
								<div class="col-12 form-group">
									<label for="register-form-password">��й�ȣ</label>
									<input type="password" id="register-form-password" name="pw" value="<%=info.getPw() %>" class="form-control" />
								</div>

								<div class="col-12 form-group">
									<label for="register-form-phone">�޴���</label>
									<input type="text" id="register-form-phone" name="phone" value="<%=info.getPhone() %>" class="form-control" />
								</div>


								<div class="col-12 form-group">
									<label for="login-form-username">Email</label>
									<input type="email" id="login-form-username" name="email" value="<%=info.getEmail()%>" class="form-control not-dark" />
								</div>

								<div class="col-12 form-group">
									<label for="login-form-password">Nick</label>
									<input type="text" id="login-form-password" name="nick" value="<%=info.getNick() %>" class="form-control not-dark" />
								</div>
								<div class="row">
									<div class="col-12 form-group">
										<button class="button button-3d button-black m-0" id="register-form-submit" name="register-form-submit" value="register">���� ����</button>
									</div>
								</div>
							</form>
						</div>

					</div>

				</div>
			</div>
		</section><!-- #content end -->
		
	</div><!-- #wrapper end -->

	<!-- Go To Top
	============================================= -->
	<div id="gotoTop" class="icon-angle-up"></div>

	<!-- JavaScripts
	============================================= -->
	<script src="js/jquery.js"></script>
	<script src="js/plugins.min.js"></script>

	<!-- Footer Scripts
	============================================= -->
	<script src="js/functions.js"></script>

</body>
</html>