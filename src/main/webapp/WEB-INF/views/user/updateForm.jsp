<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../layout/header.jsp"%>

<!-- <link href="/resources/css/user.css" rel="stylesheet" /> -->

<body class="bgcolor">
	<form method="post" action="">
		<div class="container login">
			<div class="insert">
				<div class="login_pw">
					<h4>Password</h4>
					<input type="password" name="password"
						placeholder="로그인 시 패스워드를 입력하세요">
				</div>
				<br>
				<div class="login_pw">
					<h4>New Password</h4>
					<input type="password" name="password"
						placeholder="새롭게 사용할 패스워드를 입력하세요">
				</div>
				<br>
				<div class="login_id">
					<h4>Contact</h4>
					<input type="text" name="contact" placeholder="변경할 연락처를 기재해주세요">
				</div>
				<br>
				<div class="create">
					<input class="but3" type="button" value="수정완료" onclick="">
					<input class="but4" type="button" value="수정취소"
						onclick="formCheck(this.form)">
				</div>
			</div>
		</div>
	</form>



	<%@ include file="../layout/footer.jsp"%>