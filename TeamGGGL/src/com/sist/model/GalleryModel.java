package com.sist.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sist.controller.Controller;
import com.sist.controller.RequestMapping;

@Controller
public class GalleryModel {
   @RequestMapping("gallery.do")
   public String gallery(HttpServletRequest req,HttpServletResponse res)
   {
	   req.setAttribute("main_jsp", "../gameGallery/gallery.jsp");
	   return "gameMain/main.jsp";
   }
}
