package namgiyun.home.user.dao;

import namgiyun.home.user.domain.User;

public interface UserDao {
	int addUser(User user);
	User loginUser(User user);
	int idCheck(String userId);
	
	//int KaddUser(User user);
	//User KakaoLogin(int userNo);
}
