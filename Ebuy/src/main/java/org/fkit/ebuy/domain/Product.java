package org.fkit.ebuy.domain;

import java.util.List;

public class Product {
     private Integer id;
     private String name;
     private String price;
     private String descripts;
     private String image;
     private String image2;
     private String image3;
     private String image4;
     private Integer stock; 
     Integer category_id;
     private List<Product> product;
//     int count;

	public Integer getStock() {
		return stock;
	}
	public void setStock(Integer stock) {
		this.stock = stock;
	}
	
	public String getImage2() {
		return image2;
	}
	public void setImage2(String image2) {
		this.image2 = image2;
	}
	public String getImage3() {
		return image3;
	}
	public void setImage3(String image3) {
		this.image3 = image3;
	}
	public String getImage4() {
		return image4;
	}
	public void setImage4(String image4) {
		this.image4 = image4;
	}

	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getDescripts() {
		return descripts;
	}
	public void setDescripts(String descripts) {
		this.descripts = descripts;
	}

	@Override
	public String toString() {
		return "User [id=" + id + ", name=" + name + ", price="+ price + ", image=" + image + ", image2= "+ image2 +",image3=" + image3 + ",image4=" + image4 + ",descripts=" + descripts + ",product=" + product + ",stock=" + stock +", category_id=" + category_id + "]";
	}
	
//	public int getCount() {
//		return count;
//	}
//	public void setCount(int count) {
//		this.count = count;
//	}
	
	public int getCategory_id() {
		return category_id;
	}

	public void setCategory_id(int category_id) {
		this.category_id = category_id;
	}
	public List<Product> getProduct() {
		return product;
	}
	public void setProduct(List<Product> product) {
		this.product = product;
	}
     
}
