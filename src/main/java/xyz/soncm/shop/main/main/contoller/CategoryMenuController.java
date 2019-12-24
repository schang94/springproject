package xyz.soncm.shop.main.main.contoller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import xyz.soncm.shop.main.main.model.CategoryMenuDao;
import xyz.soncm.shop.main.main.model.CategoryMenuDto;


@Controller
public class CategoryMenuController {
	
	@Autowired
	@Qualifier("categoryMenuImpl")
	private CategoryMenuDao dao;
	
	
	@RequestMapping(value = "main/category", method = RequestMethod.GET)
	@ResponseBody
	public ModelAndView list_all(){
		
		System.out.println("진입");
		ModelAndView model = new ModelAndView("category_menu");

		ArrayList<CategoryMenuDto> dataList_all = (ArrayList<CategoryMenuDto>)dao.select_all();
		ArrayList<CategoryMenuDto> dataList_main = (ArrayList<CategoryMenuDto>)dao.select_main();

		model.addObject("dataAll", dataList_all);
		model.addObject("dataMain", dataList_main);
		
		System.out.println("완료");
		return model;
	}

}
