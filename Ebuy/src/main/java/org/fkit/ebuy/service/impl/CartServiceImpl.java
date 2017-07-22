package org.fkit.ebuy.service.impl;

import java.util.List;

import javax.management.RuntimeErrorException;

import org.fkit.ebuy.domain.Cart;
import org.fkit.ebuy.mapper.CartMapper;
import org.fkit.ebuy.service.CartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

/**
 * Book服务层接口实现类
 * @Service("bookService")用于将当前类注释为一个Spring的bean，名为bookService
 * */
@Transactional(propagation=Propagation.REQUIRED,isolation=Isolation.DEFAULT)
@Service("cartService")
public class CartServiceImpl implements CartService {
	
	/**
	 * 自动注入CartMapper
	 * */
	@Autowired
	private CartMapper cartMapper;

	@Override
	public List<Cart> getAll() {
		// TODO Auto-generated method stub
		return cartMapper.findAll();
	}
	
	@Override
	public Cart findCart(int product_id) {
		// TODO Auto-generated method stub
		return cartMapper.findWithId(product_id);
	}

	@Override
	public Cart saveCart(int product_id) {
		// TODO Auto-generated method stub
		Cart cart = new Cart();
		cart.setProduct_id(product_id);
		final int i = 1;
		cart.setCount(i);
		cartMapper.saveCart(cart);
		return cart;
	}
	@Override
	public Cart addCart(int product_id) {
		// TODO Auto-generated method stub
		Cart cart = cartMapper.findWithId(product_id);
		cartMapper.addCart(cart);
		return cart;
	}

	@Override
	public Cart reduceCart(int product_id) {
		// TODO Auto-generated method stub
		
				Cart cart = cartMapper.findWithId(product_id);
				if (cart.getCount() >= 1) {
					cartMapper.reduceCart(cart);
				} else {
					Error e = null;
					throw new RuntimeErrorException(e);
				}
				return cart;
	}

	@Override
	public void clearCart() {
		// TODO Auto-generated method stub
		cartMapper.clearCart();
	}

	@Override
	public Cart removeCart(int product_id) {
		// TODO Auto-generated method stub
		Cart cart = cartMapper.findWithId(product_id);
		cartMapper.removeCart(cart);
		return cart;
	}

}