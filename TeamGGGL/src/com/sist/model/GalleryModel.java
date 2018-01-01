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
	    String page = req.getParameter("page");
		if(page==null)
			page="1";
		int curpage = Integer.parseInt(page);
		int rowSize = 16;
		int start = (rowSize*curpage)-(rowSize-1);
		int end = rowSize*curpage;
		Map map = new HashMap();
		map.put("start", start);	// movie-mapper.xml이 받는다.
		map.put("end", end);
		List<GalleryVO> list_all = GalleryDAO.galleryListAll(map);
		List<GalleryVO> list_t = GalleryDAO.galleryListTop(map);
		List<GalleryVO> list_m = GalleryDAO.galleryListMid(map);
		List<GalleryVO> list_j = GalleryDAO.galleryListJungle(map);
		List<GalleryVO> list_b = GalleryDAO.galleryListBottom(map);
		List<GalleryVO> list_s = GalleryDAO.galleryListSupport(map);
		int totalpage = GalleryDAO.galleryTotalPage();
	   
		req.setAttribute("curpage", curpage);
		req.setAttribute("totalpage", totalpage);
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
