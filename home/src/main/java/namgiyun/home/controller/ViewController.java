package namgiyun.home.controller;

import java.lang.ProcessBuilder.Redirect;

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
		return "user/01";
	}
	
	@RequestMapping("/join")
	public String join(){
		return "user/02";
	}
	
	@RequestMapping("/findId")
	public String findId(){
		return "user/04";
	}
	
	@RequestMapping("/findPassword")
	public String findPassword(){
		return "user/05";
	}
	
	@RequestMapping("/userInfo")
	public String userInfo(){
		return "user/03";
	}
	
	/* reservation */
	@RequestMapping("/booking")
	public String booking(){
		return "reservation/01";
	}
	
	@RequestMapping("/userReservation")
	public String userReservation(){
		return "reservation/02";
	}
	
	@RequestMapping("/hostReservation")
	public String hostReservation(){
		return "reservation/03";
	}

	@RequestMapping("/calender")
	public String calender(){
		return "reservation/04";
	}
	
	
	/* Hotel */
	
	@RequestMapping("01")
	public String Hotel01(){
		return "hotel/01";
	}
	
	@RequestMapping("02")
	public String Hotel02(){
		return "hotel/02";
	}
	
	@RequestMapping("03")
	public String Hotel03(){
		return "hotel/03";
	}
	
	@RequestMapping("04")
	public String Hotel04(){
		return "hotel/04";
	}
	
	@RequestMapping("05")
	public String Hotel05(){
		return "hotel/05";
	}
	
	@RequestMapping("06")
	public String Hotel06(){
		return "hotel/06";
	}
	
	/* review */
	@RequestMapping("review/01")
	public String review01(){
		return "review/01";
	}
	
	@RequestMapping("review/02")
	public String review02(){	
		return "review/02";
	}
	
	@RequestMapping("review/03")
	public String review03(){
		return "review/03";
	}
	
	/* customerservice */
	@RequestMapping("customerservice/01")
	public String customerservice01(){
		return "customerservice/01";
	}
	

	@RequestMapping("customerservice/02")
	public String customerservice02(){
		return "customerservice/02";
	}
	
	@RequestMapping("customerservice/03")
	public String customerservice03(){
		return "customerservice/03";
	}
	
	@RequestMapping("customerservice/04")
	public String customerservice04(){
		return "customerservice/04";
	}
	
	
	/* payment */
	@RequestMapping("payment/01")
	public String payment01(){
		return "payment/01";
	}
	
	////////////////////////////////////////
	
	@RequestMapping("payment/reservation01")
	public String userReservation_02(){
		return "reservation/02";
	}
	
}
