package com.sist.news.dao;
import java.io.*;
import java.util.*;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
public class NewsDAO {
	private static SqlSessionFactory ssf;
	   // XML �Ľ̳����� ���� 
	   static
	   {
		   try
		   {
			   //XML �б�
			   Reader reader=Resources.getResourceAsReader("Config.xml");
			   
			   //XML �Ľ�
			   ssf=new SqlSessionFactoryBuilder().build(reader);
		   }catch(Exception ex)
		   {
			   System.out.println(ex.getMessage());
		   }
	   }
	   public static List<NewsVO> newsListData(Map map)
	   {
		   List<NewsVO> list = new ArrayList<NewsVO>();
		   SqlSession session = ssf.openSession();
		   try
		   {
			   list = session.selectList("newsListData", map);			   
		   }
		   catch(Exception e)
		   {
			   System.out.println("NewsDAO:newsListData : "+e.getMessage());
		   }
		   finally
		   {
			   if(session != null)
				   session.close();
		   }
		   return list;
	   }
	   public static int newsTotalPage()
	   {
		   int total=0;
		   SqlSession session=null;
		   try
		   {
			   // session : connection
			   session=ssf.openSession();//autocommit(false)
			   total=session.selectOne("newsTotalPage");
		   }catch(Exception ex)
		   {
			   System.out.println(ex.getMessage());
		   }
		   finally
		   {
			   //��ȯ
			   if(session!=null)
				   session.close();
		   }
		   return total;
	   }
}
