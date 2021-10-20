<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>


<div class="container" style="margin-top:30px;">
   <h2>판매물품 수정하기</h2>

   <div  style="margin-top:30px; margin-left:80px;">
     <form onsubmit="#">
      <table height=500px>
         <tr>
           <td colspan="2">
              <div class="form-inline" >
                 <label for="category" style="margin-right:47px;">제목:</label>
                 <input type="text" class="form-control" style="width:880px;" placeholder="제목을 입력하세요">
              </div>
             </td>
           </tr>
           <tr>
              <td colspan="2">
                 <div style="margin:auto; text-align:left; margin-top:20px">
                   <label for="category" style="margin-right:10px;">카테고리:</label>
                   <select name="select-category" class="custom-select" style="width:200px; margin-right:230px;">
                     <option selected>선택</option>
                     <option value="volvo">영화</option>
                     <option value="fiat">Vlog</option>
                     <option value="audi">요리</option>
                   </select>
                </div>
             </td>
         </tr>
         <tr>
              <td colspan="2">
                <div class="form-inline"  style="margin-top:20px;">
                <label for="price"  style="margin-right:47px;">금액:</label>
                <input type="text" class="form-control" style="width:200px; text-align:right; margin-right:10px;" placeholder="금액 입력">
                <label for="unit">만원</label>
               </div>
             </td>
           </tr>
         <tr>
              <td colspan="2">
                 <div class="form-group" style="width:965px; margin-top:15px;">
                  <label for="content" >상세 글 적기:</label>
                  <textarea class="form-control" id="content" rows="5"></textarea>
               </td>
          </tr>
         <tr>
            <td width=20%>
                <label for="link" >MyTube 가치평가 연동주소:</label>
             </td>
             <td width=80%>
                <input type="text" class="form-control" style="width:764px" placeholder="주소를 입력하세요">
             </td>
          </tr>
          <tr>
             <td colspan="2">
                <div class="form-group">
                  <label for="formFile" class="form-label mt-4">이미지 첨부:</label>
                  <input class="form-control" type="file"  multiple="multiple" id="formFile" onchange="setDetailImage(event);"style="width:967px;">
                </div>
             </td>
          </tr>          
          <tr>
             <td colspan="2" style="text-align:center;">
                <button type="submit" class="btn btn-primary" style="width:100px;">수정</button>
                <button type="button" class="btn btn-danger" style="width:100px; margin-left:50px;">취소</button>
             </td>
          </tr>
          </table>
      </form>
     </div>
   </div>


<!--  Blog 수업 베껴오기
  <script>
       async function update(event, id){ 
          //console.log(event);
          event.preventDefault();
          // 주소 : PUT board/3
          // UPDATE board SET title = ?, content = ? WHERE id = ?
          let boardUpdateDto = {
                title: document.querySelector("#title").value,
                content: document.querySelector("#content").value,
          };
       
             console.log(boardUpdateDto);
             console.log(JSON.stringify(boardUpdateDto));
             // JSON.stringify(자바스크립트 오브젝트) => 리턴 json 문자열
             // JSON.parse(제이슨 문자열) => 리턴 자바스크립트 함수
       
             
             // 3초
             let response = await fetch("http://localhost:8080/board/"+id, {
                method: "put",
                body: JSON.stringify(boardUpdateDto),
                headers: {
                   "Content-Type": "application/json; charset=utf-8"
                }
             });
             
             let parseResponse = await response.json(); // 나중에 스프링함수에서 리턴될때 뭐가 리턴되는지 확인해보자!!
             
             // response.text()로 변경해서 확인해보자.
             console.log(parseResponse);
             
             if(parseResponse.code == 1){
                alert("업데이트 성공");
                location.href = "/board/"+id
             }else{
                alert("업데이트 실패 : "+parseResponse.msg);
             }
       }
  
        $('#content').summernote({
             height: 350
        });
  </script>
-->
</body>
</html>