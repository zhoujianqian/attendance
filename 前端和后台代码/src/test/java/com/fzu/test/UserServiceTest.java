package com.fzu.test;

import org.apache.log4j.Logger;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.fzu.model.Student;
import com.fzu.service.UserService;  
 
  
/** 
 * 功能概要：UserService单元测试 
 *  
 * @author linbingwen 
 * @since  2015年9月28日  
 */  
public class UserServiceTest extends SpringTestCase {  
    @Autowired  
    private UserService userService;  
    Logger logger = Logger.getLogger(UserServiceTest.class);  
      
    @Test  
    public void selectUserByIdTest(){  
        Student user = userService.selectUserById("1603010","123456");  
        logger.debug("查找结果" + user);  
    }  
      
  
}  