<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="FlightEntity.Flight"%>
<%@ page import="DAO.FlightDAO"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit User</title>
</head>
<body>
<%
Flight flight = new Flight();
%>
<%
FlightDAO dao = new FlightDAO();
%>
<form method="POST" action='FlightController' name="frmEditUser">
<input type="hidden" name="action" value="edit" />
 <%
String fid = request.getParameter("flightId");
if (!((fid) == null)) {
int id = Integer.parseInt(fid);
flight = dao.getFlightById(id);
%>
<table>
<tr>
<td>Flight ID</td>
<td><input type="text" name="flightId" readonly="readonly"
value="<%=flight.getId()%>"></td>
</tr>
<tr>
<td>Flight Name</td>
<td><input type="text" name="flight_name" value="<%=flight.getFlightName()%>"/></td>
</tr>
<tr>
<td>Departure City</td>
<td><input type="text" name="departure_city"  value="<%=flight.getDepartureCity()%>"/></td>
</tr>
<tr>
<td>Arrival City</td>
<td><input type="text" name="arrival_city" value="<%=flight.getArrivalCity()%>"/></td>
</tr>
<tr>
<td>Departure Date</td>
<td><input type="date" name="departure_date" value="<%=flight.getDepartureDate()%>"/></td>
</tr>
<tr>
<td>Arrival Date</td>
<td><input type="date" name="arrival_date" value="<%=flight.getArrivalDate()%>"/></td>
</tr>
<tr>
<td>Departure Time</td>
<td><input type="text" name="departure_time" value="<%=flight.getDepartureTime()%>"/></td>
</tr>
<tr>
<td>Arrival Time</td>
<td><input type="text" name="arrival_time" value="<%=flight.getArrivalTime()%>"/></td>
</tr>
<tr>
<td>Seat Type</td>
<td><input type="text" name="seat_type" value="<%=flight.getSeatType()%>"/></td>
</tr>
<tr>
<td>Price </td>
<td><input type="text" name="price" value="<%=flight.getPrice()%>"/></td>
</tr>
<tr>
<td>Flight Type</td>
<td><input type="text" name="flight_type" value="<%=flight.getFlightType()%>"/></td>
</tr>

<tr>
<td></td>
<td><input type="submit" value="Update" /></td>
</tr>
</table>
<%
} else
out.println("Flight ID Not Found");
%>
</form>
</body>
</html>