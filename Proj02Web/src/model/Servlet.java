package model;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Servlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		PrintWriter out = response.getWriter();
		out.println("<html><body>");
		out.println("<h1>My HTML Body</h1>");
	
		out.println("<H1>碩文救我<H1>");
		out.println("<H1>00000000000<H1>");
		out.println("<H1>00000000000<H1>");
		out.println("<H1>00000000000<H1>");
		
		out.println("<H1>碩文救我<H1>");out.println("<H1>碩文救我<H1>");out.println("<H1>碩文救我<H1>");out.println("<H1>碩文救我<H1>");out.println("<H1>碩文救我<H1>");out.println("<H1>碩文救我<H1>");out.println("<H1>碩文救我<H1>");out.println("<H1>碩文救我<H1>");
		out.println("<H1>碩文救我<H1>");out.println("<H1>碩文救我<H1>");
		out.println("<H1>碩文救我<H1>");out.println("<H1>碩文救我<H1>");
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		this.doPost(request, response);
	}

}
