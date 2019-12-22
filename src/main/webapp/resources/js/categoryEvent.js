jQuery(document).ready(function(){
	jQuery("#category_one").on("click", function(){
		let str = '<div class="col-6">';
		str += '<input type="text" class="form-control" id="category_one_input" placeholder="1차 카테고리">';
		str += '</div>';
		str += '<div class="col-3">';
		str += '<input type="button" class="btn btn-dark" id="category_one_btn" value="추가">';
		str += '<input type="button" class="btn btn-dark" id="category_one_btn_cancel" value="취소">';
		str += '</div>';

		jQuery("#category_one_add_area").html(str);
		jQuery("#category_one").hide();
	});
	jQuery(document).on("click", "input[id=category_one_btn_cancel]",function(event){
		jQuery("#category_one_add_area").html("");
		jQuery("#category_one").show();
	});
});