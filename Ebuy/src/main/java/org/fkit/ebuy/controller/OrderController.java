package org.fkit.ebuy.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import org.fkit.ebuy.domain.Order;
import org.fkit.ebuy.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
public class OrderController {
	@Autowired
	@Qualifier("orderService")
	private OrderService orderService;
	
	//我的订单
	@RequestMapping(value="/order")
	public String order(Model model){
	        // 获得所有图书集合
			List<Order> order_list = orderService.getAll();
			// 将图书集合添加到model当中		
			model.addAttribute("order_list", order_list);
			// 跳转到order页面
			return "order";
			}
	
	//删除订单的东西
		@RequestMapping(value="/removeorder")
		public String removeorder(Model model,HttpServletRequest request){
			String product_id = request.getParameter("product_id");
			int product_id_ = Integer.parseInt(product_id);
			orderService.removeOrder(product_id_);
			List<Order> order_list = orderService.getAll();
			// 将图书集合添加到model当中
			model.addAttribute("order_list", order_list);
			// 跳转到order页面
			return "order";
			}
		//添加订单
		@RequestMapping(value = "/saveorder")
		public String saveorder(HttpServletRequest request,Model model){
			String product_id = request.getParameter("product_id");
			int product_id_ = Integer.parseInt(product_id);
			Order order=orderService.findOrder(product_id_);
			if (order == null) {
				orderService.saveOrder(product_id_);				
			}else {			
				orderService.saveOrder(product_id_);				
			}
			List<Order> order_list = orderService.getAll();
			// 将图书集合添加到model当中
			model.addAttribute("order_list", order_list);
			// 跳转到cart页面
			return "order";
		}
}