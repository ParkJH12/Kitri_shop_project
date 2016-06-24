package com.kitri.myapp.member;

public class Join {
	
	private int m_num;
	private String name;
	private String pass;
	private String phone_num;
	private String address;
	private String email;
	
	
	@Override
	public String toString() {
		return "Join [m_num=" + m_num + ", name=" + name + ", pass=" + pass + ", phone_num=" + phone_num + ", address="
				+ address + ", email=" + email + "]";
	}
	public Join() {
	}
	public Join(int m_num, String name, String pass, String phone_num, String address, String email) {
		this.m_num = m_num;
		this.name = name;
		this.pass = pass;
		this.phone_num = phone_num;
		this.address = address;
		this.email = email;
	}
	public int getM_num() {
		return m_num;
	}
	public void setM_num(int m_num) {
		this.m_num = m_num;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public String getPhone_num() {
		return phone_num;
	}
	public void setPhone_num(String phone_num) {
		this.phone_num = phone_num;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
}