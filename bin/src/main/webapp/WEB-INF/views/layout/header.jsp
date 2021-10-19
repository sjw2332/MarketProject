<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Blog</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<link
	href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css"
	rel="stylesheet">
	<link
	href="../css/sb-admin-2.min.css" rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>
<style>
.border-left-primary {
  border-left: 0.25rem solid #4e73df !important;
}

.border-left-success {
  border-left: 0.25rem solid #1cc88a !important;
}

.border-left-info {
  border-left: 0.25rem solid #36b9cc !important;
}

.border-left-warning {
  border-left: 0.25rem solid #f6c23e !important;
}

.h-100 {
  height: 100% !important;
}
.pt-2,
.py-2 {
  padding-top: 0.5rem !important;
}
.mt-4 {
position: relative; left:10px;
}

.pcard {
    width: 350px;
    background-color:;
    border: none;
	position: relative;
    cursor: pointer;
    transition: all 0.5s
}
 th, td {
 	text-align: center;
 }
</style>
</head>

<body>

	<!-- 네브바 시작 -->
	<nav class="navbar navbar-expand-md bg-dark navbar-dark">
		<a class="navbar-brand" href="/">블로그</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#collapsibleNavbar">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="collapsibleNavbar">
			<ul class="navbar-nav">

				<c:choose>
					<c:when test="${empty sessionScope.principal}">
						<li class="nav-item"><a class="nav-link" href="/loginForm">로그인</a>
						</li>

						<li class="nav-item"><a class="nav-link" href="/joinForm">회원가입</a>
						</li>
					</c:when>
					<c:otherwise>
						<li class="nav-item"><a class="nav-link"
							href="/board/saveForm">글쓰기</a></li>

						<li class="nav-item"><a class="nav-link"
							href="/user/${sessionScope.principal.id}">회원정보</a></li>

						<li class="nav-item"><a class="nav-link" href="/logout">로그아웃</a>
						</li>
					</c:otherwise>
				</c:choose>




			</ul>
		</div>
	</nav>
	<br>
	<!-- 네브바 끝 -->
