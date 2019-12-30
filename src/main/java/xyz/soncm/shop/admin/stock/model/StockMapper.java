package xyz.soncm.shop.admin.stock.model;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import xyz.soncm.shop.admin.stock.controller.StockBean;

public interface StockMapper {
	
	@Insert("insert into product values(null, #{p_name}, #{p_price}, #{p_stock})")
	public int productInsert(StockBean bean);
	
	@Select("select * from product")
	public List<StockDto> productList();
}
