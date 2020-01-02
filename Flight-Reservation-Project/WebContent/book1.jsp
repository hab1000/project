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
	<div id="booking" class="section">
		<div class="section-center">
			<div class="container">
				<div class="row" style="padding:40px;position: relative; margin-bottom: 20px;text-align:center">
					<div class="booking-form" style="background: rgba(0.6, 0.6, 0, 0.6);color:white;margin-bottom: 20px;width:2000px;height:600px">
						<form method="post" action="book2.jsp">
							<h3 class="col-sm-12">Available flights on the Specified
								date is:</h3>
					
					<div class="row">

						<div class='col-sm-1'>
							<label for='fname'>Flight ID:</label>
						</div>
						<div class='col-sm-1'>
							<label for='fname'>Flight Name:</label>
						</div>
						<div class='col-sm-1'>
							<label for='fname'>Departure City:</label>
						</div>
						<div class='col-sm-1'>
							<label for='fname'>Arrival City :</label>
						</div>
						<div class='col-sm-1'>
							<label for='fname'>Departure Date :</label>
						</div>
						<div class='col-sm-1'>
							<label for='fname'>Arrival Date :</label>
						</div>
						<div class='col-sm-1'>
							<label for='fname'>Departure Time :</label>
						</div>
						<div class='col-sm-1'>
							<label for='fname'>Arrival Time :</label>
						</div>
						<div class='col-sm-1'>
							<label for='fname'>Seat Type ID:</label>
						</div>
						<div class='col-sm-1'>
							<label for='fname'>Price :</label>
						</div>
						<div class='col-sm-2'>
							<label for='fname'>flight_type :</label>
						</div>
					</div>
					<br />
					<br />
					<div class="row">


						<%
							try {
								String s1 = request.getParameter("fromAirport");
								String s2 = request.getParameter("toAirport");
								String s3 = request.getParameter("departure_date");
								String s4 = request.getParameter("arrival_date");
								String s5 = request.getParameter("seat_type");
								String s6 = request.getParameter("flight_type1");
								String s7 = request.getParameter("flight_type1");
								Class.forName("com.mysql.jdbc.Driver");
								Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project1", "root",
										"limalimo");
								Statement st = con.createStatement();
								String sql = "select * from flightinfo where (departure_city='" + s1 + "' and arrival_city='" + s2
										+ "' and departure_date='" + s3 + "'and arrival_date='" + s4 + "'and seat_type='" + s5
										+ "' or flight_type='" + s6 + "' or flight_type='" + s7 + "' )";
								ResultSet rs = st.executeQuery(sql);

								if (rs.next() == false) {
									out.println(
											"<div class='col-sm-12'><h3 style='color:red;'>flight is not available on the specified date, try another route</h3></div>");
									out.println(
											"<div class='col-sm-12'><a href='book.jsp' class='btn btn-danger' >Search another flight</a></div>");
								} else {
									int i=0;
									do {
										
										//HttpSession session=request.getSession();  
								       
										out.println("<div class='col-sm-1'>" + rs.getInt("flight_ID") + "</div>");
										out.println("<div class='col-sm-1'>" + rs.getString("flight_name") + "</div>");
										out.println("<div class='col-sm-1'>" + rs.getString("departure_city") + "</div>");
										out.println("<div class='col-sm-1'>" + rs.getString("arrival_city") + "</div>");
										out.println("<div class='col-sm-1'>" + rs.getString("departure_date") + "</div>");
										out.println("<div class='col-sm-1'>" + rs.getString("arrival_date") + "</div>");
										out.println("<div class='col-sm-1'>" + rs.getString("departure_time") + "</div>");
										out.println("<div class='col-sm-1'>" + rs.getString("arrival_time") + "</div>");
										out.println("<div class='col-sm-1'>" + rs.getString("seat_type") + "</div>");
										out.println("<div class='col-sm-1'>" + rs.getString("price") + "</div>");
										out.println("<div class='col-sm-1'>" + rs.getString("flight_type") + "</div>");
										
										 	session.setAttribute("id",rs.getInt("flight_ID"));
									        session.setAttribute("fn",rs.getString("flight_name"));
									        session.setAttribute("dc",rs.getString("departure_city"));
									        session.setAttribute("ac",rs.getString("arrival_city"));
									        session.setAttribute("dd",rs.getString("departure_date"));
									        session.setAttribute("ad",rs.getString("arrival_date"));		
									        session.setAttribute("dt",rs.getString("departure_time"));
									        session.setAttribute("at",rs.getString("arrival_time"));
									        session.setAttribute("st",rs.getString("seat_type"));
									        session.setAttribute("pr",rs.getString("price"));	 
									        session.setAttribute("ft",rs.getString("flight_type"));
										
										out.println("<div class='col-sm-1'><button type='submit' class='btn btn-primary' '>book</button></div>");
									
										//out.println("<div class='col-sm-1'><a href='book2.jsp?id='"+rs.getString(1)+">book now</a></div>");
										//i++;
										
									} while (rs.next());
									

									}

							} catch (Exception e) {

								out.println("connection failed" + e);
							}
						%>
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