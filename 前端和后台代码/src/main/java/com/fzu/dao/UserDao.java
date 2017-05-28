package com.fzu.dao;

import org.apache.ibatis.annotations.Param;

import com.fzu.model.Student;

/** 
 * 功能概要：User的DAO类 
 *  
 * @author linbingwen 
 * @since 2015年9月28日 
 */  
public interface UserDao {  
    /** 
     *  
     * @author linbingwen 
     * @since 2015年9月28日 
     * @param userId 
     * @return 
     */  
    public Student selectUserById(@Param("sID")String sID,@Param("spwd")String password);  
  
}  
