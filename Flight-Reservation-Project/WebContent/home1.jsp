<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>DocFlight Reservation Website</title>
	<link rel="stylesheet" type="text/css" href="style.css">
	<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" ></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>


</head>
<body>
	<!-- Navigation bar -->
	<section id="nav-bar">
		<nav class="navbar navbar-expand-lg navbar-light ">
			<a class="navbar-brand" href="#"><img src="logo.png"></a>
			<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarNav">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item ">
						<a class="nav-link" href="#">HOME </a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="login.jsp">LOGIN</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="contactUs.jsp">CONTACT US</a>
					</li>
					<li class="nav-item">
						<a class="nav-link " href="home.jsp">FLIGHT SCHEDULE</a>
					</li>
				</ul>
			</div>
		</nav>
	</section>

	<!--Slider -->
	<section>
		<div id="slider">
			<div id="headerSlider" class="carousel slide" data-ride="carousel">
				<ol class="carousel-indicators">
					<li data-target="#headerSlider" data-slide-to="0" class="active"></li>
					<li data-target="#headerSlider" data-slide-to="1"></li>
					<li data-target="#headerSlider" data-slide-to="2"></li>
				</ol>
				<div class="carousel-inner">
					<div class="carousel-item active">
						<img  class="d-block w-100"  src="banner1.jpg" alt="Air Canada">
						<div class="carousel-caption">
							<h5>Flight Reservation Project</h5>
						</div>
					</div>
					<div class="carousel-item">
						<img  class="d-block w-100" alt="Ethiopian Airlines" src="banner2.jpg">
						<div class="carousel-caption">
							<h5>Flight Reservation Project</h5>
						</div>
					</div>
					<div class="carousel-item">
						<img  class="d-block w-100" alt="American Airlines" src="banner3.jpg">
						<div class="carousel-caption">
							<h5>Flight Reservation Project</h5>
						</div>
					</div>
				</div>
				<a class="carousel-control-prev" href="#headerSlider" role="button" data-slide="prev">
					<span class="carousel-control-prev-icon" aria-hidden="true"></span>
					<span class="sr-only">Previous</span>
				</a>
				<a class="carousel-control-next" href="#headerSlider" role="button" data-slide="next">
					<span class="carousel-control-next-icon" aria-hidden="true"></span>
					<span class="sr-only">Next</span>
				</a>
			</div>

		</div>
	</section>


	<!--Destination -->
	<section id="Destinations">
		<div class="container">

			<h2 id="dest">Destinations</h2>

			<div class="row">
				<div class="col-md-4">

					<div class="about-content">
						<h3>Edmonton</h3>
						<img id="img" src="edmonton.jpg" alt="Edmonton">
					</div>
				</div>
				<div class="col-md-4">

					<div class="about-content">
						<h3>Toronto</h3>
						<img id="img" src="toronto.jpg" alt="Toronto">
					</div>
				</div>
				<div class="col-md-4">
					<div class="about-content">
						<h3>Winnipeg</h3>
						<img id="img" src="winnipeg.jpg" alt="Winnipeg">
					</div>
				</div>
			</div>
			<button type="submit" class="btn btn-primary">Explore more</button>
		</div>
	</section>

	<!-- Contact-->
	<section id="contact">
		<div class="container">
			<h1>Contact information</h1>
			<div class="row">
				<div class="col-md-6">
					<form class="contact-form">
						<div class="form-group">
							<input type="text" class="form-control" name="" placeholder="name">
						</div>
						<div class="form-group">
							<input type="number" class="form-control" name="" placeholder="phone number">
						</div>
						<div class="form-group">
							<input type="email" class="form-control" name="" placeholder="email">
						</div>
						<div class="form-group">
							<textarea class="form-control"  name="" placeholder="message"></textarea>
						</div>
						<button type="submit" class="btn btn-primary">Submit</button>
					</form>
				</div>	
				<div class="col-md-6 contact-info">
					<div class="follow"><b>address:</b><i class="fa fa-map-marker"></i>
					Townsend Avenue, Winnipeg, MB</div>

					<div class="follow"><b>Phone number:</b><i class="fa fa-phone"></i>
					2047309999</div>

					<div class="follow"><b>Email:</b><i class="fa fa-envelop-o"></i>
					habproject@gmail.com</div>
					<div class="follow"><label><b>Social media:</b></label><a href="#"><i class="fa fa-facebook"></i></a>
						<a href="#"><i class="fa fa-youtube"></i></a>
						<a href="#"><i class="fa fa-twitter"></i></a>
						<a href="#"><i class="fa fa-git"></i></a>	
					</div>
				</div>
			</div>

		</div>
	</section>

<!---Footer--->
<section id="footer">
	<div class="container text-center">
		<p>Done by Habtamu<i class="fa fa-heart-o"></i></p>
	</div>

</section>
</body>
</html>