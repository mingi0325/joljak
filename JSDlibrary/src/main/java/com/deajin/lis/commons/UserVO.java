package com.deajin.lis.commons;


public class UserVO {
	private String userid;
	private String password;
	private String username;
	private String phone;
	
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	
	@Override
	public String toString() {
		return "userid : " + this.userid + " / pass : " + this.password + " / username : " + this.username + " / phone : " + this.phone;
	}
	
}
