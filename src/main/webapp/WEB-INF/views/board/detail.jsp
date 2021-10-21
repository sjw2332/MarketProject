<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>

 <style>
  /* Make the image fully responsive */
  .carousel-inner img {
    width: 100%;
    height: 100%;
  }
 </style>

 <div class="container">
   <div class="input-group mb-3" style="width:850px; margin: auto;">
     <input type="text" class="form-control" placeholder="키워드를 검색해주세요">
     <div class="input-group-append">
       <button class="btn btn-secondary" type="submit">Search</button>
     </div>
   </div>

   <div style="margin:auto; text-align:center; margin-top:50px;">
     <form action="#" >
       <label for="category" style="margin-right:10px;">카테고리:</label>
       
       <select name="select-category" class="custom-select" style="width:200px; margin-right:50px;">
         <option selected>모든</option>
         <option value="volvo">영화</option>
         <option value="fiat">Vlog</option>
         <option value="audi">요리</option>
       </select>
       <label for="country" style="margin-right:10px;">국가 및 지역:</label>
       <select name="select-country" class="custom-select" style="width:200px; margin-right:50px;">
         <option selected>전체 지역</option>
         <option value="volvo">미국</option>
         <option value="fiat">일본</option>
         <option value="audi">중국</option>
       </select>
       <label for="subscribers" style="margin-right:10px;">구독자:</label>
       <select name="select-subscribers" class="custom-select" style="width:200px; margin-right:50px;">
         <option selected>모든</option>
         <option value="volvo">5만 이하</option>
         <option value="fiat">5-10만</option>
         <option value="audi">10-20만</option>
       </select>
     </form>
   </div>    

  <div class="container" style="padding-top:80px; padding-bottom:50px;">
   <h2>판매물품 상세보기</h2>
   <div class="container-fluid" style="color:white;">
     <div class="row">
        <div class="col-lg-12" style="background-color:black;">
           <div style="padding-top:30px; padding-bottom:10px; padding-left:10px;">
              <h5>제목: 국내 여행유튜브 참여율 높음</h5>
           </div>
        </div>
     </div>
     <div class="row">
       <div class="col-lg-4" style="background-color:black;">
          <div style="padding-top:20px; padding-bottom:10px; padding-left:10px;">
          <h6>카테고리: 여행</h6>
          <h6 style="padding-bottom:30px;">거래금액: 5000만</h5>
          <p>여행블로그를 바탕으로 만들어진 유튜브입니다. 여행전문 유튜브페이지이고 광고는 여행용 광고만 받아서 신뢰도가 높습니다.</p>
          </div>
       </div>
       <div class="col-lg-8" style="background-color:black;">
         <div id="demo" class="carousel slide" data-ride="carousel">
         
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
           <div class="col-lg-12" style="background-color:black; text-align:center; padding-top:20px; padding-bottom:30px;">
           <button type="submit" class="btn btn-light" style="width:100px;">구매</button>
           <button type="button" class="btn btn-secondary" style="width:100px; margin-left:50px;">취소</button>
         </div>
        </div>
   </div>
  </div>
 </div>
</body>

</html>