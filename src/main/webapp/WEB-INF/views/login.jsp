<%@ include file="header.jsp"%>
<%@ page pageEncoding="UTF-8"%>
<script src="resources/js/loginEvent.js"></script>
<div class="col-md-6 order-md-1 mx-auto">
	<h4 class="mt-5 mb-3">로그인</h4>
	<form action="" method="post" id="loginFrm">
		<span class="text-danger col-md-12" id="login_text"></span>
		<div>
			<input class="form-control" type="text" id="email" name="user_mail" placeholder="이메일">
		</div>
		<div id="email_text"></div>
		<div>
			<input class="form-control" type="text" id="pwd" name="user_pwd" placeholder="비밀번호">
		</div>
		<div  class="mb-3" id="pwd_text"></div>
		<input class="btn btn-dark btn-lg btn-block" type="button" value="로그인" id="loginbtn">
	</form>
</div>
<%@ include file="buttom.jsp"%>