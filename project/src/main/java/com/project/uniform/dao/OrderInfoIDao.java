package com.project.uniform.dao;

import java.util.ArrayList;

import com.project.uniform.dto.OrderInfo;

public interface OrderInfoIDao {
	
	public ArrayList<OrderInfo> selectAll();
	public ArrayList<OrderInfo> selectMember(String member_ID);
	public ArrayList<OrderInfo> selectToday(String member_Id, String sale_Date);
	public ArrayList<OrderInfo> selectDayMiner(String member_Id, String startDate, String endDate);
}
