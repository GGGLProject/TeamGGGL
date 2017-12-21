package com.sist.model;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sist.controller.Controller;
import com.sist.controller.RequestMapping;
import com.sist.event.dao.EventDAO;
import com.sist.event.dao.EventVO;
@Controller
public class EventModel {
	@RequestMapping("event_list_old.do")
	public String event_list_old(HttpServletRequest req, HttpServletResponse res) {
		req.setAttribute("main_jsp", "../gameEvent/event_list.jsp");
		return "gameMain/main.jsp";
	}
	@RequestMapping("event_list.do")
	public String event_list(HttpServletRequest req, HttpServletResponse res) throws Throwable {
		// TODO Auto-generated method stub
		String page= req.getParameter("page");
		// request => 기존요청값 + 추가 (setAttribute())
		if(page==null)
			page="1";
		int curpage = Integer.parseInt(page);
		int rowSize=10;
		int start = (rowSize*curpage)-(rowSize-1);
		int end = rowSize*curpage;
		Map map = new HashMap();
		map.put("start", start);
		map.put("end", end);
		List<EventVO> list = EventDAO.eventListData(map);
		req.setAttribute("list", list);
		req.setAttribute("curpage", curpage);
		int totalpage= EventDAO.eventTotalPage();
		req.setAttribute("totalpage", totalpage);
		req.setAttribute("main_jsp", "../gameEvent/event_list.jsp");
		return "gameMain/main.jsp";
	}
	
	@RequestMapping("event_content.do")
	public String event_content(HttpServletRequest req, HttpServletResponse res) {
		req.setAttribute("main_jsp", "../gameEvent/event_content.jsp");
		return "gameMain/main.jsp";
	}
	
	@RequestMapping("event_write.do")
	public String event_write(HttpServletRequest req, HttpServletResponse res) {
		req.setAttribute("main_jsp", "../gameEvent/event_write.jsp");
		return "gameMain/main.jsp";
	}
}
