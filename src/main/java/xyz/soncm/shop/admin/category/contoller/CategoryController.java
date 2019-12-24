package xyz.soncm.shop.admin.category.contoller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import xyz.soncm.shop.admin.category.model.CategoryDao;
import xyz.soncm.shop.admin.category.model.CategoryDto;

@Controller
public class CategoryController {
	
	@Autowired
	@Qualifier("categoryImpl")
	private CategoryDao dao;
	
	@RequestMapping("category")
	public void category() {}
	
	@ResponseBody
	@RequestMapping("category/insert")
	public String category_insert(CategoryBean bean) {
		System.out.println(bean.getC_main());
		System.out.println(bean.getC_sub());
		if(bean.getC_sub() == null) {
			bean.setC_sub("null");
		}
		if(bean.getC_last() == null) {
			bean.setC_last("null");
		}
		CategoryDto dto = dao.select_one(bean);
		
		if(dto != null) {
			return "overlap";
		}else {
			int num = dao.insertCategory(bean);
			if(num > 0) {
				return "true";			
			}else {
				return "false";
			}
		}
	}
	
	@RequestMapping(value = "category/list", method = RequestMethod.POST)
	@ResponseBody
	public Map<String,Object> list_all(
			@RequestParam(value = "c_main", required=false) String c_main,
			@RequestParam(value = "c_sub", required=false) String c_sub,
			@RequestParam(value = "c_last", required=false) String c_last){
		
		List<Map<String, String>> dataList = new ArrayList<Map<String,String>>();
		Map<String, String> data = null;
		List<CategoryDto> datas = null;
		System.out.println(c_main);
		System.out.println(c_sub);
		System.out.println(c_last);
		if(c_main == null) {
			System.out.println("1");
			datas = dao.select_one_all();
		}else if(c_main != null && c_last == null){
			System.out.println("2");
			datas = dao.select_two_all(c_main);
		}else if(c_main != null && c_sub != null) {
			System.out.println("마지막 카테고리");
		}
		

		
		for (CategoryDto t : datas) {
			data = new HashMap<String, String>();
			
			data.put("id", t.getId());
			data.put("c_main", t.getC_main());
			data.put("c_sub", t.getC_sub());
			
			dataList.add(data);
		}
		System.out.println(dataList);
		Map<String, Object> finalList = new HashMap<String, Object>();
		finalList.put("data",dataList);
		System.out.println(finalList);
		return finalList;
	}

}
