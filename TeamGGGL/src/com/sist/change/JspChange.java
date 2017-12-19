package com.sist.change;

public class JspChange {
	private static String[] jsp= {
		"../gameMain/default.jsp",
		"../gameNews/news_main.jsp",
		"../gameSchedule/game_schedule.jsp",
		"../gameGallery/gallery.jsp",
		"../gameEvent/event_list.jsp",
		"../gameNews/news_detail.jsp",		// mode5
		"../gameDetail/game_detail.jsp",
		"../gameGallery/gallery.jsp",
		"../gameEvent/event_content.jsp"
	};
			
	static public String change(int no) {
		return jsp[no];
	}
}
