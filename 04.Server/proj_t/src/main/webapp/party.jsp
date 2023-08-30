<%@page import="com.model.MemberDTO"%>
<%@page import="com.google.gson.JsonObject"%>
<%@page import="com.google.gson.JsonArray"%>
<%@page import="com.google.gson.Gson"%>
<%@page import="com.model.P_MemberDTO"%>
<%@page import="com.model.P_MemberDAO"%>
<%@page import="java.time.LocalDate"%>
<%@page import="java.time.LocalDateTime"%>
<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.io.Console"%>
<%@page import="org.apache.catalina.tribes.membership.Membership"%>
<%@page import="com.model.MembershipDTO"%>
<%@page import="com.model.MembershipDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.model.PartyDTO"%>
<%@page import="com.model.PartyDAO"%>

<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style type="text/css">
	body {
		width: 100%;
	}
	header {
		text-align: center;
	}
	.title-left {
		padding : 10px;
	}
	.title-right {
		text-align: right;
		padding : 10px;	
	}
	.grid {
		display: grid;
		grid-template-columns: repeat(4, 1fr);
		grid-gap: 10px;
	}
	.item {
		border: 1px solid black;
		padding: 10px;
		text-align: center;
		cursor: pointer;
	}
</style>
<link href="https://cdn.jsdelivr.net/npm/reset-css@5.0.2/reset.min.css" rel="stylesheet">
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
</head>
<body>
	<% 
		request.setCharacterEncoding("EUC-KR");
	%>
	<header>
		<div style="padding:10px;">
			<h1>��Ƽ�Խ���</h1>
		</div>		
	</header>
	
	<main>
		<div id="wrap">
			<section class="title-wrap">
                <div class="title-left">
                    <div class="title"><a >����</a></div>
                </div>
                <div class="title-right">
                    <div class="title">
                        <a href="partyCreate.jsp">��Ƽ�����</a>
                    </div>
                </div>
            </section>
		</div>
		<form action="partyDetail.jsp" method="get">
		<div class="grid">
			<%
				PartyDAO dao = new PartyDAO();
				MembershipDAO mdao = new MembershipDAO();
				P_MemberDAO pmdao = new P_MemberDAO();
				
				Gson gson = new Gson();
				ArrayList<PartyDTO> list = dao.select();
				//list �� ��� ��ü��  json ���·� ����� key-value
				//����� �� json ��ü�� jsonArray �� ����ֱ�
				JsonArray json_list = new JsonArray();
				
				for(PartyDTO party : list){
					JsonObject jsonObject = new JsonObject();
					jsonObject.addProperty("no", party.getNo());
					jsonObject.addProperty("id", party.getId());
					jsonObject.addProperty("p_no", party.getP_no());
					jsonObject.addProperty("start_date", party.getStart_Date());
					jsonObject.addProperty("period", party.getPeriod());
					jsonObject.addProperty("post_date", party.getPost_Date());
					
					json_list.add(jsonObject);
				}
				
				ArrayList<MembershipDTO> mlist = mdao.select();
				JsonArray json_mlist = new JsonArray();
				
				for(MembershipDTO membership : mlist){
					JsonObject jsonObject = new JsonObject();
					jsonObject.addProperty("no", membership.getNo());
					jsonObject.addProperty("name", membership.getName());
					jsonObject.addProperty("title", membership.getTitle());
					jsonObject.addProperty("price", membership.getPrice());
					jsonObject.addProperty("share", membership.getShare());
					
					json_mlist.add(jsonObject);
				}
				int no = 0;
				for(int i=0;i<list.size();i++){
					PartyDTO party = list.get(i);
					int count = pmdao.selCount(party.getNo()).size();
			%>
			<div class="item" onclick="goToDetails('<%=party.getNo() %>')">
				<p><%=mlist.get(party.getP_no()-1).getName() %></p>
				<p><%=mlist.get(party.getP_no()-1).getTitle() %></p>
				<p>���� : <%=mlist.get(party.getP_no()-1).getPrice() %>��</p>
				<p>�����ο� : <%=mlist.get(party.getP_no()-1).getShare() %>��</p>
				<%
					// LocalDateTime���� ��ȯ
					DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
					LocalDateTime dateTime = LocalDateTime.parse(party.getStart_Date(), formatter);
	
					// LocalDate�� ��ȯ (��¥ �κи� ��������)
					LocalDate date = dateTime.toLocalDate();
				%>
				<p>������: <%=date %></p>
				<%
					// 4���� ���ϱ�
					LocalDate result = date.plusMonths(party.getPeriod());
				%>
				<p><%=party.getPeriod() %>����</p>
				<p>������: <%=result %> </p>
				<p>�����ο� : <%=count %>��</p>
			</div>
			<%
				}
			%>
		</div>
		</form>
		<%
			
			MemberDTO info = (MemberDTO) session.getAttribute("info");
			String id = (info != null) ? info.getId() : null;
		%>
		<script>
		    function goToDetails(no) {
		    	var on_id = '<%=id %>';
		    	var on_no = no;
		    	
		    	$.ajax({
					url : "onclickEntry",
					type : "GET",
					data : {
						id : on_id,
						no : on_no
					},
					dataType : "JSON",
					success : function(result){
						console.log(result);
						
						var entryCon = result[0]; // ��������
						var pCheck = result[1]; // �����ο�Ȯ��
						var enterCheck = result[2]; // �����ο���
						
						if(pCheck > enterCheck){
				    		window.location.href = "partyDetail.jsp?no=" + no;
				    	}else{
				    		if(entryCon > 0){
				    			window.location.href = "partyDetail.jsp?no=" + no;
				    		}else{
				    			alert("�����ο��� �����Ǿ����ϴ�.");
				    		}
				    	}
					},
					error : function(e){
						console.log(e);
					}
				});
		    	
		    	
		    
		    } // function ����
		</script>
		
	</main>
</body>
</html>