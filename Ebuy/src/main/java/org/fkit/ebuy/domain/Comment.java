package org.fkit.ebuy.domain;

public class Comment {
	private int id;
	private Integer order_id;
	private String service;//服务
	private String logistics; //物流
	private String quality;//质量
	private String comments;
	private String image1;
	
	
	 public Comment() {
			super();
			// TODO Auto-generated constructor stub
		}

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}

	public String getService() {
		return service;
	}
	public void setService(String service) {
		this.service = service;
	}
	public String getLogistics() {
		return logistics;
	}
	public void setLogistics(String logistics) {
		this.logistics = logistics;
	}
	public String getQuality() {
		return quality;
	}
	public void setQuality(String quality) {
		this.quality = quality;
	}
	public String getComments() {
		return comments;
	}
	public void setComments(String comments) {
		this.comments = comments;
	}
	@Override
	public String toString() {
		return "User [id=" + id + ", order_id=" + order_id + ", service="+ service + ", logistics=" + logistics + ", quality= "+ quality +",comments=" + comments + ",image1=" + image1 + "]";
	}
//	public String getImage2() {
//		return image2;
//	}
//	public void setImage2(String image2) {
//		this.image2 = image2;
//	}
	public String getImage1() {
		return image1;
	}
	public void setImage1(String image1) {
		this.image1 = image1;
	}

	public Integer getOrder_id() {
		return order_id;
	}

	public void setOrder_id(Integer order_id) {
		this.order_id = order_id;
	}
}
