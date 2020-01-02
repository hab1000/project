<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="FlightEntity.Flight"%>
<%@ page import="DAO.FlightDAO"%>
<%@ page import="java.util.*"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>All User</title>
</head>
<link type="text/css" rel="stylesheet" href="home.css" />

<body>
<div id="booking">


		
			<div class="section">
				<div class="section-center">
					<div class="container">
						<div class="row" >
						<h3>Administrator Flight ontrol</h3>
<%
//UserBean user = new UserBean();
FlightDAO dao = new FlightDAO();
List<Flight> flightList = dao.getAllFlights();
//Iterator<UserBean> itr = userList.iterator();
%>
<table border="1">
<tr>
<th>Id</th>
<th>Flight Name</th>
<th>Departure City</th>
<th>Arrival City</th>
<th>Departure Date</th>
<th>Arrival Date</th>
<th>Departure Time</th>
<th>Arrival Time</th>
<th>Seat Type</th>
<th>Price </th>
<th>Flight Type</th>
</tr>
<tr>
<%

for (Flight flight : flightList) {
%>
<td><%=flight.getId()%></td>
<td><%=flight.getFlightName()%></td>
<td><%=flight.getDepartureCity()%></td>
<td><%=flight.getArrivalCity()%></td>
<td><%=flight.getDepartureDate()%></td>
<td><%=flight.getArrivalDate()%></td>
<td><%=flight.getDepartureTime()%></td>
<td><%=flight.getArrivalTime()%></td>
<td><%=flight.getSeatType()%></td>
<td><%=flight.getPrice()%></td>
<td><%=flight.getFlightType()%></td>
<td><a href="FlightController?action=editform&flightId=<%=flight.getId()%>">Update</a></td>
<td><a href="FlightController?action=delete&flightId=<%=flight.getId()%>">Delete</a></td>

</tr>
<%
}
%>
</table>
<p><a href="FlightController?action=insert">Add Flight</a></p>
</div>
</div>
</div>
</div>
</div>
</body>
</html>