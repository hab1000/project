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
					<a class="nav-link "  href="home2.jsp">FLIGHT SCHEDULE</a>
					</li>
					
					<li class="nav-item">
				<a href="login.jsp" class="nav-link " >Logout</a>
				</li>
				</ul>
			</div>
		</nav>
	</section>
		<div  class="section" >
		<div class="section-center">
			<div class="container" style="background: rgba(0.6, 0.6, 0, 0.6);padding: 40px;color:white" >
			<div class="row" class="booking-form" style="padding:20px;position: relative; margin:5px 100px; width:800px">
						<div class="row" >
							
								<form method="post" action="profile">
									<h3>Change user information below</h3>

									<%
										String u2 = (String) session.getAttribute("u3");
									

										Class.forName("com.mysql.jdbc.Driver");
										Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project1", "root", "limalimo");
										Statement st = con.createStatement();
										String sql = "select * from registration where (username='" + u2 + "')";
										ResultSet rs = st.executeQuery(sql);
										rs.next();
									%>
									
									
									
									
									<div class="row">
										<div class="form-group">
											<label> User Name</label><br />
											<input type="text" value="<%=rs.getString(1)%>"
												name="userna" >
										</div>
									</div>
									<div class="row">
										<div class="form-group">
											<label> Name:</label><br />
											<input type="text" value="<%=rs.getString(2)%>" name="user" >
												
										</div>
									</div>
									<div class="row">
										<div class="form-group">
											<label> email:</label><br />
											<input type="email" value="<%=rs.getString(3)%>" name="ema" >
										</div>
									</div>
									
									<div class="row">
										<div class="form-group">
											<label>old Password:</label><br />
											<input type="password" value="<%=rs.getString(4)%>" name="pass">
										</div>
									</div>
									<div class="row">
										<div class="form-group">
											<label>Re-type old Password:</label><br />
											<input type="password" name="pass1" required>
										</div>
									</div>
									<div class="row">
										<div class="form-group">
											<label>new Password:</label><br />
											<input type="password" name="pass2" required>
										</div>
									</div>
									
									<div class="row">
										<div class="form-group">
											<label>Confirm Password:</label><br />
											<input type="password" name="pass3" required>
										</div>
									</div>
									
									<div class="row">
										<div class="form-group">
											
											<input type="submit" value="submit">
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