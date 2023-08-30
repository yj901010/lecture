<%@page import="java.util.ArrayList"%>
<%@page import="com.model.MembershipDTO"%>
<%@page import="com.model.MembershipDAO"%>
<%@page import="com.model.PartyDTO"%>
<%@page import="com.model.PartyDAO"%>
<%@page import="java.time.LocalDate"%>
<%@page import="java.time.LocalDateTime"%>
<%@page import="java.time.format.DateTimeFormatter"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<style>
        body {
            font-family: Arial, sans-serif;
            line-height: 1.6;
            margin: 20px;
        }
        h1 {
            text-align: center;
            margin-bottom: 20px;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            border: 1px solid #ddd;
        }
        th, td {
            padding: 8px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }
        .bin {
        	padding: 10px;
        }
    </style>
<body>
	<%
		// Get the 'no' parameter from the URL
	    int no = Integer.parseInt(request.getParameter("no"));
	%>
	<h1>Party Details</h1>
	<div style="border='1'; text-align:right;">
		<a href="DeletePartyMemberService?no=<%=no %>">파티삭제</a>
	</div>
    <% 

        // Retrieve party details from the database based on the partyNo
        PartyDAO dao = new PartyDAO();
        MembershipDAO mdao = new MembershipDAO();
        MembershipDTO membership = null;
        
        ArrayList<PartyDTO> list = dao.select();
		ArrayList<MembershipDTO> mlist = mdao.select();
		
		for(int i=0;i<list.size();i++){ 
			PartyDTO party = list.get(i);
    %>
			<% if(party.getNo() == no){ %>
    <table>
        <tr>
            <th>플랫폼</th>
            <td><%=mlist.get(party.getP_no()-1).getName() %></td>
        </tr>
        <tr>
            <th>요금제</th>
            <td><%=mlist.get(party.getP_no()-1).getTitle() %></td>
        </tr>
        <tr>
            <th>가격</th>
            <td><%=mlist.get(party.getP_no()-1).getPrice() %>원</td>
        </tr>
		<tr>
            <th>공유인원</th>
            <td><%=mlist.get(party.getP_no()-1).getShare() %>명</td>
        </tr>

        <% 
            // LocalDateTime으로 변환
            DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
            LocalDateTime dateTime = LocalDateTime.parse(party.getStart_Date(), formatter);
    
            // LocalDate로 변환 (날짜 부분만 가져오기)
            LocalDate date = dateTime.toLocalDate();

            // 4달을 더하기
            LocalDate result = date.plusMonths(party.getPeriod());
        %>
        <tr>
            <th>시작일</th>
            <td><%=date %></td>
        </tr>
        <tr>
            <th>시작일</th>
            <td><%=party.getPeriod() %>개월</td>
        </tr>
        <tr>
            <th>종료일</th>
            <td><%=result %></td>
        </tr>
    </table>
    
    		<%
			}
				}
			%>
			<div class="bin">
			</div>
			
			<table>
				<td><a href="EnterPartyService?no=<%=no %>">파티참가</a></td>
				<td><a href="ExitPartyService?no=<%=no %>">파티탈퇴</a></td>
			</table>
</body>
</html>