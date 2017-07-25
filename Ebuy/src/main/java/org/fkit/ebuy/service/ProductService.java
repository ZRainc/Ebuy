package org.fkit.ebuy.service;

import java.util.List;


import org.fkit.ebuy.domain.Product;



/**
 * User服务层接口
 * */
public interface ProductService {
	
	/**
	 * 判断用户登录
	 * @param String loginname
	 * @param String password
	 * @return 找到返回User对象，没有找到返回null
	 * */
	
	List<Product> getAll();
	Product addproduct(String name,Double price,String descripts,String image,String image2 ,String image3,String image4,Integer stock, Integer category_id);
	Product removeProduct(Integer id);
	Product updateproduct(String name,Double price,String descripts,String image,String image2 ,String image3,String image4,Integer stock, Integer category_id);


}
