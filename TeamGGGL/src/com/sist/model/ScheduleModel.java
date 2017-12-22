package com.sist.model;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sist.controller.Controller;
import com.sist.controller.RequestMapping;
import com.sist.match.dao.*;


@Controller
public class ScheduleModel {
	@RequestMapping("game_detail.do")
	public String schedule_detail(HttpServletRequest req, HttpServletResponse res) {
		req.setAttribute("main_jsp", "../gameDetail/game_detail.jsp");
		return "gameMain/main.jsp";
	}
	
	@RequestMapping("game_schedule.do")
	public String schedule_main(HttpServletRequest req, HttpServletResponse res) throws Exception {
		req.setCharacterEncoding("EUC-KR");
		
		String match_day = "12.18(월)";	//3일전 경기일자
		
		String team_name = req.getParameter("team_name");
		
		//MatchVO vo = MatchDAO.matchList(match_day);
		//Map map = new HashMap();
		List<MatchVO> list = MatchDAO.matchList(match_day);
		//List<TeamVO> list1 = TeamDAO.TeamImageData(team_name);
		req.setAttribute("list", list);
		//req.setAttribute("list1", list1); 
		req.setAttribute("main_jsp", "../gameSchedule/game_schedule.jsp");
		return "gameMain/main.jsp";
		
	}
}

