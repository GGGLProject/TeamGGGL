package com.sist.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sist.controller.Controller;
import com.sist.controller.RequestMapping;

@Controller
public class MovieModel {
   @RequestMapping("detail.do")
   public String movie_detail(HttpServletRequest req,HttpServletResponse res)
   {
	   req.setAttribute("main_jsp", "../movie/detail.jsp");
	   return "main/main.jsp";
   }
}
