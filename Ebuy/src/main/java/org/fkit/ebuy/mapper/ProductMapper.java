package org.fkit.ebuy.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Many;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.mapping.FetchType;
import org.fkit.ebuy.domain.Product;


/**
 * BookMapper接口
 * */
public interface ProductMapper {

	/**
	 * 查询所有图书
	 * @return 图书对象集合
	 * */
	@Select(" select * from product ")
	List<Product> findAll();
	//
	@Select("select * from product where id=#{id}")
	@Results({ @Result(id = true, column = "id", property = "id"), @Result(column = "name", property = "name"),
			@Result(column = "price", property = "price"), @Result(column = "count", property = "count"),
			@Result(column = "image", property = "image"),
			@Result(column = "price", property = "price"),
			@Result(column = "count", property = "count")})
	List<Product> selectByProductId(int id);
	
	@Select("select * from product where id=#{id}")
	@Results({ @Result(id = true, column = "id", property = "id"),
			@Result(column = "id", property = "product", many = @Many(select = "org.fkit.ebuy.mapper.ProductMapper.selectByProductId", fetchType = FetchType.LAZY)),				
			@Result(column = "count", property = "count"), @Result(column = "id", property = "id") })
	Product findWithId(@Param("id") int id);

	@Select("insert into product(name,price,descripts,image,image2,image3,image4,stock,type_id) values(#{name},#{price},#{descripts},#{image},#{image2},#{image3},#{image4},#{stock},#{type_id})")
	Product addproduct(@Param("name")String name,@Param("price")Double price,@Param("descripts")String descripts,
			@Param("image")String image,@Param("image2")String image2,@Param("image3")String image3,@Param("image4")String image4,
			@Param("stock")Integer stock,@Param("type_id")Integer type_id);
	
	//删除商品
    @Delete("delete from product where id=#{id}")
	void removeProduct(Product product);
}