package com.project.uniform.dto;

public class Order_Basket {

	private String member_Id;
	private int goods_No;
	private int qty;
	private int price;
	private String goods_Name;
	private String img;

	public Order_Basket() {
	}

	public Order_Basket(String member_Id, int goods_No, int qty, int price, String goods_Name, String img) {
		super();
		this.member_Id = member_Id;
		this.goods_No = goods_No;
		this.qty = qty;
		this.price = price;
		this.goods_Name = goods_Name;
		this.img = img;
	}

	public String getMember_Id() {
		return member_Id;
	}

	public void setMember_Id(String member_Id) {
		this.member_Id = member_Id;
	}

	public int getGoods_No() {
		return goods_No;
	}

	public void setGoods_No(int goods_No) {
		this.goods_No = goods_No;
	}

	public int getQty() {
		return qty;
	}

	public void setQty(int qty) {
		this.qty = qty;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getGoods_Name() {
		return goods_Name;
	}

	public void setGoods_Name(String goods_Name) {
		this.goods_Name = goods_Name;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	@Override
	public String toString() {
		return "Order_Basket [member_Id=" + member_Id + ", goods_No=" + goods_No + ", qty=" + qty + ", price=" + price
				+ ", goods_Name=" + goods_Name + ", img=" + img + "]";
	}

}
