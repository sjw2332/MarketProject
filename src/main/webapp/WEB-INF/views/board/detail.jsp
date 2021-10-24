<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link href="resources/css/board.css" rel="stylesheet" />
<body class="bgdcolor">

<div class="container margin-top-100">
	<div class="input-group mb-3">
	  <div class="input-group-prepend">
				<select class="custom-select">
                   <option selected>카테고리</option>
                   <option value="trip">여행</option>
                   <option value="movie">영화</option>
                   <option value="cook">요리</option>
				</select>
	    </div>
	  		<input type="text" class="form-control" placeholder="검색">
	  	<div class="input-group-append">
    		<button class="btn btn-danger width100" type="submit">Search</button>
  		</div>
	</div>


  <div class="pad-t10">
   <h2 class="letter-white">판매물품 상세보기</h2>
   <div class="container" >
     <div class="row">
        <div class="col-lg-12 pad-lb20 cont-color" >
           <div class="pad-t20">
				<button type="button" class="btn btn-outline-danger btn float-right btn-border" style="width:83px;" onclick="location.href='updateform' ">수정</button>
              	<h5>제목: 국내 여행유튜브 참여율 높음</h5>
           </div>
        </div>
     </div>
     <div class="row">
       <div class="col-lg-4 pad-lb20 cont-color">
          <div>
	          <h6>카테고리: 여행</h6>
	          <h6>거래금액: 5000만</h6>
	          <p class="pad-t10">여행블로그를 바탕으로 만들어진 유튜브입니다. 여행전문 유튜브페이지이고 광고는 여행용 광고만 받아서 신뢰도가 높습니다.</p>
          </div>
       </div>
       <div class="col-lg-8 cont-color">
         <div style="padding-right:10px;" id="demo" class="carousel slide" data-ride="carousel">
         
           <!-- Indicators -->
           <ul class="carousel-indicators">
             <li data-target="#demo" data-slide-to="0" class="active"></li>
             <li data-target="#demo" data-slide-to="1"></li>
             <li data-target="#demo" data-slide-to="2"></li>
           </ul>
           
           <!-- The slideshow -->
           <div class="carousel-inner">
             <div class="carousel-item active">
               <img src="resources/img/la.jpg" alt="Los Angeles">
             </div>
             <div class="carousel-item">
               <img src="resources/img/chicago.jpg" alt="Chicago">
             </div>
             <div class="carousel-item">
               <img src="resources/img/ny.jpg" alt="New York">
             </div>
           </div>
           
           <!-- Left and right controls -->
           <a class="carousel-control-prev" href="#demo" data-slide="prev">
             <span class="carousel-control-prev-icon"></span>
           </a>
           <a class="carousel-control-next" href="#demo" data-slide="next">
             <span class="carousel-control-next-icon"></span>
           </a>
         </div>
      </div>
     </div>
        <div class="row">
	        <div class="col-lg-12 cont-color pad-tb20" >
	        <div class="form-group">
	        	<button type="submit" class="btn btn-primary btn float-left" style="width:150px;">구매하기</button>
	        </div>
	        </div>
        </div>
   </div>
  </div>
 </div>
</body>
</html>
<%@ include file="../layout/footer.jsp"%>