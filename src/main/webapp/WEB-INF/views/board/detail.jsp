<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link href="../resources/css/board.css" rel="stylesheet" />

<style>
body {
	min-height: 100vh;
}
.row>.input-form {
	max-width: 680px;
	min-width: 680px;
	/* margin-top: 80px; */
	padding: 32px;
	border: 1px solid #f82249; 
	-webkit-border-radius: 10px;
	-moz-border-radius: 10px;
	border-radius: 10px;
	-webkit-box-shadow: red;
	-moz-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
	box-shadow: 0px 0px 1px 1px red;
}
.row>.input-form-button {
	max-width: 680px;
	min-width: 680px;
	/* margin-top: 80px; */
	padding: 10px;
	/* border: 1px solid #f82249; 
	-webkit-border-radius: 10px;
	-moz-border-radius: 10px;
	border-radius: 10px;
	-webkit-box-shadow: red;
	-moz-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
	box-shadow: 0px 0px 1px 1px red; */
}

.conten {
	max-width: 150px;
	min-width: 150px;
	/* margin-top: 80px; */
	padding: 10px;
	border: 1px solid #f82249; 
	-webkit-border-radius: 10px;
	-moz-border-radius: 10px;
	border-radius: 10px;
	-webkit-box-shadow: red;
	-moz-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
	box-shadow: 0px 0px 1px 1px red;
}
.conten3 {
	/* max-width: 100px; */
	/* min-width: 100px; */
	display: inline-block;
	margin-top: 5px;
	padding: 10px;
	border: 1px solid #f82249; 
	-webkit-border-radius: 10px;
	-moz-border-radius: 10px;
	border-radius: 10px;
	-webkit-box-shadow: red;
	-moz-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
	box-shadow: 0px 0px 1px 1px red;
}
.conten2 {
	max-width: 680px;
	/* margin-top: 80px; */
	/* display: inline-block; */
	font-size: 30px;
	min-height: 350px;
	padding: 10px;
	border: 1px solid #f82249; 
	-webkit-border-radius: 10px;
	-moz-border-radius: 10px;
	border-radius: 10px;
	-webkit-box-shadow: red;
	-moz-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
	box-shadow: 0px 0px 1px 1px red;
}
.conten-yaddress {
	max-width: 680px;
	/* margin-top: 80px; */
	/* display: inline-block; */
	/* min-height: 350px; */
	padding: 10px;
	border: 1px solid #f82249; 
	-webkit-border-radius: 10px;
	-moz-border-radius: 10px;
	border-radius: 10px;
	-webkit-box-shadow: red;
	-moz-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
	box-shadow: 0px 0px 1px 1px red;
}
</style>


<body class="bgdcolor">

<div class="container margin-top-100">

		<!-- Page content wrapper-->
		<div id="page-content-wrapper">
			<!-- detail container-->
			<div class="container">
				<div class="input-form-backgroud row">
					<div class="input-form-button col-md-12 mx-auto" style="margin-bottom: 10px;">
					<c:if test="${sessionScope.principal.id == boardEntity.user.id}"> 
						<a href="/board/${boardEntity.board_id}/updateform" class="btn btn-warning">수정</a>
						<button class="btn btn-danger" onclick="deleteById(${boardEntity.board_id})">삭제</button>
					</c:if>
					</div>	
					<div class="input-form col-md-12 mx-auto">
						<!-- col-md-12:  mx-auto : 수평 센터 처리 -->
						<h4 class="mb-3">${boardEntity.title}</h4>
						<hr class="my-hr2" style="height: 2px">
						<div class="conten3" style="text-align: center">${boardEntity.category }</div>
						<br>
						<div class="conten3" style="text-align: center">가격: ${boardEntity.price } 만원 </div>
						<br>
						<div class="conten3" style="text-align: center;"> 판매자: ${boardEntity.user.email}</div>
						<hr class="my-hr2" style="height: 2px">
						<div class="conten2">
						${boardEntity.content }					
						</div>
						<hr class="my-hr2" style="height: 2px">
						<div class="conten-yaddress">https://www.youtube.com/c/${boardEntity.youtube }  </div>
						<br>
						<button type="button" class="btn btn-danger btn-block"  onclick="#">가치평가보기</button>

					</div>
				</div>

			</div>
		</div>





</div>
<script>
	async function deleteById(id){
		// 1. 비동기 함수 호출 -> 비동기를 잘처리하는 방법??????
		let response = await fetch("http://localhost:8080/board/"+id, {
			method: "delete"
		}); // 약속 - 어음 (10초)
		
		// 2.코드
		// json() 함수는 json처럼 생긴 문자열을 자바스크립트 오브젝트로 변환해준다.
		let parseResponse = await response.json();
		console.log(parseResponse); 
		
		if(parseResponse.code == 1){
			alert("삭제 성공");
			location.href="/board/list?page=0";
		}else{
			alert(parseResponse.msg);
			location.href="/board/"+id;
		}
	}

</script>
 
 
 
</body>
</html>
<%@ include file="../layout/footer.jsp"%>