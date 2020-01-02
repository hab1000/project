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

</head>
<body id="booking">
	<jsp:include page="header.jsp"></jsp:include>

	
			<div class="container">
				<div class="row">
					<div class="booking-form"  style="background: rgba(0.6, 0.6, 0, 0.6);color:white;align:center;margin:5px 120px 10px;width:800px">
					<form action="ad" method="post">
					<h3 class="col-sm-12">Add flights to the schedule:</h3>
				
				<div class="form-group">
					<label for="uname" style="color: white">Flight ID:</label> <input
						type="text" class="form-control" id="username" name="fi" required>
				</div>

				<div class="form-group">
					<label for="uname" style="color: white">Flight Name:</label> <input
						type="text" class="form-control" id="username" name="fn" required>
				</div>

				<div class="form-group">
					<label for="sel1">Departure:</label> <select class="form-control"
						id="sel1" name="dc" required>
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

				<div class="form-group">
					<label for="sel1">Arrival city:</label> <select class="form-control"
						id="sel1" name="ac" required>
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

				<div class="form-group">
					<label for="uname" style="color: white">Departure Date:</label> <input
						type="date" class="form-control" id="username" name="dd" required>
				</div>

				<div class="form-group">
					<label for="uname" style="color: white">Arrival Date:</label> <input
						type="date" class="form-control" id="username" name="ad" required>
				</div>

				<div class="form-group">
					<label for="uname" style="color: white">Departure time:</label> <input
						type="text" class="form-control" id="username" name="dt" required>
				</div>

				<div class="form-group">
					<label for="uname" style="color: white">Arrival time:</label> <input
						type="text" class="form-control" id="username" name="at" required>
				</div>

				<div class="form-group">
					<span class="form-label">Travel class</span> <select
						class="form-control" name="st" required>
						<option>Economy</option>
						<option>Business</option>
						<option>Firstclass</option>
					</select> <span class="select-arrow"></span>
				</div>

				<div class="form-group">
					<label for="uname" style="color: white">Price</label> <input
						type="text" class="form-control" id="username" name="p" required>
				</div>
				<div class="form-group">
					<span class="form-label">Flight type</span> <select
						class="form-control" name="ft" required>
						<option>oneway</option>
						<option>roundtrip</option>
					</select> <span class="select-arrow"></span>
				</div>
				<button type="submit" onclick="document.getElementById('demo5').style.display='block'">Add Flights</button>
              
              </form>
              
               <div id="demo5" style="display:none">		
			<h3>Flight is successfully added to the the schedule, click below to add more</h3>
			<a href="admin.jsp" class='btn btn-default' target="_blank">Add Flights</a> 
			</div>
		</div>
	</div>
	</div>
	
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>