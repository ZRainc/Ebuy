package org.fkit.ebuy.service;

import java.util.List;
import org.fkit.ebuy.domain.Order;
public interface OrderService {
	List<Order> getAll();
	Order removeOrder(int product_id);
	Order findOrder(int product_id);
	Order saveOrder(int product_id);
//	Order addOrder(int product_id);
}  
