package com.sist.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sist.controller.Controller;
import com.sist.controller.RequestMapping;
import java.util.*;
@Controller
// Model : service(요청 처리) => @Controller
public class MainModel {
  @RequestMapping("main.do")
  public String main_page(HttpServletRequest req,HttpServletResponse res)
  {
	  //JSP 전송 
	  req.setAttribute("main_jsp", "default.jsp");
	  return "gameMain/main.jsp";
  }
}






