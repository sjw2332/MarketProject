<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp" %>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link href="../resources/css/board.css" rel="stylesheet" />
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

<div>
    <div class="row">
        <div class="col-lg-12">
            <div class="card">
                <div class="card-body">
            	<div class="listTitle">
				  <button type="button" class="btn btn-outline-danger btn float-right btn-border" style="width:79px;" onclick="location.href='writeform' ">글쓰기</button>
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
                                </tr>
                            </thead>
                            
                            <tbody class="text-center">
                               	<c:forEach var="board" items="${boardsEntity.content}">
	                        <!-- 해당 페이지에 띄울 거래단계 설정 -->
	                        	<c:if test="${board.tradelvl eq 1}"> 
                               
                                <tr> 
                                    <th scope="row" >
                                  	  <h5><span class="badge badge-primary">판매중</span></h5>
                                    </th>
                                    <td>${board.category}</td>
                                    <td><a href="/board/${board.board_id}">${board.title}</a></td>
                                    <td>${board.price} </td>
                                    <td>${board.writtenDate}</td>
                               
                                </tr>
                           		</c:if>
                                </c:forEach> 
                            </tbody>
                            
                            
                        </table>
                    </div>
                    <!-- end project-list -->
                </div>
            </div>
        </div>
    </div>
    <!-- end row -->
	   	<ul class="pagination d-flex justify-content-center margin-top-50">
		<c:choose>
			<c:when test="${boardsEntity.first eq true}">
				<li class="page-item disabled"><a class="page-link"
					href="/board/list?page=${boardsEntity.number - 1}">Prev</a></li>
			</c:when>
			<c:otherwise>
				<li class="page-item"><a class="page-link"
					href="/board/list?page=${boardsEntity.number - 1}">Prev</a></li>
			</c:otherwise>
		</c:choose>

		<c:choose>
			<c:when test="${boardsEntity.last eq true}">
				<li class="page-item disabled"><a class="page-link"
					href="/board/list?page=${param.page + 1}">Next</a></li>
			</c:when>
			<c:otherwise>
				<li class="page-item"><a class="page-link"
					href="/board/list?page=${param.page + 1}">Next</a></li>
			</c:otherwise>
		</c:choose>
	</ul>
	</div>
</div>
</body>
</html>
<%@ include file="../layout/footer.jsp"%>