package org.fkit.ebuy.service.impl;

import java.util.List;

import org.fkit.ebuy.domain.Cart;
import org.fkit.ebuy.domain.Product;
import org.fkit.ebuy.mapper.ProductMapper;

import org.fkit.ebuy.service.ProductService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

@Transactional(propagation=Propagation.REQUIRED,isolation=Isolation.DEFAULT)
@Service("productService")

public class ProductServiceImpl implements ProductService{
	
	
	@Autowired
	private ProductMapper productMapper;

	/**
	 * UserService接口login方法实现
	 * @see { UserService }
	 * */
//	@Transactional(readOnly=true)
	@Override
	public List<Product> getAll() {
		// TODO Auto-generated method stub
		return productMapper.findAll();
	}
	
	@Override
	public Product addproduct(String name, Double price, String descripts, String image, String image2, String image3, String image4, Integer stock, Integer type_id) {
		// TODO Auto-generated method stub
		return productMapper.addproduct(name, price, descripts, image,image2,image3,image4,stock,type_id);
	}
	
	@Override
	public Product removeProduct(int id) {
		// TODO Auto-generated method stub
		Product product = productMapper.findWithId(id);
		productMapper.removeProduct(product);
		return product;
	}
	

}
