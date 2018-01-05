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
	   @RequestMapping("search_result_news.do")
		public String search_result_news(HttpServletRequest req, HttpServletResponse res) {
			try {
				req.setCharacterEncoding("EUC-KR");
			} catch (Exception ex) {
			}
			String searchKey = req.getParameter("searchkey");
			System.out.println(searchKey);

			// JSP Àü¼Û
			List<NewsVO> rlist = NewsDAO.newsSearchData(searchKey);
			req.setAttribute("rcount", rlist.size());
		
			req.setAttribute("key", searchKey);
			req.setAttribute("rlist", rlist);

			req.setAttribute("main_jsp", "../gameMain/search_result_news.jsp");

			return "gameMain/main.jsp";
		}
	@RequestMapping("search.do")
	public String search(HttpServletRequest req, HttpServletResponse res) {

		req.setAttribute("main_jsp", "../gameMain/main.jsp");

		return "gameMain/main.jsp";
	}
}
