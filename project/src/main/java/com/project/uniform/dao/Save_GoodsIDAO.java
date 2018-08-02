package com.project.uniform.dao;

import java.util.ArrayList;

import com.project.uniform.dto.Save_Goods;

public interface Save_GoodsIDAO {

	public void insert(String goods_Name, String goods_Group, String goods_Contents, String img, int price);

	public void delete(int goods_No);

	public void update(String goods_Name, String goods_Group, String goods_Contents, String img, int price,
			int goods_Qty, int goods_No);

	public ArrayList<Save_Goods> selectAll();

	public ArrayList<Save_Goods> selectGoods_No(int goods_No);

	public ArrayList<Save_Goods> selectGroup(String goods_Group);

	public ArrayList<Save_Goods> selectName(String goods_Name);

	public ArrayList<Save_Goods> selectCategory(String category);

	public Save_Goods select(int goods_No);
	
	public void saleUpdate(int goods_Qty, int goods_No);

	public void inputUpdate(int goods_Qty, int goods_No);
}
