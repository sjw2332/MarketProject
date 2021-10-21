<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../layout/header.jsp"%>

<!-- <link href="/resources/css/user.css" rel="stylesheet" /> -->

<body class="bgcolor">
	<form method="post" action="">
		<div class="container login">
			<div class="insert">
				<div class="login_id">
					<br>
					<h4>E-mail</h4>
					<input type="text" name="username" placeholder="Email">
				</div>
				<br>
				<div class="login_pw">
					<h4>Password</h4>
					<input type="password" name="password" placeholder="Password">
				</div>
				<br> <br>
				<div class="create">
					<input class="but5" type="button" value="Login" onclick="">
					<input class="but3" type="button" value="회원찾기" onclick="">
					<input class="but4" type="button" value="Cancel"
						onclick="formCheck(this.form)">
				</div>
			</div>
		</div>
	</form>



<%@ include file="../layout/footer.jsp"%>