package namgiyun.home.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import namgiyun.home.user.domain.User;
import namgiyun.home.user.service.UserService;
import oracle.net.aso.u;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller("logincontroller")
public class LoginController {
	@Autowired UserService userService;

	@RequestMapping("join.do")
	@ResponseBody
	public boolean joinMember(User user) {
		System.out.println("=====================joinMember=====================");
		System.out.println(user.toString());
		return userService.joinMember(user);
	}

	@RequestMapping("login.do")
	public void login(User user, HttpSession session, HttpServletResponse response) throws IOException {
		System.out.println("============login.do=================");

		User loginUser = userService.loginUser(user);
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();

		if (loginUser == null || loginUser.equals("")) {
			out.println("<script>alert('아이디와 비밀번호를 확인해주세요!',''); location.href='login';</script>");
			out.flush();
		}else{
			session.setAttribute("user", loginUser);
			out.println("<script>location.href='/home';</script>");
			out.flush();
		
		}	
	}
	
	@RequestMapping("logout.do")
	public String logout(HttpSession session){
		System.out.println("============logout.do=================");
		
		session.invalidate();
		return "user/01";
	}
	
	
	@RequestMapping("kLogin.do")
	@ResponseBody
	public boolean kLogin(User user, HttpSession session, HttpServletResponse response) throws IOException{
		System.out.println("==================kLogin.do===================");	
		
		boolean kakaoUser = userService.idCheck(user.getUserId());	// 카카오톡 로그인Id값이 존재하는지 확인
		user.setPhone(" ");
		user.setUserPassword(" ");
		
		if (!kakaoUser){					   // 카카오톡 로그인이 존재하지 않다면 카카오톡 Id로 회원가입 시킴
			if(userService.joinMember(user))   // 회원가입 정상 실행 시
				System.out.println("Join kakao success");
		}
		user = userService.loginUser(user);	  // 로그인 시킴.	
		session.setAttribute("user", user);					
		return true;
	}
	
	
	
	@RequestMapping("/idCheck.do")
	@ResponseBody
	public boolean idCheck(String userId){
		System.out.println("===============idCheck================");
		System.out.println(userId);
		return userService.idCheck(userId);
	}
}
