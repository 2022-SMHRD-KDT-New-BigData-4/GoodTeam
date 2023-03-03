package com.smhrd.model;

import java.time.LocalDate;

public class JoinVO {
	// 숙소 번호
	private int ac_seq;
	// 숙소 명
	private String ac_name;
	// 숙소 주소
	private String ac_addr;
	// 숙소 이미지들
	private String ac_img1;
	private String ac_img2;
	private String ac_img3;
	// 숙소 전화번호
	private String ac_tel;
	// 위도
	private int lat;
	// 경도
	private int lng;
	// 주차
	private char parking;
	// 조식
	private char breakfast;
	// 편의점
	private char cvs;
	// 와이파이
	private char wifie;
	// 피트니스
	private char fitness;
	// 기타
	private char etc;
	// 고객 아이디
	private String cust_id;
	// 고객 비밀번호
	private String cust_pw;
	// 고객 명
	private String cust_name;
	// 고객 이메일
	private String cust_email;
	// 고객 핸드폰
	private String cust_phone;
	// 고객 포인트
	private int cust_point;
	// 고객유형( 일반회원, 관리자, 특급회원)
	private char cust_type;
	// 가입일자
	private LocalDate cust_joindate;
	// 위시 순번
	private int wish_seq;
	// 객실 순번
	private int room_seq;
	// 등록일자
	private String reg_date;
	// 예약 순번
	private String reserv_seq;
	// 체크인 날짜
	private String check_in;
	// 체크아웃 날짜
	private String check_out;
	// 총 금액
	private int total_amount;
	// 리뷰 순번
	private int review_seq;
	// 리뷰 내용
	private String review_count;
	// 리뷰 별점
	private int review_ratings;
	// 리뷰 작성일자
	private String review_dt;
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

	public JoinVO(String ac_addr, String ac_name) {
		this.ac_addr=ac_addr;
		this.ac_name=ac_name;
	}

	public int getAc_seq() {
		return ac_seq;
	}

	public void setAc_seq(int ac_seq) {
		this.ac_seq = ac_seq;
	}

	public String getAc_name() {
		return ac_name;
	}

	public void setAc_name(String ac_name) {
		this.ac_name = ac_name;
	}

	public String getAc_addr() {
		return ac_addr;
	}

	public void setAc_addr(String ac_addr) {
		this.ac_addr = ac_addr;
	}

	public String getAc_img1() {
		return ac_img1;
	}

	public void setAc_img1(String ac_img1) {
		this.ac_img1 = ac_img1;
	}

	public String getAc_img2() {
		return ac_img2;
	}

	public void setAc_img2(String ac_img2) {
		this.ac_img2 = ac_img2;
	}

	public String getAc_img3() {
		return ac_img3;
	}

	public void setAc_img3(String ac_img3) {
		this.ac_img3 = ac_img3;
	}

	public String getAc_tel() {
		return ac_tel;
	}

	public void setAc_tel(String ac_tel) {
		this.ac_tel = ac_tel;
	}

	public int getLat() {
		return lat;
	}

	public void setLat(int lat) {
		this.lat = lat;
	}

	public int getLng() {
		return lng;
	}

	public void setLng(int lng) {
		this.lng = lng;
	}

	public char getParking() {
		return parking;
	}

	public void setParking(char parking) {
		this.parking = parking;
	}

	public char getBreakfast() {
		return breakfast;
	}

	public void setBreakfast(char breakfast) {
		this.breakfast = breakfast;
	}

	public char getCvs() {
		return cvs;
	}

	public void setCvs(char cvs) {
		this.cvs = cvs;
	}

	public char getWifie() {
		return wifie;
	}

	public void setWifie(char wifie) {
		this.wifie = wifie;
	}

	public char getFitness() {
		return fitness;
	}

	public void setFitness(char fitness) {
		this.fitness = fitness;
	}

	public char getEtc() {
		return etc;
	}

	public void setEtc(char etc) {
		this.etc = etc;
	}

	public String getCust_id() {
		return cust_id;
	}

	public void setCust_id(String cust_id) {
		this.cust_id = cust_id;
	}

	public String getCust_pw() {
		return cust_pw;
	}

	public void setCust_pw(String cust_pw) {
		this.cust_pw = cust_pw;
	}

	public String getCust_name() {
		return cust_name;
	}

	public void setCust_name(String cust_name) {
		this.cust_name = cust_name;
	}

	public String getCust_email() {
		return cust_email;
	}

	public void setCust_email(String cust_email) {
		this.cust_email = cust_email;
	}

	public String getCust_phone() {
		return cust_phone;
	}

	public void setCust_phone(String cust_phone) {
		this.cust_phone = cust_phone;
	}

	public int getCust_point() {
		return cust_point;
	}

	public void setCust_point(int cust_point) {
		this.cust_point = cust_point;
	}

	public char getCust_type() {
		return cust_type;
	}

	public void setCust_type(char cust_type) {
		this.cust_type = cust_type;
	}

	public LocalDate getCust_joindate() {
		return cust_joindate;
	}

	public void setCust_joindate(LocalDate cust_joindate) {
		this.cust_joindate = cust_joindate;
	}

	public int getWish_seq() {
		return wish_seq;
	}

	public void setWish_seq(int wish_seq) {
		this.wish_seq = wish_seq;
	}

	public int room_nm() {
		return room_seq;
	}

	public void setRoom_seq(int room_seq) {
		this.room_seq = room_seq;
	}

	public String getReg_date() {
		return reg_date;
	}

	public void setReg_date(String reg_date) {
		this.reg_date = reg_date;
	}

	public String getReserv_seq() {
		return reserv_seq;
	}

	public void setReserv_seq(String reserv_seq) {
		this.reserv_seq = reserv_seq;
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

	public int getTotal_amount() {
		return total_amount;
	}

	public void setTotal_amount(int total_amount) {
		this.total_amount = total_amount;
	}

	public int getReview_seq() {
		return review_seq;
	}

	public void setReview_seq(int review_seq) {
		this.review_seq = review_seq;
	}

	public String getReview_count() {
		return review_count;
	}

	public void setReview_count(String review_count) {
		this.review_count = review_count;
	}

	public int getReview_ratings() {
		return review_ratings;
	}

	public void setReview_ratings(int review_ratings) {
		this.review_ratings = review_ratings;
	}

	public String getReview_dt() {
		return review_dt;
	}

	public void setReview_dt(String review_dt) {
		this.review_dt = review_dt;
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
