package com.smhrd.model;

public class ReviewsVO {
	// 리뷰 순번
	private int review_seq;
	// 숙소 순번
	private int ac_seq;
	// 리뷰 내용
	private String review_content;
	// 리뷰 별점
	private int review_ratings;
	// 리뷰 작성일자
	private String review_dt;
	// 고객 아이디
	private String cust_id;
	//
	
	
	// 1 리뷰 작성
			public ReviewsVO(int ac_seq, String review_content, int review_ratings, String cust_id) {
				this.ac_seq = ac_seq; //숙소 순번
				this.review_content = review_content; //리뷰 내용
				this.review_ratings = review_ratings; //리뷰 작성일자
				this.cust_id = cust_id; //숙소 순번
			}
	// 2 리뷰 수정
			public ReviewsVO(int review_ratings, String review_content, int review_seq) {
				this.review_ratings = review_ratings; //리뷰 작성일자
				this.review_content = review_content; //리뷰 내용
				this.review_seq = review_seq; //리뷰 순번
			}
	// 3 리뷰 삭제
			public int getReview_seq() {
				return review_seq;
			}
	
	// 4 내 리뷰 조회
			public String getCust_id() {
				return cust_id;
			}
	// 5 호텔 리뷰 조회
			public int getAc_seq() {
				return ac_seq;
			}
	
	
	
		
	
	

	
		
	
	
	// 생성자 만들어 쓰기

	public void setReview_seq(int review_seq) {
		this.review_seq = review_seq;
	}

	

	public void setAc_seq(int ac_seq) {
		this.ac_seq = ac_seq;
	}

	public String getReview_cont() {
		return review_content;
	}

	public void setReview_content(String review_content) {
		this.review_content = review_content;
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

	

	public void setCust_id(String cust_id) {
		this.cust_id = cust_id;
	}

}
