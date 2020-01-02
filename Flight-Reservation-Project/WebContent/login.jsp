<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
	
	<div id="booking" class="section" >
		<div class="container col-md-8 col-md-offset-3" style="overflow: auto">
		<br/><br/>
			<h1>Login Form</h1>
			<form action="login" method="post">

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
				<a href='registration.jsp' class='btn btn-success' style="margin-left:80px">Signup</a>
				<a href='flight.jsp' class='btn btn-success' style="margin-left:80px">Admin</a>
				
			</form>
		</div>
		
</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
