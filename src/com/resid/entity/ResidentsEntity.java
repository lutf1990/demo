package com.resid.entity;

import java.sql.Timestamp;

public class ResidentsEntity {

	private int sid;
	private String name;
	private String email;
	private long phone;
	private String dob;
	private String gender;
	private long ssn;
	private String username;
	private String password;
	private String image;
	private Timestamp doe;
	private String role;
	
	public Timestamp getDoe() {
		return doe;
	}
	public void setDoe(Timestamp doe) {
		this.doe = doe;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	public ResidentsEntity() {
		
	}
	public ResidentsEntity( String name, String email, long phone, String dob, String gender, long ssn,
			String username, String password, String image) {
		super();
		//this.sid = sid;
		this.name = name;
		this.email = email;
		this.phone = phone;
		this.dob = dob;
		this.gender = gender;
		this.ssn = ssn;
		this.username = username;
		this.password = password;
		this.image = image;
	}
	public int getSid() {
		return sid;
	}
	public void setSid(int sid) {
		this.sid = sid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public long getPhone() {
		return phone;
	}
	public void setPhone(long phone) {
		this.phone = phone;
	}
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public long getSsn() {
		return ssn;
	}
	public void setSsn(long ssn) {
		this.ssn = ssn;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	@Override
	public String toString() {
		return "ResidentsEntity [sid=" + sid + ", name=" + name + ", email=" + email + ", phone=" + phone + ", dob="
				+ dob + ", gender=" + gender + ", ssn=" + ssn + ", username=" + username + ", pssword=" + password
				+ ", image=" + image + "]";
	}
	
	
}
