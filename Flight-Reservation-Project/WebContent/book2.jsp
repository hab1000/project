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
<body id="booking" class="section" class="section-center">
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
					<a class="nav-link "  href="home2.jsp">FLIGHT SCHEDULE</a>
					</li>
					
					<li class="nav-item">
				<a href="login.jsp" class="nav-link " >Logout</a>
				</li>
				</ul>
			</div>
		</nav>
	</section>
	<div id="booking">
		<div>
			<div class="container" style="color: white">
				<div class="row" style="padding: 40px; position: relative; margin-bottom: 40px; text-align: center">
					<div class="booking-form" style="background: rgba(0.6, 0.6, 0, 0.6);color:white;align:center;margin:5px 120px 10px;width:800px">
						<form action="book" method="post">
							<h3>Complete the form to finish booking:</h3>
							<div class="form-group">
								<label for="uname">Passenger First Name:</label><br> <input
									type="text" name="first_name" required><br />
							</div>
							<div class="form-group">
								<label for="uname">Last Name:</label><br> <input
									type="text" name="last_name" required><br />
							</div>
							<div class="form-group">
								<label for="uname">Age:</label><br> <input type="text"
									name="age" required><br />
							</div>
							<div class="form-group">
								<label for="uname">Food Preference:</label><br> <input
									type="text" name="food"><br />
							</div>
							<div class="form-group">
								<label for="uname">Email:</label><br> <input
									type="email" name="email"><br />
							</div>
							<div class="form-group">
								<label for="uname">Departure City:</label><br> <input
									type="text" name="depart"
									value="<%=session.getAttribute("dc")%>" required><br />
							</div>
							<div class="form-group">
								<label for="uname">Arrival City:</label><br> <input
									type="text" name="arrival"
									value="<%=session.getAttribute("ac")%>" required><br />
							</div>
							<div class="form-group">
								<label for="uname">Price per passenger:</label><br> <input
									type="text" name="price"
									value="<%=session.getAttribute("pr")%>" required><br />
							</div>
							<div class="form-group">
								<label for="uname">Departure Date:</label><br> <input
									type="text" name="departdate"
									value="<%=session.getAttribute("dd")%>" required><br />
							</div>
							<div class="form-group">
								<label for="uname">Arrival Date:</label><br> <input
									type="text" name="arridate"
									value="<%=session.getAttribute("ad")%>" required><br />
							</div>
							<div class="form-group">
								<label for="uname">Flight ID:</label><br> <input
									type="text" name="id" value="<%=session.getAttribute("id")%>"
									required><br />
							</div>
							<div class="form-group">
								<label for="uname">Flight Name:</label><br> <input
									type="text" name="fname"
									value="<%=session.getAttribute("fn")%>" required><br />
							</div>
							<div class="form-group">
								<label for="uname">Seat Type:</label><br> <input
									type="text" name="stype"
									value="<%=session.getAttribute("st")%>" required><br />
							</div>
							<div class="form-group">
								<label for="uname">Flight Type:</label><br> <input
									type="text" name="ftype"
									value="<%=session.getAttribute("ft")%>" required><br />
							</div>
						
							click the button below to complete booking.<br /> 
							<input type="submit" name="Book"><br />
						</form>
					</div>
				</div>
			</div>
		</div>

	</div>


	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>