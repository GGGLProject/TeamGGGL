package com.sist.member.dao;

import java.sql.Date;

public class MemberVO {
	private String member_id;
	private String member_pwd;
	private int member_no;
	private String member_nickname;
	private String member_favor;
	private String member_phone;
	private char member_grade;
	private Date member_regdate;
	private String member_birthday;
	
	
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public String getMember_pwd() {
		return member_pwd;
	}
	public void setMember_pwd(String member_pwd) {
		this.member_pwd = member_pwd;
	}
	public int getMember_no() {
		return member_no;
	}
	public void setMember_no(int member_no) {
		this.member_no = member_no;
	}
	public String getMember_nickname() {
		return member_nickname;
	}
	public void setMember_nickname(String member_nickname) {
		this.member_nickname = member_nickname;
	}
	public String getMember_favor() {
		return member_favor;
	}
	public void setMember_favor(String member_favor) {
		this.member_favor = member_favor;
	}
	public String getMember_phone() {
		return member_phone;
	}
	public void setMember_phone(String member_phone) {
		this.member_phone = member_phone;
	}
	public char getMember_grade() {
		return member_grade;
	}
	public void setMember_grade(char member_grade) {
		this.member_grade = member_grade;
	}
	public Date getMember_regdate() {
		return member_regdate;
	}
	public void setMember_regdate(Date member_regdate) {
		this.member_regdate = member_regdate;
	}
	public String getMember_birthday() {
		return member_birthday;
	}
	public void setMember_birthday(String member_birthday) {
		this.member_birthday = member_birthday;
	}
	
	
}
