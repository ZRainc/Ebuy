package org.fkit.ebuy.service.impl;

import org.fkit.ebuy.domain.Admin;
import org.fkit.ebuy.mapper.AdminMapper;
import org.fkit.ebuy.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;


	@Transactional(propagation=Propagation.REQUIRED,isolation=Isolation.DEFAULT)
	@Service("adminService")
	public class AdminServiceImpl implements AdminService {
		
		/**
		 * 自动注入AdminMapper
		 * */
		@Autowired
		private AdminMapper adminMapper;

		/**
		 * AdminService接口login方法实现
		 * @see { AdminService }
		 * */
		@Transactional(readOnly=true)
		@Override
		public Admin login(String loginname, String password) {
			return adminMapper.findWithLoginnameAndPassword(loginname, password);
		}
	
}
