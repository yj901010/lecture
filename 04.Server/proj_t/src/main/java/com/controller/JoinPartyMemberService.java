package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.MemberDTO;
import com.model.P_MemberDAO;
import com.model.P_MemberDTO;
import com.model.PartyDTO;

@WebServlet("/JoinPartyMemberService")
public class JoinPartyMemberService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		MemberDTO info = (MemberDTO) session.getAttribute("info");
		String id = info.getId();
		
		P_MemberDAO dao = new P_MemberDAO();
		
		int no = Integer.parseInt(request.getParameter("no"));
		P_MemberDTO dto = new P_MemberDTO(no, id);
		
		int cnt = dao.PartyMemberJoin(dto);
		if(cnt > 0) {
			System.out.println("파티 멤버 성공");
			response.sendRedirect("party.jsp");
		}else {
			System.out.println("파티 멤버 실패");
		}
		
	}

}
