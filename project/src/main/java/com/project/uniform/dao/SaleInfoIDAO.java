package com.project.uniform.dao;

import java.util.ArrayList;

import com.project.uniform.dto.OrderInfo;
import com.project.uniform.dto.SaleInfo;

public interface SaleInfoIDAO {

	public void insert(String member_Id);

	public void delete(int sale_Code);

	public ArrayList<SaleInfo> selectAll();

	public ArrayList<SaleInfo> selectMember(String member_Id);

	public SaleInfo select(int sale_Code);
	
	public ArrayList<SaleInfo> selectDate(String sDate, String eDate);
	
	public ArrayList<SaleInfo> selectToday(String eDate);
}
