package xyz.soncm.shop.admin.category.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import xyz.soncm.shop.admin.category.contoller.CategoryBean;

@Component
public class CategoryImpl implements CategoryDao {
	
	@Autowired
	CategoryMapper categoryMapper;
	
	@Override
	public int insertCategory(CategoryBean bean) {
		return categoryMapper.insertCategory(bean);
	}
	@Override
	public CategoryDto select_one(CategoryBean bean) {
		return categoryMapper.select_one(bean);
	}
	@Override
	public List<CategoryDto> select_one_all() {
		return categoryMapper.select_one_all();
	}
	@Override
	public List<CategoryDto> select_two_all(String c_main) {
		return categoryMapper.select_two_all(c_main);
	}
}
