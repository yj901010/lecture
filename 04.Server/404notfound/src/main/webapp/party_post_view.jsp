<%@page import="com.model.P_MemberDTO"%>
<%@page import="com.model.P_MemberDAO"%>
<%@page import="com.model.MemberDAO"%>
<%@page import="com.model.MemberDTO"%>
<%@page import="java.time.LocalDate"%>
<%@page import="java.time.LocalDateTime"%>
<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="com.model.PartyDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.model.MembershipDTO"%>
<%@page import="com.model.MembershipDAO"%>
<%@page import="com.model.PartyDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html dir="ltr" lang="en-US">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

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

	<!-- Document Title
	============================================= -->
	
	
</head>
<body class="stretched">
	
	<%
		// Get the 'no' parameter from the URL
	    int no = Integer.parseInt(request.getParameter("no"));
	%>
	
	<!-- Document Wrapper
	============================================= -->
	<% 

        // Retrieve party details from the database based on the partyNo
        PartyDAO dao = new PartyDAO();
        MembershipDAO mdao = new MembershipDAO();
        
        ArrayList<PartyDTO> list = dao.select();
		ArrayList<MembershipDTO> mlist = mdao.select();
		
		ArrayList<PartyDTO> datelist = new ArrayList<PartyDTO>();
    %>
    
    <%
		MemberDTO info = (MemberDTO) session.getAttribute("info");
		String id = (info != null) ? info.getId() : null;
		P_MemberDAO pdao = new P_MemberDAO();
		P_MemberDTO pdto = new P_MemberDTO(no, id);
	%>
	<div id="wrapper" class="clearfix">

		<!-- Content
		============================================= -->
		<section id="content">
			<div style="padding-top:7em; height:800px;"class="content-wrap">
				<div class="container clearfix">
					<div style="height: 100px;" class="row justify-content-center">
						<div class="col-xl-6 col-lg-8 text-center mb-5">
							<h3 style="color:#FFD966"class="h1 fw-bold mb-3">플랫폼명 / 요금제</h3>
						</div>

					</div>
					<div style="padding: 0 0 3em 0" class="row justify-content-center">

						<div class="col-lg-8 col-xl-7">
							<div class="p-5 rounded-5 shadow-lg">
								<div class="d-flex flex-column flex-sm-row mb-4">
									<img src="images/logo_<%=mdao.membershipsel(no).get(0).getName() %>.png" width="120" height="70">
									<div>
										<h3 class="mb-0"><%=mdao.membershipsel(no).get(0).getName() %></h3>
										<p style="margin-bottom:0px"><%=mdao.membershipsel(no).get(0).getTitle() %></p>
										<p><%=mdao.membershipsel(no).get(0).getPrice() %>원</p>
									</div>
									<div class="ms-sm-auto align-bottom">
										<% int temp = mdao.membershipsel(no).get(0).getPrice() / mdao.membershipsel(no).get(0).getShare(); %>
										<h3 style="margin-bottom:0px"><%=temp %>원 <small class="text-smaller text-black-50">/ 월</small></h3>
										<p style="margin-bottom:0px">공유인원 : <%=mdao.membershipsel(no).get(0).getShare() %>명</p>
										<%
											// LocalDateTime으로 변환
											DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
											LocalDateTime dateTime = LocalDateTime.parse(dao.date(no).get(0).getStart_Date(), formatter);
							
											// LocalDate로 변환 (날짜 부분만 가져오기)
											LocalDate date = dateTime.toLocalDate();
											LocalDate result = date.plusMonths(dao.date(no).get(0).getPeriod());
										%>
										<p><%=date %> ~ <%=result %></p>
									</div>
								</div>
									<h1 class="col-12 display-3 mb-0">
										<img src="images/party_leader_neulbo.svg" alt="Icon" width="60" class="mb-4">
										<%
											for(int j=0;j<dao.enterCheck(no)-1;j++){
												%>
												<img src="images/party_participation_neulbo.svg" alt="Icon" width="60" class="mb-4">
											<%}
											int ltemp = mdao.membershipsel(no).get(0).getShare() - dao.enterCheck(no);
											for(int k=0;k<ltemp;k++){ %>
												<img src="images/party_empty_neulbo.svg" alt="Icon" width="60" class="mb-4">
											<%	}
										%>
									</h1>
									
									<div>
									
										<div>
											<% if(pdao.checkId(pdto) > 0){%>
											<a href="#" class="btn py-2 px-3 bg-color text-white">참가중</a>
											<%} else{ %>
											<% if(id !=null){ %>
											<a href="EnterPartyService?no=<%=no %>" class="btn py-2 px-3 bg-color text-white">참가 신청</a>
											<%} else{ %>
											<a href="login_join.jsp" class="btn py-2 px-3 bg-color text-white">참가 신청</a>
											<%} %>
											<%} %>
											<a href="party_post_main.jsp" class="btn py-2 px-3 btn-outline-danger ms-1">취소</a>
											<% if(pdao.checkId(pdto) > 0){%>
											<% if(pdao.selCount(no).size() == 1){ %>
											<a href="DeletePartyMemberService?no=<%=no %>" style="float:right;" class="btn py-2 px-3 bg-color text-white">탈퇴</a>
											<%}else{ %>
											<a href="ExitPartyService?no=<%=no %>" style="float:right;" class="btn py-2 px-3 bg-color text-white">탈퇴</a>
											<%	}
											} %>
										</div>
									</div>
								<!-- 모집인원수 - 참가인원수로 내림차순 정렬-->
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
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