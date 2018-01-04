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
	{ // 이벤트DAO
		try {
			
			Reader reader=Resources.getResourceAsReader("Config.xml");
			ssf = new SqlSessionFactoryBuilder().build(reader);
			//파싱 완료
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
	public static List<EventVO> eventSearchData(String searchKey)
	{
		List<EventVO> list = new ArrayList<EventVO>();
		try {
			SqlSession session = ssf.openSession();
			list = session.selectList("eventSearchData",searchKey);
			session.close();
		}catch(Exception e)
		{
			System.out.println("eventSearchData : "+e.getMessage());
		}

		return list;
	}
	public static List<EventVO> recommandEventListData()
	{
		SqlSession session = ssf.openSession();
		List<EventVO> list = session.selectList("recommandEventList");
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
	// 총페이지 
	   public static int eventTotalPage() {
	      int total = 0;
	      SqlSession session = null;
	      
	      try {
	         // session : connection 연결
	         session = ssf.openSession();
	         total = session.selectOne("eventTotalPage");
	      } catch(Exception e) {
	         System.out.println(e.getMessage());
	      } finally {
	         // 반환
	         if(session!=null)
	            session.close();
	      }
	      return total;
	   }

	public static void eventModify(EventVO vo) 
	{
		SqlSession session= ssf.openSession(true);
		session.insert("eventModify",vo);
		session.close();
	}
	public static void eventModifytest(EventVO vo) 
	{
		SqlSession session= ssf.openSession(true);
		session.insert("eventModifytest",vo);
		session.close();
	}
	
	
	public static void eventDelete(int no)
	{
		SqlSession session= ssf.openSession(true);
		session.insert("eventDelete",no);
		session.close();
	}
	
	/* 댓글 기능 */
	public static void e_replyNewInsert(EventReplyVO vo) {
		SqlSession session = ssf.openSession(true);
		System.out.println(vo.getBno());
		System.out.println(vo.getId());
		System.out.println(vo.getMsg());
		System.out.println(vo.getName());
		try {
			session.insert("e_replyNewInsert", vo);
		} catch (Exception ex) {
			System.out.println(ex.getMessage());
		} finally {
			if (session != null)
				session.close();
		}
	}
	
	public static List<EventReplyVO> e_replyListData(int no) {
		List<EventReplyVO> list = new ArrayList<EventReplyVO>();
		SqlSession session = ssf.openSession();
		try {
			list = session.selectList("e_replyListData", no);
		} catch (Exception ex) {
			System.out.println(ex.getMessage());
		} finally {
			if (session != null)
				session.close();
		}
		return list;
	}
	
	public static void e_replyUpdate(EventReplyVO vo) {
		SqlSession session = ssf.openSession(true);
		 try {
			 session.update("e_replyUpdate", vo);
		 } catch (Exception ex) {
			 System.out.println(ex.getMessage());
		 } finally {
			 if (session != null)
				 session.close();
		 }
	}
	
	public static void e_replyDelete(int no) {
		SqlSession session = ssf.openSession();
		try {
			session.delete("e_replyDelete", no);
			session.commit();
		} catch (Exception ex) {
			System.out.println(ex.getMessage());
		} finally {
			if (session != null)
				session.close();
		}
	}
	
	public static int e_ReplyCount(int bno){
	   int count=0;
	   SqlSession session=ssf.openSession();
	   try {
		   count=session.selectOne("e_ReplyCount", bno);
	   } catch(Exception ex){
		   System.out.println("e_ReplyCount" + ex.getMessage());
	   } finally {
		   if(session!=null)
			   session.close();
	   }
	   return count;
   }
	   
}
