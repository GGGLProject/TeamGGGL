package com.sist.reply.dao;

import java.util.Date;

public class ReplyVO {
	private int reply_no;
	private String reply_content;
	private Date reply_regdate;
	private String reply_name;
	private String reply_cno;
	private String reply_bno;
	
	public int getReply_no() {
		return reply_no;
	}
	public void setReply_no(int reply_no) {
		this.reply_no = reply_no;
	}
	public String getReply_content() {
		return reply_content;
	}
	public void setReply_content(String reply_content) {
		this.reply_content = reply_content;
	}
	public Date getReply_regdate() {
		return reply_regdate;
	}
	public void setReply_regdate(Date reply_regdate) {
		this.reply_regdate = reply_regdate;
	}
	public String getReply_name() {
		return reply_name;
	}
	public void setReply_name(String reply_name) {
		this.reply_name = reply_name;
	}
	public String getReply_cno() {
		return reply_cno;
	}
	public void setReply_cno(String reply_cno) {
		this.reply_cno = reply_cno;
	}
	public String getReply_bno() {
		return reply_bno;
	}
	public void setReply_bno(String reply_bno) {
		this.reply_bno = reply_bno;
	}
}
