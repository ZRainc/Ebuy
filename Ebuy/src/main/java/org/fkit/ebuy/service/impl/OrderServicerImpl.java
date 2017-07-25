package org.fkit.ebuy.service.impl;

import java.util.List;

import javax.management.RuntimeErrorException;


import org.fkit.ebuy.domain.Order;
import org.fkit.ebuy.mapper.OrderMapper;
import org.fkit.ebuy.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
@Transactional(propagation = Propagation.REQUIRED, isolation = Isolation.DEFAULT)
@Service("orderService")
public class OrderServicerImpl implements OrderService{
	@Autowired
	private OrderMapper orderMapper;

	@Override
	public List<Order> getAll() {
		// TODO Auto-generated method stub
		return orderMapper.findAll();
	}

	@Override
	public Order removeOrder(int product_id) {
		// TODO Auto-generated method stub
		Order order = orderMapper.findWithId(product_id);
		orderMapper.removeOrder(order);
		return order;
	}

	@Override
	public Order findOrder(int product_id) {
		// TODO Auto-generated method stub
		return orderMapper.findWithId(product_id);
	}

	@Override
	public Order saveOrder(int product_id,Integer user_id) {
		// TODO Auto-generated method stub
		Order order = new Order();
		order.setProduct_id(product_id);
		order.setUser_id(user_id);
		final int i = 1;
		order.setCount(i);
		orderMapper.saveOrder(order);
		return order;
	}

	@Override
	public Order addOrder(int product_id) {
		// TODO Auto-generated method stub
		Order order = orderMapper.findWithId(product_id);
		orderMapper.addOrder(order);
		return order;
	}
	
	@Override
	public Order ordernotice(Integer product_id, Integer user_id) {
		// TODO Auto-generated method stub
		return orderMapper.ordernotice(product_id,user_id);
	}
	
	@Override
	public Order reduceOrder(int product_id) {
		// TODO Auto-generated method stub
		
				Order order = orderMapper.findWithId(product_id);
				if (order.getCount() >= 1) {
					orderMapper.reduceOrder(order);
				} else {
					Error e = null;
					throw new RuntimeErrorException(e);
				}
				return order;
	}
}
