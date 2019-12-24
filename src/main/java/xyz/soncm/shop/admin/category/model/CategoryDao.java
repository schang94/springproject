package xyz.soncm.shop.admin.category.model;

import java.util.List;

import xyz.soncm.shop.admin.category.contoller.CategoryBean;

public interface CategoryDao {
	int insertCategory(CategoryBean bean);
	CategoryDto select_one(CategoryBean bean);
	List<CategoryDto> select_one_all();
	List<CategoryDto> select_two_all(String c_main);
}
