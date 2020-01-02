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
	<div id="booking">
		<div>
			<div class="container" style="color: white">
				<div class="row"
					style="padding: 40px; position: relative; margin-bottom: 40px; text-align: center">
					
					<div class="booking-form" style="background: rgba(0.6, 0.6, 0, 0.6);color:white;align:center;margin:5px 120px 10px;width:800px">
					<h1>Summary of Flight Reservation Ticket</h1>
						<% 
                Class.forName("com.mysql.jdbc.Driver");
				Connection  con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project1","root" ,"limalimo");
                Statement  st3 =  con.createStatement();
				ResultSet rs3=st3.executeQuery("select * FROM project1.booked WHERE  Ticket_number=(SELECT MAX(Ticket_number) FROM project1.booked)");
				rs3.next();
				 out.println("<div class='form-group'><label>First Name:&emsp;</label> "  +rs3.getString("First_name")+"</div>");
				out.println("<div class='form-group'><label>Last Name:&emsp;</label>"  +rs3.getString("Last_name")+ "</div>");
				out.println("<div class='form-group'><label>Age:&emsp;</label> "  +rs3.getInt("age")+"</div>");
				out.println("<div class='form-group'><label> Foof Preference:&emsp;</label> "  +rs3.getString("food")+"</div>");
				out.println("<div class='form-group'><label>Departure City:&emsp;</label> "  +rs3.getString("Departure_city")+"</div>");
				out.println("<div class='form-group'><label>Arrival City:&emsp;</label> "  +rs3.getString("Arrival_city")+"</div>");
				out.println("<div class='form-group'><label>Price:&emsp; </label> "  +rs3.getString("price")+"Canadian dollar"+"</div>");
				out.println("<div class='form-group'><label> Departure Date:&emsp;</label> "  +rs3.getString("Departure_date")+"</div>");
				out.println("<div class='form-group'><label>Arrival Date:&emsp;</label> "  +rs3.getString("Arrival_date")+"</div>");
				out.println("<div class='form-group'><label> Ticket Number:&emsp;</label> "  +rs3.getInt("Ticket_number")+"</div>");
				out.println("<div class='form-group'><label> Flight Number:&emsp;</label> "  +rs3.getString("Flight_id")+"</div>");
				out.println("<div class='form-group'><label> Flight Name:&emsp;</label> "  +rs3.getString("Flight_name")+"</div>");
				out.println("<div class='form-group'><label> Seat Type:&emsp;</label> "  +rs3.getString("Seat_type")+"</div>");
				out.println("<div class='form-group'><label> Flight Type:&emsp;</label> "  +rs3.getString("Flight_Type")+"</div>");
				
						%>
						<a href='book.jsp' class='btn btn-success' style="margin-left:80px">book again</a>
					</div>
				</div>
			</div>
		</div>

	</div>


	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>