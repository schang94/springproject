jQuery(document).ready(function(){
	jQuery("#p_name").on("focusout", function(event){
		if(jQuery(this).val() == ""){
			jQuery("#p_name_text").html("상품명을 입력하세요.");
		}else{
			jQuery("#p_name_text").html("");				
		}
	});
	jQuery("#p_price").on("focusout", function(event){
		if(jQuery(this).val() == ""){
			jQuery("#p_price_text").html("비밀번호를 입력하세요.");
		}else{
			jQuery("#p_price_text").html("");
		}
	});
	jQuery("#p_stock").on("focusout", function(event){
		if(jQuery(this).val() == ""){
			jQuery("#p_stock_text").html("비밀번호를 입력하세요.");
		}else{
			jQuery("#p_stock_text").html("");
		}
	});
	
	jQuery(".form-control").on("keydown",  function(event){
		if (event.keyCode === 13) {
			event.preventDefault();
		}
	});
	
	jQuery("#productInsertBtn").on("click", function(){
		let check = "";

		if(jQuery("#p_name").val() == ""){
			jQuery("#p_name_text").html("상품명을 입력하세요.");
			if(check == ""){
				check = "p_name";
			}
		}
		if(jQuery("#p_price").val() == ""){
			jQuery("#p_price_text").html("가격을 입력하세요.");
			if(check == ""){
				check = "p_price";
			}
		}
		if(jQuery("#p_stock").val() == ""){
			jQuery("#p_stock_text").html("재고를 확인해 주세요.");
			if(check == ""){
				check = "p_stock";
			}
		}
		if(check != ""){
			jQuery("#"+check).focus();
			return;
		}else{
			jQuery("#productFrm").submit();			
		}
	});
});