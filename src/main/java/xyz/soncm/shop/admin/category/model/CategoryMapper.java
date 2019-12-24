package xyz.soncm.shop.admin.category.model;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import xyz.soncm.shop.admin.category.contoller.CategoryBean;

public interface CategoryMapper {

	@Insert("insert into category values(null, #{c_main}, #{c_sub}, #{c_last})")
	public int insertCategory(CategoryBean bean);
	
	@Select("select * from category where c_main=#{c_main} and c_sub=#{c_sub}")
	public CategoryDto select_one(CategoryBean bean);
	
	@Select("select * from category where c_sub = 'null' and c_last = 'null'")
	public List<CategoryDto> select_one_all();

	@Select("select * from category where c_main=#{c_main} and c_sub != 'null' and c_last = 'null'")
	public List<CategoryDto> select_two_all(String c_main);
}
