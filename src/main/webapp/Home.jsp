<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="Connection.*"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <title>Shopping Website</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            background-image: url('home.png');
            background-size: cover;
            background-position: center;
            background-attachment: fixed;
            font-family: Arial, sans-serif;
        }
         #welcome{
            float: left;
            display: block;
            color: white;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
        }

        /* Navigation Bar Styles */
        .navbar {
      margin-bottom: 50px;
      border-radius: 0;
    }

        .navbar a {
            float: left;
            display: block;
            color: white;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
        }

        .navbar a:hover {
            background-color: #ddd;
            color: black;
        }
        
        .view-products-button {
  display: inline-block;
  padding: 10px 20px;
  background-color: black; /* Button background color */
  color: #fff; /* Button text color */
  text-decoration: none; /* Remove underline on the link */
  border-radius: 5px; /* Rounded corners */
  font-weight: bold;
  position: absolute;
  left:45%;
  margin-top: 165px;
 
  
}

 .view-products-button:hover {
  background-color: white; /* Change color on hover */
  color: black;
}
    </style>
</head>
<body>
   <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="Home.jsp">Home</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><% String username = (String) session.getAttribute("userid");             
           if (username != null && !username.isEmpty()) { %>             
           <li id="welcome">Welcome, <%= username.substring(0,username.indexOf("@")) %></li>             
           <li><a href="Logout.jsp">Logout</a></li><% } 
           else { %>             
           <li><a href="Login.jsp">Login</a></li><% 
           } %>     
           </li>
      </ul>
    </div>
  </div>
</nav>
<div class="container">
       <%  if (username != null && !username.isEmpty()) { %> 
              <a href="Products.jsp" class="view-products-button">View Products!</a>
           <% } 
           else { %>             
           <a href="Login.jsp"  class="view-products-button">Login to view products</a><% 
           } %>

</div> 

</body>
</html>
