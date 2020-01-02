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


<!--  <link type="text/css" rel="stylesheet" href="bootstrap.min.css" />-->

<link type="text/css" rel="stylesheet" href="home.css" />
<link rel="stylesheet" type="text/css" href="style.css">

<script defer src="validation.js"></script>
</head>
<body id="booking">
	<section id="nav-bar">
		<nav class="navbar navbar-expand-lg navbar-light " style="background: #fff">
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

	<div class="section">
		<div class="section-center">
			<div class="container">
				<div class="row">
					<div class="booking-form" style="background: rgba(0.6, 0.6, 0, 0.6);color:white;align:center;margin:-20% 10% 0% 10%;width:800px">
						<form action="login1" method="post">
							<h4 style="color: white">User name does not exist, please
								login again or register</h4>
							<div class="form-group">
								<label for="uname">User Name:</label> <input type="text"
									class="form-control" id="username" placeholder="User Name"
									name="username" required>
							</div>

							<div class="form-group">
								<label for="uname">Password:</label> <input type="password"
									class="form-control" id="password" placeholder="Password"
									name="password" required>
							</div>


							<button type="submit" class="btn btn-success">Login</button>
							<a href='registration.jsp' class='btn btn-success'
								style="margin-left: 80px">Signup</a>
						</form>

					</div>
				</div>
			</div>
		</div>
	</div>

	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>