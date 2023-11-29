<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="Connection.*"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Products Page</title>
  <meta charset="utf-8">
  <meta charset="ISO-8859-1">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <style>
    /* Remove the navbar's default rounded borders and increase the bottom margin */ 
    .navbar {
      margin-bottom: 50px;
      border-radius: 0;
    }
    #welcome{
            float: left;
            display: block;
            color: white;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
        }
    
    /* Remove the jumbotron's default bottom margin */ 
     .jumbotron {
      margin-bottom: 0;
    }
   
    /* Add a gray background color and some padding to the footer */
    footer {
      background-color: #f2f2f2;
      padding: 25px;
    }
  </style>
</head>
<body>
 


<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
     <!-- <a class="navbar-brand" href="#">Logo</a> --> 
    </div>
    
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li><a href="Home.jsp">Home</a></li>
        <li class="active"><a href="#">Products</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><% String username = (String) session.getAttribute("userid");             
           if (username != null && !username.isEmpty()) { %>             
           <li id="welcome">Hi, <%= username.substring(0,username.indexOf("@")) %></li>             
           <% } 
           else { %>             
           <li><a href="Login.jsp">Login</a></li><% 
           } %>     
           </li>
        <li  class="active"><a href="Cart.jsp"><span class="glyphicon glyphicon-shopping-cart"></span> Cart</a></li>
      </ul>
    </div>
  </div>
</nav>

<!-- <div class="jumbotron">
  <div class="container text-center">
    <h1>Online Store</h1>      
  </div>
</div>  -->

<div class="container">    
  <div class="row">
    <div class="col-sm-4">
      <div class="panel panel-default">
        <div class="panel-heading" align="center">Stylish Suede Ankle Boots</div>
        <div class="panel-body"><img src="https://i.pinimg.com/564x/d2/0b/ee/d20bee9462fc8f90503528a13d74478d.jpg" class="img-responsive" style="width:100%" alt="Image"></div>
        <div class="panel-heading" align="center">Rs. 2,300</div>
        
        <form action = "AddToCart" method="post">
        	<div align="center">
        	<label for="Quantity">Quantity</label>
        	<input type="number" min="0" name="quantity" class="quantity" placeholder="Add quantity" required>
        	</div>
        <input type = "hidden" name="pid" value="2501">
        <button type="submit" class="btn btn-secondary" style = "width:100%">Add to cart</button>
		</form>
      </div>
    </div>
    
    <div class="col-sm-4"> 
      <div class="panel panel-default">
        <div class="panel-heading" align="center">Sporty Running Shoes</div>
        <div class="panel-body"><img src="https://i.pinimg.com/564x/9e/aa/e6/9eaae670ea5483a56479606e54f142a2.jpg" class="img-responsive" style="width:100%" alt="Image"></div>
        <div class="panel-heading" align="center">Rs. 4,000</div>
      
        <form action="AddToCart" method="post">
       
        	<div align="center">
        	<label for="Quantity">Quantity</label>
			<input type="number" min="0" name="quantity" class="quantity" placeholder="Add quantity" required>
        	</div>
         <input type = "hidden" name="pid" value="2502">
         <button type="submit" class="btn btn-dark" style = "width:100%">Add to cart</button>
         </form>
           
      </div>
    </div>
    
    <div class="col-sm-4"> 
      <div class="panel panel-default">
        <div class="panel-heading" align="center">Modern Athletic Shoes</div>
        <div class="panel-body"><img src="https://i.pinimg.com/564x/0b/ee/cf/0beecfdb854223b72570d0b146a5fa52.jpg" class="img-responsive" style="width:100%" alt="Image"></div>
        <div class="panel-heading" align="center">Rs. 4,700</div>
        
        <form action="AddToCart" method="post">
        	<div align="center">
        	<label for="Quantity">Quantity</label>
			<input type="number" min="0" name="quantity" class="quantity" placeholder="Add quantity" required>
        	</div>
        <input type = "hidden" name="pid" value="2503">
        <button type="submit" class="btn btn-dark" style = "width:100%">Add to cart</button>
        </form>
         
    </div>
  </div>
</div><br>

