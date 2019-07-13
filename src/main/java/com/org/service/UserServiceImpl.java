package com.org.service;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.org.dao.UserDao;
import com.org.entity.User;

/**
 * User类业务层实现类
 */
@Service("userService")
public class UserServiceImpl implements UserService {

	@Resource
	private UserDao userDao;

	public int deleteByPrimaryKey(Integer id) {
		return userDao.deleteByPrimaryKey(id);
	}


	public int insertSelective(User record) {
		
		return userDao.insertSelective(record);
	}


	public User selectByPrimaryKey(Integer id) {
	
		return userDao.selectByPrimaryKey(id);
	}


	public int updateByPrimaryKeySelective(User record) {
		return userDao.updateByPrimaryKeySelective(record);
	}


	public List<User> selectUserList() {
		
		return userDao.selectUserList();
	}

	public User loginByUserNameAndPassword(User record) {
		
		return userDao.loginByUserNameAndPassword(record);
	}
}
