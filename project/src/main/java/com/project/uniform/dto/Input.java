package com.project.uniform.dto;

public class Input {

	private int input_No;
	private int Goods_No;
	private int input_Qty;
	private int input_Price;
	private String input_Date;

	public Input() {
	}

	public Input(int input_No, int goods_No, int input_Qty, int input_Price, String input_Date) {
		super();
		this.input_No = input_No;
		Goods_No = goods_No;
		this.input_Qty = input_Qty;
		this.input_Price = input_Price;
		this.input_Date = input_Date;
	}

	public int getInput_No() {
		return input_No;
	}

	public void setInput_No(int input_No) {
		this.input_No = input_No;
	}

	public int getGoods_No() {
		return Goods_No;
	}

	public void setGoods_No(int goods_No) {
		Goods_No = goods_No;
	}

	public int getInput_Qty() {
		return input_Qty;
	}

	public void setInput_Qty(int input_Qty) {
		this.input_Qty = input_Qty;
	}

	public int getInput_Price() {
		return input_Price;
	}

	public void setInput_Price(int input_Price) {
		this.input_Price = input_Price;
	}

	public String getInput_Date() {
		return input_Date;
	}

	public void setInput_Date(String input_Date) {
		this.input_Date = input_Date;
	}

	@Override
	public String toString() {
		return "Input [input_No=" + input_No + ", Goods_No=" + Goods_No + ", input_Qty=" + input_Qty + ", input_Price="
				+ input_Price + ", input_Date=" + input_Date + "]";
	}

}
