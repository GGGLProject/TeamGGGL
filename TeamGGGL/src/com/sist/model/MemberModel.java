package com.sist.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sist.controller.RequestMapping;

public class MemberModel {
	@RequestMapping("login.do")
	public String event_content(HttpServletRequest req, HttpServletResponse res) {
		req.setAttribute("main_jsp", "../gameMember/login.jsp");
		return "gameMain/main.jsp";
	}
}
