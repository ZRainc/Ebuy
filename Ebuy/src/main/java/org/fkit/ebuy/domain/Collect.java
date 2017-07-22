package org.fkit.ebuy.domain;

import java.util.List;

public class Collect {
    private int id;
    private List<Product> product;
    private String image;
    private String name;
    private int price;
    private int user_id;
    private int product_id;
    
    public Collect() {
		super();
		// TODO Auto-generated constructor stub
	}
 
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	@Override
	public String toString() {
		return "User [id=" + id + ", image=" + image +", name=" + name + ", product=" + product +", price=" + price +", user_id=" + user_id +", product_id= " + product_id +"]";
	}

	public int getUser_id() {
		return user_id;
	}

	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}

	public int getProduct_id() {
		return product_id;
	}

	public void setProduct_id(int product_id) {
		this.product_id = product_id;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public List<Product> getProduct() {
		return product;
	}

	public void setProduct(List<Product> product) {
		this.product = product;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	



    
}
