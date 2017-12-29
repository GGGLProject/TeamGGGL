package com.sist.model;

import java.io.*;
import java.text.SimpleDateFormat;
import java.util.*;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.sist.controller.Controller;
import com.sist.controller.RequestMapping;

import com.sist.event.dao.EventDAO;
import com.sist.event.dao.EventVO;
@Controller
public class EventModel {
	@RequestMapping("event_list_old.do")
	public String event_list_old(HttpServletRequest req, HttpServletResponse res) {
		req.setAttribute("main_jsp", "../gameEvent/event_list.jsp");
		return "gameMain/main.jsp";
	}
	@RequestMapping("event_list.do")
	public String event_list(HttpServletRequest req, HttpServletResponse res) throws Throwable {
		// TODO Auto-generated method stub
		req.setCharacterEncoding("EUC-KR");
		String page= req.getParameter("page");
		// request => 기존요청값 + 추가 (setAttribute())
		if(page==null)
			page="1";
		int curpage = Integer.parseInt(page);
		int rowSize=10;
		int start = (rowSize*curpage)-(rowSize-1);
		int end = rowSize*curpage;
		Map map = new HashMap();
		map.put("start", start);
		map.put("end", end);
		Date date = new Date();
		SimpleDateFormat sdf= new SimpleDateFormat("yyyy-MM-dd");
		String today = sdf.format(date);

		List<EventVO> list = EventDAO.eventListData(map);
//		String event_day;
//		String[] event_days = new String [list.size()];
//		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
//		for (int i =0; i<list.size(); i++)
//		{	event_day=list.get(i).getEvent_day();
//			event_days[i] = sdf.format(event_day);
//		}
//		req.setAttribute("event_day", event_days);
		for (int i =0; i<list.size(); i++) {
		System.out.println("event_day:"+list.get(i).getEvent_day());
		System.out.println("regdate:"+list.get(i).getEvnet_regdate());
		}
		req.setAttribute("list", list);
		req.setAttribute("curpage", curpage);
		int totalpage= EventDAO.eventTotalPage();
		req.setAttribute("totalpage", totalpage);
		req.setAttribute("today", date);
		req.setAttribute("main_jsp", "../gameEvent/event_list.jsp");
		return "gameMain/main.jsp";
	}
	
	@RequestMapping("event_content.do")
	public String event_content(HttpServletRequest req, HttpServletResponse res) {
		String no = req.getParameter("no");
		int event_no=Integer.parseInt(no);
		EventVO vo = EventDAO.eventContentData(event_no);
		req.setAttribute("vo", vo);
		
		
		req.setAttribute("main_jsp", "../gameEvent/event_content.jsp");
		return "gameMain/main.jsp";
	}
	@RequestMapping("event_write.do")
	public String event_write(HttpServletRequest req, HttpServletResponse res) {
		req.setAttribute("main_jsp", "../gameEvent/event_write.jsp");
		return "gameMain/main.jsp";
	}
	@RequestMapping("event_insert_ok.do")
	public String event_insert_ok(HttpServletRequest req, HttpServletResponse res) throws Throwable {
	
		String realFolder = "";
		 String filename1 = "";
		 int maxSize = 400*400*10;
		 String encType = "EUC-KR";
		 String savefile = "image";
//		 ServletContext scontext = getServletContext();
		 realFolder = "C:\\git\\TeamGGGL\\TeamGGGL\\WebContent\\image";
		 	
		 //선언부 
		 String day="";
		 Date event_day = new Date();
		 String event_place="";
		 String event_category="";
		 String event_city="";
		 String event_title="";
		 String event_content="";
		 String image_path="image";
		 try{
			 req.setCharacterEncoding("EUC-KR");
		  MultipartRequest multi=new MultipartRequest(req, realFolder, maxSize, encType, new DefaultFileRenamePolicy());

		  Enumeration<?> files = multi.getFileNames();
		     String file1 = (String)files.nextElement();
		     filename1 = multi.getFilesystemName(file1);
		     day=multi.getParameter("day");
		     SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		     event_day = sdf.parse(day);
		     event_place=multi.getParameter("place");
		     event_category=multi.getParameter("category");
			 event_city=multi.getParameter("city");
			 event_title=multi.getParameter("subject");
			 event_content=multi.getParameter("content");
		 } catch(Exception ex) {
			 System.out.println("이미지업로드(event_insert_ok.do):"+ex.getMessage());
		 }
		 
		 String fullpath = image_path + "/" + filename1;
		 System.out.println(fullpath);
		 String event_image = fullpath;
//			String event_id=req.getParameter("name");
			
//			System.out.println("day1:"+day);
			
//			System.out.println("event_day:"+event_day);
//			String event_image=req.getParameter("upload");
	
			System.out.println("vo이전 try이전:"+event_place + " / " +event_city);
		 
		 
		 
		EventVO vo =new EventVO();
		vo.setEvent_id("이미지-테스트");
		vo.setEvent_day(event_day);
		vo.setEvent_place(event_place);
		vo.setEvent_image(event_image);
		vo.setEvent_category(event_category);
		vo.setEvent_city(event_city);
		vo.setEvent_title(event_title);
		vo.setEvent_content(event_content);
		
		System.out.println("vo이후 :"+event_place + " / " +event_city);
		EventDAO.eventInsert(vo);
		
		
		req.setAttribute("main_jsp", "../gameEvent/event_list.jsp");
		return "event_list.do";
	}
/*	@RequestMapping("event_insert_ok.do")
	public String event_insert_ok(HttpServletRequest req, HttpServletResponse res) throws Throwable {
		// TODO Auto-generated method stub
		req.setCharacterEncoding("EUC-KR");
//		String event_id=req.getParameter("name");
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	
		String day=req.getParameter("day");
		System.out.println("day1:"+day);
		Date event_day = sdf.parse(day);
		System.out.println("event_day:"+event_day);
		String event_place=req.getParameter("place");
		String event_image=req.getParameter("upload");
		String event_category=req.getParameter("category");
		
		String event_city=req.getParameter("city");
		String event_title=req.getParameter("subject");
		String event_content=req.getParameter("content");

		EventVO vo =new EventVO();
		vo.setEvent_id("운영진-테스트");
		vo.setEvent_day(event_day);
		vo.setEvent_place(event_place);
		vo.setEvent_image(event_image);
		vo.setEvent_category(event_category);
		vo.setEvent_city(event_city);
		vo.setEvent_title(event_title);
		vo.setEvent_content(event_content);

		EventDAO.eventInsert(vo);
		
		
		req.setAttribute("main_jsp", "../gameEvent/event_list.jsp");
		return "event_list.do";
	}*/
	
}
