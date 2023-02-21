package com.smhrd.model;

public class QnasVO {
	// 위시 순번
	private int wish_seq;
	// 객실 순번
	private int room_seq;
	// 고객 아이디
	private String cust_id;
	// 등록일자
	private String reg_date;

// 사용할 생성자 알아서 만들어 쓰기

	public int getWish_seq() {
		return wish_seq;
	}

	public void setWish_seq(int wish_seq) {
		this.wish_seq = wish_seq;
	}

	public int getRoom_seq() {
		return room_seq;
	}

	public void setRoom_seq(int room_seq) {
		this.room_seq = room_seq;
	}

	public String getCust_id() {
		return cust_id;
	}

	public void setCust_id(String cust_id) {
		this.cust_id = cust_id;
	}

	public String getReg_date() {
		return reg_date;
	}

	public void setReg_date(String reg_date) {
		this.reg_date = reg_date;
	}

}
