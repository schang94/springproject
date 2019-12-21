jQuery(document).ready(function(){
	const REGEXP = /^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/;
	jQuery("#loginbtn").on("click", function(){
		if(jQuery("#email").val() == ""){
			jQuery("#email_text").html("<span class='text-danger col-md-12'>이메일를 입력하세요.</span>");
			return;
		}else{
			if(jQuery("#email").val().match(REGEXP) != null){
				jQuery("#email_text").html("");
			}else{
				jQuery("#email_text").html("<span class='text-danger col-md-12'>올바른 이메일의 형태가 아닙니다.</span>");
				return;
			}
		}
		if(jQuery("#pwd").val() == ""){
			jQuery("#pwd_text").html("<span class='text-danger col-md-12'>비밀번호를 입력하세요.</span>");
			return;
		}
		
		
		jQuery.ajax({
			type : "post",
			url : "logincheck",
			enctype : "multipart/form-data",
			data : {
				"email" : jQuery("#email").val(),
				"pwd" : jQuery("#pwd").val()
			},
			dataTpye : 'text',
			success : function(text){
				if(text == "true"){
					jQuery("#loginFrm").submit();					
				}else if(text == "false"){
					jQuery("#login_text").html("입력 정보를 다시 확인해주세요.");
				}
			},
			error : function(e) {
				console.log(e);
			}
		});
		
	});
	
	jQuery(".form-control").on("keydown",  function(event){
		if (event.keyCode === 13) {
			event.preventDefault();
		}
	});
});