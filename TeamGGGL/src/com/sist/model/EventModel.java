package com.sist.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sist.controller.Controller;
import com.sist.controller.RequestMapping;
@Controller
public class EventModel {
	@RequestMapping("event_list.do")
	public String event_list(HttpServletRequest req, HttpServletResponse res) {
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
