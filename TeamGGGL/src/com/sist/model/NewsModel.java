package com.sist.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sist.controller.Controller;
import com.sist.controller.RequestMapping;

@Controller
public class NewsModel {
	@RequestMapping("news_detail.do")
	public String news_detail(HttpServletRequest req, HttpServletResponse res) {
		req.setAttribute("main_jsp", "../gameNews/news_detail.jsp");
		return "gameMain/main.jsp";
	}
	
	@RequestMapping("news_main.do")
	public String news_main(HttpServletRequest req, HttpServletResponse res) {
		req.setAttribute("main_jsp", "../gameNews/news_main.jsp");
		return "gameMain/main.jsp";
	}
}
