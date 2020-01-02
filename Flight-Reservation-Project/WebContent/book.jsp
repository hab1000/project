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

</head>
<body>
<%
				String name = (String) request.getAttribute("data");
				session.setAttribute("u3", name);
			%>
<section id="nav-bar">
		<nav class="navbar navbar-expand-lg navbar-light ">
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
					<a class="nav-link "  href="home2.jsp">FLIGHT SCHEDULE</a>
					</li>
					
					<li class="nav-item">
				<a href="login.jsp" class="nav-link " >Logout</a>
				</li>
				</ul>
			</div>
		</nav>
	</section>	
	<div class="row" id="booking">
			

		<div class="col-md-11">
			<div class="section">
				<div class="section-center">
					<div class="container">
						<div class="row">
							<div class="booking-form" style="background: rgba(0.6, 0.6, 0, 0.6);color:white;align:center;margin:5px 100px; position:relative; width:800px" id="demo"
									style="display: none;" class="booking-form">
								<form method="post" action="book1.jsp">
									<h3 style="color: white">
										Welcome
										</h3>
									<div class="form-group">
										<div class="form-checkbox">
											<label for="roundtrip"> <input type="radio"
												id="roundtrip" name="flight-type1"> <span></span>Roundtrip
											</label> <label for="one-way"> <input type="radio"
												id="one-way" name="flight-type2"> <span></span>Oneway
											</label>

										</div>
									</div>
									<div class="row">
										<div class="col-md-6">
											<div class="form-group">
												<label for="sel1">Source:</label> <select class="form-control"
											id="sel1" name="fromAirport">
											<option value="" selected="selected" disabled>Departure
												City</option>
											<option value="Winnipeg">Winnipeg,Canada</option>
											<option value="Toronto">Toronto, Canada</option>
											<option value="Edomonton">Edmonton, Canada</option>
											<option value="BC">BC, Canada</option>
											<option value="Quebec">Quebec, Canada</option>
											<option value="Ontario">Ontario, Canada</option>
										</select> <br>
											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group">
												<label for="sel1">Destination:</label> <select
											class="form-control" id="sel2" name="toAirport">
											<option value="" selected="selected" disabled>Arrival
												City</option>
											<option value="Winnipeg">Winnipeg,Canada</option>
											<option value="Toronto">Toronto, Canada</option>
											<option value="Edomonton">Edmonton, Canada</option>
											<option value="BC">BC, Canada</option>
											<option value="Quebec">Quebec, Canada</option>
											<option value="Ontario">Ontario, Canada</option>
										</select> <br>
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-md-4">
											<div class="form-group">
												<span class="form-label">Departure Date</span> <input
													class="form-control" type="date" name="departure_date"
													required>
											</div>
										</div>
										<div class="col-md-4">
											<div class="form-group">
												<span class="form-label">Arrival Date</span> <input
													class="form-control" type="date" name="arrival_date"
													required>
											</div>
										</div>
										<div class="col-md-4">
											<div class="form-group">
												<span class="form-label">Travel class</span> <select
													class="form-control" name="seat_type">
													<option>Economy</option>
													<option>Business</option>
													<option>Firstclass</option>
												</select> <span class="select-arrow"></span>
											</div>
										</div>
									</div>
									<div class="row">

										<div class="col-md-12">
											<div class="form-btn">
												<button type="submit" class="submit-btn">Book</button>
											</div>
										</div>
									</div>
								</form>

							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

	</div>

	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>