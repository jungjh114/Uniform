package com.project.uniform.dao;

import java.util.ArrayList;

import com.project.uniform.dto.Member;

public interface MemberIDAO {

	public void insert(String member_Id, String member_Pass, String name, String email, String tel, String address,
			String birth);

	public void delete(String member_Id);

	public void update(String email, String tel, String address, String member_Id);

	public Member select(String member_Id);

	public ArrayList<Member> selectAll();

	public int login(String member_Id, String member_Pass);
	
	public int idOk(String member_Id);
	
	public void pointUpdate(int point, String member_id);
	
	public void updatePass(String member_Pass, String member_Id);
	
	public void updateDelete(String member_Id);
}
