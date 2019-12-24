package xyz.soncm.shop.main.login.model;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import xyz.soncm.shop.main.login.contoller.LoginBean;

public interface LoginMapper {
	
	@Insert("insert into user(user_mail,user_pwd,user_addr,user_phone,user_date,user_join,user_name) values(#{user_mail},password(#{user_pwd}),#{user_addr},#{user_phone},#{user_date},now(),#{user_name})")
	public int insertJoin(LoginBean bean);
	
	@Select("select user_mail,user_addr,user_phone,user_date,user_join,user_name from user where user_mail = #{user_mail} and user_pwd = password(#{user_pwd})")
	public LoginDto loginCheck(LoginDto dto);
}
