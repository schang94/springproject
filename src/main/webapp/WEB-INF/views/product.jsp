<%@page import="java.util.Calendar"%>
<%@ include file="header.jsp"%>
<%@ page pageEncoding="UTF-8"%>
<script src="resources/js/productEvent.js"></script>
<div class="col-md-8 order-md-1 mx-auto">
	<div class="row">
		<div class="col-6 mb-3">
			<h4 class="mb-3">재고등록</h4>
		</div>
		<div class="col-6 mb-3 text-right">
			<button class="btn btn-dark" data-toggle="modal" data-target="#productFrmBtn">추가</button>
		</div>	
	</div>
	<div class="modal fade" id="productFrmBtn" tabindex="-1" role="dialog" aria-hidden="true">
  		<div class="modal-dialog" role="document">
    		<div class="modal-content">
      			<div class="modal-header">
        			<h5 class="modal-title">재고등록</h5>
        			<button type="button" class="close" data-dismiss="modal" aria-label="Close">
          				<span aria-hidden="true">&times;</span>
        			</button>
      			</div>
      			<div class="modal-body">
	       			<form action="product" method="post" id="productFrm" >
						<div class="mb-3">
							<label for="p_name">상품명</label> 
							<input type="text" class="form-control" id="p_name" name="p_name">
							<span class="text-danger" id="p_name_text"></spna>
						</div>
						<div class="mb-3">
							<label for="p_price">가격</label> 
							<input type="number" class="form-control" id="p_price" name="p_price">
							<span class="text-danger" id="p_price_text"></spna>
						</div>
						<div class="mb-3">
							<label for="p_stock">재고</label>
							<input type="number" class="form-control" id="p_stock" name="p_stock">
							<span class="text-danger" id="p_stock_text"></spna>
						</div>
					</form>
      			</div>
      			<div class="modal-footer">
        		<button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
        		<button type="button" id = "productInsertBtn" class="btn btn-dark">등록</button>
      			</div>
    		</div>
  		</div>
	</div>
	<hr class="mb-4">
	<div class="mb-3">
	
	</div>
</div>
<%@ include file="buttom.jsp"%>