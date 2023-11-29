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

@WebServlet("/AcceptPayment")
public class AcceptPayment extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		//String userid = request.getParameter("userid");
		String card_no = request.getParameter("card_no");
		//String amount = request.getParameter("amount");
		String account_no = request.getParameter("account_no");
		String pin = request.getParameter("pin");
		HttpSession session = request.getSession();
		try {
			String userid=(String)session.getAttribute("userid");
			ResultSet resultset1 = null;
			ResultSet resultset2 = null;
			resultset1 = DatabaseConnection.getResultFromSqlQuery(
					"select * from account_detail where userid='" + userid + "' ");
			resultset2 = DatabaseConnection.getResultFromSqlQuery(
					"select sum(product.p_price*cart.quantity) from product inner join cart on product.pid=cart.pid");
			resultset1.next();
			resultset2.next();
			
			int balance=resultset1.getInt(3);

			int amount=resultset2.getInt(1);
			System.out.println(balance-amount);
			int leftOverAmt=balance-amount;
			if(resultset1.getInt(5)==Integer.parseInt(pin)&&resultset1.getInt(4)==Integer.parseInt(account_no)&& resultset1.getInt(2)==Integer.parseInt(card_no)) {
			if(leftOverAmt>=0 ) {
				int rs = DatabaseConnection.insertUpdateFromSqlQuery("update account_detail set amount='" + leftOverAmt + "' where userid='" + userid + "'");
				int j=DatabaseConnection.insertUpdateFromSqlQuery(
						"update product,cart set product.p_quantity =product.p_quantity-cart.quantity where product.pid = cart.pid");
				int z=DatabaseConnection.insertUpdateFromSqlQuery("delete from cart where userid='"+userid+"'");
				response.sendRedirect("OrderPlaced.jsp");
			}else if(leftOverAmt<0) {
				response.sendRedirect("InsufficientBalance.jsp");
			}else {
				response.sendRedirect("CheckOut1.jsp");
			}}else {
				response.sendRedirect("InValidDetailsEx.jsp");
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
			
			
//			if (userid != null && card_no != null &&amount!=0  && pin != null && account_no != null) {
//				if (resultset1.getInt(2) == Integer.parseInt(card_no)
//						&& resultset1.getInt(3) == Integer.parseInt(account_no)
//						&& resultset1.getInt(4) == Integer.parseInt(pin)
//						&& amount <= balance) {
//
//					int leftOverAmt = balance-amount;
//					System.out.println(leftOverAmt);
//					if (leftOverAmt >= 0) {
//						int rs = DatabaseConnection.insertUpdateFromSqlQuery(
//								"update account_detail set amount='" + leftOverAmt + "' where userid='" + userid + "'");
//        System.out.println("1");
//						response.sendRedirect("OrderPlaced.jsp");
//
//					} else {
//						System.out.println("2");
//						String message = "You have enter wrong credentials";
//						response.sendRedirect("CheckOut1.jsp");
//					}
//				} else {
//					System.out.println("3");
//					String message = "User name or Password is null";
//					response.sendRedirect("CheckOut1.jsp");
//				}
//			}
//			System.out.println("4");
//		} catch (Exception e) {
//
//			e.printStackTrace();

		
	}
}
	

