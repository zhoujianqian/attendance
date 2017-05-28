package com.fzu.controller;
import java.io.IOException;
import java.io.PrintWriter;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.fzu.model.Student;
import com.fzu.service.UserService;

import net.sf.json.JSONObject;

  
/** 
 * 功能概要：UserController 
 *  
 * @author linbingwen 
 * @since  2015年9月28日  
 */  
@Controller  
public class UserController {  
    @Resource  
    private UserService userService;  
      
    @RequestMapping("/findUser/{uname}/{pword}")    
    public void getIndex(HttpServletResponse response,@PathVariable("uname")String username,@PathVariable("pword")String password){  
    	// int userId = Integer.parseInt(request.getParameter("id"));
    	//System.out.println(userId);
       // ModelAndView mav = new ModelAndView("index"); 
    	System.out.println(username+password);
        JSONObject jSONObject = new JSONObject();
        Student user = userService.selectUserById(username,password); 
        System.out.println(user);
        if(user!=null ){
        	jSONObject.put("success", true);
        }
        else{
        	jSONObject.put("success", false);
        }
        //mav.addObject("user", user);
       // System.out.println(user.getUserName()+"***********************************");
        
		//设置页面不缓存
		response.setHeader("Pragma", "No-cache");
		response.setHeader("Cache-Control", "no-cache");
		response.setCharacterEncoding("UTF-8");
		PrintWriter out= null;
		try {
			out = response.getWriter();
			out.print(jSONObject.toString());
			out.flush();
			out.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		
       // return mav;    
    }    
}  
