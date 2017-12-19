package com.sist.change;

public class JspChange {
  private static String[] jsp={
	  "../project_frontend/default.jsp",
	  "../news/news_main.jsp",
	  "../schedule/gametest.jsp",
	  "../gallery/gallery.jsp",
	  "../event/event_list.jsp"
//	  <li><a href="../news/news_main.jsp">뉴스</a></li>
//      <li><a href="../schedule/gametest.jsp">일정/결과</a></li>
//      <li><a href="../gallery/gallery.jsp">갤러리</a></li>
//      <li><a href="../event/event_list.jsp">이벤트</a></li>
  };
  static public String change(int no)
  {
	  return jsp[no];
  }
}
