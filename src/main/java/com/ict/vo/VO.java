package com.ict.vo;

import org.springframework.web.multipart.MultipartFile;

public class VO {
	private String id, Food_name, restaurant, place, file_name, phone, home,restaurant_time, menupan;
	private MultipartFile f_name, m_menupan ;
	private int star;
	private int like;
	
	
	public String getMenupan() {
		return menupan;
	}
	public void setMenupan(String menupan) {
		this.menupan = menupan;
	}
	public MultipartFile getM_menupan() {
		return m_menupan;
	}
	public void setM_menupan(MultipartFile m_menupan) {
		this.m_menupan = m_menupan;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getFood_name() {
		return Food_name;
	}
	public void setFood_name(String food_name) {
		Food_name = food_name;
	}
	public String getRestaurant() {
		return restaurant;
	}
	public void setRestaurant(String restaurant) {
		this.restaurant = restaurant;
	}
	public String getPlace() {
		return place;
	}
	public void setPlace(String place) {
		this.place = place;
	}
	public String getFile_name() {
		return file_name;
	}
	public void setFile_name(String file_name) {
		this.file_name = file_name;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getHome() {
		return home;
	}
	public void setHome(String home) {
		this.home = home;
	}
	public String getRestaurant_time() {
		return restaurant_time;
	}
	public void setRestaurant_time(String restaurant_time) {
		this.restaurant_time = restaurant_time;
	}
	public MultipartFile getF_name() {
		return f_name;
	}
	public void setF_name(MultipartFile f_name) {
		this.f_name = f_name;
	}
	public int getStar() {
		return star;
	}
	public void setStar(int star) {
		this.star = star;
	}
	public int getLike() {
		return like;
	}
	public void setLike(int like) {
		this.like = like;
	}
	
	
	
	
	
}
