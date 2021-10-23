<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp" %>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link href="resources/css/board.css" rel="stylesheet" />
<body class="bgdcolor">

<div class="container">
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
                                <tr>
                                    <th scope="row" >
                                    <h5><span class="badge badge-success">거래중</span></h5>
                                    </th>
                                    <td>IT</td>
                                    <td>생활코딩 채널 팝니다</td>
                                    <td>
                                      5,000만원
                                    </td>
                                    <td>
                                        2021-10-19
                                    </td>
                                </tr>
                                 <tr>
                                    <th scope="row">
                                     <h5><span class="badge badge-primary">판매등록</span></h5>
                                    </th>
                                    <td>게임</td>
                                    <td>LCK Korea 채널 팝니다</td>
                                    <td>
                                      5,000만원
                                    </td>
                                    <td>
                                        2021-10-19
                                    </td>
                                </tr>
                                 <tr>
                                    <th scope="row">
                                      <h5><span class="badge badge-warning">등록대기중</span></h5>
                                    </th>
                                    <td>요리</td>
                                    <td>백종원의 요리비책 채널 팝니다</td>
                                    <td>
                                      5,000만원
                                    </td>
                                    <td>
                                        2021-10-19
                                    </td>
                                </tr>
                                 <tr>
                                    <th scope="row" >
                                  	  <h5><span class="badge badge-danger">판매완료</span></h5>
                                    </th>
                                    <td>게임</td>
                                    <td>Final Fantasy 5 팝니다</td>
                                    <td>
                                      5,000만원
                                    </td>
                                    <td>
                                        2021-10-19
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <!-- end project-list -->
                </div>
            </div>
        </div>
    </div>
    <!-- end row -->
	</div>
</div>
</body>
</html>
<%@ include file="../layout/footer.jsp"%>