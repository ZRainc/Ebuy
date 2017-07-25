package org.fkit.ebuy.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.mail.EmailException;
import org.apache.commons.mail.SimpleEmail;
import org.fkit.ebuy.domain.Order;
import org.fkit.ebuy.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
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
	
	@RequestMapping(value="/order1")
	public String order1(Model model){
	        // 获得所有图书集合
			List<Order> order_list = orderService.getAll();
			// 将图书集合添加到model当中		
			model.addAttribute("order_list", order_list);
			// 跳转到order页面
			return "order1";
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
		public String saveorder(HttpServletRequest request,Model model,Integer user_id){
			String product_id = request.getParameter("product_id");
			int product_id_ = Integer.parseInt(product_id);
			Order order=orderService.findOrder(product_id_);
			if (order == null) {
				orderService.saveOrder(product_id_,user_id);				
			}else {			
				orderService.addOrder(product_id_);				
			}
			List<Order> order_list = orderService.getAll();
			// 将图书集合添加到model当中
			model.addAttribute("order_list", order_list);
			// 跳转到cart页面
			return "order";
		}
		
		@RequestMapping(value="/notice")
		 public ModelAndView notice(Integer product_id, Integer user_id,ModelAndView mv,HttpSession session,HttpServletResponse response) throws Exception{		
			Order order=orderService.ordernotice(product_id,user_id);
			if(order!=null){
				String email="823731949@qq.com";
				StringBuffer url=new StringBuffer();
				StringBuilder builder=new StringBuilder();
				builder.append("");
				url.append("您的订单是："+order.getProduct_id()+"");
				builder.append("");
				builder.append(""+url+"");
				
				System.out.print("builder输出");
				builder.append("");
				SimpleEmail sendemail=new SimpleEmail();
				sendemail.setHostName("smtp.163.com");
				sendemail.setAuthentication("ZRaincumt@163.com","zyc19970214");
				sendemail.setCharset("UTF-8");
				try{
					sendemail.setCharset("UTF-8");
					sendemail.addTo(email);
					sendemail.setFrom("ZRaincumt@163.com");
					sendemail.setSubject("订单信息");
					sendemail.setMsg(builder.toString());
					sendemail.send();
					System.out.println(builder.toString());
				}catch(EmailException e){
					e.printStackTrace();
					System.out.print("抛出异常");
				}
				
//				response.sendRedirect("loginForm");
				mv.setViewName("order1");
			
			}else{
				
				response.getWriter().println("订单生成失败");
				System.out.print("订单生成失败");
			}	
			return mv;
		}
		
		
}