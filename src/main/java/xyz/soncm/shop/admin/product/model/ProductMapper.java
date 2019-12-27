package xyz.soncm.shop.admin.product.model;

import org.apache.ibatis.annotations.Insert;

import xyz.soncm.shop.admin.product.controller.ProductBean;

public interface ProductMapper {
	
	@Insert("insert into product values(null, #{p_name}, #{p_price}, #{p_stock})")
	public int productInsert(ProductBean bean);
}
