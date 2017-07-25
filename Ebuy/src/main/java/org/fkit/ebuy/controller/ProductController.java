package org.fkit.ebuy.controller;


import org.fkit.ebuy.domain.Product;
import org.fkit.ebuy.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
@Controller
public class ProductController {
	@Autowired
	@Qualifier("productService")
	private ProductService productService;

	
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
						Integer category_id,
					   ModelAndView mv ){
	   Product addProduct  = productService.addproduct(name, price, descripts, image, image2, image3, image4, stock, category_id);
		   if(addProduct != null){
			  
				// 注册成功，将user对象设置到HttpSession作用范围域
			//session.setAttribute("insertproduct", insertProduct);
				// 转发到loginForm请求
				mv.setViewName("insertproduct");
			}
			else{
				// 注册失败，设置失败提示信息，并跳转到注册页面
				mv.addObject("message", "添加成功");
				mv.setViewName("insertproduct");
			}
			
		   return mv;
	 }
	
	@RequestMapping(value="/updateproduct",method = RequestMethod.POST)
	 public ModelAndView updateproduct(
						String name,
						Double price, 
						String descripts, 
						String image,
						String image2,
						String image3,
						String image4,
						Integer stock,
						Integer category_id,
					   ModelAndView mv ){
	   Product updateProduct  = productService.updateproduct(name, price, descripts, image, image2, image3, image4, stock, category_id);
		   if(updateProduct != null){
			  
				// 注册成功，将user对象设置到HttpSession作用范围域
			//session.setAttribute("insertproduct", insertProduct);
				// 转发到loginForm请求
				mv.setViewName("updateproduct");
			}
			else{
				// 注册失败，设置失败提示信息，并跳转到注册页面
				mv.addObject("message", "修改成功");
				mv.setViewName("updateproduct");
			}
			
		   return mv;
	 }
	@RequestMapping(value="/removeproduct")
	public ModelAndView removeproduct(Integer id,
			ModelAndView mv){
		productService.removeProduct(id);
			mv.setViewName("shop1");
		return mv;
	}
	
	
}
