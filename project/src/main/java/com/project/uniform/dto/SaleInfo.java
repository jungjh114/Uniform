package com.project.uniform.dto;

public class SaleInfo {

	private int sale_Code;
	private String member_Id;
	private String sale_Date;

	public SaleInfo() {
	}

	public SaleInfo(int sale_Code, String member_Id, String sale_Date) {
		super();
		this.sale_Code = sale_Code;
		this.member_Id = member_Id;
		this.sale_Date = sale_Date;
	}

	public int getSale_Code() {
		return sale_Code;
	}

	public void setSale_Code(int sale_Code) {
		this.sale_Code = sale_Code;
	}

	public String getMember_Id() {
		return member_Id;
	}

	public void setMember_Id(String member_Id) {
		this.member_Id = member_Id;
	}

	public String getSale_Date() {
		return sale_Date;
	}

	public void setSale_Date(String sale_Date) {
		this.sale_Date = sale_Date;
	}

	@Override
	public String toString() {
		return "SaleInfo [sale_Code=" + sale_Code + ", member_Id=" + member_Id + ", sale_Date=" + sale_Date + "]";
	}

}
