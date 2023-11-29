package com.ServletFunction;

import java.io.IOException;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Connection.DatabaseConnection;

@WebServlet("/AddToCart")
public class AddToCart extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// Retrieving values from the frontend
		
		HttpSession hs = request.getSession();
		
		String userid = (String) hs.getAttribute("userid");
		System.out.println(userid);
		int pid = Integer.parseInt(request.getParameter("pid"));
		System.out.println(pid);
		int quantity = Integer.parseInt(request.getParameter("quantity"));
		// Creating Session

		// Inserting all values inside the database
		try {
			ResultSet resultset = null;
			// Connecting database connection and querying in the database
			System.out.println(pid);

			resultset = DatabaseConnection
					.getResultFromSqlQuery("select p_quantity from product where pid= '" + pid + "'");
			resultset.next();
			if (resultset.getInt(1) >= quantity) {
				int addCustomer = DatabaseConnection
						.insertUpdateFromSqlQuery("insert into cart(userid,pid,quantity)values('" + userid + "','" + pid
								+ "','" + quantity + "')");
				//int leftOverStock = resultset.getInt(1) - quantity;
				//DatabaseConnection.insertUpdateFromSqlQuery(
					//	"update product set p_quantity = '" + leftOverStock + "' where pid = '" + pid+"'");
				response.sendRedirect("Products.jsp");
			} else if (resultset.getInt(1) == 0) {
				response.sendRedirect("OutOfStockEx.jsp");
			} else {
				response.sendRedirect("OutOfRngeEx.jsp");
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
	}

}
