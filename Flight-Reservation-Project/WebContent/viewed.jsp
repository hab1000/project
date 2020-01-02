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
	<jsp:include page="header.jsp"></jsp:include><br />

	<div class="section">
		<div class="section-center">
			<div class="container"
				style="background: rgba(0.6, 0.6, 0, 0.6); padding: 40px; color: white">
				<div class="row" class="booking-form"
					style="padding: 20px; position: relative; margin: 5px 100px; width: 800px;height:400px">
					<div class="row">

						
							<div class="row">

								<div class='col-sm-1'>
									<label for='fname'>First Name	&nbsp;</label>
								</div>
								<div class='col-sm-1'>
									<label for='fname'>Last Name	&nbsp;</label>
								</div>
								<div class='col-sm-1'>
									<label for='fname'>Departure City		&nbsp;&nbsp;</label>
								</div>
								<div class='col-sm-1'>
									<label for='fname'>Arrival City 	&nbsp;</label>
								</div>
								<div class='col-sm-1'>
									<label for='fname'>Price 	&nbsp;</label>
								</div>

								<div class='col-sm-1'>
									<label for='fname'>Departure Date 	</label>
								</div>
								<div class='col-sm-1'>
									<label for='fname'>Arrival Date 	</label>
								</div>
								<div class='col-sm-1'>
									<label for='fname'>Ticket Number	</label>
								</div>
								<div class='col-sm-1'>
									<label for='fname'>Flight Id 	</label>
								</div>
								<div class='col-sm-1'>
									<label for='fname'>Flight Name	</label>
								</div>
								<div class='col-sm-1'>
									<label for='fname'>Seat Type </label>
								</div>
							</div>

<div class="row">
<%
out.println("<div class='col-sm-1'>" +  session.getAttribute("a1")+"</div>	&nbsp;");
out.println("<div class='col-sm-1'>" +  session.getAttribute("a2")+"</div>	&nbsp;");
out.println("<div class='col-sm-1'>" +  session.getAttribute("a3")+"</div>	&nbsp;");
out.println("<div class='col-sm-1'>" +  session.getAttribute("a4")+"</div>	&nbsp;");
out.println("<div class='col-sm-1'>" +  session.getAttribute("a5")+"</div>	&nbsp;");
out.println("<div class='col-sm-1'>" +  session.getAttribute("a6")+"</div>	");
out.println("<div class='col-sm-1'>" +  session.getAttribute("a7")+"</div>	");
out.println("<div class='col-sm-1'>" +  session.getAttribute("a8")+"</div>	");
out.println("<div class='col-sm-1'>" +  session.getAttribute("a9")+"</div>	");
out.println("<div class='col-sm-1'>" +  session.getAttribute("a10")+"</div>	");
out.println("<div class='col-sm-1'>" +  session.getAttribute("a11")+"</div>	");
%>





</div>

						

					</div>
				</div>
			</div>
		</div>
	</div>



	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>