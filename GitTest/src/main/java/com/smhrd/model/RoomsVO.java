package com.smhrd.model;

public class RoomsVO {
	// 객실 순번
	private int room_seq;
	// 숙소 순번
	private int ac_seq;
	// 객실명
	private String room_nm;
	// 객실 유형
	private char room_type;
	// 객실 가격(성수기)
	private int room_price_h;
	// 객실 가격(비수기)
	private int room_price_l;
	// 객실 수량
	private int room_cnt;
	// 객실 이미지
	private String room_img1;
	private String room_img2;
	private String room_img3;
	// 예약가능 여부
	private char reserv_yn;
	// 사용할 생성자

	public int getRoom_seq() {
		return room_seq;
	}

	public void setRoom_seq(int room_seq) {
		this.room_seq = room_seq;
	}

	public int getAc_seq() {
		return ac_seq;
	}

	public void setAc_seq(int ac_seq) {
		this.ac_seq = ac_seq;
	}

	public String getRoom_nm() {
		return room_nm;
	}

	public void setRoom_nm(String room_nm) {
		this.room_nm = room_nm;
	}

	public char getRoom_type() {
		return room_type;
	}

	public void setRoom_type(char room_type) {
		this.room_type = room_type;
	}

	public int getRoom_price_h() {
		return room_price_h;
	}

	public void setRoom_price_h(int room_price_h) {
		this.room_price_h = room_price_h;
	}

	public int getRoom_price_l() {
		return room_price_l;
	}

	public void setRoom_price_l(int room_price_l) {
		this.room_price_l = room_price_l;
	}

	public int getRoom_cnt() {
		return room_cnt;
	}

	public void setRoom_cnt(int room_cnt) {
		this.room_cnt = room_cnt;
	}

	public String getRoom_img1() {
		return room_img1;
	}

	public void setRoom_img1(String room_img1) {
		this.room_img1 = room_img1;
	}

	public String getRoom_img2() {
		return room_img2;
	}

	public void setRoom_img2(String room_img2) {
		this.room_img2 = room_img2;
	}

	public String getRoom_img3() {
		return room_img3;
	}

	public void setRoom_img3(String room_img3) {
		this.room_img3 = room_img3;
	}

	public char getReserv_yn() {
		return reserv_yn;
	}

	public void setReserv_yn(char reserv_yn) {
		this.reserv_yn = reserv_yn;
	}

}
