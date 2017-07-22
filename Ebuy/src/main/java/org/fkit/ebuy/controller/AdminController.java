package org.fkit.ebuy.controller;

import javax.servlet.http.HttpSession;

import org.fkit.ebuy.domain.Admin;
import org.fkit.ebuy.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;


@Controller


public class AdminController {
	
	/**
	 * 自动注入AdminService
	 * */
	@Autowired
	@Qualifier("adminService")
	private AdminService adminService;

	/**
	 * 处理/login请求
	 * */
	
	@RequestMapping(value="/login1" )
	 public ModelAndView login(
			 String loginname,String password,
			 ModelAndView mv,
			 HttpSession session){
		// 根据登录名和密码查找用户，判断用户登录
		Admin admin = adminService.login(loginname, password);
		if(admin != null){
			// 登录成功，将user对象设置到HttpSession作用范围域
			session.setAttribute("admin", admin);
			// 转发到main请求
			mv.setView(new RedirectView("/Ebuy/adminindex"));
		}else{
			// 登录失败，设置失败提示信息，并跳转到登录页面
			mv.addObject("message", "登录名或密码错误，请重新输入!");
			mv.setViewName("adminindex");
		}
		return mv;
		
	}
}


