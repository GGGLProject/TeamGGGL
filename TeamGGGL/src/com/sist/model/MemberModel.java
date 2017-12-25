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
//	아이디 체크 부분
	@RequestMapping("checkmember.do")
	public String nickCheck(HttpServletRequest req, HttpServletResponse res) {
		
		String id = req.getParameter("id");
		MemberVO vo =MemberDAO.memberidcheck(id);
		req.setAttribute("vo", vo);
		//System.out.println("MemberModel = > " + vo.getCount() );		
		return "gameMember/idcheck.jsp";
	}
//	이메일 체크 부분
	@RequestMapping("emailCheck.do")
	public String emailCheck(HttpServletRequest req, HttpServletResponse res) {
		System.out.println("aaa");
		String email = req.getParameter("useremail");
		MemberVO vo =MemberDAO.memberEmailCheck(email);
		req.setAttribute("vo", vo);
		System.out.println("MemberModel = > " + vo.getCount() );		
		return "gameMember/emailcheck.jsp";
	}
	
}
