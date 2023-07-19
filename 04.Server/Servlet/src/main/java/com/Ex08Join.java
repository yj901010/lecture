package com;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Ex08Join
 */
@WebServlet("/Ex08Join")
public class Ex08Join extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("EUC-KR");
		
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String tel = request.getParameter("tel");
		String gender = request.getParameter("gender");
		String country = request.getParameter("country");
		String birthday = request.getParameter("birthday");
		String color = request.getParameter("color");
		String hobby[] = request.getParameterValues("hobby");
		String talk = request.getParameter("talk");
        
		PrintWriter out = response.getWriter();
		out.print("<html>");
		out.print("<body>");
		
		out.print("<p>ID: " + id + "</p>");
        out.print("<p>NAME: " + name + "</p>");
        out.print("<p>EMAIL: " + email + "</p>");
        out.print("<p>TEL: " + tel + "</p>");
        out.print("<p>GENDER: " + gender + "</p>");
        out.print("<p>COUNTRY: " + country + "</p>");
        out.print("<p>BIRTHDAY: " + birthday + "</p>");
        out.print("<p>COLOR: " + color + "</p>");
        out.print("HOBBY: ");
        for(int i=0;i<hobby.length;i++) {
        	out.print(hobby[i]);
        }
        out.print("<p>TALK: " + talk + "</p>");
		
		out.print("<html>");
		out.print("<body>");
		
		
        
        
	}

}
