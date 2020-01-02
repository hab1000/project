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
						<a class="nav-link" href="profile.jsp">Profile </a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="booked.jsp">Booked Flight</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="cancel.jsp">Cancel flight</a>
					</li>
					
					<li class="nav-item">
					<a class="nav-link "  href="book.jsp">FLIGHT SCHEDULE</a>
					</li>
					
					<li class="nav-item">
				<a href="login.jsp" class="nav-link " >Logout</a>
				</li>
				</ul>
			</div>
		</nav>
	</section>
	<div class="section">
		<div class="section-center">
			<div class="container"
				style="background: rgba(0.6, 0.6, 0, 0.6); padding: 40px; color: white">
				<div class="row" class="booking-form"
					style="padding: 20px; position: relative; margin: 5px 100px; width: 800px">
					<div class="row">

						<form method="post" action="book6">
							<h3>Enter Email and Reservation number to Cancel Booked Flights </h3>
							<div class="row">
								<div class="col-sm-12" class="form-group">
									<label> email:</label><br /> <input type="email" name="ema11"
										required><br /> <br />
								</div>
							</div>
							
						<div class="row">
								<div class="col-sm-12" class="form-group">
									<label> Ticket Number:</label><br /> <input type="text" name="ticket"
										required><br /> <br />
								</div>
							</div>

							<div class="row">
								<div class="col-sm-12" class="form-group">

									<button type="submit">Cancel</button>
								</div>
							</div>
						</form>


					</div>
				</div>
			</div>
		</div>
	</div>



	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>