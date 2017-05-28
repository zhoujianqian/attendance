package com.fzu.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fzu.dao.UserDao;
import com.fzu.model.Student;  
  
  
/** 
 * 功能概要：UserService实现类 
 *  
 * @author linbingwen 
 * @since  2015年9月28日  
 */  
@Service  
public class UserServiceImpl implements UserService{  
    @Autowired  
    private UserDao userDao;  
  
    
	@Override
	public Student selectUserById(String username, String password) {
		return userDao.selectUserById(username,password); 
	}  
  
}  
