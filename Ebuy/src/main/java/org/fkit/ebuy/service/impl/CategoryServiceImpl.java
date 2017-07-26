package org.fkit.ebuy.service.impl;

import java.util.List;

import org.fkit.ebuy.domain.Category;
import org.fkit.ebuy.mapper.CategoryMapper;
import org.fkit.ebuy.service.CategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

@Transactional(propagation=Propagation.REQUIRED,isolation=Isolation.DEFAULT)
@Service("categoryService")

public class CategoryServiceImpl implements CategoryService{

	@Autowired
	private CategoryMapper categoryMapper;
	
	@Override
	public List<Category> getAll() {
		// TODO Auto-generated method stub
		return categoryMapper.findAll();
	}
	
	@Override
	public Category findCategory(Integer id) {
		// TODO Auto-generated method stub
		return categoryMapper.findWithId(id);
	}
	
	@Override
	public Category saveCategory(Integer id,String type) {
		// TODO Auto-generated method stub
		Category category = new Category();
		category.setId(id);
		category.setType(type);
		categoryMapper.saveCategory(category);
		return category;
	}
	
	@Override
	public Category removeCategory(Integer id) {
		// TODO Auto-generated method stub
		Category category = categoryMapper.findWithId(id);
		categoryMapper.removeCategory(category);
		return category;
	}
}
