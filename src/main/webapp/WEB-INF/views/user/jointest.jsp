<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link href="../resources/css/board.css" rel="stylesheet" />

<style>
body {
	min-height: 100vh;
}
.row>.input-form {
	max-width: 680px;
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

		<!-- Page content wrapper-->
		<div id="page-content-wrapper">
			<!-- detail container-->
			<div class="container">
			
				<div class="input-form-backgroud row">
					<div class="input-form col-md-12 mx-auto">
						<!-- col-md-12:  mx-auto : 수평 센터 처리 -->
						<h4 class="mb-3">${boardEntity.title}</h4>
						<hr class="my-hr2" style="height: 2px">
						<div>
							${boardEntity.content }
						
						</div>




					</div>
				</div>

			</div>
		</div>





</div>
 
 
 
</body>
</html>
<%@ include file="../layout/footer.jsp"%>