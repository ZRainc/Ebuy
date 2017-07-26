package org.fkit.ebuy.mapper;



import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Many;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.mapping.FetchType;
import org.fkit.ebuy.domain.Category;


/**
 * UserMapper接口
 * */
public interface CategoryMapper {
	
	/**
	 * 根据登录名和密码查询用户
	 * @param String loginname
	 * @param String password
	 * @return 找到返回User对象，没有找到返回null
	 * */
	@Select("select * from category")		
	@Results({ 
		@Result(id = true, column = "id", property = "id"), @Result(column = "type", property = "type")})
	List<Category> findAll();

    //加入收藏夹
    @Insert("insert into category(id,type) values(#{id},#{type})")
	@Options(useGeneratedKeys = true, keyProperty = "id")
	int saveCategory(Category category);
     //通过ID寻找商品
    @Select("select * from category where id=#{id}")
	@Results({ @Result(id = true, column = "id", property = "id"),
			@Result(column = "id", property = "id", many = @Many(select = "org.fkit.ebuy.mapper.CategoryMapper.selectByCategoryId", fetchType = FetchType.LAZY)),				
			@Result(column = "id", property = "id") })
    Category findWithId(@Param("id") int id);
  //删除商品
    @Delete("delete from category where id=#{id}")
	void removeCategory(Category category);
	
}



