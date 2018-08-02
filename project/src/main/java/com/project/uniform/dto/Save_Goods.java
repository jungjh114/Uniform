package com.project.uniform.dto;

public class Save_Goods {

	private int goods_No;
	private String goods_Name;
	private String goods_Group;
	private String goods_Contents;
	private String img;
	private int price;
	private int goods_Qty;

	public Save_Goods() {
	}

	public Save_Goods(int goods_No, String goods_Name, String goods_Group, String goods_Contents, String img, int price,
			int goods_Qty) {
		super();
		this.goods_No = goods_No;
		this.goods_Name = goods_Name;
		this.goods_Group = goods_Group;
		this.goods_Contents = goods_Contents;
		this.img = img;
		this.price = price;
		this.goods_Qty = goods_Qty;
	}

	public int getGoods_No() {
		return goods_No;
	}

	public void setGoods_No(int goods_No) {
		this.goods_No = goods_No;
	}

	public String getGoods_Name() {
		return goods_Name;
	}

	public void setGoods_Name(String goods_Name) {
		this.goods_Name = goods_Name;
	}

	public String getGoods_Group() {
		return goods_Group;
	}

	public void setGoods_Group(String goods_Group) {
		this.goods_Group = goods_Group;
	}

	public String getGoods_Contents() {
		return goods_Contents;
	}

	public void setGoods_Contents(String goods_Contents) {
		this.goods_Contents = goods_Contents;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public int getGoods_Qty() {
		return goods_Qty;
	}

	public void setGoods_Qty(int goods_Qty) {
		this.goods_Qty = goods_Qty;
	}

	@Override
	public String toString() {
		return "Save_Goods [goods_No=" + goods_No + ", goods_Name=" + goods_Name + ", goods_Group=" + goods_Group
				+ ", goods_Contents=" + goods_Contents + ", img=" + img + ", price=" + price + ", goods_Qty="
				+ goods_Qty + "]";
	}

}
