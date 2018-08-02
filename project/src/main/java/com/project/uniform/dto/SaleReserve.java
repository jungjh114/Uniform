package com.project.uniform.dto;

public class SaleReserve {

	private int sale_No;
	private int sale_Code;
	private int goods_No;
	private int qty;
	private int price;
	private String address;
	private String claim;
	private String send;

	public SaleReserve() {
	}

	public SaleReserve(int sale_No, int sale_Code, int goods_No, int qty, int price) {
		super();
		this.sale_No = sale_No;
		this.sale_Code = sale_Code;
		this.goods_No = goods_No;
		this.qty = qty;
		this.price = price;
	}

	public int getSale_No() {
		return sale_No;
	}

	public void setSale_No(int sale_No) {
		this.sale_No = sale_No;
	}

	public int getSale_Code() {
		return sale_Code;
	}

	public void setSale_Code(int sale_Code) {
		this.sale_Code = sale_Code;
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

	public String getSend() {
		return send;
	}

	public void setSend(String send) {
		this.send = send;
	}

	@Override
	public String toString() {
		return "SaleReserve [sale_No=" + sale_No + ", sale_Code=" + sale_Code + ", goods_No=" + goods_No + ", qty="
				+ qty + ", price=" + price + ", address=" + address + ", claim=" + claim + ", send=" + send + "]";
	}

}
