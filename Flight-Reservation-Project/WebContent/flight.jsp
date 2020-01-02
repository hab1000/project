<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add New Flight</title>
</head>
<link type="text/css" rel="stylesheet" href="home.css" />

<body>
	<div id="booking">


		
			<div class="section">
				<div class="section-center">
					<div class="container">
						<div class="row" >
						<h3>Administrator Flight Control</h3>
							<form method="POST" action='FlightController' name="frmAddUser">
								<input type="hidden" name="action" value="insert" />
								<p>
									<b>Add New Flights</b>
								</p>
								<table>
									<tr>
										<td>Flight ID</td>
										<td><input type="text" name="flightId" required></td>
									</tr>
									<tr>
										<td>Flight Name</td>
										<td><input type="text" name="flight_name" required /></td>
									</tr>
									<tr>
										<td>Departure City</td>
										<td><input type="text" name="departure_city" required /></td>
									</tr>
									<tr>
										<td>Arrival City</td>
										<td><input type="text" name="arrival_city" required /></td>
									</tr>
									<tr>
										<td>Departure Date</td>
										<td><input type="date" name="departure_date" required /></td>
									</tr>
									<tr>
										<td>Arrival Date</td>
										<td><input type="date" name="arrival_date" required /></td>
									</tr>
									<tr>
										<td>Departure Time</td>
										<td><input type="time" name="departure_time" required /></td>
									</tr>
									<tr>
										<td>Arrival Time</td>
										<td><input type="time" name="arrival_time" required /></td>
									</tr>
									<tr>
										<td>Seat Type</td>
										<td><input type="text" name="seat_type" required /></td>
									</tr>
									<tr>
										<td>Price</td>
										<td><input type="text" name="price" required /></td>
									</tr>
									<tr>
										<td>Flight Type</td>
										<td><input type="text" name="flight_type" required /></td>
									</tr>

									<tr>
										<td></td>
										<td><input type="submit" value="Submit" required /></td>
									</tr>
								</table>
							</form>
							<p>
								<button type="button"><a href="listFlight.jsp">View-All-flights</a></button>
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>

</body>
</html>