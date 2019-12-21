jQuery(document).ready(function(){
	const REGEXP = /^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/;
	jQuery("#email").on("focusout", function(event){
		if(jQuery(this).val() == ""){
			jQuery("#email_text").html("이메일을 입력하세요.");
		}else{
			if(jQuery(this).val().match(REGEXP) != null){
				jQuery("#email_text").html("");				
			}else{
				jQuery("#email_text").html("올바른 이메일의 형태가 아닙니다.");		
			}
		}
	});
	jQuery("#pwd").on("focusout", function(event){
		if(jQuery(this).val() == ""){
			jQuery("#pwd_text").html("비밀번호를 입력하세요.");
		}else{
			jQuery("#pwd_text").html("");
		}
	});
	jQuery("#pwdck").on("focusout", function(event){
		if(jQuery(this).val() == ""){
			jQuery("#pwdck_text").html("비밀번호를 입력하세요.");
		}else{
			if(jQuery(this).val() == jQuery("#pwd").val()){
				jQuery("#pwdck_text").html("");
			}else{
				jQuery("#pwdck_text").html("비밀번호를 다시 확인해 주세요.");
			}
		}
	});
	jQuery("#name").on("focusout", function(event){
		if(jQuery(this).val() == ""){
			jQuery("#name_text").html("이름을 입력하세요.");
		}else{
			jQuery("#name_text").html("");
		}
	});
	jQuery("#day").on("focusout", function(event){
		if(jQuery(this).val() == ""){
			jQuery("#birth_text").html("태어난 일 입력하세요.");
		}else{
			if(jQuery(this).val().length == 2){
				if(Number(jQuery(this).val()) <= 31){
					jQuery("#birth_text").html("");										
				}else{
					jQuery("#birth_text").html("태어난 일을 다시 확인해주세요.");					
				}
			}else{
				jQuery("#birth_text").html("태어난 일(날짜) 2자리를 정확하게 입력하세요.");
			}
		}
	});
	jQuery("#addr").on("focusout", function(event){
		if(jQuery(this).val() == ""){
			jQuery("#addr_text").html("주소를 입력하세요.");
		}else{
			jQuery("#addr_text").html("");
		}
	});
	jQuery("#phone").on("focusout", function(event){
		let phone = jQuery(this).val()
		if(phone == ""){
			jQuery("#phone_text").html("전화번호를 입력하세요.");
		}else{
			phone = phone.replace(/-/g,"");
			jQuery(this).val(phone);
			if(phone.length  <= 11){
				jQuery("#phone_text").html("");								
			}else{
				jQuery("#phone_text").html("전화번호를 확인해 주세요.");
			}
		}
	});
	
	jQuery(".form-control").on("keydown",  function(event){
		if (event.keyCode === 13) {
			event.preventDefault();
		}
	});
	
	jQuery("#joinbtn").on("click", function(){
		let check = "";
		if(jQuery("#email").val() == ""){
			jQuery("#email_text").html("이메일를 입력하세요.");
			if(check == ""){
				check = "email";
			}
		}else{
			if(jQuery("#email").val().match(REGEXP) == null){
				jQuery("#email_text").html("올바른 이메일의 형태가 아닙니다.");
				if(check == ""){
					check = "email";
				}
			}
		}
		if(jQuery("#pwd").val() == ""){
			jQuery("#pwd_text").html("비밀번호를 입력하세요.");
			if(check == ""){
				check = "pwd";
			}
		}
		if(jQuery("#pwdck").val() == ""){
			jQuery("#pwdck_text").html("비밀번호를 입력하세요.");
			if(check == ""){
				check = "pwdck";
			}
		}
		if(jQuery("#pwdck").val() != jQuery("#pwd").val()){
			jQuery("#pwdck_text").html("비밀번호를 확인해 주세요.");
			if(check == ""){
				check = "pwdck";
			}
		}
		if(jQuery("#name").val() == ""){
			jQuery("#name_text").html("이름을 확인해 주세요.");
			if(check == ""){
				check = "name";
			}
		}
		if(jQuery("#year").val() == ""  || jQuery("#month").val() == "" || jQuery("#day").val() == ""){
			jQuery("#birth_text").html("생년월일를 입력하세요.");
			if(check == "" && jQuery("#year").val() == ""){
				check = "year";
			}else if(check == "" && jQuery("#month").val() == ""){
				check = "month";
			}else  if(check == "" && jQuery("#day").val() == ""){
				check = "day";
			}
		}
		if(jQuery("#day").val().length != 2){
			if(check == ""){
				check = "day";
			}
		}
		if(jQuery("#addr").val() == ""){
			jQuery("#addr_text").html("주소을 입력하세요.");
			if(check == ""){
				check = "addr";
			}
		}
		if(jQuery("#phone").val() == ""){
			jQuery("#phone_text").html("휴대전화를 입력하세요.");
			if(check == ""){
				check = "phone";
			}
		}
		if(check != ""){
			jQuery("#"+check).focus();
			return;
		}else{
			jQuery("#user_date").val(jQuery("#year").val() + "-" + jQuery("#month").val() + "-" + jQuery("#day").val())
			jQuery("#joinFrm").submit();			
		}
	});
});