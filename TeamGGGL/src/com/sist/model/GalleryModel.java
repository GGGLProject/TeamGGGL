package com.sist.model;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sist.controller.Controller;
import com.sist.controller.RequestMapping;
import com.sist.gallery.dao.*;

@Controller
public class GalleryModel {
   @RequestMapping("gallery.do")
   public String gallery(HttpServletRequest req,HttpServletResponse res)
   {
	    GalleryVO vo = new GalleryVO();
		List<GalleryVO> list_all = GalleryDAO.galleryListAll(vo);
		List<GalleryVO> list_t = GalleryDAO.galleryListTop(vo);
		List<GalleryVO> list_m = GalleryDAO.galleryListMid(vo);
		List<GalleryVO> list_j = GalleryDAO.galleryListJungle(vo);
		List<GalleryVO> list_b = GalleryDAO.galleryListBottom(vo);
		List<GalleryVO> list_s = GalleryDAO.galleryListSupport(vo);
		
	   
		
		req.setAttribute("list_all", list_all);
		req.setAttribute("list_t", list_t);
		req.setAttribute("list_m", list_m);
		req.setAttribute("list_j", list_j);
		req.setAttribute("list_b", list_b);
		req.setAttribute("list_s", list_s);
	    req.setAttribute("main_jsp", "../gameGallery/gallery.jsp");
	    return "gameMain/main.jsp";
   }
}
