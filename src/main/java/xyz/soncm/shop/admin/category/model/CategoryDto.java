package xyz.soncm.shop.admin.category.model;

public class CategoryDto {
	private String id, c_main, c_sub, c_last;

	public String getC_last() {
		return c_last;
	}

	public void setC_last(String c_last) {
		this.c_last = c_last;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getC_main() {
		return c_main;
	}

	public void setC_main(String c_main) {
		this.c_main = c_main;
	}

	public String getC_sub() {
		return c_sub;
	}

	public void setC_sub(String c_sub) {
		this.c_sub = c_sub;
	}
}
