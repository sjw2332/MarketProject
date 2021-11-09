<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="layout/header.jsp" %>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link href="../resources/css/board.css" rel="stylesheet" />

<style>
body {
	min-height: 100vh;
}
.row>.input-form {
	max-width: 1000px;
	margin-top: 80px;
	padding: 32px;
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
	<!-- <div class="input-group mb-3">
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
	</div> -->

	<!-- Page content wrapper-->
		<div id="page-content-wrapper">

			<!-- Page content-->


			<div class="container">


				<div class="input-form-backgroud row">
					<div class="input-form col-md-12 mx-auto" >
						<!-- col-md-12:  mx-auto : 수평 센터 처리 -->
						<h4 class="mb-3" >등록대기중인 게시글</h4>
						<hr class="my-hr2" style="height: 2px">
				<div class="card">
                <div class="card-body">
            	<div class="listTitle">
				  <h2>판매 게시판</h2>
            	</div>
                    <div class="table-responsive project-list">
                        <table class="table project-table table-centered table-nowrap">
                            <thead class="text-center">
                                <tr>
                                    <th scope="col">거래현황</th>
                                    <th scope="col">카테고리</th>
                                    <th scope="col">제목</th>
                                    <th scope="col">거래금액</th>
                                    <th scope="col">등록일</th>
                                    <th scope="col">  </th>
                                </tr>
                            </thead>
                            
                            <tbody class="text-center">
                               	<c:forEach var="board" items="${boardsEntity.content}">
	                        <!-- 해당 페이지에 띄울 거래단계 설정 -->
	                        	<c:if test="${board.tradelvl eq 0}"> 
                               
                                <tr> 
                                    <th scope="row" >
                                  	  <h5><span class="badge badge-success">거래대기중</span></h5>
                                    </th>
                                    <td>${board.category}</td>
                                    <td><a href="/board/${board.board_id}">${board.title}</a></td>
                                    <td>${board.price} </td>
                                    <td>${board.writtenDate}</td>
                               		<td><button type="button" class="btn btn-outline-danger btn-sm"  onclick="#">삭제하기</button></td>
                                </tr>
                           		</c:if>
                                </c:forEach> 
                            </tbody>
                            
                            
	                       </table>
	                <!-- 페이징 버튼 -->
					<ul class="pagination d-flex justify-content-center margin-top-50">
						<c:choose>
							<c:when test="${boardsEntity.first eq true}">
								<li class="page-item disabled"><a class="page-link"
									href="/admin?page=${boardsEntity.number - 1}">Prev</a></li>
							</c:when>
							<c:otherwise>
								<li class="page-item"><a class="page-link"
									href="/admin?page=${boardsEntity.number - 1}">Prev</a></li>
							</c:otherwise>
						</c:choose>

						<c:choose>
							<c:when test="${boardsEntity.last eq true}">
								<li class="page-item disabled"><a class="page-link"
									href="/admin?page=${param.page + 1}">Next</a></li>
							</c:when>
							<c:otherwise>
								<li class="page-item"><a class="page-link"
									href="/admin?page=${param.page + 1}">Next</a></li>
							</c:otherwise>
						</c:choose>
					</ul>
					 <!-- 페이징 버튼 끝-->
					</div>
                    <!-- end project-list -->
                </div>
           		</div>
				</div>
				</div>
			</div>
		</div>

<%@ include file="layout/footer.jsp"%>