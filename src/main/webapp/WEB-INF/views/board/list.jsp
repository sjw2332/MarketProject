<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp" %>
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">

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

    <div class="row" style="padding-top:80px;">
        <div class="col-lg-12">
             <div class="card-body">
               <div class="listTitle">
               <h2>판매글 전체</h2>
               </div>
                    <div class="table-responsive project-list">
                        <table class="table project-table table-centered table-nowrap">
                            <thead>
                                <tr>
                                    <th scope="col">분류</th>
                                    <th scope="col">카테고리</th>
                                    <th scope="col">제목</th>
                                    <th scope="col">거래금액</th>
                                    <th scope="col">등록일</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <th scope="row" class="text-success font-12">거래중
                                    <br>
                                    <h3><span class="badge badge-success">거래중</span></h3>
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
                                    <th scope="row" class="text-primary font-12">판매등록</th>
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
                                    <th scope="row" class="text-warning font-12">등록대기중</th>
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
                                    <th scope="row" class="text-danger font-12">판매완료</th>
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
    <!-- end row -->
   
</div>

</body>
</html>