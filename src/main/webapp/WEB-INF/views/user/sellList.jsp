<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp" %>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
 <link href="../resources/css/board.css" rel="stylesheet" />

<body class="bgdcolor">
<div class="container margin-top-100">
    <div class="row">
        <div class="col-md-4 col-xl-3">
            <div class="lcard bg-c-pink order-card">
                <div class="card-block">
                    <h6 class="m-b-20">판매완료</h6>
                    <h2 class="text-right"><i class="fa fa-credit-card f-left"></i><span>1</span></h2>
                </div>
            </div>
        </div>
	</div>
</div>



<div class="container">
    <div class="row">
        <div class="col-lg-12">
            <div class="card">
                <div class="card-body">
            	<div class="listTitle">
            	<h2>판매 종료 물품</h2>
            	</div>
                    <div class="table-responsive project-list">
                        <table class="table project-table table-centered table-nowrap">
                            <thead>
                                <tr>
                                    <th scope="col">거래현황</th>
                                    <th scope="col">카테고리</th>
                                    <th scope="col">제목</th>
                                    <th scope="col">거래금액</th>
                                    <th scope="col">등록일</th>
                                </tr>
                            </thead>
                            <tbody>
                                 <tr>
                                    <th scope="row" >
                                  	  <h5><span class="badge badge-danger">판매완료</span></h5>
                                    </th>
                                    <td>IT</td>
                                    <td>생활코딩 채널 팝니다</td>
                                    <td>
                                      1,000만원
                                    </td>
                                    <td>
                                        2021-11-10
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


</body>
</html>
<%@ include file="../layout/footer.jsp" %>