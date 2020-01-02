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

<script defer src="validation.js"></script>
</head>
<body id="booking">
	<jsp:include page="header.jsp"></jsp:include><br/><br/>
	
	<div class="section">
		<div class="section-center">
			<div class="container">
				<div class="row">
					<div class="booking-form"  style="background: rgba(0.6, 0.6, 0, 0.6);color:white;align:center;margin:5px 120px 10px;width:800px">
					
					
						<form action="Registration" method="post" id="form">
						<h3 style="color:red">User name is taken by other users, try adifferent one</h3>
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
							<br/><br/>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>