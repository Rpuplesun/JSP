package com.koreait.web.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/add")
public class AddServlet extends HttpServlet {
	
	@Override
	protected void service(HttpServletRequest arg0, HttpServletResponse arg1) throws ServletException, IOException {
		
        String xStr = arg0.getParameter("x");
        String yStr = arg0.getParameter("y");
        String op = arg0.getParameter("operator");
        

        int x = 0;
        int y = 0;

        if(xStr != null && !xStr.equals("")) {
            x = Integer.parseInt(xStr);
        }

        if(yStr != null && !yStr.equals("")) {
            y= Integer.parseInt(yStr); 
        }
		
		int result = x + y;
		
		PrintWriter out = arg1.getWriter();
		out.println("result is " + result);
		
	}
	
}












