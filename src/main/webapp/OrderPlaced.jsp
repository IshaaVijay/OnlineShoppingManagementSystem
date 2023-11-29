<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="Connection.*"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Order Confirmation</title>

    <!-- Add Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">

    <!-- Add custom CSS for styling -->
    <%
	String userid = (String)session.getAttribute("userid");
	int rs=DatabaseConnection.insertUpdateFromSqlQuery("delete from cart where userid='"+userid+"'");
%>
    <style>
        body {
            background-image: url('https://i.pinimg.com/originals/cf/27/40/cf27407b91ac13f076c2ed0a94039fc4.jpg');
            background-size: cover;
            background-repeat: no-repeat;
            background-attachment: fixed;
            background-position: center;
            color: #fff;
        }

        .confirmation-dialog {
            background-color: rgba(0, 0, 0, 0.8);
            padding: 20px;
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            text-align: center;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        /* Style for the checkmark image */
        .checkmark-image {
            width: 48px; /* Adjust the width as needed */
            height: 49px; /* Adjust the height as needed */
            margin-left: 10px; /* Add margin to separate the image from text */
        }
    </style>
</head>
<body>

    <!-- Centered Confirmation Dialog -->
    <div class="container confirmation-dialog">
        <h1>Your Order is Confirmed</h1>
        <img class="checkmark-image" src="https://png.pngtree.com/png-clipart/20201208/original/pngtree-check-mark-vector-icon-png-image_5552269.jpg" alt="Checkmark Image">
    </div>

    <!-- Bootstrap JS (Optional) -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@1.16.0/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
