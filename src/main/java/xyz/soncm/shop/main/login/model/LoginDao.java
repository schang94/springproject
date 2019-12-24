package xyz.soncm.shop.main.login.model;

import xyz.soncm.shop.main.login.contoller.LoginBean;

public interface LoginDao {
	int insertJoin(LoginBean bean);
	LoginDto loginCheck(LoginDto dto);
}
