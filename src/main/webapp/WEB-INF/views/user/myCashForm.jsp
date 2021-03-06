<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../layout/header.jsp"%>
<head>
<style type="text/css">
h1, h2, h3, h4, h5, h6 {
	font-family: "Raleway", sans-serif;
	font-weight: 400;
	margin: 0 0 20px 0;
	padding: 0;
	color: #f82249;
}
</style>
<title>Testcontact</title>
<head>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="" name="description">
<meta content="" name="keywords">


<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,700,700i|Raleway:300,400,500,700,800"
	rel="stylesheet">

<!-- Vendor CSS Files -->
<link href="resources/vendor/aos/aos.css" rel="stylesheet">
<link href="resources/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link href="resources/vendor/bootstrap-icons/bootstrap-icons.css"
	rel="stylesheet">
<link href="resources/vendor/glightbox/css/glightbox.min.css"
	rel="stylesheet">
<link href="resources/vendor/swiper/swiper-bundle.min.css"
	rel="stylesheet">

<!-- Template Main CSS File -->
<link href="resources/css/style.css" rel="stylesheet">
</head>
<body>
	<!-- ======= main Section ======= -->
	<section id="main">
		<div class="main-container" data-aos="zoom-in" data-aos-delay="100">

			<!-- ======= Buy Ticket Section ======= -->
			<section id="buy-tickets" class="section-with-bg">
				<div class="container" data-aos="fade-up">

					<div class="section-header">
						<h2>My Cash</h2>
						<p></p>
					</div>
				</div>
				<div class="container">
					<div data-aos="fade-up" data-aos-delay="100">
						<div class="card mb-5 mb-lg-0">
							<div class="card-body">
								<hr>
								<div class="text-center">
								<h5 class="card-title text-uppercase text-center">보유 Cash</h5>
								<h6 class="card-price text-center">50000</h6>								
									<button type="button" class="btn" data-bs-toggle="modal"
										data-ticket-type="standard-access">충전</button>
								</div>
								<hr>
								<hr>
								<h5 class="card-title text-uppercase text-center">출금 계좌</h5>
								<h6 class="card-price text-center" >부산은행 123-456-7890</h6>
								<div class="text-center">
									<button type="button" class="btn" data-bs-toggle="modal"
										data-ticket-type="standard-access" style="background: blue">출금</button>
								</div>
								
								<hr>
							</div>
						</div>
					</div>


				</div>

				<!-- Modal Order Form 
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
						<!-- /.modal-content 
					</div>
					<!-- /.modal-dialog 
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
	<script src="resources/vendor/aos/aos.js"></script>
	<script src="resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="resources/vendor/glightbox/js/glightbox.min.js"></script>
	<script src="resources/vendor/php-email-form/validate.js"></script>
	<script src="resources/vendor/swiper/swiper-bundle.min.js"></script>

	<!-- Template Main JS File -->
	<script src="resources/js/main.js"></script>
</body>

</html>