package org.fkit.ebuy.controller;


import org.fkit.ebuy.domain.User;
import org.fkit.ebuy.service.UserService;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;


@WebAppConfiguration
@RunWith(SpringJUnit4ClassRunner.class)   
@ContextConfiguration(locations={"classpath:applicationContext.xml","classpath:springmvc-config.xml"})

public class UserControllerTest {
	
	@Autowired
	@Qualifier("userService")
	private UserService userService;
	
	@Test
	public void testRegister() {
		User register  = userService.register("456","456","456","1@1","456");
		System.out.println("注册成功");
	}

	
	@Test
	public void testLogin() {
		User user = userService.login("zyc", "123");
		System.out.println("登录成功");
	}

	@Test
	public void testFind() {
		User user=userService.findPasswordEmail("zyc","823731949@qq.com");
		System.out.println("找回成功");
	}
	

	@Test
	public void testUpdate() {
		userService.update("zyc", "456");
		System.out.println("修改成功");
	}

}
