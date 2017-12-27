package com.sist.model;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sist.controller.Controller;
import com.sist.controller.RequestMapping;
import com.sist.event.dao.EventDAO;
import com.sist.event.dao.EventVO;
import com.sist.news.dao.NewsDAO;
import com.sist.news.dao.NewsVO;
@Controller
// Model : service(夸没 贸府) => @Controller
public class MainModel {
  @RequestMapping("main.do")
  public String main_page(HttpServletRequest req,HttpServletResponse res)
  {
	  //JSP 傈价 
	  List<NewsVO> rlist = NewsDAO.mainNewsRecommandData();
	  List<EventVO> elist = EventDAO.recommandEventListData();
	  req.setAttribute("rlist", rlist);
	  req.setAttribute("elist", elist);
	  req.setAttribute("main_jsp", "default.jsp");
	  return "gameMain/main.jsp";
  }
}






