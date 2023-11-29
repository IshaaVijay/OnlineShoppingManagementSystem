<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%  session.invalidate(); // Invalidate the session to log the user out    
    response.sendRedirect("Login.jsp"); // Redirect to the login page%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
</head>
<body>

</body>
</html>