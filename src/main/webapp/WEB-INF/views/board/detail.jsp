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
	border-bottom: 2px solid #f82249; 
	/* -webkit-border-radius: 10px; */
	-moz-border-radius: 10px;
	/* border-radius: 10px; */
	-webkit-box-shadow: red;
	-moz-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
	/* box-shadow: 0px 0px 1px 1px red; */
}
.conten3-category {
	/* max-width: 100px; */
	/* min-width: 100px; */
	display: inline-block;
	margin-top: 5px;
	padding: 10px;
	border-bottom: 1px solid #f82249; 
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
						<a href="/board/${boardEntity.board_id}/updateform" class="btn btn-warning">??????</a>
						<button class="btn btn-danger" onclick="deleteById(${boardEntity.board_id})">??????</button>
					</c:if>
					</div>	
					<div class="input-form col-md-12 mx-auto">
						<!-- col-md-12:  mx-auto : ?????? ?????? ?????? -->
						<h4 class="mb-3">${boardEntity.title}</h4>
						<hr class="my-hr2" style="height: 2px">
						<div class="conten3-category" style="text-align: center">${boardEntity.category }</div>
						<br>
						<div class="conten3" style="text-align: center">??????: ${boardEntity.price } ?????? </div>
						<br>
						<div class="conten3" style="text-align: center;"> ?????????: ${boardEntity.user.email}</div>
						<hr class="my-hr2" style="height: 2px">
						<div class="conten2">
						${boardEntity.content }					
						</div>
						<hr class="my-hr2" style="height: 2px">
						<div class="conten-yaddress">https://www.youtube.com/c/${boardEntity.youtube }  </div>
						<br>
						<button type="button" class="btn btn-danger btn-block" onclick="openPop()">??????????????????</button>
						<br>
							<button type="button" class="btn btn-info btn-block"  onclick="buyById(${boardEntity.board_id})">????????????</button>

				</div>

			</div>
		</div>





</div>
<script>
	async function deleteById(id){
		// 1. ????????? ?????? ?????? -> ???????????? ??????????????? ????????????
		let response = await fetch("http://localhost:8080/board/"+id, {
			method: "delete"
		}); // ?????? - ?????? (10???)
		
		// 2.??????
		// json() ????????? json?????? ?????? ???????????? ?????????????????? ??????????????? ???????????????.
		let parseResponse = await response.json();
		console.log(parseResponse); 
		
		if(parseResponse.code == 1){
			alert("?????? ??????");
			location.href="/board/list?page=0";
		}else{
			alert(parseResponse.msg);
			location.href="/board/"+id;
		}
	}
	
	async function buyById(id){ 
		// 1. ????????? ?????? ?????? -> ???????????? ??????????????? ????????????
		let boardSaveReqDto = {
		   board_id: ${boardEntity.board_id},
	/* 	   title: ${boardEntity.title}, */
		   buyerId: ${sessionScope.principal.id}
			 };
		let response = await fetch("http://localhost:8080/board/"+id+"/buy", {
		method: "put",
		body: JSON.stringify(boardSaveReqDto),
		headers: {
			"Content-Type": "application/json; charset=utf-8"
		}
		});
		
		// 2.??????
		// json() ????????? json?????? ?????? ???????????? ?????????????????? ??????????????? ???????????????.
		let parseResponse = await response.json();
		console.log(parseResponse); 
		
		if(parseResponse.code == 1){
			alert("?????? ??????");
			location.href="/board/list?page=0";
		}else{
			//alert(parseResponse.msg);
			//location.href="/";
		}
	}
	

</script>
<script>
function openPop(){
	var popup = window.open('http://localhost:8080/test/eva', '?????????','width=800, height=600')
}
</script>
 
 
 
</body>
</html>
<%@ include file="../layout/footer.jsp"%>