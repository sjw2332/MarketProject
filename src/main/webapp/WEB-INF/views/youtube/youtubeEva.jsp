<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="../layout/header.jsp" %>

	 
	
	<div class="container prof">
		<div class="item photo">
			 <div class=" image d-flex flex-column "> 
		        <button class="btn btn-secondary">
		         	<img src="https://i.imgur.com/wvxPV9S.png" height="100" width="100" />
		        </button>
		        <button class="btn1 btn-dark" >방문하기</button>
	        </div>
		</div>
		<div class="item profile">
			<ul style="list-style:none;">
	    		<li><h5><i class="fa fa-youtube-play f-left"></i></h5>&nbsp;&nbsp;채널명 : 생활코딩</li>
	    		<li><h5><i class="fa fa-calendar f-left"></i></h5> &nbsp;&nbsp;가입일 : 2008-04-28</li>
	    		<li><h5><i class="fa fa-flag f-left"></i></h5> &nbsp;&nbsp;국가 : 한국</li>
	    		<li><h5><i class="fa fa-comment f-left"></i></h5> &nbsp;&nbsp;언어 : 한국어</li>
	    	</ul>
		</div>
	</div>
	
		<div class="container intro">
		일반인에게 프로그래밍을 알려주는 온라인/오프라인 활동 입니다.
		<br>
	             
		</div>
		
	<div class = "container">
		 <!-- Content Row -->
         <div class="row" id="evabox">

             <!--구독자 카드 -->
             <div class="col-xl-3 col-md-6 mb-4">
                 <div class="card border-left-primary shadow h-100 py-2">
                     <div class="card-body">
                         <div class="row no-gutters align-items-center">
                             <div class="col mr-2">
                                 <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">
                                     구독자</div>
                                 <div class="h5 mb-0 font-weight-bold text-gray-800">26.9만</div>
                             </div>
                             <div class="col-auto">
                             </div>
                         </div>
                     </div>
                 </div>
             </div>
			 <!--구독자 카드 끝 -->	
             <!-- 조회수 카드 -->
             <div class="col-xl-3 col-md-6 mb-4">
                 <div class="card border-left-success shadow h-100 py-2">
                     <div class="card-body">
                         <div class="row no-gutters align-items-center">
                             <div class="col mr-2">
                                 <div class="text-xs font-weight-bold text-success text-uppercase mb-1">
                                     조회수</div>
                                 <div class="h5 mb-0 font-weight-bold text-gray-800">6596.58만</div>
                             </div>
                             <div class="col-auto">
                             </div>
                         </div>
                     </div>
                 </div>
             </div>
			 <!-- 조회수 카드 끝-->
             <!-- 평균조회수 카드 -->
             <div class="col-xl-3 col-md-6 mb-4">
                 <div class="card border-left-info shadow h-100 py-2">
                     <div class="card-body">
                         <div class="row no-gutters align-items-center">
                             <div class="col mr-2">
                                 <div class="text-xs font-weight-bold text-info text-uppercase mb-1">평균조회수
                                 </div>
                                 <div class="row no-gutters align-items-center">
                                     <div class="col-auto">
                                         <div class="h5 mb-0 mr-3 font-weight-bold text-gray-800">4224</div>
                                     </div>
                                 </div>
                             </div>
                             <div class="col-auto">
                             </div>
                         </div>
                     </div>
                 </div>
             </div>
			 <!-- 평균조회수 카드 끝 -->
             <!-- 동영상갯수 카드 -->
             <div class="col-xl-3 col-md-6 mb-4">
                 <div class="card border-left-warning shadow h-100 py-2">
                     <div class="card-body">
                         <div class="row no-gutters align-items-center">
                             <div class="col mr-2">
                                 <div class="text-xs font-weight-bold text-warning text-uppercase mb-1">
                                     동영상</div>
                                 <div class="h5 mb-0 font-weight-bold text-gray-800">4173</div>
                             </div>
                             <div class="col-auto">
                             </div>
                         </div>
                     </div>
                 </div>
             </div>
             <!-- 동영상갯수 카드 끝-->
         	 <!-- 광고단가 카드 -->
             <div class="col-md-6 mb-4 " >
                 <div class="card border-left-danger shadow h-100 py-2">
                     <div class="card-body">
                         <div class="row no-gutters align-items-center">
                             <div class="col mr-2">
                                 <div class="text-xs font-weight-bold text-warning text-uppercase mb-1">
                                     광고단가</div>
                                 <div class="h5 mb-0 font-weight-bold text-gray-800">￦ 237.98만 ( 동영상 1개당 )</div>
                             </div>
                             <div class="col-auto">
                             </div>
                         </div>
                     </div>
                 </div>
             </div>
             <!-- 광고단가 카드 끝 -->
             <!-- 월매출예상 카드 -->
             <div class="col-md-6 mb-4"  >
                 <div class="card border-left-danger shadow h-100 py-2">
                     <div class="card-body">
                         <div class="row no-gutters align-items-center">
                             <div class="col mr-2">
                                 <div class="text-xs font-weight-bold text-warning text-uppercase mb-1">
                                     월매출예상</div>
                                 <div class="h5 mb-0 font-weight-bold text-gray-800">￦ 41.41만-￦ 124.25만</div>
                             </div>
                             <div class="col-auto">
                             </div>
                         </div>
                     </div>
                 </div>
             </div>
			 <!-- 월매출예상 카드 끝 -->
         <!-- Content Row -->
         
          <!-- 동영상 퍼포먼스 표  -->
          <div style="width:100%;">
              <div class="card row">
                  <h5 class="card-header">동영상 퍼포먼스</h5>
                  <div class="card-body p-0">
                      <div class="table-responsive">
                          <table class="table">
                              <thead class="bg-light">
                                  <tr class="border-0">
                                      <th class="border-0">참여율</th>
                                      <th class="border-0">조회수/구독자</th>
                                      <th class="border-0">좋아요/조회수</th>
                                      <th class="border-0">댓글/조회수</th>
                                      <th class="border-0">싫어요/조회수</th>
                                  </tr>
                              </thead>
                              <tbody>
                                  <tr>
                                      <td>4.54%</td>
                                      <td>4.54%</td>
                                      <td>4.54%</td>
                                      <td>4.54%</td>
                                      <td><span class="badge-dot badge-brand mr-1"></span>InTransit </td>
                                  </tr>
                                 
                              </tbody>
                              <br>
                          </table>
                      </div>
                  </div>
              </div>
          </div>
          <!--동영상 퍼포먼스 표 끝  -->
         
         
         
		</div>

	</div>
</body>
</html>

<%@ include file="../layout/footer.jsp" %>
