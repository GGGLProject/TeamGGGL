package com.sist.change;

public class JspChange {
  private static String[] jsp={
	  "../project_frontend/default.jsp",
	  "../news/news_main.jsp",
	  "../schedule/gametest.jsp",
	  "../gallery/gallery.jsp",
	  "../event/event_list.jsp"
//	  <li><a href="../news/news_main.jsp">����</a></li>
//      <li><a href="../schedule/gametest.jsp">����/���</a></li>
//      <li><a href="../gallery/gallery.jsp">������</a></li>
//      <li><a href="../event/event_list.jsp">�̺�Ʈ</a></li>
  };
  static public String change(int no)
  {
	  return jsp[no];
  }
}
