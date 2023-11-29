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
@WebServlet("/AddPaymentDetail")
public class AddPaymentDetail extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String userid = request.getParameter("userid");
		int card_no = Integer.parseInt(request.getParameter("card_no"));
		int account_no = Integer.parseInt(request.getParameter("account_no"));
		int pin = Integer.parseInt(request.getParameter("pin"));
		HttpSession hs = request.getSession();
		try
		{
			ResultSet resultset=DatabaseConnection.getResultFromSqlQuery("select * from account_detail where userid='"+userid+"'");
			if(resultset.next()==false) {
			int addCustomer = DatabaseConnection.insertUpdateFromSqlQuery("insert into account_detail(userid,card_no,account_no,pin)values('" + userid+ "','" + card_no + "','" + account_no + "','" + pin + "')");
			if (addCustomer > 0) {
				String message = "Customer register successfully.";
				hs.setAttribute("success-message", message);
				response.sendRedirect("CheckOut1.jsp");
			} else {
				String message = "Customer registration fail";
				hs.setAttribute("fail-message", message);
				response.sendRedirect("AccDet.jsp");
			}}
			else {
				response.sendRedirect("CheckOut1.jsp");
			}
		}catch(Exception ex)
		{
			ex.printStackTrace();
		}

	}
}