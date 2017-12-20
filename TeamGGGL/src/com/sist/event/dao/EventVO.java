package com.sist.event.dao;

import java.util.*;

public class EventVO {
	//TABLE gggl_event
	//컬럼명과 일치되는 변수명 
	// date 자료형은 java.util.date;
	private int event_no;
	private String event_title;
	private String event_id;
	private String event_content;
	private Date event_day;
	private Date evnet_regdate;
	private String event_place;
	private String event_category;
	private String event_city;
	
	public int getEvent_no() {
		return event_no;
	}
	public void setEvent_no(int event_no) {
		this.event_no = event_no;
	}
	public String getEvent_title() {
		return event_title;
	}
	public void setEvent_title(String event_title) {
		this.event_title = event_title;
	}
	public String getEvent_id() {
		return event_id;
	}
	public void setEvent_id(String event_id) {
		this.event_id = event_id;
	}
	public String getEvent_content() {
		return event_content;
	}
	public void setEvent_content(String event_content) {
		this.event_content = event_content;
	}
	public Date getEvent_day() {
		return event_day;
	}
	public void setEvent_day(Date event_day) {
		this.event_day = event_day;
	}
	public Date getEvnet_regdate() {
		return evnet_regdate;
	}
	public void setEvnet_regdate(Date evnet_regdate) {
		this.evnet_regdate = evnet_regdate;
	}
	public String getEvent_place() {
		return event_place;
	}
	public void setEvent_place(String event_place) {
		this.event_place = event_place;
	}
	public String getEvent_category() {
		return event_category;
	}
	public void setEvent_category(String event_category) {
		this.event_category = event_category;
	}
	public String getEvent_city() {
		return event_city;
	}
	public void setEvent_city(String event_city) {
		this.event_city = event_city;
	}

	
}
