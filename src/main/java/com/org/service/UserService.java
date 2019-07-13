package com.org.service;

import java.util.List;

import com.org.entity.User;
/**
 * User类业务层接口

 */
public interface UserService {
	
	int deleteByPrimaryKey(Integer id);

    int insertSelective(User record);

    User selectByPrimaryKey(Integer id);
    
    User loginByUserNameAndPassword(User record);
    
    List<User> selectUserList();
    
    int updateByPrimaryKeySelective(User record);


}
