package com.smhrd.model;

public class ReviewsVO {
	// 리뷰 순번
	private int review_seq;
	// 숙소 순번
	private int ac_seq;
	// 리뷰 내용
	private String review_content;
	// 리뷰 별점
	private Integer review_ratings;
	// 리뷰 작성일자
	private String review_dt;
	// 고객 아이디
	private String cust_id;
	//
	
	
	public ReviewsVO(int review_seq, int ac_seq, String review_content, Integer review_ratings, String review_dt,
			String cust_id) {
		super();
		this.review_seq = review_seq;
		this.ac_seq = ac_seq;
		this.review_content = review_content;
		this.review_ratings = review_ratings;
		this.review_dt = review_dt;
		this.cust_id = cust_id;
	}
	
	
	
		// 1 리뷰 작성
			public ReviewsVO(String review_content, Integer review_ratings, int review_seq, String review_dt) {
				this.review_content = review_content; //리뷰 내용
				this.review_ratings = review_ratings; //리뷰 작성일자
				this.review_seq = review_seq; //숙소 순번
				this.review_dt = review_dt;
			}
			
	

			// 2 리뷰 수정
			public ReviewsVO(Integer review_ratings, String review_content, int review_seq) {
				this.review_content = review_content; //리뷰 내용
				this.review_ratings = review_ratings; //리뷰 작성일자
				this.review_seq = review_seq; //숙소 순번
			}

			
			
			
			
			public int getReview_seq() {
				return review_seq;
			}

			public String getCust_id() {
				return cust_id;
			}
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

	public void setReview_ratings(Integer review_ratings) {
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
