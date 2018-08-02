package com.project.uniform.dao;

import java.util.ArrayList;

import com.project.uniform.dto.Order_Basket;

public interface Order_BasketIDAO {

	public void insert(String member_Id, int goods_No, int qty, int price, String goods_Name, String img);
	public void deleteGoods(String member_Id, int goods_No);
	public void delete(int goods_No);
	public void update(int qty, int price, String member_Id, int goods_No);
	public ArrayList<Order_Basket> selectAll();
	public ArrayList<Order_Basket> selectMember(String member_Id);
}
