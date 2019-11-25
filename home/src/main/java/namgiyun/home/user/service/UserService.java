package namgiyun.home.user.service;

import namgiyun.home.user.domain.User;

public interface UserService {
	boolean joinMember(User user);
	User loginUser(User user);
	boolean idCheck(String userId);
	
	//boolean k_joinMember(User user);
	//User kakaoLogin(int userNo);
}
