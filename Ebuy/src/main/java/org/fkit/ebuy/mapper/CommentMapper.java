package org.fkit.ebuy.mapper;



import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.fkit.ebuy.domain.Comment;


/**
 * BookMapper接口
 * */
public interface CommentMapper {

	/**
	 * 查询所有图书
	 * @return 图书对象集合
	 * */

	
	@Select("insert into comment(order_id,service,logistics,quality,comments,image1) values(#{order_id},#{service},#{logistics},#{quality},#{comments},#{image1})")
	Comment insertcomment(@Param("order_id")Integer order_id,@Param("service")String service,@Param("logistics")String logistics,@Param("quality")String quality,
			@Param("comments")String comments,@Param("image1")String image1);
	
}

