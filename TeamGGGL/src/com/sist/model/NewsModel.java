package com.sist.model;

import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sist.controller.Controller;
import com.sist.controller.RequestMapping;
import com.sist.news.dao.NewsDAO;
import com.sist.news.dao.NewsVO;

@Controller
public class NewsModel {
	@RequestMapping("news_detail.do")
	public String news_detail(HttpServletRequest req, HttpServletResponse res) {
		req.setAttribute("main_jsp", "../gameNews/news_detail.jsp");
		//NewsVO vo = NewsDAO.newsDetailData(Integer.parseInt(arg0))
		return "gameMain/main.jsp";	}
	
	@RequestMapping("news_main.do")
	public String news_main(HttpServletRequest req, HttpServletResponse res) throws UnsupportedEncodingException{
		req.setCharacterEncoding("EUC-KR");
		String page=req.getParameter("page");
		if(page == null)
			page="1";
		int curpage=Integer.parseInt(page);
		int rowSize=10;
		int start = (rowSize*curpage)-(rowSize-1);
		int end = rowSize*curpage;
		Map map = new HashMap();
		map.put("start", start);
		map.put("end", end);		
		String category = req.getParameter("category");
		
		List<NewsVO> list = NewsDAO.newsListData(map);
		
		req.setAttribute("category", category);
		req.setAttribute("list", list);
		req.setAttribute("curpage", curpage);
		int totalpage = NewsDAO.newsTotalPage();
		req.setAttribute("totalpage", totalpage);
		req.setAttribute("main_jsp", "../gameNews/news_main.jsp");
		return "gameMain/main.jsp";
	}
	
}
