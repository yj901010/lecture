package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.MemberDAO;
import com.model.MemberDTO;

@WebServlet("/UpdateService")
public class UpdateService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("EUC-KR");
		
		HttpSession session = request.getSession();
		MemberDTO info = (MemberDTO)session.getAttribute("info");
		
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String birth = request.getParameter("birth");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		String nick = request.getParameter("nick");
		String gender = request.getParameter("gender");
		
		MemberDTO changeInfo = new MemberDTO(info.getId(),pw,name,birth,phone,email,nick,gender);
		MemberDAO dao = new MemberDAO();
		
		int cnt = dao.update(changeInfo);
	
		if(cnt > 0) {
			// 세션영역에 수정된 회원정보를 저장, main.jsp로 이동
			session.setAttribute("info", changeInfo);
			response.sendRedirect("main.jsp");
		}else {
			response.sendRedirect("update.jsp");
		}
	
	
	}

}
