<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../layout/header.jsp"%>

<link href="/resources/css/user.css" rel="stylesheet"/>
<style>

</style>
<body class="bgcolor">
	<form method="post" action="">
		<div class="container">
			<div class="insert">

				<table>
					<tr>
						<td class="col1">
							<div style="width: 90%; height: 40px;">
								<div data-text-content="true" class="butt">Name</div>
							</div>
						</td>
						<td class="col2"><input style="width: 90%;" type="text"
							name="name" placeholder="Name" maxlength="70">
					</tr>
					<tr>
						<td class="col1">
							<div style="width: 90%; height: 40px;">
								<div data-text-content="true" class="butt">Birth</div>
							</div>
						</td>
						<td class="col2"><select name="birth">
								<option value="slc1" selected>선택</option>
								<option value="g1">1</option>
								<option value="g2">2</option>
								<option value="g3">3</option>
								<option value="g4">4</option>
								<option value="g5">5</option>
								<option value="g6">6</option>
								<option value="g7">7</option>
								<option value="g8">8</option>
								<option value="g9">9</option>
								<option value="g10">10</option>
								<option value="g11">11</option>
								<option value="g12">12</option>
						</select> <span class="g">월</span> <select name="cls">
								<option value="slc2" selected>선택</option>
								<option value="c1">1</option>
								<option value="c2">2</option>
								<option value="c3">3</option>
								<option value="c4">4</option>
								<option value="c5">5</option>
								<option value="c6">9</option>
								<option value="c7">7</option>
								<option value="c8">8</option>
								<option value="c9">9</option>
								<option value="c10">10</option>
								<option value="c11">11</option>
								<option value="c12">12</option>
								<option value="c13">13</option>
								<option value="c14">14</option>
								<option value="c15">15</option>
								<option value="c16">16</option>
								<option value="c17">17</option>
								<option value="c18">18</option>
								<option value="c19">19</option>
								<option value="c20">20</option>
								<option value="c21">21</option>
								<option value="c22">22</option>
								<option value="c23">23</option>
								<option value="c24">24</option>
								<option value="c25">25</option>
								<option value="c26">26</option>
								<option value="c27">27</option>
								<option value="c28">28</option>
								<option value="c29">29</option>
								<option value="c30">30</option>
								<option value="c31">31</option>
						</select> <span class="c">일</span></td>

					</tr>
					<tr>
						<td class="col1">
							<div style="width: 90%; height: 40px;">
								<div data-text-content="true" class="butt">Contact</div>
							</div>
						</td>
						<td class="col2"><input style="width: 90%;" type="text"
							name="contact" placeholder="연락 가능한 전화번호" maxlength="25"></td>
					</tr>
					<tr>
					</tr>
					<tr>
						<td colspan="2" style="text-align: center; color: white;">
							※ 빈칸이 없도록 작성하여야 정보를 찾을 수 있습니다.</td>
					</tr>
				</table>

				<div class="create">

					<input class="but3" type="button" value="회원찾기" onclick="">
					<input class="but4" type="button" value="취소"
						onclick="formCheck(this.form)">
				</div>
			</div>
		</div>
	</form>
</body>
</html>


<%@ include file="../layout/footer.jsp"%>