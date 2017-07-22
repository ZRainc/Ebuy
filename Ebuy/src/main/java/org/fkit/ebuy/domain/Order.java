package org.fkit.ebuy.domain;

import java.util.List;

public class Order {
	private int id;
	private List<Product> product;
	private int count;
	private int totalprice;
	private int user_id;
	private int product_id;
	
	
	public int getTotalprice() {
		return totalprice;
	}
	public void setTotalprice(int totalprice) {
		this.totalprice = totalprice;
	}
	
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	
	public int getProduct_id() {
		return product_id;
	}
	public void setProduct_id(int product_id) {
		this.product_id = product_id;
	}
	@Override
	public String toString() {
		return "Cart [id=" + id + ", product=" + product + ", count=" + count + ", tatalprice=" + totalprice +", product_id=" + product_id + ", user_id="
				+ user_id + "]";
}
	
	public List<Product> getProduct() {
		return product;
	}
	public void setProduct(List<Product> product) {
		this.product = product;
	}
	
}