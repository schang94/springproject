package xyz.soncm.shop.main.main.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;


@Component
public class CategoryMenuImpl implements CategoryMenuDao {
	
	@Autowired
	CategoryMenuMapper categoryMapper;
	
	@Override
	public List<CategoryMenuDto> select_all() {
		return categoryMapper.select_all();
	}
	@Override
	public List<CategoryMenuDto> select_main() {
		return categoryMapper.select_main();
	}
}
