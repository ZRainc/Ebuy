package org.fkit.ebuy.service;


import org.fkit.ebuy.domain.Comment;

/**
 * Book服务层接口
 * */
public interface CommentService {
	
	/**
	 * 查找所有图书
	 * @return comment对象集合
	 * */

//	List<Comment> getAll(int id);

	

	Comment comment(Integer order_id,String service, String logistics, String quality, String comments, String image1);

}
