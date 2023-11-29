<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Image Page</title>
    <style>
        /* Reset some default browser styles */
        body {
            background-image: url('https://wallpapers.com/images/featured/gray-zymh0wu3fylayofb.jpg');
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
            height: 100vh;
        }

        /* Create a sub-container for text and center it */
        .content {
            text-align: center;
            padding: 20px;
        }

        /* Style the image */
        .image {
            max-width: 50%;
            height: auto;
        }

        /* Style the button */
        .button {
            display: block;
            padding: 10px 20px;
            background-color: #0A8AA9; /* Blue button color (you can change this) */
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
        <div class="content">
        	<h2><span style="color: black; font-weight: bold;">PRODUCT QUANTITY OUT OF RANGE!!</span></h2>
            <img src="https://static.thenounproject.com/png/710646-200.png" alt="Image" class="image">
            <a href="Products.jsp" class="button">View Products</a>
        </div>
    </div>
</body>
</html>
