package com.fzu.service;

import com.fzu.model.Student;  

  
/** 
 * 功能概要：UserService接口类 
 *  
 * @author linbingwen 
 * @since  2015年9月28日  
 */  
public interface UserService {  
    Student selectUserById(String sID,String password);  
  
}  