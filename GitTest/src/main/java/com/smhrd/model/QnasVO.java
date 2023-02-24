package com.smhrd.model;

public class QnasVO {

	private int q_seq;
	private String q_content;
	private String q_dt;
	private String a_dt;
	private String cust_id;
	private String a_content;


	public QnasVO(int q_seq, String q_content, String q_dt, String a_dt, String cust_id, String a_content) {
		super();
		this.q_seq = q_seq;
		this.q_content = q_content;
		this.q_dt = q_dt;
		this.a_dt = a_dt;
		this.cust_id = cust_id;
		this.a_content = a_content;
	}

	public QnasVO(int q_seq, String a_content, String a_dt) {
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
	public String getQ_dt() {
		return q_dt;
	}
	public void setQ_dt(String q_dt) {
		this.q_dt = q_dt;
	}
	public String getA_content() {
		return a_content;
	}
	public void setA_content(String a_content) {
		this.a_content = a_content;
	}
	public String getA_dt() {
		return a_dt;
	}
	public void setA_dt(String a_dt) {
		this.a_dt = a_dt;
	}

}