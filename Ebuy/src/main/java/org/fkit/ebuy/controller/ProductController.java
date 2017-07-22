package org.fkit.ebuy.controller;



import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.fkit.ebuy.domain.Product;
import org.fkit.ebuy.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
@Controller
public class ProductController {
	@Autowired
	@Qualifier("productService")
	private ProductService productService;
	
	@RequestMapping(value="/product1")
 	 public String product(Model model){
		// 获得所有图书集合
		List<Product> product_list = productService.getAll();
		// 将图书集合添加到model当中
		model.addAttribute("product_list", product_list);
		// 跳转到main页面
		return "deleteproduct";	}
	
	@RequestMapping(value="/addproduct",method = RequestMethod.POST)
	 public ModelAndView insertproduct(
						String name,
						Double price, 
						String descripts, 
						String image,
						String image2,
						String image3,
						String image4,
						Integer stock,
						Integer type_id,
					   ModelAndView mv ){
	   Product addProduct  = productService.addproduct(name, price, descripts, image, image2, image3, image4, stock, type_id);
		   if(addProduct != null){
			  
				// 注册成功，将user对象设置到HttpSession作用范围域
			//session.setAttribute("insertproduct", insertProduct);
				// 转发到loginForm请求
				mv.setViewName("insertproduct");
			}
			else{
				// 注册失败，设置失败提示信息，并跳转到注册页面
				mv.addObject("message", "添加失败");
				mv.setViewName("insertproduct");
			}
			
		   return mv;
	 }
	@RequestMapping(value="/removeproduct")
	public String remove(Model model,HttpServletRequest request){
		String product_id = request.getParameter("product_id");
		int product_id_ = Integer.parseInt(product_id);
		productService.removeProduct(product_id_);
		List<Product> product_list = productService.getAll();
		// 将图书集合添加到model当中
		model.addAttribute("product_list", product_list);
		// 跳转到cart页面
		return "deleteroduct";
	}
}
