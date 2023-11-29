<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="Connection.*"%>
<%@ page import="java.sql.*"%>
<%@page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<title>Cart</title>
<meta charset="utf-8">
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" />

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
	<script type="text/javascript">
    
</script>
<style type="text/css">
.table tbody td {
	vertical-align: middle;
	text-align:center;
}

.btn-incre, .btn-decre {
	box-shadow: none;
	font-size: 25px;
}

.navbar {
	margin-bottom: 25px;
	border-radius: 0;
}


</style>
</head>
<body>
	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#myNavbar">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<!-- <a class="navbar-brand" href="#">Logo</a> -->
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav">
					<li><a href="Home.jsp">Home</a></li>
					<li class="active"><a href="Products.jsp">Products</a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li> <% String username = (String) session.getAttribute("userid");             
           if (username != null && !username.isEmpty()) { %>             
           <li id="welcome">Hi, <%= username.substring(0,username.indexOf("@")) %></li><%} %>             
           </li>
		 </ul>
			</div>
		</div>
	</nav>

	<%
	//String userid = (String)session.getAttribute("userid");
	ResultSet rs=DatabaseConnection.getResultFromSqlQuery("select sum(product.p_price*cart.quantity) from product,cart where product.pid=cart.pid ");
	//ResultSet rs=DatabaseConnection.getResultFromSqlQuery("select * from cart"); 
	rs.next();
	//while(rs.next()){
		//System.out.println(rs.getInt(2));
	//}
	
	int cart_price=rs.getInt(1);
	System.out.println(cart_price);
	session.setAttribute("cart_price",cart_price);
	%>
 
	
	<div class="container my-3">
		<div class="d-flex py-3">
			<h3>
				Total Price : Rs.<%=cart_price %></h3>
		</div>
		<form action="CheckOut1.jsp" method="post"><input type="hidden" name="cart_price" onkeyup="EnableDisable(this)" value="<%=cart_price %>"><button type="submit" class="btn btn-danger">Checkout</button></a></form>
		<table class="table table-light">
			<thead >
				<tr>
					<th style="text-align: center" scope="col">Product ID</th>
					<th style="text-align: center" scope="col">Name</th>
					<th style="text-align: center" scope="col">Price</th>
					<th style="text-align: center" scope="col">Quantity</th>
					<th style="text-align: center" scope="col">Cancel</th>
				</tr>
			</thead>
			
			<tbody>
			    <%
				ResultSet rs2=DatabaseConnection.getResultFromSqlQuery("select product.pid,product.pname,(product.p_price*cart.quantity) as total_amount,cart.quantity from product,cart where product.pid=cart.pid ");
			    ArrayList<ArrayList<Integer>> list = new ArrayList<>();
				while(rs2.next()){
					
					int pid=rs2.getInt(1);
					String name= rs2.getString(2);
					int total=rs2.getInt(3);
					int quantity= rs2.getInt(4);
					
				%>
					<tr>
					<td><%=pid%></td>
					<td><%=name%></td>
					<td><%=total%></td>
					<td align="center"><%=quantity%></td>
					<td><form action="RemoveProductFromCart" method="post"><input type = "hidden" name="pid" value="<%=pid%>"><button type="submit" class="btn btn-sm btn-danger">Remove</button></form></td>
					
				    
				</tr>
				<% }%>
				
				
			</tbody>
		</table>
	</div>
</body>

</html>


