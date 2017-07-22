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
import org.fkit.ebuy.domain.Collect;



/**
 * CollectMapper接口
 * */
public interface CollectMapper {

		@Select("select * from collect")
		@Results({ @Result(id = true, column = "id", property = "id"),
		@Result(column = "product_id", property = "product", many = @Many(select = "org.fkit.ebuy.mapper.ProductMapper.selectByProductId", fetchType = FetchType.LAZY)),		
		@Result(column = "product_id", property = "product_id")})
		List<Collect> findAll();
	
	    //加入购物车
	    @Insert("insert into collect(product_id) values(#{product_id})")
		@Options(useGeneratedKeys = true, keyProperty = "id")
		int saveCollect(Collect collect);
         //通过ID寻找商品
	    @Select("select * from collect where product_id=#{product_id}")
		@Results({ @Result(id = true, column = "id", property = "id"),
				@Result(column = "product_id", property = "product", many = @Many(select = "org.fkit.ebuy.mapper.ProductMapper.selectByProductId", fetchType = FetchType.LAZY)),				
				@Result(column = "product_id", property = "product_id") })
		Collect findWithId(@Param("product_id") int product_id);
	  //删除商品
	    @Delete("delete from collect where product_id=#{product_id}")
		void removeCollect(Collect collect);
	  //清空购物车
	    @Delete("delete from collect ")
	    void clearCollect();
}