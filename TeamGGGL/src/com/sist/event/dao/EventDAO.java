package com.sist.event.dao;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;


import java.io.*;
import java.util.*;

public class EventDAO {
	private static SqlSessionFactory ssf;
	static
	{ // �̺�ƮDAO
		try {
			
			Reader reader=Resources.getResourceAsReader("Config.xml");
			ssf = new SqlSessionFactoryBuilder().build(reader);
			//�Ľ� �Ϸ�
		}
		catch(Exception ex)			
			{
			System.out.println(ex.getMessage());
		}
	}
	public static List<EventVO> eventListData(Map map)
	{
		SqlSession session = ssf.openSession();
		List<EventVO> list = session.selectList("eventListData",map);
		session.close();
		return list;
	}
	public static EventVO eventContentData(int no)
	{
		SqlSession session = ssf.openSession();
		session.update("eventHitIncrement", no);
		session.commit();
		EventVO vo = session.selectOne("eventContentData",no);
		session.close();
		return vo;
	}
	public static void eventInsert(EventVO vo)
	{
		SqlSession session= ssf.openSession(true);
		session.insert("eventInsert",vo);
		session.close();
	}
	// �������� 
	   public static int eventTotalPage() {
	      int total = 0;
	      SqlSession session = null;
	      
	      try {
	         // session : connection ����
	         session = ssf.openSession();
	         total = session.selectOne("eventTotalPage");
	      } catch(Exception e) {
	         System.out.println(e.getMessage());
	      } finally {
	         // ��ȯ
	         if(session!=null)
	            session.close();
	      }
	      return total;
	   }
}
