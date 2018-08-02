package com.project.uniform.dto;

public class Board {

	private int board_No;
	private String member_Id;
	private String board_Pass;
	private String board_Title;
	private String board_Date;
	private String board_Content;
	private int ref;
	private int ref_Step;
	private int ref_Level;
	private int readCount;

	public Board() {
	}

	public Board(int board_No, String member_Id, String board_Pass, String board_Title, String board_Date,
			String board_Content, int ref, int ref_Step, int ref_Level, int readCount) {
		super();
		this.board_No = board_No;
		this.member_Id = member_Id;
		this.board_Pass = board_Pass;
		this.board_Title = board_Title;
		this.board_Date = board_Date;
		this.board_Content = board_Content;
		this.ref = ref;
		this.ref_Step = ref_Step;
		this.ref_Level = ref_Level;
		this.readCount = readCount;
	}

	public int getBoard_No() {
		return board_No;
	}

	public void setBoard_No(int board_No) {
		this.board_No = board_No;
	}

	public String getMember_Id() {
		return member_Id;
	}

	public void setMember_Id(String member_Id) {
		this.member_Id = member_Id;
	}

	public String getBoard_Pass() {
		return board_Pass;
	}

	public void setBoard_Pass(String board_Pass) {
		this.board_Pass = board_Pass;
	}

	public String getBoard_Title() {
		return board_Title;
	}

	public void setBoard_Title(String board_Title) {
		this.board_Title = board_Title;
	}

	public String getBoard_Date() {
		return board_Date;
	}

	public void setBoard_Date(String board_Date) {
		this.board_Date = board_Date;
	}

	public String getBoard_Content() {
		return board_Content;
	}

	public void setBoard_Content(String board_Content) {
		this.board_Content = board_Content;
	}

	public int getRef() {
		return ref;
	}

	public void setRef(int ref) {
		this.ref = ref;
	}

	public int getRef_Step() {
		return ref_Step;
	}

	public void setRef_Step(int ref_Step) {
		this.ref_Step = ref_Step;
	}

	public int getRef_Level() {
		return ref_Level;
	}

	public void setRef_Level(int ref_Level) {
		this.ref_Level = ref_Level;
	}

	public int getReadCount() {
		return readCount;
	}

	public void setReadCount(int readCount) {
		this.readCount = readCount;
	}

	@Override
	public String toString() {
		return "Board [board_No=" + board_No + ", member_Id=" + member_Id + ", board_Pass=" + board_Pass
				+ ", board_Title=" + board_Title + ", board_Date=" + board_Date + ", board_Content=" + board_Content
				+ ", ref=" + ref + ", ref_Step=" + ref_Step + ", ref_Level=" + ref_Level + ", readCount=" + readCount
				+ "]";
	}

}
