package xyz.soncm.shop.admin.stock.model;

import java.util.List;

import xyz.soncm.shop.admin.stock.controller.StockBean;

public interface StockDao {
	int productInsert(StockBean bean);
	List<StockDto> productList();
}
