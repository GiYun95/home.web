package home.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ViewController {

	@RequestMapping("/")
	public String home(){
		return "main";
	}
	
	@RequestMapping("/login")
	public String login(){
		return "user/login";
	}
	
	@RequestMapping("/join")
	public String join(){
		return "user/joinMember";
	}
	
	@RequestMapping("/findId")
	public String findId(){
		return "user/findId";
	}
	
	@RequestMapping("/findPassword")
	public String findPassword(){
		return "user/findPassword";
	}
	
	@RequestMapping("/userInfo")
	public String userInfo(){
		return "user/userInfo";
	}
	
	@RequestMapping("/booking")
	public String booking(){
		return "user/booking";
	}
}
