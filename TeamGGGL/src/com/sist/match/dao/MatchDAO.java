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
	
	public static List<MatchVO> matchList_3h(String match_day) {
		List<MatchVO> list = new ArrayList<MatchVO>();
		SqlSession session = ssf.openSession();
		try {
			list = session.selectList("matchList_3h", match_day);
		} catch (Exception e) {
			System.out.println("matchList_3h : "+e.getMessage());
		} finally {
			if(session!=null)
				session.close(); //반환
		}
		return list;
	}
	public static List<MatchVO> matchList_3a(String match_day) {
		List<MatchVO> list = new ArrayList<MatchVO>();
		SqlSession session = ssf.openSession();
		try {
			list = session.selectList("matchList_3a", match_day);
		} catch (Exception e) {
			System.out.println("matchList_3a : "+e.getMessage());
		} finally {
			if(session!=null)
				session.close(); //반환
		}
		return list;
	}

	public static List<MatchVO> matchList_2h(String match_day) {
		List<MatchVO> list = new ArrayList<MatchVO>();
		SqlSession session = ssf.openSession();
		try {
			list = session.selectList("matchList_2h", match_day);
		} catch (Exception e) {
			System.out.println("matchList_2h : "+e.getMessage());
		} finally {
			if(session!=null)
				session.close(); //반환
		}
		return list;
	}
	public static List<MatchVO> matchList_2a(String match_day) {
		List<MatchVO> list = new ArrayList<MatchVO>();
		SqlSession session = ssf.openSession();
		try {
			list = session.selectList("matchList_2a", match_day);
		} catch (Exception e) {
			System.out.println("matchList_2a : "+e.getMessage());
		} finally {
			if(session!=null)
				session.close(); //반환
		}
		return list;
	}
	
	public static List<MatchVO> matchList_1h(String match_day) {
		List<MatchVO> list = new ArrayList<MatchVO>();
		SqlSession session = ssf.openSession();
		try {
			list = session.selectList("matchList_1h", match_day);
		} catch (Exception e) {
			System.out.println("matchList_1h : "+e.getMessage());
		} finally {
			if(session!=null)
				session.close(); //반환
		}
		return list;
	}
	public static List<MatchVO> matchList_1a(String match_day) {
		List<MatchVO> list = new ArrayList<MatchVO>();
		SqlSession session = ssf.openSession();
		try {
			list = session.selectList("matchList_1a", match_day);
		} catch (Exception e) {
			System.out.println("matchList_1a : "+e.getMessage());
		} finally {
			if(session!=null)
				session.close(); //반환
		}
		return list;
	}
	
	public static List<MatchVO> matchList_h(String match_day) {
		List<MatchVO> list = new ArrayList<MatchVO>();
		SqlSession session = ssf.openSession();
		try {
			list = session.selectList("matchList_h", match_day);
		} catch (Exception e) {
			System.out.println("matchList_h : "+e.getMessage());
		} finally {
			if(session!=null)
				session.close(); //반환
		}
		return list;
	}
	public static List<MatchVO> matchList_a(String match_day) {
		List<MatchVO> list = new ArrayList<MatchVO>();
		SqlSession session = ssf.openSession();
		try {
			list = session.selectList("matchList_a", match_day);
		} catch (Exception e) {
			System.out.println("matchList_a : "+e.getMessage());
		} finally {
			if(session!=null)
				session.close(); //반환
		}
		return list;
	}
	
	public static List<MatchVO> matchList__1h(String match_day) {
		List<MatchVO> list = new ArrayList<MatchVO>();
		SqlSession session = ssf.openSession();
		try {
			list = session.selectList("matchList__1h", match_day);
		} catch (Exception e) {
			System.out.println("matchList__1h : "+e.getMessage());
		} finally {
			if(session!=null)
				session.close(); //반환
		}
		return list;
	}
	public static List<MatchVO> matchList__1a(String match_day) {
		List<MatchVO> list = new ArrayList<MatchVO>();
		SqlSession session = ssf.openSession();
		try {
			list = session.selectList("matchList__1a", match_day);
		} catch (Exception e) {
			System.out.println("matchList__1a : "+e.getMessage());
		} finally {
			if(session!=null)
				session.close(); //반환
		}
		return list;
	}
	
	public static List<MatchVO> matchList__2h(String match_day) {
		List<MatchVO> list = new ArrayList<MatchVO>();
		SqlSession session = ssf.openSession();
		try {
			list = session.selectList("matchList__2h", match_day);
		} catch (Exception e) {
			System.out.println("matchList__2h : "+e.getMessage());
		} finally {
			if(session!=null)
				session.close(); //반환
		}
		return list;
	}
	public static List<MatchVO> matchList__2a(String match_day) {
		List<MatchVO> list = new ArrayList<MatchVO>();
		SqlSession session = ssf.openSession();
		try {
			list = session.selectList("matchList__2a", match_day);
		} catch (Exception e) {
			System.out.println("matchList__2a : "+e.getMessage());
		} finally {
			if(session!=null)
				session.close(); //반환
		}
		return list;
	}
	
	public static List<MatchVO> matchList__3h(String match_day) {
		List<MatchVO> list = new ArrayList<MatchVO>();
		SqlSession session = ssf.openSession();
		try {
			list = session.selectList("matchList__3h", match_day);
		} catch (Exception e) {
			System.out.println("matchList__3h : "+e.getMessage());
		} finally {
			if(session!=null)
				session.close(); //반환
		}
		return list;
	}
	public static List<MatchVO> matchList__3a(String match_day) {
		List<MatchVO> list = new ArrayList<MatchVO>();
		SqlSession session = ssf.openSession();
		try {
			list = session.selectList("matchList__3a", match_day);
		} catch (Exception e) {
			System.out.println("matchList__3a : "+e.getMessage());
		} finally {
			if(session!=null)
				session.close(); //반환
		}
		return list;
	}
	
	public static List<MatchVO> match_detail_h(int match_no) {
		List<MatchVO> list = new ArrayList<MatchVO>();
		SqlSession session = ssf.openSession();
		try {
			list = session.selectList("match_detail_h", match_no);
		} catch (Exception e) {
			System.out.println("match_detail_h : " + e.getMessage());
		} finally {
			if(session!=null)
				session.close(); // 반환
		}
		return list;
	}
	public static List<MatchVO> match_detail_a(int match_no) {
		List<MatchVO> list = new ArrayList<MatchVO>();
		SqlSession session = ssf.openSession();
		try {
			list = session.selectList("match_detail_a", match_no);
		} catch (Exception e) {
			System.out.println("match_detail_a : " + e.getMessage());
		} finally {
			if(session!=null)
				session.close(); // 반환
		}
		return list;
	}
		

}
