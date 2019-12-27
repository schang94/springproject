jQuery(document).ready(function(){
	catagoryFunc.admin_category_one_list();
	jQuery("#category_one_btn").on("click", function(event){
		if(jQuery("#c_main_one").val() == ""){
			jQuery("#catagory_one_text").html("카테고리를 입력해주세요.");
			return;
		}
		jQuery.ajax({
			type : "post",
			url : "category/insert",
			data : $('form[id=category_one_frm]').serialize(),
			dataTpye : 'text',
			success : function(text){
				if(text == "true"){
					jQuery('#category_one_modal').modal('hide');
					jQuery('#c_main_one').val('');
					catagoryFunc.category_menu();
					catagoryFunc.admin_category_one_list();
				}else if(text == "overlap"){
					jQuery("#catagory_one_text").html("이미 등록된 카테고리입니다.");
				}else if(text == 'false'){
					jQuery("#catagory_one_text").html("오류로 인해 등록되지 않았습니다.");
				}
			},
			error : function(e) {
				console.log(e);
			}
		});
	});
	jQuery("#category_two_btn").on("click", function(event){
		if(jQuery("#c_main_two").val() == ""){
			jQuery("#catagory_two_text").html("카테고리를 입력해주세요.");
			return;
		}
		jQuery.ajax({
			type : "post",
			url : "category/insert",
			data : $('form[id=category_two_frm]').serialize(),
			dataTpye : 'text',
			success : function(text){
				if(text == "true"){
					jQuery('#category_two_modal').modal('hide');
					catagoryFunc.admin_category_two_list(jQuery("#c_main_two").val());
					jQuery('#c_sub_two').val('');
					catagoryFunc.category_menu();
				}else if(text == "overlap"){
					jQuery("#catagory_two_text").html("이미 등록된 카테고리입니다.");
				}else if(text == 'false'){
					jQuery("#catagory_two_text").html("오류로 인해 등록되지 않았습니다.");
				}
			},
			error : function(e) {
				console.log(e);
			}
		});
	});
	jQuery("input").on("keydown",function(event){
		if (event.keyCode === 13) {
			event.preventDefault();
		}
	});
	jQuery(document).on("click", "span[name=category_one_item]",function(){
		let c_main = $(this).attr("id").replace("c_main_","");
		jQuery("#c_main_two").val(c_main)
		catagoryFunc.admin_category_two_list(c_main);
	});
});
const catagoryFunc = {
	"admin_category_one_list" : function(){
		jQuery.ajax({
			type : "post",
			url : "category/list",
			dataTpye : "json",
			success : function(json){
				let list = json.data;
				let str = "";
				jQuery(list).each(function(i, obj){
					str += "<div class='col-2'>";
					str += '<span class="badge badge-pill badge-dark" name="category_one_item" id="c_main_' + obj["c_main"]+ '" style="cursor:pointer">' + obj["c_main"] + "</span>";
					str += "</div>";
				});
				jQuery("#category_one_list_field").html(str);
			},
			error : function(e) {
				alert(e);
			}
		});	
	},
	"admin_category_two_list" : function(c_main){
		jQuery.ajax({
			type : "post",
			url : "category/list",
			data : {
				"c_main" : c_main
			},
			dataTpye : "json",
			success : function(json){
				let list = json.data;
				let str = "";
				jQuery(list).each(function(i, obj){
					str += "<div class='col-2'>";
					str += "<span class='badge badge-pill badge-dark' name='category_two_item' id='c_last_" + obj["c_sub"] + "'>" + obj["c_sub"] + "</span>";
					str += "</div>";
				});
				jQuery("#category_two_list_field").html(str);
				jQuery("#category_two_add_btn").html('<button class="btn btn-dark" data-toggle="modal" data-target="#category_two_modal">추가</button>');
				jQuery("#c_main_two").val(c_main);
			},
			error : function(e) {
				alert(e);
			}
		});	
	},
	"category_menu" : function(){
		jQuery.ajax({
			type : "get",
			url : "main/category",
			dataTpye : "html",
			success : function(html){
				jQuery(".add-to-ul").html(html);
			},
			error : function(e) {
				alert(e);
			}
		});	
	},
}