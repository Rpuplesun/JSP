package com.koreait.web.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Calc")
public class Calc extends HttpServlet {
	
	/*
	 * 20220530 lcw - 사용자 요청에 의해 사용하지 않게됨
	 * */
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("doGet 요청");
		doProcess(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("doPost호출");
		doProcess(req, resp);
	}
	
	// 공통메서드로 따로 관리
	protected void doProcess(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		int num1 = Integer.parseInt(req.getParameter("num1"));
		int num2 = Integer.parseInt(req.getParameter("num2"));
		
		PrintWriter out = resp.getWriter();
		out.println("<html><body>" + (num1+num2) + "</body></html>");
	}
}









