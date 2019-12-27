package xyz.soncm.shop.admin.product.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import xyz.soncm.shop.admin.product.model.ProductDao;

@Controller
public class ProductController {

	@Autowired
	@Qualifier("productImpl")
	private ProductDao dao;
	
	@RequestMapping(value = "product", method = RequestMethod.GET)
	public void productInsert() {}
	
	@RequestMapping(value = "product", method = RequestMethod.POST)
	public String productInsert(ProductBean bean) {
		int num = dao.productInsert(bean);
		
		return "redirect:product";
	}
}
