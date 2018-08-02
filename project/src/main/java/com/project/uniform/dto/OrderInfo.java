package com.project.uniform.dto;

public class OrderInfo {
	
	private int goods_No;
	private String img;
	private String goods_Name;
	private int qty;
	private int price;
	private String sale_Date;
	private String address;
	private String claim;
	private String member_Id;
	
	public OrderInfo() {
		super();
		// TODO Auto-generated constructor stub
	}

	public OrderInfo(int goods_No, String img, String goods_Name, int qty, int price, String sale_Date, String address,
			String claim, String member_Id) {
		super();
		this.goods_No = goods_No;
		this.img = img;
		this.goods_Name = goods_Name;
		this.qty = qty;
		this.price = price;
		this.sale_Date = sale_Date;
		this.address = address;
		this.claim = claim;
		this.member_Id = member_Id;
	}

	public int getGoods_No() {
		return goods_No;
	}

	public void setGoods_No(int goods_No) {
		this.goods_No = goods_No;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	public String getGoods_Name() {
		return goods_Name;
	}

	public void setGoods_Name(String goods_Name) {
		this.goods_Name = goods_Name;
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

	public String getSale_Date() {
		return sale_Date;
	}

	public void setSale_Date(String sale_Date) {
		this.sale_Date = sale_Date;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getClaim() {
		return claim;
	}

	public void setClaim(String claim) {
		this.claim = claim;
	}

	public String getMember_Id() {
		return member_Id;
	}

	public void setMember_Id(String member_Id) {
		this.member_Id = member_Id;
	}

	@Override
	public String toString() {
		return "OrderInfo [goods_No=" + goods_No + ", img=" + img + ", goods_Name=" + goods_Name + ", qty=" + qty
				+ ", price=" + price + ", sale_Date=" + sale_Date + ", address=" + address + ", claim=" + claim
				+ ", member_Id=" + member_Id + "]";
	}
	
}
