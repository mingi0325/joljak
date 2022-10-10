package com.deajin.lis.commons;


public class UserVO {
	private String userid;
	private String password;
	private String username;
	private String phone;
	private String grade;
	
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
	
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}
	@Override
	public String toString() {
		return "UserVO [userid=" + userid + ", password=" + password + ", username=" + username + ", phone=" + phone
				+ ", grade=" + grade + "]";
	}
	
	
	
}
