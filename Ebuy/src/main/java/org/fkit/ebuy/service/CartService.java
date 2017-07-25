package org.fkit.ebuy.service;

import java.util.List;

import org.fkit.ebuy.domain.Cart;



/**
 * Book服务层接口
 * */
public interface CartService {
	
	List<Cart> getAll();
	Cart findCart(int product_id);
	Cart saveCart(int product_id,Integer user_id);
	Cart addCart(int product_id);
	Cart reduceCart(int product_id);
	Cart removeCart(int product_id);
	void clearCart();
}