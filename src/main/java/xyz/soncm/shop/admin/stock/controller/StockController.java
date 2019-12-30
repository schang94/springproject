package xyz.soncm.shop.admin.stock.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import xyz.soncm.shop.admin.stock.model.StockDao;
import xyz.soncm.shop.admin.stock.model.StockDto;

@Controller
public class StockController {

	@Autowired
	@Qualifier("stockImpl")
	private StockDao dao;
	
	@RequestMapping(value = "stock", method = RequestMethod.GET)
	public void productInsert() {}
	
	@RequestMapping(value = "stock", method = RequestMethod.POST)
	public String productInsert(StockBean bean) {
		int num = dao.productInsert(bean);
		
		return "redirect:stock";
	}
	
	@RequestMapping(value = "stock/list", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> productList() {

		List<Map<String, String>> dataList = new ArrayList<Map<String,String>>();
		Map<String, String> data = null;
		List<StockDto> datas = dao.productList();

		

		
		for (StockDto p : datas) {
			data = new HashMap<String, String>();
			
			data.put("id", p.getId());
			data.put("p_name", p.getP_name());
			data.put("p_price", p.getP_price());
			data.put("p_stock", p.getP_stock());
			
			dataList.add(data);
		}
		System.out.println(dataList);
		Map<String, Object> finalList = new HashMap<String, Object>();
		finalList.put("data",dataList);
		return finalList;
	}
}
