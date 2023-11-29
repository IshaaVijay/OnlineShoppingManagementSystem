<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insufficient Balance</title>

<style>
        body {
            font-family: Arial, sans-serif;
            background-image: url('https://static.vecteezy.com/system/resources/previews/003/337/480/original/insufficient-balance-illustration-concept-free-vector.jpg');

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
	<div class="container">
		<h1>Insufficient Balance</h1>
		<p>Your account does not have sufficient balance to complete this transaction.</p>
		<a href="Home.jsp" class="btn-back">Go to Home Page</a>
	</div>
</body>

</html>