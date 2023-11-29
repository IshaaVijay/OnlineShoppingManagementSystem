<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="Connection.*"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Login</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>

#loginText {
  color: black;
  text-align: center;
  text-decoration:underline;
}
#submitButton {
  margin-left:165px;
}
#newUser {
  text-align:center;
}
input[type='password'],input[type='email']{
width: 100%;
padding: 10px;
border-radius: 3px;
border: 1px solid #ccc;
margin-top: 10px;
margin-bottom: 20px;
}
input[type='password']:focus,input[type='email']:focus{
border: 1px solid #5db6db;
box-shadow: 0 0 10px #b9eaff;
outline: none !important;
}
input[type='submit']{
background: rgb(39,160,210);
color: #fff;
border: none;
padding: 10px 20px;
cursor: pointer;
}

 

.main-login-form{
max-width: 400px;
margin: 0 auto;
margin-top:70px;
background: #f5f5f5c7;
padding: 20px 45px 20px 25px;
border-radius: 5px;
border: 1px solid #ccc;
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

<div class="main-login-form">			
<form action="UserLogin" method="POST">
<h1 id="loginText">Login</h1>
<label for="Username">Email</label>
<input type="email" name="userid" class="email" placeholder="Enter your email" required>
<label for="Password">Password</label>
<input type="password" name="password" class="password"  placeholder="Enter your password" required>
<input id="submitButton" name="submit" type="submit" value="Login">
<p id="newUser">New User? <a href="Register.jsp" >Create an account</a></p>
</form>
</div>

<div class="container">
    <a href="Home.jsp" class="view-products-button">Go to home</a>                   
</div>



</body>
</html>