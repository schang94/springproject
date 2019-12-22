<%@page import="java.util.Calendar"%>
<%@ include file="header.jsp"%>
<%@ page pageEncoding="UTF-8"%>
<script src="resources/js/joinEvent.js"></script>
<div class="col-md-8 order-md-1 mx-auto">
	<h4 class="mb-3">회원가입</h4>
	<hr class="mb-4">
	<form action="join" method="post" id="joinFrm">
		<div class="mb-3">
			<label for="email">이메일</label> 
			<input type="email" class="form-control" id="email" name="user_mail">
			<span class="text-danger" id="email_text"></spna>
		</div>
		<div class="mb-3">
			<label for="pwd">비밀번호</label> 
			<input type="password" class="form-control" id="pwd" name="user_pwd">
			<span class="text-danger" id="pwd_text"></spna>
		</div>
		<div class="mb-3">
			<label for="pwdck">비밀번호 재확인</label>
			<input type="password" class="form-control" id="pwdck">
			<span class="text-danger" id="pwdck_text"></spna>
		</div>
		<div class="mb-3">
			<label for="name">이름</label>
			<input type="text" class="form-control" id="name" name="user_name">
			<span class="text-danger" id="name_text"></spna>
		</div>
		<div class="row row-cols-3 mb-3">
			<% 
				Calendar cal = Calendar.getInstance();
				int years = cal.get(Calendar.YEAR);
			%>
			<div class="col">
				<label for="year">년</label>
				<select class="form-control"  id="year" name="year">
					<option value="" selected="selected">년도</option>
					<% for(int i=years; i > years-100; i--){%>
					<option value="<%=i%>"><%=i%></option>
					<%} %>
				</select>
			</div>
			<div class="col">
				<label for="month">월</label>
				<select class="form-control"  id="month" name="momth">
					<option value="" selected="selected">월</option>
					<% for(int i=1; i <= 12; i++){%>
					<option value="<%="0"+i%>"><%=i%></option>
					<%} %>
				</select>
			</div>
			<div class="col">
				<label for="day">일</label>
				<input type="text" class="form-control" id="day" name="day" placeholder="일" maxlength="2">
			</div>
			<input type="hidden" id="user_date" name="user_date">
			<span class="text-danger col-md-12" id="birth_text"></spna>		
		</div>
		<div class="mb-3">
			<label for="addr">주소</label>
			<input type="text" class="form-control" id="addr" name="user_addr"placeholder="서울특별시 OO구 OO로 OO번길">
			<span class="text-danger" id="addr_text"></spna>
		</div>
		<div class="mb-3">
			<label for="phone">휴대전화</label>
			<input type="text" class="form-control" id="phone" name="user_phone" placeholder="휴대전화" maxlength="13">
			<span class="text-danger"  id="phone_text"></spna>
		</div>

		<input class="btn btn-dark btn-lg btn-block" type="button" id="joinbtn" value="회원가입">
	</form>
</div>
<%@ include file="buttom.jsp"%>