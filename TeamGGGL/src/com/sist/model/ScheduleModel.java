package com.sist.model;

import javax.servlet.http.HttpServletRequest;

import javax.servlet.http.HttpServletResponse;

import com.sist.controller.Controller;
import com.sist.controller.RequestMapping;


@Controller
public class ScheduleModel {
	@RequestMapping("game_schedule.do")
	public String news_main(HttpServletRequest req, HttpServletResponse res) {
		req.setAttribute("main_jsp", "../gameSchedule/game_schedule.jsp");
		return "gameMain/main.jsp";
	}
}

