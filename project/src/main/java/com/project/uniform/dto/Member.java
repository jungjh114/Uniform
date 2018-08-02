package com.project.uniform.dto;

public class Member {

	private String member_Id;
	private String member_Pass;
	private String name;
	private String email;
	private String tel;
	private String address;
	private String birth;
	private int point;
	private String member_Use;

	public Member() {
	}

	public Member(String member_Id, String member_Pass, String email, String tel, String address, String birth,
			int point, String member_Use) {
		super();
		this.member_Id = member_Id;
		this.member_Pass = member_Pass;
		this.email = email;
		this.tel = tel;
		this.address = address;
		this.birth = birth;
		this.point = point;
		this.member_Use = member_Use;
	}

	public String getMember_Id() {
		return member_Id;
	}

	public void setMember_Id(String member_Id) {
		this.member_Id = member_Id;
	}

	public String getMember_Pass() {
		return member_Pass;
	}

	public void setMember_Pass(String member_Pass) {
		this.member_Pass = member_Pass;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getBirth() {
		return birth;
	}

	public void setBirth(String birth) {
		this.birth = birth;
	}

	public int getPoint() {
		return point;
	}

	public void setPoint(int point) {
		this.point = point;
	}

	public String getMember_Use() {
		return member_Use;
	}

	public void setMember_Use(String member_Use) {
		this.member_Use = member_Use;
	}

	@Override
	public String toString() {
		return "Member [member_Id=" + member_Id + ", member_Pass=" + member_Pass + ", name=" + name + ", email=" + email
				+ ", tel=" + tel + ", address=" + address + ", birth=" + birth + ", point=" + point + ", member_Use="
				+ member_Use + "]";
	}

}
