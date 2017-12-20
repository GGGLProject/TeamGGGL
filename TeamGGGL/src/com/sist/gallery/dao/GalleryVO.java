package com.sist.gallery.dao;

import java.util.Date;

public class GalleryVO {
	private int gallery_no;
	private String gallery_title;
	private String gallery_content;
	private Date gallery_regdate;
	private String gallery_category;
	private String gallery_path;
	
	public int getGallery_no() {
		return gallery_no;
	}
	public void setGallery_no(int gallery_no) {
		this.gallery_no = gallery_no;
	}
	public String getGallery_title() {
		return gallery_title;
	}
	public void setGallery_title(String gallery_title) {
		this.gallery_title = gallery_title;
	}
	public String getGallery_content() {
		return gallery_content;
	}
	public void setGallery_content(String gallery_content) {
		this.gallery_content = gallery_content;
	}
	public Date getGallery_regdate() {
		return gallery_regdate;
	}
	public void setGallery_regdate(Date gallery_regdate) {
		this.gallery_regdate = gallery_regdate;
	}
	public String getGallery_category() {
		return gallery_category;
	}
	public void setGallery_category(String gallery_category) {
		this.gallery_category = gallery_category;
	}
	public String getGallery_path() {
		return gallery_path;
	}
	public void setGallery_path(String gallery_path) {
		this.gallery_path = gallery_path;
	}
	

}
