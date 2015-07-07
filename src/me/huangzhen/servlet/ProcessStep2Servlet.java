package me.huangzhen.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.websocket.Session;

import me.huangzhen.domain.Customer;
import sun.java2d.loops.CustomComponent;

@WebServlet("/processStep2")
public class ProcessStep2Servlet extends HttpServlet
{
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException
	{
		
		System.out.println( " ProcessStep2Servlet's doPost " );
		
		//1.��ȡ�������
		
		String username = request.getParameter("username");
		String address = request.getParameter("address");
		
		String cardType = request.getParameter("cardType");
		String cardNum = request.getParameter("cardNum");
		
		Customer customer = new Customer(username, address, cardType, cardNum);
		
		//2. ������������� session ��
		request.getSession().setAttribute("customer", customer);
		
		//3. �����ض�����һ��ҳ��
		response.sendRedirect(request.getContextPath()+ "/shoppingcart/confirm.jsp");
		
		
		
	}

}
