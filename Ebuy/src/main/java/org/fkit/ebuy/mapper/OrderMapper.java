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
import org.apache.ibatis.annotations.Update;
import org.apache.ibatis.mapping.FetchType;
import org.fkit.ebuy.domain.Order;

public interface OrderMapper {
    
	@Select("select * from `order`")
	@Results({ @Result(id = true, column = "id", property = "id"),
		@Result(column = "product_id", property = "product", many = @Many(select = "org.fkit.ebuy.mapper.ProductMapper.selectByProductId", fetchType = FetchType.LAZY)),		
		@Result(column = "product_id", property = "product_id")})
	List<Order> findAll();
	//加入订单 
    @Insert("insert into `order`(product_id,count,user_id) values(#{product_id},#{count},#{user_id})")
	@Options(useGeneratedKeys = true, keyProperty = "id")
	int saveOrder(Order order);
  //通过ID寻找书
    @Select("select * from `order` where product_id=#{product_id}")
	@Results({ @Result(id = true, column = "id", property = "id"),
			@Result(column = "product_id", property = "product", many = @Many(select = "org.fkit.ebuy.mapper.ProductMapper.selectByProductId", fetchType = FetchType.LAZY)),				
			@Result(column = "product_id", property = "product_id") })
	Order findWithId(@Param("product_id") int product_id);
  //增加书籍数量
    @Update("update `order` set count=count+1 where product_id=#{product_id}")
	void addOrder(Order order);
    //删除商品
    @Delete("delete from `order` where product_id=#{product_id}")
	void removeOrder(Order order);
  //减少购物车商品数量
    @Update("update `order` set count=count-1 where product_id=#{product_id}")
	void reduceOrder(Order order);
	@Select("select * from `order` where product_id=#{product_id} and user_id=#{user_id}")
	Order ordernotice(@Param("product_id")Integer product_id,@Param("user_id")Integer user_id);
}
