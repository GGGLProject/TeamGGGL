package com.sist.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sist.controller.Controller;
import com.sist.controller.RequestMapping;

@Controller
public class NewsModel {
	@RequestMapping("detail.do")
	public String movie_detail(HttpServletRequest req, HttpServletResponse res) {
		String mno = req.getParameter("mno");
//		NewsVO vo = MovieDAO.movieDetailData(Integer.parseInt(mno));
//		req.setAttribute("vo", vo);
		req.setAttribute("main_jsp", "../movie/detail.jsp");
		return "main/main.jsp";
	}
	@RequestMapping("news_main.do")
	public String news_main(HttpServletRequest req, HttpServletResponse res) {
		req.setAttribute("main_jsp", "../gameNews/news_main.jsp");
		return "gameMain/main.jsp";
	}
}
