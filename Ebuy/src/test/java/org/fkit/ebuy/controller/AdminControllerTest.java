package org.fkit.ebuy.controller;


import org.fkit.ebuy.domain.Admin;
import org.fkit.ebuy.service.AdminService;
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

public class AdminControllerTest {

	
	@Autowired
	@Qualifier("adminService")
	private AdminService adminService;
	

	@Test
	public void testLogin() {
		Admin admin = adminService.login("789", "789");
		System.out.println("登录成功");
	}

}
