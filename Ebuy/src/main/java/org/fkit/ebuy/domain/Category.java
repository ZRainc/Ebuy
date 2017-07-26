package org.fkit.ebuy.domain;

public class Category {
	
	private Integer id;
	private String type;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}

	@Override
	public String toString() {
		return "Cart [id=" + id + ", type=" + type +"]";
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
}
