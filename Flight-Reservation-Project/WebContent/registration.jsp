<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Flight Booking Form</title>

<link href="https://fonts.googleapis.com/css?family=PT+Sans:400"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">


<link rel="stylesheet" type="text/css" href="style.css">

<link type="text/css" rel="stylesheet" href="home.css" />

<script defer src="validation.js"></script>
</head>
<body>
<section id="nav-bar">
		<nav class="navbar navbar-expand-lg navbar-light ">
			<a class="navbar-brand" href="#"><img src="logo.png"></a>
			<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarNav">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item ">
						<a class="nav-link" href="home1.jsp">HOME </a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="login.jsp">LOGIN</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="contactUs.jsp">CONTACT US</a>
					</li>
					<li class="nav-item">
						<a class="nav-link " href="home.jsp">FLIGHT SCHEDULE</a>
					</li>
				</ul>
			</div>
		</nav>
	</section>
	<div class="section" id="booking">
			<div class="container" class="booking-form" style="background: rgba(0.6, 0.6, 0, 0.6);align:center;width:800px">
				
					
						<form action="Registration" method="post" id="form">
						
							<h4 style="color: white">Registration</h4>
							<div class="form-group">
								<label for="uname" style="color: white">User Name:</label> <input
									type="text" class="form-control" id="username"
									placeholder="User Name" name="username" required>
							</div>

							<div class="form-group">
								<label for="uname" style="color: white">Name:</label> <input
									type="text" class="form-control" id="name" placeholder="Name"
									name="name" required>
							</div>

							<div class="form-group">
								<label for="uname" style="color: white">Email:</label> <input
									type="email" class="form-control" id="email"
									placeholder="Email" name="email" required>
							</div>

							<div class="form-group">
								<label for="uname" style="color: white">Password:</label> <input
									type="password" class="form-control" id="pass1"
									 name="password1" required>
							</div>

							<div class="form-group">
								<label for="uname" style="color: white">Re-Type
									Password:</label> <input type="password" class="form-control"
									id="pass2" name="password2" required>
							</div>
							

							<button type="submit" class="btn btn-primary">Submit</button>
							<h3 id="error" style="color:red"></h3>
							
						</form>
					</div>
				</div>
			

	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>