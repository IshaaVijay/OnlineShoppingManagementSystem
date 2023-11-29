<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Account Registered</title>
<style>
body {
            font-family: Arial, sans-serif;
            

        }

        .container {
            max-width: 400px;
            margin: 0 auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.2);
        }

        h1 {
            text-align: center;
            color: #ff0000;
        }

	   p {
            text-align: center;
        }
        #btn{
        width: fit-content;
        }


        .btn-back {
            display: block;
            margin: 20px auto;
            padding: 10px 20px;
            background-color: black;
            color: #fff;
            text-decoration: none;
            text-align: center;
            border-radius: 5px;
            transition: background-color 0.3s;
        }

	    .btn-back:hover {
            background-color: #0056b3;
        }
</style>
</head>
<body>
<p>You have already registered!</p>
<a id="btn" href="Login.jsp" class="btn-back">Login</a>
</body>
</html>