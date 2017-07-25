package org.fkit.ebuy.domain;

import java.util.List;

import org.fkit.ebuy.domain.Product;

public class Cart {
	private Integer id;
	private List<Product> product;
	private int count;
	private int product_id;
	private Integer user_id;
	

	public Integer getUser_id() {
		return user_id;
	}

	public void setUser_id(Integer user_id) {
		this.user_id = user_id;
	}

	
	@Override
	public String toString() {
		return "Cart [id=" + id + ", product=" + product +", count=" + count + ", product_id=" + product_id + ", user_id="+ user_id + "]";
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}


	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}


	public int getProduct_id() {
		return product_id;
	}

	public void setProduct_id(int product_id) {
		this.product_id = product_id;
	}
	

	public List<Product> getProduct() {
		return product;
	}

	public void setProduct(List<Product> product) {
		this.product = product;
	}

}
