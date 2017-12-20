package com.sist.news.dao;

import java.util.Date;

public class NewsVO {
	/*
	 * 
	 * 	NEWS_NO                                   NOT NULL NUMBER
		NEWS_TITLE                                NOT NULL VARCHAR2(100)
		NEWS_NAME                                 NOT NULL VARCHAR2(40)
		NEWS_CONTENT                              NOT NULL CLOB
		NEWS_REGDATE                              NOT NULL DATE
		NEWS_CATEGORY                             NOT NULL VARCHAR2(10)
		NEWS_IMAGE                                         VARCHAR2(2000)
	 */
	private int news_no;
	private String news_title;
	private String news_name;
	private String news_content;
	private Date news_date;
	private String news_category;
	private String news_image="";
	public int getNews_no() {
		return news_no;
	}
	public void setNews_no(int news_no) {
		this.news_no = news_no;
	}
	public String getNews_title() {
		return news_title;
	}
	public void setNews_title(String news_title) {
		this.news_title = news_title;
	}
	public String getNews_name() {
		return news_name;
	}
	public void setNews_name(String news_name) {
		this.news_name = news_name;
	}
	public String getNews_content() {
		return news_content;
	}
	public void setNews_content(String news_content) {
		this.news_content = news_content;
	}
	public Date getNews_date() {
		return news_date;
	}
	public void setNews_date(Date news_date) {
		this.news_date = news_date;
	}
	public String getNews_category() {
		return news_category;
	}
	public void setNews_category(String news_category) {
		this.news_category = news_category;
	}
	public String getNews_image() {
		return news_image;
	}
	public void setNews_image(String news_image) {
		this.news_image = news_image;
	}
	
}
