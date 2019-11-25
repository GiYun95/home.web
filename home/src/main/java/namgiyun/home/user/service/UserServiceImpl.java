package namgiyun.home.user.service;

import namgiyun.home.user.dao.UserDao;
import namgiyun.home.user.domain.User;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("service")
public class UserServiceImpl implements UserService{
	@Autowired private UserDao userDao;

	@Override
	public boolean joinMember(User user) {
		return userDao.addUser(user) > 0;
	}
	/*
	@Override
	public boolean k_joinMember(User user) {
		return userDao.KaddUser(user) > 0;
	}
	 */
	@Override
	public User loginUser(User user) {
		System.out.println("loginUser Service");
		return userDao.loginUser(user);
	}
	

	@Override
	public boolean idCheck(String userId) {
		return userDao.idCheck(userId) > 0;
	}
/*
	@Override
	public User kakaoLogin(int userNo) {
		return userDao.KakaoLogin(userNo);
	}
*/
}
