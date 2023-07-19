package com;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Ex04ImgSelect
 */
@WebServlet("/Ex04ImgSelect")
public class Ex04ImgSelect extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out = response.getWriter();
		
		String select = request.getParameter("select");
		int num = Integer.parseInt(select);
		
		out.print("<html>");
		out.print("<body>");
		
		String path = "";
		
		if(num == 1) {
			path = "img/img-1.jpg";
		}else if(num == 2) {
			path = "img/img2.jpg";
		}else if(num == 3) {
			path = "img/img3.png";
		}
		out.print("<img src='"+path+"'>");
		
		out.print("<html>");
		out.print("<body>");
	}

}
