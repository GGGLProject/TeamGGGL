package com.sist.model;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sist.controller.Controller;
import com.sist.controller.RequestMapping;
import com.sist.match.dao.*;


@Controller
public class ScheduleModel {
	@RequestMapping("game_detail.do")
	public String schedule_detail(HttpServletRequest req, HttpServletResponse res) {
		String match_no = req.getParameter("match_no");
		List<MatchVO> h_list = MatchDAO.match_detail_h(Integer.parseInt(match_no));
		List<MatchVO> a_list = MatchDAO.match_detail_a(Integer.parseInt(match_no));
		List<MatchReplyVO> m_list = MatchDAO.m_replyListData(Integer.parseInt(match_no));
		req.setAttribute("h_list", h_list);
		req.setAttribute("a_list", a_list);
		req.setAttribute("m_list", m_list);
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
	
	@RequestMapping("match_reply_new_insert.do")
	   public String match_reply_new_insert(HttpServletRequest req, HttpServletResponse res) {
	      try {
	         req.setCharacterEncoding("EUC-KR");
	      } catch (Exception ex) {}
	      HttpSession session = req.getSession();
	      String bno = req.getParameter("bno");
	      String msg = req.getParameter("msg");
	      String id = (String) session.getAttribute("email");
	      String name = (String) session.getAttribute("name");
	      MatchReplyVO rvo = new MatchReplyVO();
	      rvo.setBno(Integer.parseInt(bno));
	      rvo.setMsg(msg);
	      rvo.setId(id);
	      rvo.setName(name);
	      MatchDAO.m_replyNewInsert(rvo);
	      req.setAttribute("no", bno);
	      return "gameDetail/reply_ok.jsp";
	   }
	
	 @RequestMapping("match_reply_update.do")
	   public String reply_update(HttpServletRequest req, HttpServletResponse res) {
	      try {
	         req.setCharacterEncoding("EUC-KR");
	      } catch (Exception ex) {}
	      String bno = req.getParameter("bno");
	      String no = req.getParameter("no");
	      String msg = req.getParameter("msg");
	      MatchReplyVO vo = new MatchReplyVO();
	      vo.setNo(Integer.parseInt(no));
	      vo.setMsg(msg);
	      // DB¿¬µ¿
	      MatchDAO.m_replyUpdate(vo);
	      return "game_detail.do?match_no=" + bno;
	   }
	 
	 @RequestMapping("match_reply_delete.do")
	   public String reply_delete(HttpServletRequest req, HttpServletResponse res) {
	      String bno = req.getParameter("bno");
	      String no = req.getParameter("no");
	      MatchDAO.m_replyDelete(Integer.parseInt(no));
	      return "game_detail.do?match_no=" + bno;
	   }
	 
}

