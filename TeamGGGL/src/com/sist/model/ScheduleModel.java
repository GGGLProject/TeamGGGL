package com.sist.model;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import javax.servlet.http.HttpServletResponse;

import com.sist.controller.Controller;
import com.sist.controller.RequestMapping;
import com.sist.match.dao.MatchDAO;
import com.sist.match.dao.MatchVO;


@Controller
public class ScheduleModel {
	@RequestMapping("game_detail.do")
	public String schedule_detail(HttpServletRequest req, HttpServletResponse res) {
		req.setAttribute("main_jsp", "../gameDetail/game_detail.jsp");
		return "gameMain/main.jsp";
	}
	
	@RequestMapping("game_schedule.do")

//	public String news_main(HttpServletRequest req, HttpServletResponse res) {
//		Map map = new HashMap();
//		List<MatchVO> list = MatchDAO.matchList(map);
//		req.setAttribute("list", list);
//	return list;
//	}
	public String schedule_main(HttpServletRequest req, HttpServletResponse res) {

		req.setAttribute("main_jsp", "../gameSchedule/game_schedule.jsp");
		return "gameMain/main.jsp";
		
	}
}

