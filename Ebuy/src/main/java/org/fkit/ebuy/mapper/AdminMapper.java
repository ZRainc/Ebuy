package org.fkit.ebuy.mapper;



import org.apache.ibatis.annotations.Param;

import org.apache.ibatis.annotations.Select;
import org.fkit.ebuy.domain.Admin;


/**
 * UserMapper接口
 * */
public interface AdminMapper {
	
	/**
	 * 根据登录名和密码查询用户
	 * @param String loginname
	 * @param String password
	 * @return 找到返回User对象，没有找到返回null
	 * */
	@Select("select * from admin where loginname = #{loginname} and password = #{password}")
	Admin findWithLoginnameAndPassword(@Param("loginname")String loginname,
			@Param("password") String password);

	
}



