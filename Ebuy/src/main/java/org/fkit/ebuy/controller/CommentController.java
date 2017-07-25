package org.fkit.ebuy.controller;



import javax.servlet.http.HttpSession;

import org.fkit.ebuy.domain.Comment;
import org.fkit.ebuy.service.CommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 * 处理图书请求控制器
 * */
@Controller
public class CommentController {
	
	/**
	 * 自动注入BookService
	 * */
	@Autowired
	@Qualifier("commentService")
	private CommentService commentService;

	/**
	 * 处理/main请求
	 * */
	 @RequestMapping(value="/submitcomment",method=RequestMethod.POST)
	 public ModelAndView comment(
						String service,
						String logistics, 
						String quality, 
						String comments,
						String image1,
					   ModelAndView mv,
				     HttpSession session){
	   Comment comment  = commentService.comment(service,logistics,quality,comments,image1);
	     mv.setViewName("order");
			return mv;
	
	 }
	
	 
}
