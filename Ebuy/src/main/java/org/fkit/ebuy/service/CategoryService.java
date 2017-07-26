package org.fkit.ebuy.service;

import java.util.List;

import org.fkit.ebuy.domain.Category;


public interface CategoryService {
	
	List<Category> getAll();
	Category findCategory(Integer id);
	Category saveCategory(Integer id,String type);
	Category removeCategory(Integer id);

}
