package org.fkit.ebuy.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.fkit.ebuy.domain.Category;
import org.fkit.ebuy.service.CategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CategoryController {
	
	
	@Autowired
	@Qualifier("categoryService")
	private CategoryService categoryService;
	
	@RequestMapping(value="/category")
	 public String category(Model model){
		// 获得所有图书集合
		List<Category> category_list = categoryService.getAll();
		// 将图书集合添加到model当中
		model.addAttribute("category_list", category_list);
		// 跳转到main页面
		return "category";
	}
	@RequestMapping(value = "/savecategory")
	public String add(HttpServletRequest request,Model model,String type) {
		String id = request.getParameter("id");
		int id_ = Integer.parseInt(id);
		Category category=categoryService.findCategory(id_);
		if (category == null) {
			categoryService.saveCategory(id_,type);
		}else {			
			return("failcategory");
		}
		List<Category> category_list = categoryService.getAll();
		// 将图书集合添加到model当中
		model.addAttribute("category_list", category_list);
		// 跳转到collection页面
		return "category";
	}
	@RequestMapping(value="/removecategory")
	public String remove(Model model,HttpServletRequest request){
		String id = request.getParameter("id");
		int id_ = Integer.parseInt(id);
		categoryService.removeCategory(id_);
		List<Category> category_list = categoryService.getAll();
		// 将图书集合添加到model当中
		model.addAttribute("category_list", category_list);
		// 跳转到collection页面
		return "category";
	}
}
