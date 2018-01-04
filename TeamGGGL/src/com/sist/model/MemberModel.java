package com.sist.model;

import java.io.UnsupportedEncodingException;
import java.util.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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
	@RequestMapping("MyPage.do")
	public String MyPage(HttpServletRequest req, HttpServletResponse res) {
		req.setAttribute("main_jsp", "../gameMyPage/MyPage.jsp");
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
		String email = req.getParameter("useremail");
		MemberVO vo =MemberDAO.memberEmailCheck(email);
		req.setAttribute("vo", vo);	
		return "gameMember/emailcheck.jsp";
	}
// 총회원가입 버튼 부분
// 로그인부분
	@RequestMapping("login2.do")
	public String memberlogin(HttpServletRequest req,HttpServletResponse res) {
		HttpSession session=req.getSession();
		
		String email=req.getParameter("email");
		String pwd=req.getParameter("Password");
		
		int count=MemberDAO.memberEmailCount(email);
		String result="";
		
		if(count==0) {
			result="NOID";
		}else {
			MemberVO vo=MemberDAO.memberGetPassword(email);
			if(pwd.equals(vo.getMember_pwd())) {
				result="OK";
				session.setAttribute("email", email);
				session.setAttribute("name", vo.getMember_nickname());
				session.setAttribute("grade", vo.getMember_grade().trim());
				session.setAttribute("phone", vo.getMember_phone());
				session.setAttribute("birthday",vo.getMember_birthday());
				session.setAttribute("favor", vo.getMember_favor());
				session.setAttribute("pwd", vo.getMember_pwd());
				
			}
			else {
				result="NOPWD";
			}
		}
		req.setAttribute("result", result);
		return "gameMember/login_ok.jsp";
	}
	@RequestMapping("logout.do")
	public String memberLogout(HttpServletRequest req,HttpServletResponse res) {
		HttpSession session=req.getSession();
		session.invalidate();
		return "gameMember/logout_ok.jsp";
	}
	@RequestMapping("memberJoin.do")
	public String memberJoin(HttpServletRequest req,HttpServletResponse res) {
		try {
			req.setCharacterEncoding("EUC-KR");
		} catch (Exception ex) {
			System.out.println("memberJoin :" + ex.getMessage());
		}
		String id =req.getParameter("id");
		String email=req.getParameter("email");
		String pwd=req.getParameter("Mpassword");
		String telnumber=req.getParameter("telnumber");
		String year=req.getParameter("year");
		String month=req.getParameter("month");
		String day=req.getParameter("day");
		String birthday=year+"-"+month+"-"+day;
		String grade = req.getParameter("grade");
		
		String[] favors= req.getParameterValues("favor");
		
		String favor="";
		for(String s:favors) {
			
			favor+=s+",";
		}
		
		MemberVO vo=new MemberVO();
		vo.setMember_nickname(id);
		vo.setMember_id(email);
		vo.setMember_pwd(pwd);
		vo.setMember_phone(telnumber);
		vo.setMember_birthday(birthday);
		vo.setMember_favor(favor);
		vo.setMember_grade(grade);
		req.setAttribute("vo", vo);
		MemberDAO.memberJoin(vo);
		req.setAttribute("main_jsp", "../gameMain/main.jsp");
		return "main.do";
	}
	// 비밀번호찾기 부분
	@RequestMapping("passwordEmailCheck.do")
	public String passwordemailCheWck(HttpServletRequest req, HttpServletResponse res) {
		String recoveryEmail = req.getParameter("recoveryEmail");
		MemberVO vo =MemberDAO.passwordEmailCheck(recoveryEmail);
		System.out.println();
		req.setAttribute("vo", vo);	
		return "gameMember/recoveryEmail.jsp";
	}
	//수정하기
	@RequestMapping("memberUpdate.do")
	public String memberUpdate(HttpServletRequest req,HttpServletResponse res) {
		HttpSession session=req.getSession();
		try {
			req.setCharacterEncoding("EUC-KR");
		} catch (Exception ex) {
			System.out.println("memberJoin :" + ex.getMessage());
		}
		
		String id =req.getParameter("id");
		String email=req.getParameter("email");
		String pwd=req.getParameter("Mpassword");
		String telnumber=req.getParameter("telnumber");
		String year=req.getParameter("year");
		String month=req.getParameter("month");
		String day=req.getParameter("day");
		String birthday=year+"-0"+month+"-"+day;
		String grade = req.getParameter("grade");
		
		
		MemberVO vo=new MemberVO();
		vo.setMember_nickname(id);
		vo.setMember_id(email);
		vo.setMember_pwd(pwd);
		vo.setMember_phone(telnumber);
		vo.setMember_birthday(birthday);
		
	
		req.setAttribute("vo", vo);
		MemberDAO.memberUpdate(vo);
		session.invalidate();
		return "gameMain/main.jsp";
	}
	// admin 페이지
	@RequestMapping("adminpage.do")
	public String adminpage(HttpServletRequest req,HttpServletResponse res) {
		List<MemberVO> list=MemberDAO.adminListData();
		req.setAttribute("list", list);
		req.setAttribute("main_jsp", "../gameMyPage/adminpage.jsp");
		return "gameMain/main.jsp";
	}
	@RequestMapping("member_ok.do")
	public String member_ok(HttpServletRequest req,HttpServletResponse res) {
		String no=req.getParameter("no");
		MemberDAO.memberok(Integer.parseInt(no));
		return "adminpage.do";
	}
	@RequestMapping("member_iok.do")
	public String member_iok(HttpServletRequest req,HttpServletResponse res) {
		String no=req.getParameter("no");
		MemberDAO.memberiok(Integer.parseInt(no));
		return "adminpage.do";
	}
}
