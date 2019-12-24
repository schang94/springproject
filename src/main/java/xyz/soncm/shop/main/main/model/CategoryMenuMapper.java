package xyz.soncm.shop.main.main.model;

import java.util.List;

import org.apache.ibatis.annotations.Select;


public interface CategoryMenuMapper {

	
	@Select("select * from category where c_sub <> 'null' order by c_main asc,c_sub asc")
	public List<CategoryMenuDto> select_all();

	@Select("select c_main from category where c_sub = 'null' order by c_main asc")
	public List<CategoryMenuDto> select_main();
	
	
}
