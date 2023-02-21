package com.smhrd.model;

public class ReviewsVO {
	// 리뷰 순번
	private int review_seq;
	// 숙소 순번
	private int ac_seq;
	// 리뷰 내용
	private String review_count;
	// 리뷰 별점
	private int review_ratings;
	// 리뷰 작성일자
	private String review_dt;
	// 고객 아이디
	private String cust_id;
	
	// 생성자 만들어 쓰기

	public int getReview_seq() {
		return review_seq;
	}

	public void setReview_seq(int review_seq) {
		this.review_seq = review_seq;
	}

	public int getAc_seq() {
		return ac_seq;
	}

	public void setAc_seq(int ac_seq) {
		this.ac_seq = ac_seq;
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

	public String getCust_id() {
		return cust_id;
	}

	public void setCust_id(String cust_id) {
		this.cust_id = cust_id;
	}

}
