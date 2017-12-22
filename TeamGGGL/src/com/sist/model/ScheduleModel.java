package com.sist.model;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.StringTokenizer;

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
		
		Date date=new Date();
		SimpleDateFormat sdf=new SimpleDateFormat("yy/MM/dd");
		String match_day = sdf.format(date);
		String home_name = (String) req.getAttribute("home_name");
		
		
		//String team_icon = TeamDAO.TeamImageData(team_name);
		

		List<MatchVO> list_3 = MatchDAO.matchList_3(match_day);
		List<MatchVO> list_2 = MatchDAO.matchList_2(match_day);
		List<MatchVO> list_1 = MatchDAO.matchList_1(match_day);
		List<MatchVO> list = MatchDAO.matchList(match_day);
		List<MatchVO> list__1 = MatchDAO.matchList__1(match_day);
		List<MatchVO> list__2 = MatchDAO.matchList__2(match_day);
		List<MatchVO> list__3 = MatchDAO.matchList__3(match_day);
		List<TeamVO> iconlist = TeamDAO.TeamImageData(home_name);
		req.setAttribute("list_3", list_3);
		req.setAttribute("list_2", list_2);
		req.setAttribute("list_1", list_1);
		req.setAttribute("list", list);
		req.setAttribute("list__1", list__1);
		req.setAttribute("list__2", list__2);
		req.setAttribute("list__3", list__3);
		req.setAttribute("iconlist", iconlist); 
		req.setAttribute("main_jsp", "../gameSchedule/game_schedule.jsp");
		return "gameMain/main.jsp";
		
	}
}

