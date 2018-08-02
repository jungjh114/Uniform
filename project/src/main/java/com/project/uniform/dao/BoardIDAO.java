package com.project.uniform.dao;

import java.util.ArrayList;

import com.project.uniform.dto.Board;

public interface BoardIDAO {

	public void insert(String member_Id, String board_Pass, String board_Title, String board_Content);
	
	public ArrayList<Board> selectAll();

	public Board select(int board_No);

	public void upHit(int board_No);

	public void updateLevel(int ref, int ref_Level);

	public void insert2(String member_Id, String board_Pass, String board_Title, String board_Content, int ref, int ref_Step,
			int ref_Level);

	public void update(String board_Title, String board_Content, int board_No);

	public void delete(int board_No);
}
