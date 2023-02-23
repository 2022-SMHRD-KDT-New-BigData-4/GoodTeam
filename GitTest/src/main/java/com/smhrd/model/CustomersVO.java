package com.smhrd.model;

import java.time.LocalDate;

public class CustomersVO {
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
	//가입일자
	private LocalDate cust_joindate;

	// 내가 사용할 생성자 만들어 쓸것


	// 1) 회원가입 메서드
	public CustomersVO(String cust_id, String cust_pw, String cust_name, String cust_email, String cust_phone
		,int cust_point, LocalDate cust_joindate, char cust_type) {
		this.cust_id = cust_id;
		this.cust_pw = cust_pw;
		this.cust_name = cust_name;
		this.cust_email = cust_email;
		this.cust_phone = cust_phone;
		this.cust_point = cust_point;
		this.cust_joindate=cust_joindate;
		this.cust_type = cust_type;
	}
	// 로그인을 할 수 있는 생성자
		public CustomersVO(String cust_id, String cust_pw) {
			this.cust_id = cust_id;
			this.cust_pw = cust_pw;
		}

	public LocalDate getCust_joindate() {
		return cust_joindate;
	}

	public void setCust_joindate(LocalDate cust_joindate) {
		this.cust_joindate = cust_joindate;
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

}