<div class="container">    
  <div class="row">
    <div class="col-sm-4">
      <div class="panel panel-default">
        <div class="panel-heading" align="center">Casual Everyday Flats</div>
        <div class="panel-body"><img src="https://i.pinimg.com/564x/ca/a0/1a/caa01a87a269b24410da393e06ba23ca.jpg" class="img-responsive" style="width:100%" alt="Image"></div>
        <div class="panel-heading" align="center">Rs. 1,899</div>
        
        <form action="AddToCart" method="post">
        	<div align="center">
        	<label for="Quantity">Quantity</label>
			<input type="number" min="0" name="quantity" class="quantity" placeholder="Add quantity" required>
        	</div>
        <input type = "hidden" name="pid" value="2504">
        <button type="submit" class="btn btn-dark" style = "width:100%">Add to cart</button>
        </form>
         
      </div>
    </div>
    
    <div class="col-sm-4"> 
      <div class="panel panel-default">
        <div class="panel-heading" align="center">Chic Ankle Boots</div>
        <div class="panel-body"><img src="https://i.pinimg.com/564x/d2/ad/44/d2ad444d2549ea28d478d88da85206b0.jpg" class="img-responsive" style="width:100%" alt="Image"></div>
        <div class="panel-heading" align="center">Rs. 2,999</div>
        <form action="AddToCart" method="post">
        	<div align="center">
        	<label for="Quantity">Quantity</label>
			<input type="number" min="0" name="quantity" class="quantity" placeholder="Add quantity" required>
        	</div>
        <input type = "hidden" name="pid" value="2505">
        <button type="submit" class="btn btn-dark" style = "width:100%">Add to cart</button>
        </form>
         
      </div>
    </div>
    
    <div class="col-sm-4"> 
      <div class="ppanel panel-default">
        <div class="panel-heading" align="center">Trendy High-Top Sneakers</div>
        <div class="panel-body"><img src="https://i.pinimg.com/564x/0f/46/e4/0f46e40e104db20d9fcefda8d8d96312.jpg" class="img-responsive" style="width:100%" alt="Image"></div>
        <div class="panel-heading" align="center">Rs. 6,000</div>
        
        <form action="AddToCart" method="post">
         	<div align="center">
        	<label for="Quantity">Quantity</label>
			<input type="number" min="0" name="quantity" class="quantity" placeholder="Add quantity" required>
        	</div>
        <input type = "hidden" name="pid" value="2506">
        <button type="submit" class="btn btn-dark" style = "width:100%">Add to cart</button>       
        </form>
        
    </div>
  </div>
</div><br><br>

<div class="container">    
  <div class="row">
    <div class="col-sm-4">
      <div class="panel panel-default">
        <div class="panel-heading" align="center">Elegant Velvet High Heels</div>
        <!-- <div class="panel-body"><img src="https://i.pinimg.com/564x/f7/8b/a7/f78ba737d3ff283152ca49400696fcd7.jpg" class="img-responsive" style="width:100%" alt="Image"></div>
         -->    
         <div class="panel-body"><img src="https://i.pinimg.com/564x/34/8f/27/348f27c50cc41a61b367b292de2b3f23.jpg" class="img-responsive" style="width:100%" alt="Image"></div>
        <div class="panel-heading" align="center">Rs. 4,999</div>
        <form action="AddToCart" method="post">
        	<div align="center">
        	<label for="Quantity">Quantity</label>
			<input type="number" min="0" name="quantity" class="quantity" placeholder="Add quantity" required>
        	</div>
        <input type = "hidden" name="pid" value="2507">
        <button type="submit" class="btn btn-dark" style = "width:100%">Add to cart</button>
        </form>
         
      </div>
    </div>
    
    <div class="col-sm-4"> 
      <div class="panel panel-default">
        <div class="panel-heading" align="center">Classic Leather Loafers</div>
        <div class="panel-body"><img src="https://i.pinimg.com/564x/ef/45/3f/ef453f0f312bc3e67c2a2484f2d8ea6c.jpg" class="img-responsive" style="width:100%" alt="Image"></div>
        <div class="panel-heading" align="center">Rs. 3,000</div>
        <form action="AddToCart" method="post">
        	<div align="center">
        	<label for="Quantity">Quantity</label>
			<input type="number" min="0" name="quantity" class="quantity" placeholder="Add quantity" required>
        	</div>
        <input type = "hidden" name="pid" value="2508">
        <button type="submit" class="btn btn-dark" style = "width:100%">Add to cart</button>
        </form>
         
      </div>
    </div>
    
    <div class="col-sm-4"> 
      <div class="panel panel-default">
        <div class="panel-heading" align="center">Summer Beach Sandals</div>
        <div class="panel-body"><img src="https://i.pinimg.com/564x/98/65/3f/98653fceec8a80b88fc9547a98954591.jpg" class="img-responsive" style="width:100%" alt="Image"></div>
        <div class="panel-heading" align="center">Rs. 1,399</div>
        <form action="AddToCart" method="post">
        	<div align="center">
        	<label for="Quantity">Quantity</label>
			<input type="number" min="0" name="quantity" class="quantity" placeholder="Add quantity" required>
        	</div>
        <input type = "hidden" name="pid" value="2509">
        <button type="submit" class="btn btn-dark" style = "width:100%">Add to cart</button>
        </form>
         
      </div>
    </div>
  </div>
</div><br><br>


<footer class="container-fluid text-center">
  <p>@Online Store Copyright</p>  
  <!-- <form class="form-inline">Get deals:
    <input type="email" class="form-control" size="50" placeholder="Email Address">
    <button type="button" class="btn btn-danger">Sign Up</button>
  </form> -->
</footer>

</body>
</html>
