<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp" %>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link href="../resources/css/board.css" rel="stylesheet" />

<body class="bgdcolor">
<div class="container margin-top-50">
    <div class="row">
        
        <div class="col-sm">
            <div class="lcard bg-c-blue order-card">
                <div class="card-block">
                    <h6 class="m-b-20">판매중</h6>
                    <h2 class="text-right"><i class="fa fa-cart-plus f-left"></i><span>0 개</span></h2>
                </div>
            </div>
        </div>
        
        <div class="col-sm">
            <div class="lcard bg-c-green order-card">
                <div class="card-block">
                    <h6 class="m-b-20">거래중</h6>
                    <h2 class="text-right"><i class="fa fa-rocket f-left"></i><span>1 개</span></h2>
                </div>
            </div>
        </div>
     
        <div class="col-sm">
            <div class="lcard bg-c-yellow order-card">
                <div class="card-block">
                    <h6 class="m-b-20">등록대기중</h6>
                    <h2 class="text-right"><i class="fa fa-refresh f-left"></i><span>0개</span></h2>
                </div>
            </div>
        </div>
        
        <div class="col-sm">
            <div class="lcard bg-c-pink order-card">
                <div class="card-block">
                    <h6 class="m-b-20">판매완료</h6>
                    <h2 class="text-right"><i class="fa fa-credit-card f-left"></i><span>0개</span></h2>
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
            	<h2>나의 판매 물품</h2>
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
                                    <h5><span class="badge badge-success">거래중</span></h5>
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
    <!-- 구매물품테이블 -->
    <div class="row" style="margin-top:100px;">
        <div class="col-lg-12">
            <div class="card">
                <div class="card-body">
            	<div class="listTitle">
            	<h2>나의 구매 물품</h2>
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