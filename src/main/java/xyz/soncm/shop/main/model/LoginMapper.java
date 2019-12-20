package xyz.soncm.shop.main.model;

import org.apache.ibatis.annotations.Insert;

import xyz.soncm.shop.main.controller.LoginBean;

public interface LoginMapper {
	
	@Insert("insert into user values(null,#{user_mail},password(#{user_pwd}),#{user_addr},#{user_phone},#{user_date},now(),#{user_name})")
	public int insertJoin(LoginBean bean);
}
