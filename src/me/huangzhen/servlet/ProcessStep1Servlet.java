package me.huangzhen.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

@WebServlet("/processStep1")
public class ProcessStep1Servlet extends HttpServlet
{
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException
	{
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException
	{
		//1. 获取图书的信息
		String[] books = request.getParameterValues("book");
		
		//
		request.getSession().setAttribute("books", books);
		
		//2. 重定向至step2.jsp
	    response.sendRedirect(request.getContextPath()+ "/shoppingcart/step2.jsp");
		
		
	}

}
