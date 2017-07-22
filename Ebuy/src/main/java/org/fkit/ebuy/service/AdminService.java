package org.fkit.ebuy.service;

import org.fkit.ebuy.domain.Admin;

/**
 * User服务层接口
 * */
public interface AdminService {
	
	/**
	 * 判断用户登录
	 * @param String loginname
	 * @param String password
	 * @return 找到返回User对象，没有找到返回null
	 * */
	Admin login(String loginname,String password);

}
