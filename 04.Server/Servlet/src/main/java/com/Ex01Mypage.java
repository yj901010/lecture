package com;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Ex01Mypage
 */
@WebServlet("/Ex01Mypage")
public class Ex01Mypage extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("Hello World!!!");
		
		// 페이지를 요청한 client의 ip 획득
		String ip = request.getRemoteAddr();
		System.out.println(ip);
		
		// 응답객체에  인코딩 적용
		response.setCharacterEncoding("EUC-KR");
		
		// Web Page Text 및 Tag를 사용하기 위해서는 out객체 필요
		PrintWriter out = response.getWriter();

		if(ip.equals("192.168.0.122") ) {
			out.print("<html>");
			out.print("<body>");
			out.print("박병관님 환영합니다.");
			out.print("<img src='nugury.jpg'>");
			out.print("<html>");
			out.print("<body>");
		}else if(ip.equals("192.168.0.59")) {
			out.print("<html>");
			out.print("<body>");
			out.print("<h1>백형준님 환영합니다.</h1>");
			out.print("<img src='nugury.jpg'>");
			out.print("<html>");
			out.print("<body>");
		}else {
			out.print("<html>");
			out.print("<body>");
			out.print("바이~");
			out.print("<img src='nugury.jpg'>");
			out.print("<html>");
			out.print("<body>");
		}
        
	}

}
