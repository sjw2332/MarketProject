<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>Test메인페이지</title>
<meta content="" name="description">
<meta content="" name="keywords">

<!-- Favicons -->

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

<!-- =======================================================
  * Template Name: TheEvent - v4.6.0
  * Template URL: https://bootstrapmade.com/theevent-conference-event-bootstrap-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>

	<%@include file="layout/header.jsp"%>
	<!-- ======= main Section ======= -->
	<section id="main">
		<div class="main-container" data-aos="zoom-in" data-aos-delay="100">
			<h1 class="mb-4 pb-0">
				<span>Youtube</span> 계정의 <br> 가치를 확인해보세요!!
			</h1>
			<!-- ======= 가치평가검색 form ======= -->
			<section id="testValue">
				<div class="container" data-aos="zoom-in">
					<div class="section-header">
						<form method="POST" action="#">
							<div class="row justify-content-center">
								<div class="col-lg-10col-md-20 d-flex">
									<input type="text" class="form-control"
										placeholder="계정명 or 주소 입력">
									<button type="submit" class="ms-2">search</button>
								</div>
							</div>
						</form>
					</div>
				</div>
			</section>
			<!-- ======= End 가치평가검색 form ======= -->


		</div>
	</section>
	<!-- End main Section -->








	<!-- ======= 가치평가 Section ======= -->
	<!--   <section id="testValue">
      <div class="container" data-aos="zoom-in">
        <div class="section-header">
          <h2>가치평가</h2>
          <p>Youtube 계정의 가치를 평가해보세요</p>
        </div>

        <form method="POST" action="#">
          <div class="row justify-content-center">
            <div class="col-lg-6 col-md-10 d-flex">
              <input type="text" class="form-control" placeholder="Enter Youtube Id">
              <button type="submit" class="ms-2">Search</button>
            </div>
          </div>
        </form>

      </div> 
    </section> -->
	<!-- End 가치평가 Section -->

				<!-- ======= 리스트 Section ======= -->
			<section id="list">

				<div class="container" data-aos="fade-up">
					<div class="section-header">
						<h2>HOT</h2>
						<p>인기매물리스트(구독자수)</p>
					</div>
				</div>
		<div class="gallery-slider swiper">
			<div class="swiper-wrapper align-items-center">
				<div class="swiper-slide">
					<a href="resources/img/gallery/1.jpg" class="gallery-lightbox"><img
						src="resources/img/gallery/1.jpg" class="img-fluid" alt=""></a>
				</div>
				<div class="swiper-slide">
					<a href="resources/img/gallery/2.jpg" class="gallery-lightbox"><img
						src="resources/img/gallery/2.jpg" class="img-fluid" alt=""></a>
				</div>
				<div class="swiper-slide">
					<a href="resources/img/gallery/3.jpg" class="gallery-lightbox"><img
						src="resources/img/gallery/3.jpg" class="img-fluid" alt=""></a>
				</div>
				<div class="swiper-slide">
					<a href="resources/img/gallery/4.jpg" class="list-lightbox"><img
						src="resources/img/gallery/4.jpg" class="img-fluid" alt=""></a>
				</div>
				<div class="swiper-slide">
					<a href="resources/img/gallery/5.jpg" class="list-lightbox"><img
						src="resources/img/gallery/5.jpg" class="img-fluid" alt=""></a>
				</div>
				<div class="swiper-slide">
					<a href="resources/img/gallery/6.jpg" class="list-lightbox"><img
						src="resources/img/gallery/6.jpg" class="img-fluid" alt=""></a>
				</div>
				<div class="swiper-slide">
					<a href="resources/img/gallery/7.jpg" class="list-lightbox"><img
						src="resources/img/gallery/7.jpg" class="img-fluid" alt=""></a>
				</div>
				<div class="swiper-slide">
					<a href="resources/img/gallery/8.jpg" class="list-lightbox"><img
						src="resources/img/gallery/8.jpg" class="img-fluid" alt=""></a>
				</div>
			</div>
			<div class="swiper-pagination"></div>
		</div>

	</section>
	<!-- End Gallery Section -->




	<!-- End #main -->

	<%@include file="layout/footer.jsp"%>

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