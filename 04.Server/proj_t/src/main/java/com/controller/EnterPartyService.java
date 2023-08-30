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

@WebServlet("/EnterPartyService")
public class EnterPartyService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		MemberDTO info = (MemberDTO) session.getAttribute("info");
		String id = info.getId();
		
		int no = Integer.parseInt(request.getParameter("no"));
		
		P_MemberDTO dto = new P_MemberDTO(no, id);
		P_MemberDAO dao = new P_MemberDAO();
		
		int check = dao.checkId(dto);
		
		if(check > 0) {
			System.out.println("이미 참가중");
			response.sendRedirect("party.jsp");
		}else {
			System.out.println("참가 가능");
			
			int cnt = dao.EnterParty(dto);
			
			if(cnt > 0) {
				System.out.println("파티 참가 성공");
				response.sendRedirect("party.jsp");
			}else {
				System.out.println("파티 참가 실패");
			}
		}
		
	}

}
