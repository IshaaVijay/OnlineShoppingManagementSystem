<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="Connection.*"%>
<%@ page import="java.sql.*"%>

<!DOCTYPE html>
<html lang="en">
<head>
<title>Register</title>
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

</style>
</head>
<body>        
<div class="main-login-form">            
<form action="AddUser" method="POST">
<h1 id="loginText">Register</h1>
<label for="userid">Email</label>
<input type="email" name="userid" class="email" placeholder="Enter your email" required>
<label for="Password">Password</label>
<input type="password" name="password" class="password"  placeholder="Enter your password" pattern=".{5,}"   required title="5 characters minimum">
<input id="submitButton" name="submit" type="submit" value="Register">

</form>
</div>
</body>
</html>