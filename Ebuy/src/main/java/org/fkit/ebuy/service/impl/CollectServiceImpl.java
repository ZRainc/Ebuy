package org.fkit.ebuy.service.impl;

import java.util.List;


import org.fkit.ebuy.domain.Collect;
import org.fkit.ebuy.mapper.CollectMapper;
import org.fkit.ebuy.service.CollectService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

/**
 * Book服务层接口实现类
 * @Service("bookService")用于将当前类注释为一个Spring的bean，名为bookService
 * */
@Transactional(propagation=Propagation.REQUIRED,isolation=Isolation.DEFAULT)
@Service("collectService")
public class CollectServiceImpl implements CollectService {
	
	/**
	 * 自动注入BookMapper
	 * */
	@Autowired
	private CollectMapper collectMapper;

	/**
	 * BookService接口getAll方法实现
	 * @see { BookService }
	 * */
	@Override
	public List<Collect> getAll() {
		// TODO Auto-generated method stub
		return collectMapper.findAll();
	}
	
	@Override
	public Collect findCollect (int product_id) {
		// TODO Auto-generated method stub
		return collectMapper.findWithId(product_id);
	}

	@Override
	public Collect saveCollect(int product_id,Integer user_id) {
		// TODO Auto-generated method stub
		Collect collect = new Collect();
		collect.setProduct_id(product_id);
		collect.setUser_id(user_id);
		collectMapper.saveCollect(collect);
		return collect;
	}

	@Override
	public void clearCollect() {
		// TODO Auto-generated method stub
		collectMapper.clearCollect();
	}

	@Override
	public Collect removeCollect(int product_id) {
		// TODO Auto-generated method stub
		Collect collect = collectMapper.findWithId(product_id);
		collectMapper.removeCollect(collect);
		return collect;
	}
	

}

