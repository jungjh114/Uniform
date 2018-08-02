package com.project.uniform.dao;

import java.util.ArrayList;

import com.project.uniform.dto.Input;

public interface InputIDAO {
	public void insert(int goods_No, int input_Qty, int input_Price);
	public void delete(int input_No);
	public void update(int goods_No, int input_Qty, int input_Price, String input_Date, int input_No);
	public ArrayList<Input> selectAll();
	public Input select(int input_No);
	public ArrayList<Input> selectDate(String startDate, String endDate);
	public ArrayList<Input> selectToday(String eDate);
}
