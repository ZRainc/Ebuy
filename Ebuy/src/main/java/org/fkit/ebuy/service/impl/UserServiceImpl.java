package org.fkit.ebuy.service.impl;

import org.fkit.ebuy.domain.User;
import org.fkit.ebuy.mapper.UserMapper;
import org.fkit.ebuy.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

/**
 * User服务层接口实现类
 * @Service("userService")用于将当前类注释为一个Spring的bean，名为userService
 * */
@Transactional(propagation=Propagation.REQUIRED,isolation=Isolation.DEFAULT)
@Service("userService")
public class UserServiceImpl implements UserService {
	
	/**
	 * 自动注入UserMapper
	 * */
	@Autowired
	private UserMapper userMapper;

	/**
	 * UserService接口login方法实现
	 * @see { UserService }
	 * */
	@Transactional(readOnly=true)
	@Override
	public User login(String loginname, String password) {
		return userMapper.findWithLoginnameAndPassword(loginname, password);
	}

	@Override
	public User register(String loginname, String password, String username, String email,String phonenumber) {
		// TODO Auto-generated method stub
		return userMapper.insertuser(loginname, password, username, email,phonenumber);
	}

	@Override
	public User findPasswordEmail(String loginname, String email) {
		// TODO Auto-generated method stub
		return userMapper.findPassword(loginname,email);
	}

	@Override
	public User update(String loginname, String password) {
		// TODO Auto-generated method stub
		return userMapper.updatePassword(loginname, password);
	}
}
