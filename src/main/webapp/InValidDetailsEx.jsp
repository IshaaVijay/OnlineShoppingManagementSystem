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
            background-image: url('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSpFuePdcZLKnyM1Umi8oQN6rJhVBrgdUnv9IH-09l-oJZiKxHPaub8HrF24neOgS8qGBM&usqp=CAU');
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
            font-family: Arial, sans-serif; /* Choose your preferred font-family */
        }

        /* Create a container for the content and center it */
        .container {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh; /* Adjust as needed to center vertically */
            padding: 20px;
        }

        /* Style the image */
        .image {
            max-width: 50%;
            height: 50vh;
        }

        /* Style the text */
        .text {
            max-width: 45%;
            text-align: left;
            padding: 20px;
        }

        /* Style the button */
        .button {
            display: block;
            padding: 10px 15px;
            background-color: black; /* Blue button color (you can change this) */
            color: white;
            border: none;
            cursor: pointer;
            text-decoration: none; /* Remove underline for buttons */
            text-align: center;
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <div class="container">
        <img src="https://static.vecteezy.com/system/resources/previews/026/960/842/original/invalid-user-profile-important-caution-notice-of-personal-fake-account-internet-person-id-and-fraud-risk-data-alert-male-user-warning-icon-illustration-solid-glyph-style-eps-10-vector.jpg" alt="Image" class="image">
        <div class="text">
            <h1><span style="color: black ">INVALID ACCOUNT DETAILS!!</span></h1>
            <p>We haven't found your account. Please provide valid details to proceed.</p>
            <a href="Home.jsp" class="button">Go to Home Page</a>
        </div>
    </div>
</body>
</html>