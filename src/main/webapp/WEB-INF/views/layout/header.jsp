<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title></title>
<meta charset="UTF-8">
<style type="text/css">
</style>
<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>Test메인페이지</title>
<meta content="" name="description">
<meta content="" name="keywords">

<!-- Favicons -->
<link href="resources/img/favicon.png" rel="icon">
<link href="resources/img/apple-touch-icon.png" rel="apple-touch-icon">

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
	<!-- ======= Header ======= -->
	<header id="header" class="d-flex align-items-center ">
		<div class="container-fluid container-xxl d-flex align-items-center">

			<div id="logo" class="me-auto">

				<h1>
					<a href="/">My<span>Tube</span></a>
				</h1>
				<!--<a href="index.jsp" class="scrollto"><img src="resources/img/logo.png" alt="" title=""></a>-->
			</div>

			<nav id="navbar" class="navbar order-last order  ">
				<ul>
					<li><a class="nav-link scrollto" href="/">계정가치평가</a></li>
					<li><a class="nav-link scrollto" href="/">계정거래</a></li>

					<li><a class="nav-link scrollto" href="/test/contact">고객센터</a></li>

				</ul>
			</nav>

			<!-- user 관련 nav  -->
			<nav id="navbar" class="navbar order-last order">

				<ul>
					<c:choose>
						<c:when test="">
							<li><a class="nav-link scrollto" href="#contact">Join</a></li>
						</c:when>
						<c:otherwise>
							<li class="dropdown"><a href="#"><span>MyPage</span> <i
									class="bi bi-chevron-down"></i></a>
								<ul>
									<li><a href="#">회원정보수정</a></li>
									<li class="dropdown"><a><span>거래내역</span> <i class="bi bi-chevron-right"></i></a>
										<ul>
											<li><a href="#">판매 내역</a></li>
											<li><a href="#">구매 내역</a></li>

										</ul></li>
										<li class="dropdown"><a><span>Cash</span> <i class="bi bi-chevron-right"></i></a>
										<ul>
											<li><a href="#">My Cash</a></li>
											<li><a href="#">Cash 충전</a></li>
										</ul></li>
								</ul></li>
						</c:otherwise>
					</c:choose>
					<!-- .navbar -->
					<c:choose>
						<c:when test="">
							<a class="buy-tickets scrollto" href="/"
								style="margin-left: 10px">Login</a>
						</c:when>
						<c:otherwise>
							<a class="buy-tickets scrollto" href="/"
								style="margin-left: 10px">Logout</a>
						</c:otherwise>
					</c:choose>
				</ul>
			</nav>

		</div>
	</header>
	<!-- End Header -->

	<!-- Bootstrap core JS-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Core theme JS-->
	<script src="js/scripts.js"></script>
</body>
</html>