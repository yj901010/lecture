package com.login;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LoginService
 */
@WebServlet("/LoginService")
public class LoginService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// 세션객체 생성하는 방법
		HttpSession session = request.getSession();
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		if(id.equals("test") && pw.equals("12345")) {
			session.setAttribute("id",id);
			
			// 서블릿에서 특정 폴더 내에 있는 HTML or JSP파일을 접근할 경우
			// '폴더명/파일명.확장자' 로 정의
			response.sendRedirect("ex05_login/main.jsp");
		}else {
			response.sendRedirect("ex05_login/loginForm.html");
		}
	}

}
