package com.sist.model;

import java.text.SimpleDateFormat;
import java.util.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sist.controller.Controller;
import com.sist.controller.RequestMapping;
import com.sist.event.dao.EventDAO;
import com.sist.event.dao.EventVO;
import com.sist.match.dao.MatchDAO;
import com.sist.match.dao.MatchVO;
import com.sist.news.dao.NewsDAO;
import com.sist.news.dao.NewsVO;
@Controller
// Model : service(요청 처리) => @Controller
public class MainModel {
	@RequestMapping("main.do")
	public String main_page(HttpServletRequest req, HttpServletResponse res) {
		
		Date date=new Date();
		SimpleDateFormat sdf=new SimpleDateFormat("yy/MM/dd");
		String match_day = sdf.format(date);

		  
		//JSP 전송 
		List<NewsVO> rlist = NewsDAO.mainNewsRecommandData();
		List<EventVO> elist = EventDAO.recommandEventListData();
		List<MatchVO> list = MatchDAO.matchList_h(match_day);
		List<MatchVO> list__1h = MatchDAO.matchList__1h(match_day);
		List<MatchVO> list__1a = MatchDAO.matchList__1a(match_day);
		int match_no_h = list__1h.get(0).getMatch_no();
		int match_no_a = list__1a.get(0).getMatch_no();
		List<MatchVO> h_list = MatchDAO.match_detail_h(match_no_h);
		List<MatchVO> a_list = MatchDAO.match_detail_a(match_no_a);

		req.setAttribute("rlist", rlist);
		req.setAttribute("elist", elist);
		req.setAttribute("list", list);
		req.setAttribute("list__1h", list__1h);
		req.setAttribute("list__1a", list__1a);
		req.setAttribute("h_list", h_list);
		req.setAttribute("a_list", a_list);
		req.setAttribute("main_jsp", "default.jsp");
		return "gameMain/main.jsp";
	}
}






