package com.ServletFunction;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Connection.DatabaseConnection;

@WebServlet("/AddUser")
public class AddUser extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// Retrieving values from the frontend

		String email = request.getParameter("userid");
		String password = request.getParameter("password");

		// Creating Session
		HttpSession hs = request.getSession();

		// Inserting all values inside the database
		try {
			// Connecting database connection and querying in the database
			ResultSet rs=DatabaseConnection.getResultFromSqlQuery("select * from login where userid='"+email+"'");
			if(rs.next()==false) {
				int addCustomer = DatabaseConnection
						.insertUpdateFromSqlQuery("insert into login(userid,password)values('"+email+"','"+password+"')");

				// If customer registered successfully
				if (addCustomer > 0) {
					String message = "Customer register successfully.";
					// Passing message via session.
					hs.setAttribute("success-message", message);
					// Sending response back to the user/customer
					response.sendRedirect("Login.jsp");
				} else {
					// If customer fails to register
					String message = "Customer registration fail";
					// Passing message via session.
					hs.setAttribute("fail-message", message);
					// Sending response back to the user/customer
					response.sendRedirect("Register.jsp");
				}
				
			}else {
				response.sendRedirect("RegisteredEx.jsp");
			}
			
		} catch (Exception ex) {
			ex.printStackTrace();
		}
	}

}
