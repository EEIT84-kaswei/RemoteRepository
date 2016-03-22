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


		out.println("因排版問題所以我放棄了br>");
		out.println("因排版問題所以我放棄了br>");
		out.println("因排版問題所以我放棄了br>");
		out.println("因排版問題所以我放棄了br>");
		out.println("因排版問題所以我放棄了br>");
		out.println("因排版問題所以我放棄了br>");
		out.println("因排版問題所以我放棄了br>");
		out.println("因排版問題所以我放棄了br>");
		out.println("因排版問題所以我放棄了br>");
		out.println("因排版問題所以我放棄了br>");
		out.println("因排版問題所以我放棄了br>");
		out.println("因排版問題所以我放棄了br>");
		out.println("因排版問題所以我放棄了br>");
		out.println("因排版問題所以我放棄了br>");
		out.println("因排版問題所以我放棄了br>");
		out.println("因排版問題所以我放棄了br>");
		out.println("因排版問題所以我放棄了br>");
		out.println("因排版問題所以我放棄了br>");
		out.println("因排版問題所以我放棄了br>");
		out.println("因排版問題所以我放棄了br>");
		out.println("因排版問題所以我放棄了br>");
		out.println("因排版問題所以我放棄了br>");
		out.println("因排版問題所以我放棄了br>");
		out.println("因排版問題所以我放棄了br>");

		out.println("</body></html>");

	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		this.doPost(request, response);
	}

}
