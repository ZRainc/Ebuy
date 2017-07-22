package org.fkit.ebuy.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.fkit.ebuy.domain.Collect;
import org.fkit.ebuy.service.CollectService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 处理图书请求控制器
 * */
@Controller
public class CollectController {
	
	/**
	 * 自动注入BookService
	 * */
	@Autowired
	@Qualifier("collectService")
	private CollectService collectService;

	/**
	 * 处理/main请求
	 * */
	@RequestMapping(value="/collect")
	 public String collection(Model model){
		// 获得所有图书集合
		List<Collect> collect_list = collectService.getAll();
		// 将图书集合添加到model当中
		model.addAttribute("collect_list", collect_list);
		// 跳转到main页面
		return "collect";
	}
	@RequestMapping(value = "/savecollect")
	public String add(HttpServletRequest request,Model model) {
		String product_id = request.getParameter("product_id");
		int product_id_ = Integer.parseInt(product_id);
		Collect collect=collectService.findCollect(product_id_);
		if (collect == null) {
			collectService.saveCollect(product_id_);
		}else {			
			collectService.saveCollect(product_id_);	
		}
		List<Collect> collect_list = collectService.getAll();
		// 将图书集合添加到model当中
		model.addAttribute("collect_list", collect_list);
		// 跳转到collection页面
		return "collect";
	}
	//清空购物车
	@RequestMapping(value = "/clearcollect")
	public String clear(Model model) {
		collectService.clearCollect();
		List<Collect> collect_list = collectService.getAll();
		// 将图书集合添加到model当中
		model.addAttribute("collect_list", collect_list);
		// 跳转到collection页面
		return "collect";

	}
	@RequestMapping(value="/removecollect")
	public String remove(Model model,HttpServletRequest request){
		String product_id = request.getParameter("product_id");
		int product_id_ = Integer.parseInt(product_id);
		collectService.removeCollect(product_id_);
		List<Collect> collect_list = collectService.getAll();
		// 将图书集合添加到model当中
		model.addAttribute("collect_list", collect_list);
		// 跳转到cart页面
		return "collect";
	}
}
