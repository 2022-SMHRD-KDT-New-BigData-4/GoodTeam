package com.smhrd.model;
import java.util.Date;

public class QnasVO {
	// 위시 순번
	private int wish_seq;
	// 객실 순번
	private int room_seq;
	// 고객 아이디
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
	private Date a_dt;

	
	// 사용할 생성자 알아서 만들어 쓰기
		// 1 qna 작성
		public QnasVO(String q_content, String cust_id) {
			this.q_content = q_content;
			this.cust_id = cust_id;
		}
		
		// 2 qna 조회
		public String getCust_id() {
			return cust_id;
		}
		

		// 4 qna 답변
		public QnasVO(Date a_dt, String a_content, int q_seq) {
			this.a_dt = a_dt;
			this.a_content = a_content;
			this.q_seq = q_seq;
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

	public Date getA_dt() {
		return a_dt;
	}

	public void setA_dt(Date a_dt) {
		this.a_dt = a_dt;
	}




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
