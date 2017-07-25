package org.fkit.ebuy.controller;

import java.util.List;

import org.fkit.ebuy.domain.Product;
import org.fkit.ebuy.service.ShopService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 处理图书请求控制器
 * */
@Controller
public class ShopController {
	
	/**
	 * 自动注入BookService
	 * */
	@Autowired
	@Qualifier("shopService")
	private ShopService shopService;

	/**
	 * 处理/main请求
	 * */
	@RequestMapping(value="/shop")
	 public String shop(Model model){
		// 获得所有图书集合
		List<Product> product_list = shopService.getAll();
		// 将图书集合添加到model当中
		model.addAttribute("product_list", product_list);
		// 跳转到main页面
		return "shop";
	}
	@RequestMapping(value="/shop1")
	 public String shop1(Model model){
		// 获得所有图书集合
		List<Product> product_list = shopService.getAll();
		// 将图书集合添加到model当中
		model.addAttribute("product_list", product_list);
		// 跳转到main页面
		return "shop1";
	}
	@RequestMapping(value="/lining")
	 public String canvasbag(Model model){
		// 获得所有图书集合
		List<Product> lining_list = shopService.getAll4();
		// 将图书集合添加到model当中
		model.addAttribute("lining_list", lining_list);
		// 跳转到main页面
		return "lining";
	}
	@RequestMapping(value="/nike")
	 public String nike (Model model){
		// 获得所有图书集合
		List<Product> nike_list = shopService.getAll1();
		// 将图书集合添加到model当中
		model.addAttribute("nike_list", nike_list);
		// 跳转到main页面
		return "nike";
	}
	@RequestMapping(value="/adidas")
	 public String adidas(Model model){
		// 获得所有手机壳集合
		List<Product>adidas_list = shopService.getAll3();
		// 将手机壳集合添加到model当中
		model.addAttribute("adidas_list", adidas_list);
		// 跳转到main页面
		return "adidas";
	}
	@RequestMapping(value="/aj")
	 public String aj(Model model){
		// 获得所有卫衣集合
		List<Product> aj_list = shopService.getAll2();
		// 将卫衣集合添加到model当中
		model.addAttribute("aj_list", aj_list);
		// 跳转到main页面
		return "aj";
	}
	@RequestMapping(value="/asics")
	 public String asics(Model model){
		// 获得所有亚瑟士集合
		List<Product> asics_list = shopService.getAll5();
		// 将亚瑟士集合添加到model当中
		model.addAttribute("asics_list", asics_list);
		// 跳转到main页面
		return "asics";
	}
	@RequestMapping(value="/product")
	 public String look(int id,
			 Model model){
		// 获得所有图书集合
		List<Product> p_list = shopService.getAll6(id);
		// 将图书集合添加到model当中
		model.addAttribute("p_list", p_list);
		// 跳转到main页面
		return "product";
	}
}
