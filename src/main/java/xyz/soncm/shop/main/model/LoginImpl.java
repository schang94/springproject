package xyz.soncm.shop.main.model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import xyz.soncm.shop.main.controller.LoginBean;

@Component
public class LoginImpl implements LoginDao {
	
	@Autowired
	LoginMapper loginMapper;
	
	@Override
	public int insertJoin(LoginBean bean) {
		return loginMapper.insertJoin(bean);
	}
	@Override
	public LoginDto loginCheck(LoginDto dto) {
		return loginMapper.loginCheck(dto);
	}
}
