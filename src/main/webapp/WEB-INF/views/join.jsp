<%@ include file="header.jsp"%>
<%@ page pageEncoding="UTF-8"%>
<div class="col-md-8 order-md-1 mx-auto">
	<h4 class="mb-3">회원가입</h4>
	<form action="join" class="needs-validation" method="post" novalidate>
		<div class="mb-3">
			<label for="email">이메일</label> 
			<input type="email" class="form-control" id="email" name="email" required>
			<div class="invalid-feedback">올바른 이메일의 형태가 아닙니다.</div>
		</div>
		<div class="mb-3">
			<label for="firstName">비밀번호</label> <input type="password"
				class="form-control" id="pwd" name="pwd" placeholder="" value="" required>
			<div class="invalid-feedback">필수정보 입니다.</div>
		</div>
		<div class="mb-3">
			<label for="firstName">비밀번호 재확인 </label> <input type="password"
				class="form-control" id="pwdck" placeholder="" value="" required>
			<div class="invalid-feedback">필수정보 입니다.</div>
		</div>
		<div class="mb-3">
			<label for="firstName">이름</label> <input type="text"
				class="form-control" id="name" name="name" placeholder="" value="" required>
			<div class="invalid-feedback">필수정보 입니다.</div>
		</div>
		<div class="row">
			<div class="col-md-4 mb-3">
				<label for="year">년</label> <input type="text" class="form-control"
					id="year" name="year" placeholder="년도" required>
				<div class="invalid-feedback">필수정보 입니다.</div>
			</div>
			<div class="col-md-4 mb-3">
				<label for="month">월</label> <input type="text" class="form-control"
					id="month" name="month" placeholder="월" required>
				<div class="invalid-feedback">필수정보 입니다.</div>
			</div>
			<div class="col-md-4 mb-3">
				<label for="day">일</label> <input type="text" class="form-control"
					id="day" name="day" placeholder="일" required>
				<div class="invalid-feedback">필수정보 입니다.</div>
			</div>
		</div>
		<div class="mb-3">
			<label for="addr">주소</label> <input type="text"
				class="form-control" id="addr" name="addr "placeholder="서울특별시 OO구 OO로 OO번길"
				required>
			<div class="invalid-feedback">필수정보 입니다.</div>
		</div>
		<div class="mb-3">
			<label for="country">휴대전화</label> <input type="text"
				class="form-control" id="phone" name="phone" placeholder="휴대전화" required>
			<div class="invalid-feedback">필수정보 입니다.</div>
		</div>

		<button class="btn btn-dark btn-lg btn-block" type="submit">회원가입</button>
	</form>
</div>
<%@ include file="buttom.jsp"%>