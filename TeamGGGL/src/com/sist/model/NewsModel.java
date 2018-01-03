package com.sist.model;

import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import com.sist.controller.Controller;
import com.sist.controller.RequestMapping;
import com.sist.news.dao.NewsDAO;
import com.sist.news.dao.NewsReplyVO;
import com.sist.news.dao.NewsVO;

@Controller
public class NewsModel {
	@RequestMapping("news_reply_new_insert.do")
	public String news_reply_new_insert(HttpServletRequest req, HttpServletResponse res) {
		try {
			req.setCharacterEncoding("EUC-KR");
		} catch (Exception ex) {
		}
		HttpSession session = req.getSession();
		String bno = req.getParameter("bno");
		String msg = req.getParameter("msg");
		String id = (String) session.getAttribute("email");
		String name = (String) session.getAttribute("name");
		NewsReplyVO rvo = new NewsReplyVO();
		rvo.setBno(Integer.parseInt(bno));
		rvo.setMsg(msg);
		rvo.setId(id);
		rvo.setName(name);
		NewsDAO.replyNewInsert(rvo);
		req.setAttribute("no", bno);
		return "gameNews/reply_ok.jsp";
	}

	@RequestMapping("news_reply_update.do")
	public String reply_update(HttpServletRequest req, HttpServletResponse res) {
		try {
			req.setCharacterEncoding("EUC-KR");
		} catch (Exception ex) {
		}
		String bno = req.getParameter("bno");
		String no = req.getParameter("no");
		String msg = req.getParameter("msg");
		NewsReplyVO vo = new NewsReplyVO();
		vo.setNo(Integer.parseInt(no));
		vo.setMsg(msg);
		// DB연동
		NewsDAO.replyUpdate(vo);
		return "news_detail.do?no=" + bno;
	}

	@RequestMapping("news_reply_delete.do")
	public String reply_delete(HttpServletRequest req, HttpServletResponse res) {
		String bno = req.getParameter("bno");
		String no = req.getParameter("no");
		NewsDAO.replyDelete(Integer.parseInt(no));
		return "news_detail.do?no=" + bno;
	}

	@RequestMapping("news_detail.do")
	public String news_detail(HttpServletRequest req, HttpServletResponse res) {
		String no = req.getParameter("no");
		// ${sessionScope.name }
		List<NewsReplyVO> replylist = NewsDAO.replyListData(Integer.parseInt(no));
		NewsVO vo = NewsDAO.newsDetailData(Integer.parseInt(no));
		req.setAttribute("replylist", replylist);
		req.setAttribute("vo", vo);
		req.setAttribute("main_jsp", "../gameNews/news_detail.jsp");
		return "gameMain/main.jsp";
	}

	@RequestMapping("news_main.do")
	public String news_main(HttpServletRequest req, HttpServletResponse res) throws UnsupportedEncodingException {
		req.setCharacterEncoding("EUC-KR");

		String page = req.getParameter("page");
		String no = req.getParameter("no");
		if (page == null)
			page = "1";
		int curpage = Integer.parseInt(page);
		String category = req.getParameter("category");
		if (category == null)
			category = "전체";
		int rowSize = 10;
		int start = (rowSize * curpage) - (rowSize - 1);
		int end = rowSize * curpage;
		Map map = new HashMap();
		map.put("start", start);
		map.put("end", end);
		if (category.equals("전체")) {
			map.put("category", "all");
		} else {
			map.put("category", category);
		}
		System.out.println(category);

		List<NewsVO> list = NewsDAO.newsListData(map);
		List<NewsVO> ulist = NewsDAO.newsUpdateListData();
		int newsTotalCount = NewsDAO.newsTotalCount();
		int totalpage = NewsDAO.newsTotalPage();
		List<NewsVO> rlist = NewsDAO.newsRecommandData();

		req.setAttribute("rlist", rlist);
		req.setAttribute("list", list);
		req.setAttribute("ulist", ulist);
		req.setAttribute("curpage", curpage);
		req.setAttribute("totalpage", totalpage);
		req.setAttribute("newsTotalCount", newsTotalCount);
		req.setAttribute("main_jsp", "../gameNews/news_main.jsp");
		return "gameMain/main.jsp";
	}

}
