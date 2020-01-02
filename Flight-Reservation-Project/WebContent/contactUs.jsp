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

</head>
<body >
<!-- Navigation bar -->
	<section id="nav-bar">
		<nav class="navbar navbar-expand-lg navbar-light ">
			<a class="navbar-brand" href="#"><img src="logo.png"></a>
			<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarNav">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item ">
						<a class="nav-link" href="#">HOME </a>
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
	<div id="booking" class="section">
		<div class="container">
				<div class="row">
					<div class="booking-form" style="background: rgba(0.6, 0.6, 0, 0.6);color:white;align:center;margin:5px 100px; position:relative; width:800px">
						<h1>Fill the request form and we will get back to you soon</h1>
						<form action="contact1" method="post">

							<div class="form-group">
								<label for="uname">First Name:</label> <input type="text"
									class="form-control" id="name" placeholder="Name" name="name"
									required>
							</div>

							<div class="form-group">
								<label for="uname">Email:</label> <input type="email"
									class="form-control" id="email" placeholder="email"
									name="email" required>
							</div>

							<div class="form-group">
								<label for="uname">Comments and suggestions::</label>
								<textarea name="comment" class="form-control" required>comment</textarea>
							</div>


							<button type="submit" class="btn btn-primary">Submit</button>
						</form>


						 <label>We can be reached at:</label> 
						<address>
							Hab flight project.<br> Pembina, Winnipeg, Canada<br>
							204-730-....<br> habtamu@gmail.com<br> CA
						</address>
					</div>
				</div>
			</div>
		</div>




	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>