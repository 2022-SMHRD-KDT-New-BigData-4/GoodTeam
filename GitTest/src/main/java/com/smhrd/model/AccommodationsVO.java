package com.smhrd.model;

public class AccommodationsVO {
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
	
	
	// 내가 데이터 베이스에서 필요한 생성자 만들어 쓰세요.
	
	
	
	
	
	
	
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
	
	
	
	
	
	

	
	
}
