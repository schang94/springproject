package xyz.soncm.shop.main.model;

import xyz.soncm.shop.main.controller.LoginBean;

public class LoginImpl implements LoginDao {

	LoginMapper loginMapper;
	
	@Override
	public int insertJoin(LoginBean bean) {
		return loginMapper.insertJoin(bean);
	}

}
