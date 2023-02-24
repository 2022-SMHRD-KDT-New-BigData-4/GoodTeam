package com.smhrd.model;

import java.time.LocalDate;
import java.util.Date;

public class QnasVO {

	private String cust_id;
	// 등록일자
	private String reg_date;
	// 문의 순번
	private int q_seq;
	// 문의 내용
	private String q_content;
	// 문의 일자
	private Date q_dt;
	// 답변 내용
	private String a_content;
	// 답변 일자
	private LocalDate a_dt;
	
	
	public QnasVO(int q_seq, String a_content, LocalDate a_dt) {
		super();
		this.q_seq = q_seq;
		this.a_content = a_content;
		this.a_dt = a_dt;
	}

	public QnasVO(String cust_id, String q_content) {
		super();
		this.cust_id = cust_id;
		this.q_content = q_content;
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
	public int getQ_seq() {
		return q_seq;
	}
	public void setQ_seq(int q_seq) {
		this.q_seq = q_seq;
	}
	public String getQ_content() {
		return q_content;
	}
	public void setQ_content(String q_content) {
		this.q_content = q_content;
	}
	public Date getQ_dt() {
		return q_dt;
	}
	public void setQ_dt(Date q_dt) {
		this.q_dt = q_dt;
	}
	public String getA_content() {
		return a_content;
	}
	public void setA_content(String a_content) {
		this.a_content = a_content;
	}
	public LocalDate getA_dt() {
		return a_dt;
	}
	public void setA_dt(LocalDate a_dt) {
		this.a_dt = a_dt;
	}

}