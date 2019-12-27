package xyz.soncm.shop.admin.product.model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import xyz.soncm.shop.admin.product.controller.ProductBean;

@Component
public class ProductImpl implements ProductDao {
	
	@Autowired
	ProductMapper productMapper;
	
	@Override
	public int productInsert(ProductBean bean) {
		return productMapper.productInsert(bean);
	}
}
