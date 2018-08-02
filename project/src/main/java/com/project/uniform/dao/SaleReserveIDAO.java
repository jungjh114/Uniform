package com.project.uniform.dao;

import java.util.ArrayList;

import com.project.uniform.dto.SaleReserve;

public interface SaleReserveIDAO {

	public void insert(int sale_Code, int goods_No, int qty, int price, String address, String claim);

	public void delete(int sale_No);

	public ArrayList<SaleReserve> selectAll();

	public ArrayList<SaleReserve> selectCode(int startCode, int endCode);

	public SaleReserve select(int sale_Code);

	public void sendUpdate(int sale_No);

}
