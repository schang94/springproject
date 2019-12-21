package xyz.soncm.shop.main.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import xyz.soncm.shop.main.model.LoginDao;
import xyz.soncm.shop.main.model.LoginDto;


@Controller
public class MainController {
	@Autowired
	@Qualifier("loginImpl")
	private LoginDao Dao;
	
	@RequestMapping("main")
	public void MainMove() {}
	
	@RequestMapping(value = "join", method = RequestMethod.GET)
	public void Join() {}
	
	@RequestMapping(value = "join", method = RequestMethod.POST)
	public String Join(LoginBean bean){
		System.out.println(bean.getUser_mail());
		System.out.println(bean.getUser_pwd());
		System.out.println(bean.getUser_name());
		System.out.println(bean.getUser_date());
		System.out.println(bean.getUser_addr());
		System.out.println(bean.getUser_phone());
		
		int num = Dao.insertJoin(bean);
		
		return "redirect:login";
	}
	
	@RequestMapping(value = "login")
	public String Login(HttpServletRequest request) {
		if(request.getMethod().equals("GET")){
			return "login";
		}else {
			return "redirect:main";
		}
	}
	
	@ResponseBody
	@RequestMapping(value = "logincheck", method = RequestMethod.POST)
	public String LoginCheck(
			HttpServletRequest request,
			@RequestParam("email") String email,
			@RequestParam("pwd") String pwd) {
		System.out.println(email);
		System.out.println(pwd);
		
		LoginDto dto = new LoginDto();
		dto.setUser_mail(email);
		dto.setUser_pwd(pwd);
		
		LoginDto check = Dao.loginCheck(dto);
		if(check != null) {
			HttpSession session = request.getSession();
			session.setAttribute("email", email);
			System.out.println(session.getAttribute("email"));
			return "true";
		}else {
			return "false";
		}
	}
	
	@RequestMapping(value = "logout", method = RequestMethod.GET)
	public String Logout(HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.invalidate();
		return "redirect:main";
	}
}
