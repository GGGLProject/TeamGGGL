package com.sist.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sist.controller.Controller;
import com.sist.controller.RequestMapping;
import com.sist.member.dao.MemberDAO;
import com.sist.member.dao.MemberVO;

@Controller
public class MemberModel {
	
	@RequestMapping("login.do")
	public String login(HttpServletRequest req, HttpServletResponse res) {
		req.setAttribute("main_jsp", "../gameMember/login.jsp");
		return "gameMain/main.jsp";
	} 
	
	@RequestMapping("new_member.do")
	public String new_member(HttpServletRequest req, HttpServletResponse res) {
		req.setAttribute("main_jsp", "../gameMember/new_member.jsp");
		return "gameMain/main.jsp";
		
	}
	@RequestMapping("checkmember.do")
	public String nickCheck(HttpServletRequest req, HttpServletResponse res) {
		MemberVO vo = new MemberVO();
		String id = req.getParameter("id");
		vo = MemberDAO.memberidcheck(id);
		vo.setMember_id(id);
		System.out.println("MemberModel = > " + vo.getCount() + " : " + vo.getMember_id());
		req.setAttribute("count", vo.getCount() );
		req.setAttribute("vo", vo);
		return "gameMain/idcheck.jsp";
		
	}
}
