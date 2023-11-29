<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="Connection.*"%>
<%@ page import="java.sql.*"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Image Page</title>
    <style>
        /* Reset some default browser styles */
        
        body {
            
            background-size: cover;
            background-repeat: no-repeat;
            background-attachment: fixed;
            background-position: center;
            color: #fff;
        }
        
        
        body, html {
            margin: 0;
            padding: 0;
            background-color: white; /* Set the background color to white */
        }

        /* Center the image and button */
        .container {
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh; /* Adjust as needed to center vertically */
        }

        /* Style the image */
        .image {
            max-width: 100%;
            height: auto;
            margin-bottom: 20px; /* Add some space between the image and button */
        }

        /* Style the button */
        .button {
            padding: 10px 20px;
            background-color: black; /* Blue button color (you can change this) */
            color: white;
            border: none;
            cursor: pointer;
        }
    </style>
</head>
<body>
    <div class="container">
        <img src="https://t3.ftcdn.net/jpg/04/30/38/40/360_F_430384041_1G6UymaKYOJBE7wx5QmSHBeTJInkcQJT.jpg" alt="Image" class="image">
        <button class="button" onclick="window.location.href='Products.jsp'">Go to Products</button>
    </div>
</body>
</html>
