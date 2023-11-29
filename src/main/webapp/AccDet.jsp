<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Payment Details</title>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
<style>
 input::-webkit-outer-spin-button,
        input::-webkit-inner-spin-button {
               -webkit-appearance: none;
                margin: 0;
        }
 
        input[type=number] {
            -moz-appearance: textfield;
        }
</style>
</head>
<body>
<div class="container mt-5">
<div class="row justify-content-center">
<div class="col-md-6">
<div class="card">
<div class="card-header">
                        Payment Details
</div>
<div class="card-body">
<form action ="AddPaymentDetail" method = "post">
<div class="form-group">
<label for="accountNumber">Email ID</label>
<input readonly class="form-control" name="userid" id="accountNumber" value="<%=session.getAttribute("userid")%>">
</div>
<div class="form-group">
<label for="accountNumber">Account Number</label>
<input type="number" class="form-control" name="account_no" id="accountNumber" placeholder="Account Number">
</div>
<div class="form-group">
<label for="cardNumber">Card Number</label>
<input type="number" class="form-control" name="card_no" id="cardNumber" placeholder="Card Number">
</div>

<div class="form-group">
<label for="pin">PIN</label>
<input type="password" class="form-control" name="pin" id="pin" placeholder="PIN" minlength="4" required title="4 digits minimum">
</div>

<button type="submit" class="btn btn-primary">Proceed</button>
</form>
</div>
</div>
</div>
</div>
</div>

 

    <!-- Bootstrap JS and jQuery -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>


