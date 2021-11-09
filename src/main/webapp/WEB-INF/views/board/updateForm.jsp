<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/header2.jsp"%>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link href="/resources/css/board.css" rel="stylesheet" />
<body class="bgdcolor">

<div class="container margin-top-100" style="width:600px;" >
	<form onsubmit="update(event, ${boardEntity.board_id})" >
		<div class="row">
	    		<h2>판매물품 수정하기</h2>
		</div>
	    <div class="row">
	         		<div class="text_left" >
					<br>
		            	<label for="sell-title">제목:</label>
		                <input type="text" class="form-control" name="title" id="title" placeholder="${boardEntity.title}">
	              	</div>
	    </div>
	    <div class="row">
					<div class="form-group">
						<label class="text_left pad-t10" for="category">카테고리:</label>
							<select class="custom-select" id="category" name="category">
			                    <option value="${boardEntity.category}" selected>${boardEntity.category}</option>
			                    <option value="여행">여행</option>
			                    <option value="영화">영화</option>
			                    <option value="요리">요리</option>
	                    	</select>
					</div>
		</div>	        	
	    <div class="row">	              	
	                <div class="text_left">
					    <label for="price" >금액:</label>
					    <div class="input-group mb-3">
						  <div class="input-group-prepend">
						    <span class="input-group-text">$</span>
						  </div>
						  <input type="text" class="form-control" id="price" name="price" style = "text-align:right;" placeholder="${boardEntity.price} ">
						  <div class="input-group-append">
						    <span class="input-group-text">만 원</span>
						  </div>
						</div>
					</div>
		</div>
		<div class="row">
	            	<div class="text_left">
	                  <label for="content" >상세 글 적기:</label>
	                </div>
		</div>
		<div class="row" style="background-color:white; padding:0; margin:0; color:black;">
	            	<div class="text_left">
	                  <textarea class="form-control" name="content" id="summernote" rows="5" >
	                  ${boardEntity.content}
	                  </textarea>
	                </div>
		</div>
		
		
		
		<div class="row">	                
		        	<div class="text_left pad-t10">
		            	<label for="link" >MyTube 가치평가 연동주소:</label>
		                <input type="text" class="form-control" id="youtube" name="youtube" placeholder="${boardEntity.youtube}">
		            </div>
		</div>
		
		<div class="row">
		        	<div class="text-center margin-top-50">
		            	<button type="submit" class="btn btn-primary width100">완료</button>
		                <a type="button" class="btn btn-danger width100 marg-l30" href="/board/list?page=0">취소</a>
		            </div>
		        </div>
	</form>
</div>


<script>
async function update(event, id){ 
	   //console.log(event);
	   event.preventDefault();
	   // 주소 : PUT board/3
	   // UPDATE board SET title = ?, content = ? WHERE id = ?
	   let boardUpdateDto = {
			   title: document.querySelector("#title").value,
			   category: document.querySelector("#category").value,
			   price: document.querySelector("#price").value,
			   content: document.querySelector("#summernote").value,
			   youtube: document.querySelector("#youtube").value
	   };

		console.log(boardUpdateDto);
		console.log(JSON.stringify(boardUpdateDto));
		// JSON.stringify(자바스크립트 오브젝트) => 리턴 json 문자열
		// JSON.parse(제이슨 문자열) => 리턴 자바스크립트 함수

		
		// 3초
		let response = await fetch("http://localhost:8080/board/"+id, {
			method: "put",
			body: JSON.stringify(boardUpdateDto),
			headers: {
				"Content-Type": "application/json; charset=utf-8"
			}
		});
		
		let parseResponse = await response.json(); // 나중에 스프링함수에서 리턴될때 머가 리턴되는지 확인해보자!!
		
		// response.text()로 변경해서 확인해보자.
		console.log(parseResponse);
		
		if(parseResponse.code == 1){
			alert("업데이트 성공");
			location.href = "/board/"+id
		}else{
			alert("업데이트 실패 : "+parseResponse.msg);
		}
	}

</script>
<script>
	$('#summernote').summernote({
	    height: 350
	    
	});
</script>


</body>
</html>
<%@ include file="../layout/footer2.jsp"%>