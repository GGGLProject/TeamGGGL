package com.sist.match.dao;

import java.io.*;
import java.util.*;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.sist.match.dao.MatchVO;

public class MatchDAO {
	private static SqlSessionFactory ssf;
	//XML파싱 내용 넘겨주기
	static {
		try {
			//XML읽기
			Reader reader = Resources.getResourceAsReader("Config.xml");
			
			//XML파싱
			ssf = new SqlSessionFactoryBuilder().build(reader);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}
	
	public static List<MatchVO> matchList_3(String match_day) {
		List<MatchVO> list = new ArrayList<MatchVO>();
		SqlSession session = ssf.openSession();
		try {
			list = session.selectList("matchList_3", match_day);
		} catch (Exception e) {
			System.out.println("matchList_3 : "+e.getMessage());
		} finally {
			if(session!=null)
				session.close(); //반환
		}
		return list;
	}
	
	public static List<MatchVO> matchList_2(String match_day) {
		List<MatchVO> list = new ArrayList<MatchVO>();
		SqlSession session = ssf.openSession();
		try {
			list = session.selectList("matchList_2", match_day);
		} catch (Exception e) {
			System.out.println("matchList_2 : "+e.getMessage());
		} finally {
			if(session!=null)
				session.close(); //반환
		}
		return list;
	}
	
	public static List<MatchVO> matchList_1(String match_day) {
		List<MatchVO> list = new ArrayList<MatchVO>();
		SqlSession session = ssf.openSession();
		try {
			list = session.selectList("matchList_1", match_day);
		} catch (Exception e) {
			System.out.println("matchList_1 : "+e.getMessage());
		} finally {
			if(session!=null)
				session.close(); //반환
		}
		return list;
	}
	
	public static List<MatchVO> matchList(String match_day) {
		List<MatchVO> list = new ArrayList<MatchVO>();
		SqlSession session = ssf.openSession();
		try {
			list = session.selectList("matchList", match_day);
		} catch (Exception e) {
			System.out.println("matchList : "+e.getMessage());
		} finally {
			if(session!=null)
				session.close(); //반환
		}
		return list;
	}
	
	public static List<MatchVO> matchList__1(String match_day) {
		List<MatchVO> list = new ArrayList<MatchVO>();
		SqlSession session = ssf.openSession();
		try {
			list = session.selectList("matchList__1", match_day);
		} catch (Exception e) {
			System.out.println("matchList__1 : "+e.getMessage());
		} finally {
			if(session!=null)
				session.close(); //반환
		}
		return list;
	}
	
	public static List<MatchVO> matchList__2(String match_day) {
		List<MatchVO> list = new ArrayList<MatchVO>();
		SqlSession session = ssf.openSession();
		try {
			list = session.selectList("matchList__2", match_day);
		} catch (Exception e) {
			System.out.println("matchList__2 : "+e.getMessage());
		} finally {
			if(session!=null)
				session.close(); //반환
		}
		return list;
	}
	
	public static List<MatchVO> matchList__3(String match_day) {
		List<MatchVO> list = new ArrayList<MatchVO>();
		SqlSession session = ssf.openSession();
		try {
			list = session.selectList("matchList__3", match_day);
		} catch (Exception e) {
			System.out.println("matchList__3 : "+e.getMessage());
		} finally {
			if(session!=null)
				session.close(); //반환
		}
		return list;
	}

}
