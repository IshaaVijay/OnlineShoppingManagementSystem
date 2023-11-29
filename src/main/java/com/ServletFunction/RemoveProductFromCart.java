package com.ServletFunction;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Connection.DatabaseConnection;


@WebServlet("/RemoveProductFromCart")
public class RemoveProductFromCart extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//System.out.println("Hello");
		int pid=Integer.parseInt(request.getParameter("pid"));
		//System.out.println(pid);
		
		int i=DatabaseConnection.insertUpdateFromSqlQuery("delete from cart where pid='"+pid+"'");
		response.sendRedirect("Cart.jsp");
	}

}
