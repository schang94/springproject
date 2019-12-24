<%@ include file="header.jsp"%>
<%@ page pageEncoding="UTF-8"%>
<script src="resources/js/categoryEvent.js"></script>
<div class="col-md-8 order-md-1 mx-auto">
	<h4 class="mb-3">카테고리 관리</h4>
	<hr class="mb-4">
	<h5 class="mb-3">1차 카테고리</h5>
	<div class="row mb-3" id="category_one_list_field">
	</div>
	<div class="col-12 text-right">
		<button class="btn btn-dark" data-toggle="modal" data-target="#category_one_modal">추가</button>
	</div>
	<div class="modal fade" id="category_one_modal" tabindex="-1" role="dialog" aria-hidden="true">
  		<div class="modal-dialog" role="document">
    		<div class="modal-content">
      			<div class="modal-header">
        			<h5 class="modal-title">1차 카테고리 추가</h5>
        			<button type="button" class="close" data-dismiss="modal" aria-label="Close">
          				<span aria-hidden="true">&times;</span>
        			</button>
      			</div>
      			<div class="modal-body">
	        		<form method="post" id="category_one_frm">
	        			<label for="recipient-name" class="col-form-label">카테고리</label>
	           			<input type="text" name="c_main" class="form-control" id="c_main_one">
	           			<span class="text-danger" id="catagory_one_text"></spna>
	       			</form>
      			</div>
      			<div class="modal-footer">
        		<button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
        		<button type="button" id = "category_one_btn" class="btn btn-dark">저장</button>
      			</div>
    		</div>
  		</div>
	</div>
	<hr class="mb-4">
	<h5 class="mb-3">2차 카테고리</h5>
	<div class="row mb-3" id="category_two_list_field">
		<div class="small col">1차 카테고리 항목을 클릭하면 2차 카테고리 항목이 나옵니다.</div>
	</div>
	<div class="col-12 text-right" id="category_two_add_btn">
		
	</div>
	<div class="modal fade" id="category_two_modal" tabindex="-1" role="dialog" aria-hidden="true">
  		<div class="modal-dialog" role="document">
    		<div class="modal-content">
      			<div class="modal-header">
        			<h5 class="modal-title">2차 카테고리 추가</h5>
        			<button type="button" class="close" data-dismiss="modal" aria-label="Close">
          				<span aria-hidden="true">&times;</span>
        			</button>
      			</div>
      			<div class="modal-body">
	        		<form method="post" id="category_two_frm">
		        		<label for="recipient-name" class="col-form-label">카테고리</label>
		           		<input type="hidden" name="c_main" class="form-control" id="c_main_two">
		           		<input type="text" name="c_sub" class="form-control" id="c_sub_two">
		           		<span class="text-danger" id="catagory_two_text"></spna>
	       			</form>
      			</div>
      			<div class="modal-footer">
        			<button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
        			<button type="button" id = "category_two_btn" class="btn btn-dark">저장</button>
      			</div>
    		</div>
  		</div>
		<hr class="mb-4">
	</div>
</div>
<%@ include file="buttom.jsp"%>