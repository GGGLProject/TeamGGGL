package com.sist.model;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sist.controller.Controller;
import com.sist.controller.RequestMapping;
import com.sist.match.dao.*;

@Controller
public class TeamModel {
	@RequestMapping("teaminfo.do")
	public String teaminfo(HttpServletRequest req, HttpServletResponse res) throws Exception {
		req.setCharacterEncoding("EUC-KR");
		
		List<MatchVO> list_lck = MatchDAO.league_lck();
		List<MatchVO> list_nalcs = MatchDAO.league_nalcs();
		List<MatchVO> list_eulcs = MatchDAO.league_eulcs();
		List<MatchVO> list_cblol = MatchDAO.league_cblol();
		List<MatchVO> list_lms = MatchDAO.league_lms();
		List<MatchVO> list_nacs = MatchDAO.league_nacs();
		List<MatchVO> list_eucs = MatchDAO.league_eucs();
		List<MatchVO> list_lpl = MatchDAO.league_lpl();
		List<MatchVO> list_opl = MatchDAO.league_opl();
		List<MatchVO> list_wcs = MatchDAO.league_wcs();
		
		req.setAttribute("list_lck", list_lck);
		req.setAttribute("list_nalcs", list_nalcs);
		req.setAttribute("list_eulcs", list_eulcs);
		req.setAttribute("list_cblol", list_cblol);
		req.setAttribute("list_lms", list_lms);
		req.setAttribute("list_nacs", list_nacs);
		req.setAttribute("list_eucs", list_eucs);
		req.setAttribute("list_lpl", list_lpl);
		req.setAttribute("list_opl", list_opl);
		req.setAttribute("list_wcs", list_wcs);
		
		req.setAttribute("main_jsp", "../gameTeam/teaminfo.jsp");
		return "gameMain/main.jsp";
	}

}
