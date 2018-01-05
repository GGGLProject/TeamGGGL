package com.sist.model;

import java.text.SimpleDateFormat;
import java.util.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sist.controller.Controller;
import com.sist.controller.RequestMapping;
import com.sist.event.dao.EventDAO;
import com.sist.event.dao.EventVO;

import com.sist.news.dao.NewsDAO;
import com.sist.news.dao.NewsVO;

@Controller
public class SearchModel {
	@RequestMapping("search_result_old.do")
	public String search_page(HttpServletRequest req, HttpServletResponse res) {
		HttpSession session = req.getSession();
		String searchKey = req.getParameter("searchkey");
		try {
			req.setCharacterEncoding("EUC-KR");
		} catch (Exception ex) {
			System.out.println("서치:"+ex.getMessage());
		}
		
		session.setAttribute("skey",searchKey );
		System.out.println("dd");
		System.out.println("세선:"+session.getAttribute("skey"));
		System.out.println(searchKey);

		// JSP 전송
		List<NewsVO> rlist = NewsDAO.newsSearchData(searchKey);
		List<EventVO> elist = EventDAO.eventSearchData(searchKey);
		
		req.setAttribute("key", searchKey);
		req.setAttribute("rlist", rlist);
		req.setAttribute("elist", elist);
		
		req.setAttribute("main_jsp", "../gameMain/search_result.jsp");

		return "gameMain/main.jsp";
	}

	@RequestMapping("search.do")
	public String search(HttpServletRequest req, HttpServletResponse res) {

		req.setAttribute("main_jsp", "../gameMain/main.jsp");

		return "gameMain/main.jsp";
	}
}
