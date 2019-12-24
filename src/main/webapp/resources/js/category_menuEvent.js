jQuery(document).ready(function(){
	catagory_menuFunc.category_menu();
	
	jQuery('#nav_menu').on('hide.bs.dropdown ', function (e) {
	    if (e.clickEvent) {
	      e.preventDefault();
	    }
	});
});
const catagory_menuFunc = {
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