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
		String match_no = req.getParameter("match_no");
		List<MatchVO> h_list = MatchDAO.match_detail_h(Integer.parseInt(match_no));
		req.setAttribute("h_list", h_list);
		req.setAttribute("main_jsp", "../gameDetail/game_detail.jsp");
		return "gameMain/main.jsp";
	}
	
	@RequestMapping("game_schedule.do")
	public String schedule_main(HttpServletRequest req, HttpServletResponse res) throws Exception {
		req.setCharacterEncoding("EUC-KR");
		
		Date date=new Date();
		SimpleDateFormat sdf=new SimpleDateFormat("yy/MM/dd");
		String match_day = sdf.format(date);
		
		

		List<MatchVO> list_3h = MatchDAO.matchList_3h(match_day);
		List<MatchVO> list_3a = MatchDAO.matchList_3a(match_day);
		List<MatchVO> list_2h = MatchDAO.matchList_2h(match_day);
		List<MatchVO> list_2a = MatchDAO.matchList_2a(match_day);
		List<MatchVO> list_1h = MatchDAO.matchList_1h(match_day);
		List<MatchVO> list_1a = MatchDAO.matchList_1a(match_day);
		List<MatchVO> list_h = MatchDAO.matchList_h(match_day);
		List<MatchVO> list_a = MatchDAO.matchList_a(match_day);
		List<MatchVO> list__1h = MatchDAO.matchList__1h(match_day);
		List<MatchVO> list__1a = MatchDAO.matchList__1a(match_day);
		List<MatchVO> list__2h = MatchDAO.matchList__2h(match_day);
		List<MatchVO> list__2a = MatchDAO.matchList__2a(match_day);
		List<MatchVO> list__3h = MatchDAO.matchList__3h(match_day);
		List<MatchVO> list__3a = MatchDAO.matchList__3a(match_day);

		req.setAttribute("list_3h", list_3h);
		req.setAttribute("list_3a", list_3a);
		req.setAttribute("list_2h", list_2h);
		req.setAttribute("list_2a", list_2a);
		req.setAttribute("list_1h", list_1h);
		req.setAttribute("list_1a", list_1a);
		req.setAttribute("list_h", list_h);
		req.setAttribute("list_a", list_a);
		req.setAttribute("list__1h", list__1h);
		req.setAttribute("list__1a", list__1a);
		req.setAttribute("list__2h", list__2h);
		req.setAttribute("list__2a", list__2a);
		req.setAttribute("list__3h", list__3h);
		req.setAttribute("list__3a", list__3a); 
		req.setAttribute("main_jsp", "../gameSchedule/game_schedule.jsp");
		return "gameMain/main.jsp";
		
	}
}

