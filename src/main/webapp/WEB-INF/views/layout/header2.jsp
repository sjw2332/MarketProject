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
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>Test메인페이지</title>
<meta content="" name="description">
<meta content="" name="keywords">


<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,700,700i|Raleway:300,400,500,700,800"
	rel="stylesheet">

<!-- Vendor CSS Files  -->
<!--<link href="../resources/vendor/aos/aos.css" rel="stylesheet">-->
<link href="../../resources/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link href="../../resources/vendor/bootstrap-icons/bootstrap-icons.css"
	rel="stylesheet">
<link href="../../resources/vendor/glightbox/css/glightbox.min.css"
	rel="stylesheet">
<link href="../../resources/vendor/swiper/swiper-bundle.min.css"
	rel="stylesheet">

<!-- Template Main CSS File -->
<link href="../../resources/css/style.css" rel="stylesheet">

<!-- 링크 추가 재욱 -->
<link href="../../resources/css/stylejw.css" rel="stylesheet">
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet"> 
<!-- 링크 추가 재욱끝 -->
<!-- 현래 css -->
<link href="../../resources/css/user.css" rel="stylesheet"/>
<!-- size css -->
<link href="../../resources/css/publicSize.css" rel="stylesheet" />

<!-- summernote -->
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css"
rel="stylesheet">


</head>
<body>
	<!-- ======= Header ======= -->
	<header id="header" class="d-flex align-items-center ">
		<div class="container-xxl d-flex align-items-center" >

			<div id="logo" class="me-auto">

				<h1>
					<a href="/">My<span>Tube</span></a>
				</h1>
				<!--<a href="index.jsp" class="scrollto"><img src="../resources/img/logo.png" alt="" title=""></a>-->
			</div>

			<nav id="navbar" class="navbar order-last order  ">
				<ul>
					<li><a class="nav-link scrollto" href="/board/list?page=0">계정거래</a></li>
					<li><a class="nav-link scrollto" href="/test/contact">고객센터</a></li>

				</ul>
			</nav>

			<!-- user 관련 nav  -->
			<nav id="login_nav" class="navbar order-last order ">

				<ul>
					<c:choose>
						<c:when test="${empty sessionScope.principal}">
							<a class="login-nav scrollto" href="/test/join"
								style="margin-left: 10px">JOIN</a>
						</c:when>
						<c:otherwise>
							<li class="dropdown"><a href="/test/mylist"><span>MyPage</span> <i
									class="bi bi-chevron-down"></i></a>
								<ul>
									<li><a href="/test/update/${sessionScope.principal.id }">회원정보수정</a></li>
									<li class="dropdown"><a><span>거래내역</span> <i class="bi bi-chevron-right"></i></a>
										<ul>
											<li><a href="/test/selllist">판매 등록 내역</a></li>
											<li><a href="/test/selllist">판매 내역</a></li>
											<li><a href="/test/buylist">구매 내역</a></li>

										</ul></li>
										<li class="dropdown"><a><span>Cash</span> <i class="bi bi-chevron-right"></i></a>
										<ul>
											<li><a href="/test/cash">My Cash</a></li>
											<li><a href="/test/pay">Cash 충전</a></li>
										</ul></li>
								</ul></li>
						</c:otherwise>
					</c:choose>
					<!-- .navbar -->
					<c:choose>
						<c:when test="${empty sessionScope.principal}">
							<a class="login-nav scrollto" href="/test/loginform"
								style="margin-left: 10px">Login</a>
						</c:when>
						<c:otherwise>
							<a class="login-nav scrollto" href="/test/index"
								style="margin-left: 10px">Logout</a>
						</c:otherwise>
					</c:choose>
				</ul>
			</nav>

		</div>
	</header>
	<!-- End Header -->


	<!-- Core theme JS-->
	<script src="../../resources/js/scripts.js"></script>
	
	<!-- 링크 추가 지희 -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  	<!-- 링크 추가 지희끝 -->

	
	<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>
	
</body>
</html>