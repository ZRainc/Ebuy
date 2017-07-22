package org.fkit.ebuy.mapper;



import org.apache.ibatis.annotations.Param;

import org.apache.ibatis.annotations.Select;
import org.fkit.ebuy.domain.User;

/**
 * UserMapper接口
 * */
public interface UserMapper {
	
	/**
	 * 根据登录名和密码查询用户
	 * @param String loginname
	 * @param String password
	 * @return 找到返回User对象，没有找到返回null
	 * */
	@Select("select * from user where loginname = #{loginname} and password = #{password}")
	User findWithLoginnameAndPassword(@Param("loginname")String loginname,
			@Param("password") String password);

	@Select("insert into user(loginname,password,username,email,phonenumber) values(#{loginname},#{password},#{username},#{email},#{phonenumber})")
	User insertuser(@Param("loginname")String loginname,@Param("password")String password,@Param("username")String username,
			@Param("email")String email,@Param("phonenumber")String phonenumber);
	
	@Select("select * from user where loginname=#{loginname} and email=#{email}")
	User findPassword(@Param("loginname")String loginname,@Param("email")String email);
	
	@Select("update user set password=#{password} where loginname=#{loginname}")
	User updatePassword(@Param("loginname")String loginname,@Param("password") String password);
}



