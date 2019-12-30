package xyz.soncm.shop.admin.stock.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import xyz.soncm.shop.admin.stock.controller.StockBean;

@Component
public class StockImpl implements StockDao {
	
	@Autowired
	StockMapper productMapper;
	
	@Override
	public int productInsert(StockBean bean) {
		return productMapper.productInsert(bean);
	}
	
	@Override
	public List<StockDto> productList() {
		return productMapper.productList();
	}
}
