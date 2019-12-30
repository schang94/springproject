package xyz.soncm.shop.admin.product.model;

import org.apache.ibatis.annotations.Insert;

import xyz.soncm.shop.admin.product.controller.ProductBean;

public interface ProductMapper {
	@Insert("insert into product_post values(null, #{post_title}, #{post_delivery_charge}, #{post_thumbnail}, #{post_content}, now(), #{category_id})")
	public int productInsert(ProductBean bean);
}
