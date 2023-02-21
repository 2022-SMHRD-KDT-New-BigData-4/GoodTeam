package com.smhrd.model;

public class ReservationsVO {
	// 예약 순번
	private String reserv_seq;
	// 예약자 아이디
	private String cust_id;
	// 숙소 순번
	private int room_seq;
	// 체크인 날짜
	private String check_in;
	// 체크아웃 날짜
	private String check_out;
	// 등록일자
	private String reg_date;
	// 총 금액
	private int total_amount;
	
	
	// 사용할 생성자 만들어 쓰기


	public String getReserv_seq() {
		return reserv_seq;
	}

	public void setReserv_seq(String reserv_seq) {
		this.reserv_seq = reserv_seq;
	}

	public String getCust_id() {
		return cust_id;
	}

	public void setCust_id(String cust_id) {
		this.cust_id = cust_id;
	}

	public int getRoom_seq() {
		return room_seq;
	}

	public void setRoom_seq(int room_seq) {
		this.room_seq = room_seq;
	}

	public String getCheck_in() {
		return check_in;
	}

	public void setCheck_in(String check_in) {
		this.check_in = check_in;
	}

	public String getCheck_out() {
		return check_out;
	}

	public void setCheck_out(String check_out) {
		this.check_out = check_out;
	}

	public String getReg_date() {
		return reg_date;
	}

	public void setReg_date(String reg_date) {
		this.reg_date = reg_date;
	}

	public int getTotal_amount() {
		return total_amount;
	}

	public void setTotal_amount(int total_amount) {
		this.total_amount = total_amount;
	}


}
