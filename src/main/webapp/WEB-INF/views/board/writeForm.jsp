<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link href="resources/css/board.css" rel="stylesheet" />
<body class="bgdcolor">

<div class="container margin-top-100" style="width:600px" >
	<form method="post" action="#" onsubmit="myFunction()">
		<div class="row">
	    		<h2>판매물품 등록하기</h2>
		</div>
	    <div class="row">
	         		<div class="text_left" >
					<br>
		            	<label for="sell-title">제목:</label>
		                <input type="text" class="form-control" id="sell-title" placeholder="제목을 입력하세요">
	              	</div>
	    </div>
	    <div class="row">
					<div class="form-group">
						<label class="text_left pad-t10" for="category">카테고리:</label>
							<select class="custom-select">
			                    <option selected>선택</option>
			                    <option value="trip">여행</option>
			                    <option value="movie">영화</option>
			                    <option value="cook">요리</option>
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
						  <input type="text" class="form-control"  style = "text-align:right;" placeholder="단위: 만 원 ">
						  <div class="input-group-append">
						    <span class="input-group-text">만 원</span>
						  </div>
						</div>
					</div>
		</div>
		<div class="row">
	            	<div class="text_left">
	                  <label for="content" >상세 글 적기:</label>
	                  <textarea class="form-control" id="content" rows="5"></textarea>
	                </div>
		</div>
		<div class="row">	                
		        	<div class="text_left pad-t10">
		            	<label for="link" >MyTube 가치평가 연동주소:</label>
		                <input type="text" class="form-control" placeholder="주소를 입력하세요">
		            </div>
		</div>
		<div class="row">	            
	            	<div class="text_left pad-t10">
	                	<label for="formFile" class="form-label">이미지 첨부:</label>
	                	<input class="form-control" type="file"  multiple="multiple" id="formFile" onchange="setDetailImage(event);">
	                	<br>
	                </div>
		</div>
		<div class="row">
		        	<div class="text-center">
		            	<button type="submit" class="btn btn-primary width100">완료</button>
		                <button type="button" class="btn btn-danger width100 marg-l30" onclick="location.href='list' ">취소</button>
		            </div>
		        </div>
	</form>
</div>

<script>
	function myFunction() {
	  alert("등록완료 되었습니다");
	}
</script>

</body>
</html>
<%@ include file="../layout/footer.jsp"%>