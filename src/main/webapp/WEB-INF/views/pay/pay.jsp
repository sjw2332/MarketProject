<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../layout/header.jsp"%>
<head>
<style type="text/css">
</style>
<title>Testcontact</title>
<head>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="" name="description">
<meta content="" name="keywords">

<!-- Favicons -->
<link href="../resources/img/favicon.png" rel="icon">
<link href="../resources/img/apple-touch-icon.png"
	rel="apple-touch-icon">

<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,700,700i|Raleway:300,400,500,700,800"
	rel="stylesheet">

<!-- Vendor CSS Files -->
<link href="../resources/vendor/aos/aos.css" rel="stylesheet">
<link href="../resources/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link href="../resources/vendor/bootstrap-icons/bootstrap-icons.css"
	rel="stylesheet">
<link href="../resources/vendor/glightbox/css/glightbox.min.css"
	rel="stylesheet">
<link href="../resources/vendor/swiper/swiper-bundle.min.css"
	rel="stylesheet">

<!-- Template Main CSS File -->
<link href="../resources/css/style.css" rel="stylesheet">
</head>
<body>
	<!-- ======= main Section ======= -->
	<section id="main">
		<div class="main-container" data-aos="zoom-in" data-aos-delay="100">


			<!-- ======= Buy Ticket Section ======= -->
			<section id="buy-tickets" class="section-with-bg">
				<div class="container" data-aos="fade-up">

					<div class="section-header">
						<h2>Buy Tickets</h2>
						<p>Velit consequatur consequatur inventore iste fugit unde
							omnis eum aut.</p>
					</div>

					<div class="row">
						<div class="col-lg-4" data-aos="fade-up" data-aos-delay="100">
							<div class="card mb-5 mb-lg-0">
								<div class="card-body">
									<h5 class="card-title text-muted text-uppercase text-center">Standard
										Access</h5>
									<h6 class="card-price text-center">$150</h6>
									<hr>
									<ul class="fa-ul">
										<li><span class="fa-li"><i class="fa fa-check"></i></span>Regular
											Seating</li>
										<li><span class="fa-li"><i class="fa fa-check"></i></span>Coffee
											Break</li>
										<li><span class="fa-li"><i class="fa fa-check"></i></span>Custom
											Badge</li>
										<li class="text-muted"><span class="fa-li"><i
												class="fa fa-times"></i></span>Community Access</li>
										<li class="text-muted"><span class="fa-li"><i
												class="fa fa-times"></i></span>Workshop Access</li>
										<li class="text-muted"><span class="fa-li"><i
												class="fa fa-times"></i></span>After Party</li>
									</ul>
									<hr>
									<div class="text-center">
										<button type="button" class="btn" data-bs-toggle="modal"
											data-bs-target="#buy-ticket-modal"
											data-ticket-type="standard-access">Buy Now</button>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-4" data-aos="fade-up" data-aos-delay="200">
							<div class="card mb-5 mb-lg-0">
								<div class="card-body">
									<h5 class="card-title text-muted text-uppercase text-center">Pro
										Access</h5>
									<h6 class="card-price text-center">$250</h6>
									<hr>
									<ul class="fa-ul">
										<li><span class="fa-li"><i class="fa fa-check"></i></span>Regular
											Seating</li>
										<li><span class="fa-li"><i class="fa fa-check"></i></span>Coffee
											Break</li>
										<li><span class="fa-li"><i class="fa fa-check"></i></span>Custom
											Badge</li>
										<li><span class="fa-li"><i class="fa fa-check"></i></span>Community
											Access</li>
										<li class="text-muted"><span class="fa-li"><i
												class="fa fa-times"></i></span>Workshop Access</li>
										<li class="text-muted"><span class="fa-li"><i
												class="fa fa-times"></i></span>After Party</li>
									</ul>
									<hr>
									<div class="text-center">
										<button type="button" class="btn" data-bs-toggle="modal"
											data-bs-target="#buy-ticket-modal"
											data-ticket-type="pro-access">Buy Now</button>
									</div>
								</div>
							</div>
						</div>
						<!-- Pro Tier -->
						<div class="col-lg-4" data-aos="fade-up" data-aos-delay="300">
							<div class="card">
								<div class="card-body">
									<h5 class="card-title text-muted text-uppercase text-center">Premium
										Access</h5>
									<h6 class="card-price text-center">$350</h6>
									<hr>
									<ul class="fa-ul">
										<li><span class="fa-li"><i class="fa fa-check"></i></span>Regular
											Seating</li>
										<li><span class="fa-li"><i class="fa fa-check"></i></span>Coffee
											Break</li>
										<li><span class="fa-li"><i class="fa fa-check"></i></span>Custom
											Badge</li>
										<li><span class="fa-li"><i class="fa fa-check"></i></span>Community
											Access</li>
										<li><span class="fa-li"><i class="fa fa-check"></i></span>Workshop
											Access</li>
										<li><span class="fa-li"><i class="fa fa-check"></i></span>After
											Party</li>
									</ul>
									<hr>
									<div class="text-center">
										<button type="button" class="btn" data-bs-toggle="modal"
											data-bs-target="#buy-ticket-modal"
											data-ticket-type="premium-access">Buy Now</button>
									</div>

								</div>
							</div>
						</div>
					</div>

				</div>

				<!-- Modal Order Form -->
				<div id="buy-ticket-modal" class="modal fade">
					<div class="modal-dialog" role="document">
						<div class="modal-content">
							<div class="modal-header">
								<h4 class="modal-title">Buy Tickets</h4>
								<button type="button" class="btn-close" data-bs-dismiss="modal"
									aria-label="Close"></button>
							</div>
							<div class="modal-body">
								<form method="POST" action="#">
									<div class="form-group">
										<input type="text" class="form-control" name="your-name"
											placeholder="Your Name">
									</div>
									<div class="form-group mt-3">
										<input type="text" class="form-control" name="your-email"
											placeholder="Your Email">
									</div>
									<div class="form-group mt-3">
										<select id="ticket-type" name="ticket-type"
											class="form-select">
											<option value="">-- Select Your Ticket Type --</option>
											<option value="standard-access">Standard Access</option>
											<option value="pro-access">Pro Access</option>
											<option value="premium-access">Premium Access</option>
										</select>
									</div>
									<div class="text-center mt-3">
										<button type="submit" class="btn">Buy Now</button>
									</div>
								</form>
							</div>
						</div>
						<!-- /.modal-content -->
					</div>
					<!-- /.modal-dialog -->
				</div>
				<!-- /.modal -->

			</section>
			<!-- End Buy Ticket Section -->
		</div>
	</section>
	<!-- End main Section -->
	
		<%@include file="../layout/footer.jsp"%>
		
		
	<a href="#"
		class="back-to-top d-flex align-items-center justify-content-center"><i
		class="bi bi-arrow-up-short"></i></a>
	<!-- Vendor JS Files -->
	<script src="../resources/vendor/aos/aos.js"></script>
	<script src="../resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="../resources/vendor/glightbox/js/glightbox.min.js"></script>
	<script src="../resources/vendor/php-email-form/validate.js"></script>
	<script src="../resources/vendor/swiper/swiper-bundle.min.js"></script>

	<!-- Template Main JS File -->
	<script src="../resources/js/main.js"></script>
</body>

</html>