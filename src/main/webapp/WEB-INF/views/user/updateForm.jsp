<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../layout/header.jsp"%>

<link href="/resources/css/user.css" rel="stylesheet"/>
<style type="text/css">
tr {width: 100%;}
</style>
<body class="bgcolor">
	<form method="post" action="">
		<div class="container">
			<div class="insert">

				<table>
					<tr>
						<td class="col1">
							<div style="width: 90%; height: 40px;">
								<div data-text-content="true" class="butt">New PW</div>
							</div>
						</td>
						<td class="col2"><input style="width: 90%;" type="password"
							name="password" placeholder="새로운 비밀번호를 입력하세요" maxlength="70">
					</tr>
					<tr>
						<td class="col1">
							<div style="width: 90%; height: 40px;">
								<div data-text-content="true" class="butt">Contact</div>
							</div>
						</td>
						<td class="col2"><input style="width: 90%;" type="text"
							name="contact" placeholder="연락가능한 전화번호" maxlength="25"></td>
					</tr>
					<tr>
					</tr>
					<tr>
						<td colspan="2" style="text-align: center; color: white;">※ 개인정보 수정 후 재로그인이 필요합니다.</td>
					</tr>
				</table>

				<div class="create">
					<input class="but3" type="button" value="수정완료" onclick="">
					<input class="but4" type="button" value="수정취소"
						onclick="formCheck(this.form)">
				</div>
			</div>
		</div>
	</form>
</body>
</html>


<%@ include file="../layout/footer.jsp"%>