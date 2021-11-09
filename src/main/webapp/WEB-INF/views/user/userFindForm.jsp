<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../layout/header.jsp"%>

<!-- <link href="/resources/css/user.css" rel="stylesheet" /> -->

<body class="bgcolor">
	<form>
		<div class="container login">
			<div class="insert">
				<div class="mb-3">
					<label for="email">이메일</label> <input type="email"
						class="form-control" name="email" placeholder="이메일" id="email" required>
					<div class="invalid-feedback">이메일을 입력해주세요.</div>
				</div>

				<div class="mb-3">
					<label for="password">이름 </label> <input type="text"
						class="form-control" name="name" placeholder="이름" id="name" required>
					<div class="invalid-feedback">이름을 다시 입력해주세요.</div>
				</div>

				<div class="mb-3">
					<label for="address">연락처</label> <input type="text"
						class="form-control" name="phone" placeholder="연락처" id="phone" required>
					<div class="invalid-feedback">연락처를 입력해주세요.</div>
				</div>

					<input class="but3" type="submit" value="회원찾기" onclick="findPw(event)">
					<input class="but4" type="button" value="취소"
						onclick="formCheck(this.form)">
				</div>
			</div>
		</form>
				<!-- The Modal -->
	<div class="modal fade" id="pwdFindModal">
		<div class="modal-dialog">
			<div class="modal-content">

				<!-- Modal Header -->
				<div class="modal-header">
					<h4 class="modal-title">비밀번호 변경하기</h4>
					<!-- <button type="button" class="btn-close" data-bs-dismiss="modal"></button>  -->
				</div>

				<!-- Modal body -->
				<form onsubmit="changePw(event)">
					<div class="modal-body">
						<label for="password">비밀번호</label> 
						<input type="password" class="form-control inputs" id="m_password" placeholder="패스워드를 입력하세요" name="m_password" required>
					</div>
				
					<!-- Modal footer -->
					<div class="modal-footer">
						<button type="submit" class="btn btn-success">변경</button>
						<button type="button" class="btn btn-danger" data-bs-dismiss="modal" onclick="window.location.reload()">닫기</button>
					</div>

			
				</form>
			</div>
		</div>
	</div>

	<script>
	async function findPw(event) {
		event.preventDefault();
	  			
		console.log(document.querySelector("#email").value);
		console.log(document.querySelector("#name").value);
		console.log(document.querySelector("#phone").value);

		let IdFindDto = {
			   email: document.querySelector("#email").value,
			   name: document.querySelector("#name").value,
			   phone: document.querySelector("#phone").value
	   };
		
		console.log(IdFindDto);

		let response = await fetch("http://localhost:8080/user/findPw/modal", {
			method: "post",
			body: JSON.stringify(IdFindDto),
			headers: {
				"Content-Type": "application/json; charset=utf-8"
			}
		});
		
		let parseResponse = await response.json();
		console.dir(parseResponse);
		if(parseResponse.code == 1){
			$("#pwdFindModal").modal('show');
			
		}else{
			alert("업데이트 실패 : "+parseResponse.msg);
		}

	}
	</script>
	<script>
	async function changePw(event) {
		event.preventDefault();
		
		console.log(document.querySelector("#m_password").value);
		
		let pwChange = {
			   password: document.querySelector("#m_password").value
	   };
		
		console.log(pwChange);
		
		let response = await fetch("http://localhost:8080/user/changePw", {
			method: "put",
			body: JSON.stringify(pwChange),
			headers: {
				"Content-Type": "application/json; charset=utf-8"
			}
		});
		
		let parseResponse = await response.json();
		console.dir(parseResponse);

		if(parseResponse.code == 1){
			alert(parseResponse.msg);
			//location.href= "/user/loginForm";
			
		}else{
			alert("업데이트 실패 : "+parseResponse.msg);
		}

	}

	</script>



	<%@ include file="../layout/footer.jsp"%>