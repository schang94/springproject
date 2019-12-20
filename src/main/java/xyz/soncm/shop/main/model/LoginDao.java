package xyz.soncm.shop.main.model;

import xyz.soncm.shop.main.controller.LoginBean;

public interface LoginDao {
	// 회원가입
	int insertJoin(LoginBean bean);
}
