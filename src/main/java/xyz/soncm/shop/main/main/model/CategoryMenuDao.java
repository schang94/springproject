package xyz.soncm.shop.main.main.model;

import java.util.List;

public interface CategoryMenuDao {
	List<CategoryMenuDto> select_all();
	List<CategoryMenuDto> select_main();
}
