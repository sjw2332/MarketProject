<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>

<%@ include file="../layout/header.jsp"%>

<!-- <link href="/resources/css/user.css" rel="stylesheet" /> -->

<body class="bgcolor">
   <form method="post" action="/join">
      <div class="container login">
         <div class="insert">
            <div class="login_id">
               <br>
               <h4>E-mail</h4>
               <input type="text" name="email"  placeholder="Email" class="email regex" required="required">
               <!-- <input type="button" value="중복확인" id="email"> -->
            </div>
            <br>
            <div class="login_pw">
               <h4>Password</h4>
               <input type="password" name="password"  placeholder="Password" required="required">
            </div>
            <br>
            <div class="login_id">
               <h4>Name</h4>
               <input type="text" name="name" placeholder="Name" class="name regex" required="required">
            </div>
            <br>
       <!--      <div class="login_id">
               <h4>Birth</h4>
               <input type="text" name="birth" placeholder="생년월일을 입력해주세요" required="required">
            </div> -->
            <br>
            <div class="login_id">
               <h4>Contact</h4>
               <input type="text" name="phone" placeholder="통화가능한 연락처를 입력해주세요" class="phone" required="required">
            </div>
            <br>
            <div class="login_id">
               <h4>Bank</h4>
               <input type="text" name="bank" placeholder="거래은행을 입력해주세요" class="bank" required="required">
            </div>
            <br>
            <div class="login_id">
               <h4>Account</h4>
               <input type="text" name="account" placeholder="계좌번호를 입력해주세요" class="account" required="required">
            </div>
            <br>
            <br>
            <div class="create">
               <input class="but3" type="submit" value="회원가입">
               <input class="but4" type="button" value="회원취소" onclick="formCheck(this.form)">
            </div>
         </div>
      </div>
      
   </form>

<script>

</script>

   <%@ include file="../layout/footer.jsp"%>