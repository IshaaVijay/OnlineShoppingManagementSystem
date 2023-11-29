package com.ServletFunction;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Connection.DatabaseConnection;


@WebServlet("/UserLogin")
public class UserLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
	        throws ServletException, IOException {

	    //Getting all data from user/customer
	    String userid = request.getParameter("userid");
	    String password = request.getParameter("password");
	    HttpSession session = request.getSession();
	    
	    //Creating Session
	   
	    try {
	        //Creating Resultset
	        ResultSet resultset = null;
	        
	        //Query to check Login Details
	        resultset = DatabaseConnection.getResultFromSqlQuery("select * from login where userid='" + userid + "' && password='" + password + "'");
	        
	        //Checking whether the details of user are null or not
	        //response.setContentType("text/html");
	        PrintWriter out=response.getWriter();
	        
	        if (userid != null && password != null) {
	            if (resultset.next()) {
	            	System.out.println("false0");
	                //Storing the login details in session
	                //Redirecting response to the Home.jsp
	            	session.setAttribute("userid", userid);
	                response.sendRedirect("Products.jsp");
	            } else {
	                //If wrong credentials are entered
	            	System.out.println("false1");
	                String message = "You have enter wrong credentials";
	                
	                //Redirecting response to the customer-register.jsp
	                
	                response.sendRedirect("Login.jsp");
	                
	                
	                
	            }
	        } else {
	            //If username or password is empty or null
	        	System.out.println("false2");
	            String message = "User name or Password is null";
	           
	            //Redirecting response to the customer-login.jsp
	            response.sendRedirect("Login.jsp");
	        }

	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	}
	
}
