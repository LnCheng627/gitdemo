package com.yueqian.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.yueqian.pojo.User;
import com.yueqian.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {
	
	@Autowired
	private UserService userService;
	
	
	@RequestMapping("/dologin")
	public String doLogin(User user,HttpSession session){
		
		System.out.println("name:"+user.getXingming()+",pwd:"+user.getUserPwd());
		User u = userService.login(user);
		
		if(u!=null){
			session.setAttribute("user", u);
			return "redirect:../product/findAll";
		}
		return "welcome";
	}
	
}
